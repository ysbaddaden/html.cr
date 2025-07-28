# # :nodoc:
# class String::Builder
#   # :nodoc:
#   def bytesize=(@bytesize : Int32)
#   end
# end
require "./entities"

module HTML
  class Lexer
    abstract struct Token
      struct Doctype < Token
        getter name : String?
        getter? public_id : String?
        getter? system_id : String?

        def initialize(@name, @public_id, @system_id)
        end
      end

      struct StartTag < Token
        getter name : String
        getter? attributes : Hash(String, String)?
        getter? empty : Bool

        def initialize(@name, @attributes, @empty)
        end
      end

      struct EndTag < Token
        getter name : String

        def initialize(@name)
        end
      end

      struct Comment < Token
        getter data : String

        def initialize(@data : String)
        end
      end

      struct Character < Token
        getter data : String

        def initialize(@data : String)
        end
      end

      struct EOF < Token
      end
    end

    def self.new(string : String) : self
      new IO::Memory.new(string)
    end

    getter column = 0

    def initialize(@io : IO)
      @attributes = Hash(String, String).new
    end

    def next : Token
      case current_char?
      when nil
        Token::EOF.new
      when '<'
        consume_char

        case current_char?
        when '!'
          consume_char
          case current_char?
          when '-'
            lex_comment(valid: peek_char? == '-')
          when '['
            lex_cdata_section
          else
            if consume?("DOCTYPE")
              lex_doctype
            else
              lex_comment(valid: false)
            end
          end
        when '/'
          consume_char
          if current_char? == '>'
            consume_char
            self.next
          else
            lex_end_tag
          end
        else
          if current_char? == '>'
            lex_character_data('<')
          else
            lex_start_tag
          end
        end
      else
        lex_character_data
      end
    end

    protected def lex_doctype
      skip_s
      name = consume_name
      skip_s
      # TODO: PUBLIC_ID
      public_id = nil
      skip_s
      # TODO: SYSTEM_ID
      system_id = nil
      skip_s
      consume_char if current_char? == '>'
      Token::Doctype.new(name, public_id, system_id)
    end

    protected def lex_start_tag
      if name = consume_name
        empty = false

        while current_char?
          skip_s

          case current_char?
          when '>'
            consume_char
            break
          when '<'
            # ignore
            consume_char
          when '/'
            consume_char
            if current_char? == '>'
              consume_char
              empty = true
              break
            else
              # ignore
            end
          else
            attr_name, attr_value = lex_attribute
            @attributes[attr_name] ||= attr_value
          end
        end

        attributes = nil

        unless @attributes.empty?
          attributes = @attributes.dup
          @attributes.clear
        end

        Token::StartTag.new(name, attributes, empty)
      else
        lex_comment(valid: false)
      end
    end

    # protected def void_element?(name)
    #   case name
    #   when "img", "input", "link", "meta", "br", "hr", "area", "base", "col", "embed", "source", "track", "wbr", "param"
    #     true
    #   else
    #     false
    #   end
    # end

    protected def lex_end_tag
      if name = consume_name
        while current_char?
          skip_s

          case current_char?
          when '>'
            consume_char
            break
          when '/'
            consume_char
            consume_char if current_char? == '>'
            break
          else
            lex_attribute
          end
        end

        Token::EndTag.new(name)
      else
        lex_comment(valid: false)
      end
    end

    protected def lex_attribute
      name = consume_name(valid: false).not_nil!
      skip_s
      if current_char? == '='
        consume_char
        skip_s
        value = lex_attr_value
      end
      {name, value || ""}
    end

    protected def lex_attr_value
      case current_char?
      when '"', '\''
        quote = consume_char
        String.build do |str|
          while char = current_char?
            case char
            when quote
              consume_char
              break
            when '&'
              str << consume_entity(attr: true)
            else
              str << consume_char
            end
          end
        end
      else
        String.build do |str|
          while char = current_char?
            case char
            when ' ', '\t', '\r', '\n', '>', '/'
              break
            when '&'
              str << consume_entity(attr: true)
            else
              str << consume_char
            end
          end
        end
      end
    end

    protected def lex_comment(valid = true)
      dash = 0

      # short comments
      while char = current_char?
        case char
        when '-'
          dash += 1
        when '>', nil
          consume_char
          dash -= 4
          return Token::Comment.new(dash > 0 ? "-" * dash : "")
        else
          dash -= 2 if dash >= 2
          break
        end
        consume_char
      end

      # normal comments (might be unterminated)
      data = String.build do |str|
        dash.times { str << '-' } if dash > 0
        dash = 0

        while char = current_char?
          case char
          when '-'
            dash += 1
          when '>'
            if !valid || dash >= 2
              # str.bytesize -= 2 if dash >= 2
              # dash = 0
              consume_char
              break
            end
          else
            dash = 0
          end
          str << consume_char
          consume_char
        end
      end

      # drop trailing '--'
      if valid && dash >= 2
        2.times { data = data.chomp('-') }
      end

      Token::Comment.new(data)
    end

    protected def lex_cdata_section
      rsqb = 0

      data = String.build do |str|
        while char = current_char?
          case char
          when ']'
            rsqb += 1
          when '>'
            break if rsqb >= 2
          else
            dash = 0
          end
          str << consume_char
        end
      end

      rsqb.clamp(..2).times { data = data.chomp(']') }

      Token::Character.new(data)
    end

    protected def lex_character_data(first_char = nil)
      data = String.build do |str|
        if first_char
          str << first_char
        end
        while char = current_char?
          case char
          when '<'
            break unless peek_char? == '>'
            str << consume_char
          when '&'
            str << consume_entity
          else
            str << consume_char
          end
        end
      end
      Token::Character.new(data)
    end

    protected def consume_entity(attr = false)
      consume_char

      if current_char? == '#'
        consume_char
        consume_char_ref
      else
        consume_entity_ref(attr)
      end
    end

    protected def consume_char_ref
      value = 0
      digits = false

      if current_char? == 'x'
        consume_char

        begin
          while char = current_char?
            case char
            when '0'..'9'
              digits = true
              value = value * 16 + (char.ord - '0'.ord)
            when 'a'..'f'
              digits = true
              value = value * 16 + (char.ord - 'a'.ord + 10)
            when 'A'..'F'
              digits = true
              value = value * 16 + (char.ord - 'A'.ord + 10)
            when ';'
              consume_char
              return "&#x;" unless digits
              break
            else
              break
            end
            consume_char
          end
          return "&#x" unless digits
        rescue OverflowError
          while char = current_char?
            case char
            when '0'..'9', 'a'..'z', 'A'..'Z'
              consume_char
            when ';'
              consume_char
              break
            else
              break
            end
          end
          value = 0xFFFD
        end
      else
        begin
          while char = current_char?
            case char
            when '0'..'9'
              digits = true
              value = value * 10 + (char.ord - '0'.ord)
            when ';'
              consume_char
              return "&#;" unless digits
              break
            else
              break
            end
            consume_char
          end
          return "&#" unless digits
        rescue OverflowError
          while char = current_char?
            case char
            when '0'..'9'
              consume_char
            when ';'
              consume_char
              break
            else
              break
            end
          end
          value = 0xFFFD
        end
      end

      if 0 < value <= 0xd7ff || 0xe000 <= value <= Char::MAX_CODEPOINT
        value.unsafe_chr
      else
        '\uFFFD'
      end
    end

    protected def consume_entity_ref(attr = false)
      semicolon = false

      name = String.build do |str|
        while char = current_char?
          case char
          when'a'..'z', 'A'..'Z', '0'..'9'
            str << consume_char
          when ';'
            semicolon = true
            str << consume_char
            break
          else
            break
          end
        end
      end

      if value = ENTITIES[name]?
        return value
      end

      unless semicolon || attr
        n = name
        i = -1
        loop do
          n = name[0...i]
          break if n.empty?

          if value = ENTITIES[n]?
            return "#{value}#{name[i..]}"
          end

          i -= 1
        end
      end

      "&#{name}"
    end

    protected def current_char?
      if char = @current_char
        char
      else
        @column += 1
        if char = @peek_char
          @peek_char = nil
          @current_char = normalize(char)
        else
          char = @io.read_char
          # p [:current_char, char, @column]
          @current_char = normalize(char)
        end
      end
    end

    protected def normalize(char)
      case char
      when '\u0000'
        '\uFFFD'
      when '\r'
        # CR or CRLF => LF
        @peek_char = nil if peek_char? == '\n'
        '\n'
      else
        char
      end
    end

    protected def peek_char?
      if char = @peek_char
        char
      else
        char = @io.read_char
        # p [:___peek_char, char, @column + 1]
        @peek_char = char
      end
    end

    protected def skip_s
      while {' ', '\t', '\r', '\n'}.includes?(current_char?)
        consume_char
      end
    end

    @current_char : Char?
    @peek_char : Char?

    protected def consume_char
      char = @current_char
      @current_char = nil
      char
    end

    protected def consume_name(downcase = true, valid = true)
      if valid
        case current_char?
        when nil
          return
        when 'a'..'z', 'A'..'Z'
          # continue
        else
          return
        end
      end

      String.build do |str|
        while char = current_char?
          case char
          when '>', ' ', '=', '/', ';'
            break
          when 'A'..'Z'
            str << (downcase ? char.downcase : char)
          else
            str << char
          end
          consume_char
        end
      end
    end

    protected def consume?(str : String)
      i = 1

      str.each_char do |char|
        if current_char? == char
          consume_char
          i += 1
        else
          @io.seek(-i, IO::Seek::Current)
          @current_char = nil
          return false
        end
      end

      true
    end

    protected def consume_until(&)
      String.build do |str|
        while (char = current_char?) && !yield(char)
          str << consume_char
        end
      end
    end
  end
end
