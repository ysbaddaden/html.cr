require "./entities"

# # :nodoc:
# class String::Builder
#   # :nodoc:
#   def bytesize=(@bytesize : Int32)
#   end
# end

# :nodoc:
lib LibIntrinsics
  fun llvm_sadd_sat_i32 = "llvm.sadd.sat.i32"(Int32, Int32) : Int32
  fun llvm_smul_with_overflow_i32 = "llvm.smul.with.overflow.i32"(Int32, Int32) : {Int32, Bool}
end

module HTML
  class Lexer
    # :nodoc:
    CHARACTER_REFERENCE_REPLACEMENTS = {
      0x80 => '\u20AC',
      0x82 => '\u201A',
      0x83 => '\u0192',
      0x84 => '\u201E',
      0x85 => '\u2026',
      0x86 => '\u2020',
      0x87 => '\u2021',
      0x88 => '\u02C6',
      0x89 => '\u2030',
      0x8A => '\u0160',
      0x8B => '\u2039',
      0x8C => '\u0152',
      0x8E => '\u017D',
      0x91 => '\u2018',
      0x92 => '\u2019',
      0x93 => '\u201C',
      0x94 => '\u201D',
      0x95 => '\u2022',
      0x96 => '\u2013',
      0x97 => '\u2014',
      0x98 => '\u02DC',
      0x99 => '\u2122',
      0x9A => '\u0161',
      0x9B => '\u203A',
      0x9C => '\u0153',
      0x9E => '\u017E',
      0x9F => '\u0178',
    }

    abstract struct Token
      struct Doctype < Token
        getter name : String?
        getter? public_id : String?
        getter? system_id : String?
        getter? quirks_mode : Bool

        def initialize(@name, @public_id, @system_id, @quirks_mode)
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

    getter line = 1
    getter column = 0

    def initialize(@io : IO)
      @attributes = Hash(String, String).new
      @buffer = IO::Memory.new
      @quirks_mode = false

      # TODO: determine encoding
      # https://dev.w3.org/html5/spec-LC/parsing.html#determining-the-character-encoding
    end

    def next : Token
      case current_char?
      when nil
        Token::EOF.new
      when '<'
        # lex_tag_open
        consume_char

        case current_char?
        when nil
          error "eof-before-tag-name"
          Token::Character.new("<")
        when '!'
          # lex_markup_declaration
          consume_char
          if consume?("--")
            lex_comment
          elsif consume?("[CDATA[")
            lex_cdata_section
          elsif consume?("DOCTYPE", case_insensitive: true)
            lex_doctype
          else
            error "incorrectly-opened-comment"
            lex_bogus_comment
          end
        when '/'
          consume_char
          if current_char? == '>'
            consume_char
            self.next
          else
            lex_end_tag
          end
        when '?'
          error "unexpected-question-mark-instead-of-tag-name"
          lex_bogus_comment
        when 'a'..'z', 'A'..'Z'
          lex_start_tag
        else
          error "invalid-first-character-of-tag-name"
          @buffer << '<'
          lex_data
        end
      else
        lex_data
      end
    end

    protected def lex_doctype
      @quirks_mode = false

      error "missing-whitespace-before-doctype-name" if skip_s == 0
      name = consume_doctype_name

      skip_s
      case current_char?
      when nil
        error "eof-in-doctype"
        @quirks_mode = true
      when '>'
        consume_char
      else
        if consume?("PUBLIC", case_insensitive: true)
          public_id = consume_doctype_public_id
          system_id = consume_doctype_system_id if public_id
          consume_after_system_identifier
        elsif consume?("SYSTEM", case_insensitive: true)
          system_id = consume_doctype_system_id
          consume_after_system_identifier
        else
          error "invalid-character-sequence-after-doctype-name"
          skip_bogus_doctype
          @quirks_mode = true
        end
      end

      Token::Doctype.new(name, public_id, system_id, @quirks_mode)
    end

    protected def consume_after_system_identifier
      skip_s

      case current_char?
      when '>'
        consume_char
      when nil
        error "eof-in-doctype"
        @quirks_mode = true
      else
        skip_bogus_doctype
      end
    end

    protected def consume_doctype_name
      loop do
        case char = current_char?
        when nil
          error "eof-in-doctype"
          @quirks_mode = true
          break
        when 'A'..'Z'
          consume_char
          @buffer << char.downcase
        when ' ', '\t', '\n', '\f', '>'
          break
        when '\u0000'
          consume_char
          error "unexpected-null-character"
          @buffer << '\uFFFD'
        else
          @buffer << consume_char
        end
      end

      buffer_to_s do
        error "missing-doctype-name"
        @quirks_mode = true
        nil
      end
    end

    {% for kind in %w[public system] %}
      protected def consume_doctype_{{kind.id}}_id
        ws = skip_s

        case current_char?
        when nil
          error "eof-in-doctype"
          @quirks_mode = true
        when '"', '\''
          error "missing-whitespace-after-doctype-{{kind.id}}-keyword" if ws == 0
          quote = consume_char

          loop do
            case current_char?
            when nil
              error "eof-in-doctype"
              @quirks_mode = true
              break
            when '\u0000'
              consume_char
              error "unexpected-null-character"
              @buffer << '\uFFFD'
            when quote
              consume_char
              break
            when '>'
              error "abrupt-doctype-{{kind.id}}-identifier" if quote
              @quirks_mode = true
              break
            else
              @buffer << consume_char
            end
          end

          return buffer_to_s do
            unless quote
              error "missing-doctype-{{kind.id}}-identifier"
              @quirks_mode = true
            end
            ""
          end
        when '>'
          # done
        else
          error "missing-quote-before-doctype-{{kind.id}}-identifier"
          skip_bogus_doctype
          @quirks_mode = true
        end

        nil
      end
    {% end %}

    protected def skip_bogus_doctype
      while current_char?
        case consume_char
        when '>'
          break
        when '\u0000'
          error "unexpected-null-character"
        end
      end
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
        lex_bogus_comment
      end
    end

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
        lex_bogus_comment
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
        while char = current_char?
          case char
          when quote
            consume_char
            break
          when '&'
            consume_entity(@buffer, attr: true)
          else
            @buffer << consume_char
          end
        end
      else
        while char = current_char?
          case char
          when ' ', '\t', '\r', '\n', '>', '/'
            break
          when '&'
            consume_entity(@buffer, attr: true)
          else
            @buffer << consume_char
          end
        end
      end

      buffer_to_s
    end

    protected def lex_comment
      if current_char? == '>'
        consume_char
        error "abrupt-closing-of-empty-comment" # <!-->
        return Token::Comment.new("")
      end

      if current_char? == '-' && peek_char? == '>'
        consume_char
        consume_char
        error "abrupt-closing-of-empty-comment" # <!--->
        return Token::Comment.new("")
      end

      loop do
        case current_char?
        when nil
          error "eof-in-comment"
          break
        when '-'
          if consume?("-->")
            break
          elsif consume?("--!>")
            error "incorrectly-closed-comment"
            break
          end
        when '<'
          if consume?("<!-->")
            @buffer << "<!"
            break
          elsif match?("<!--")
            error "nested-comment"
            @buffer << consume_char
            @buffer << consume_char
            #if peek?(2)
              next
            #else
            #  error "eof-in-comment"
            #  break
            #end
          end
        end
        @buffer << consume_char
      end

      Token::Comment.new(buffer_to_s)
    end

    protected def lex_bogus_comment
      while char = current_char?
        case char
        when '>'
          consume_char
          break
        when '\u0000'
          consume_char
          @buffer << '\uFFFD'
        else
          @buffer << consume_char
        end
      end
      Token::Comment.new(buffer_to_s)
    end

    # TODO: rewrite as per the HTML5 living standard tokenization rules
    # OPTIMIZE: simplify
    # OPTIMIZE: use @buffer
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

    protected def lex_data
      while char = current_char?
        case char
        when '<'
          break unless peek_char? == '>'
          @buffer << consume_char
        when '&'
          consume_entity(@buffer)
        when '\u0000'
          error "unexpected-null-character"
          @buffer << consume_char
        else
          @buffer << consume_char
        end
      end

      Token::Character.new(buffer_to_s)
    end

    # TODO: rename as #consume_character_reference
    # TODO: consume directly into @buffer
    protected def consume_entity(io, attr = false)
      consume_char

      case current_char?
      when nil
        io << '&'
      when '#'
        consume_char
        consume_numeric_character_reference(io)
      when 'a'..'z', 'A'..'Z', '0'..'9'
        consume_named_character_reference(io, attr)
      else
        io << '&'
      end
    end

    protected def consume_numeric_character_reference(io)
      value =
        if current_char? == 'x' || current_char? == 'X'
          consume_hexadecimal_character_reference(io)
        else
          consume_decimal_character_reference(io)
        end
      return unless value

      case value
      when 0x00
        error "null-character-reference"
        value = 0xFFFD
      when 0x110000..
        error "character-reference-outside-unicode-range"
        value = 0xFFFD
      when 0xD800..0xDFFF
        error "surrogate-character-reference"
        value = 0xFFFD
      when 0xFDD0..0xFDEF, 0xFFFE, 0xFFFF, 0x1FFFE, 0x1FFFF, 0x2FFFE, 0x2FFFF,
           0x3FFFE, 0x3FFFF, 0x4FFFE, 0x4FFFF, 0x5FFFE, 0x5FFFF, 0x6FFFE,
           0x6FFFF, 0x7FFFE, 0x7FFFF, 0x8FFFE, 0x8FFFF, 0x9FFFE, 0x9FFFF,
           0xAFFFE, 0xAFFFF, 0xBFFFE, 0xBFFFF, 0xCFFFE, 0xCFFFF, 0xDFFFE,
           0xDFFFF, 0xEFFFE, 0xEFFFF, 0xFFFFE, 0xFFFFF, 0x10FFFE, 0x10FFFF
        error "noncharacter-reference-reference"
      when 0x01..0x08, 0x0B, 0x0D, 0x0E..0x1F, 0x007F..0x009F
        error "control-character-reference"
      end

      char = CHARACTER_REFERENCE_REPLACEMENTS[value]? || value.unsafe_chr
      io << char
    end

    protected def consume_hexadecimal_character_reference(io)
      x = consume_char
      value = 0
      digits = false
      semicolon = false

      while char = current_char?
        case char
        when '0'..'9'
          digits = true
          value = saturating_add(saturating_mul(value, 16), char.ord &- 0x30)
        when 'A'..'F'
          digits = true
          value = saturating_add(saturating_mul(value, 16), char.ord &- 0x37)
        when 'a'..'f'
          digits = true
          value = saturating_add(saturating_mul(value, 16), char.ord &- 0x57)
        when ';'
          consume_char
          semicolon = true
          break
        else
          error "missing-semicolon-after-character-reference"
          break
        end
        consume_char
      end

      unless digits
        error "absence-of-digits-in-numeric-character-reference"
        io << "&#" << x
        io << ';' if semicolon
        return
      end

      value
    end

    private def consume_decimal_character_reference(io)
      value = 0
      digits = false
      semicolon = false

      while char = current_char?
        case char
        when '0'..'9'
          digits = true
          value = saturating_add(saturating_mul(value, 10), char.ord &- 0x30)
          consume_char
        when ';'
          semicolon = true
          consume_char
          break
        else
          error "missing-semicolon-after-character-reference"
          break
        end
      end

      unless digits
        error "absence-of-digits-in-numeric-character-reference"
        io << "&#"
        io << ';' if semicolon
        return
      end

      value
    end

    private def saturating_add(a : Int32, b : Int32) : Int32
      LibIntrinsics.llvm_sadd_sat_i32(a, b)
    end

    private def saturating_mul(a : Int32, b : Int32) : Int32
      value, overflowed = LibIntrinsics.llvm_smul_with_overflow_i32(a, b)
      overflowed ? Int32::MAX : value
    end

    protected def consume_named_character_reference(io, attr = false)
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
            error "missing-semicolon-after-character-reference"
            break
          end
        end
      end

      if value = ENTITIES[name]?
        io << value
        return
      end

      unless semicolon || attr
        n = name
        i = -1

        loop do
          n = name[0...i]
          break if n.empty?

          if value = ENTITIES[n]?
            error "missing-semicolon-after-character-reference" unless attr
            io << value
            io << name[i..]
            return
          end

          i -= 1
        end
      end

      if semicolon
        error "unknown-named-character-reference"
      end

      io << '&'
      io << name
    end

    protected def current_char?
      if char = @current_char
        return char
      end

      normalized_char =
        if char = @peek_char
          @peek_char = nil
          @current_char = normalize(char)
        else
          @current_char = normalize(@io.read_char)
        end

      if normalized_char == '\n'
        @line += 1
        @column = 1
      else
        @column += 1
      end

      # p [:current_char, normalized_char, @line, @column]

      normalized_char
    end

    # Normalizes CRLF and lone CR to a single LF character.
    protected def normalize(char)
      if char == '\r'
        @peek_char = nil if peek_char? == '\n'
        '\n'
      else
        char
      end
    end

    # OPTIMIZE: allow to peek up to N chars
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
      i = 0
      while {' ', '\t', '\n', '\f'}.includes?(current_char?)
        i+= 1
        consume_char
      end
      i
    end

    @current_char : Char?
    @peek_char : Char?

    protected def consume_char
      char = current_char?
      @current_char = nil
      current_char? if @peek_char
      char
    end

    # TODO: follow the HTML5 living standard rules
    # OPTIMIZE: use StringPool
    # OPTIMIZE: use @buffer
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

    # OPTIMIZE: use a local buffer to peek N chars at once
    protected def consume?(str : String, case_insensitive = false)
      pos, curr, peek, line, column = @io.tell, @current_char, @peek_char, @line, @column

      str.each_char do |char|
        if current_char? == char || (case_insensitive && current_char? == char.downcase)
          consume_char
        else
          @io.seek(pos, IO::Seek::Set)
          @current_char, @peek_char, @line, @column = curr, peek, line, column
          return false
        end
      end

      true
    end

    # OPTIMIZE: use a local buffer to peek N chars at once
    protected def match?(str : String, case_insensitive = false)
      pos, curr, peek, line, column = @io.tell, @current_char, @peek_char, @line, @column
      matched = true

      str.each_char do |char|
        if current_char? == char || (case_insensitive && current_char? == char.downcase)
          consume_char
        else
          matched = false
          break
        end
      end

      @io.seek(pos, IO::Seek::Set)
      @current_char, @peek_char, @line, @column = curr, peek, line, column

      matched
    end

    protected def consume_until(&)
      String.build do |str|
        while (char = current_char?) && !yield(char)
          str << consume_char
        end
      end
    end

    private def buffer_to_s
      buffer_to_s { "" }
    end

    private def buffer_to_s(&)
      if @buffer.bytesize == 0
        yield
      else
        value = @buffer.to_s
        @buffer.clear
        value
      end
    end

    # Override to handle tokenization errors.
    def error(code : String)
    end
  end
end
