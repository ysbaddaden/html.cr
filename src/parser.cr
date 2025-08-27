# Copyright 2025 Julien PORTALIER
# Distributed under the Apache-2.0 LICENSE

require "xml/dom"
require "./lexer"
require "./quirks_mode"
require "./parser/formatting"

module XML::DOM
  class HTMLDocument < Document
    property quirks_mode : HTML::QuirksMode = HTML::QuirksMode::NONE

    def initialize
      super()
    end
  end
end

module HTML
  alias DOM = XML::DOM

  class Parser
    alias Token = Lexer::Token

    private SPECIAL_ELEMENT = %w[
       address applet area article aside base basefont bgsound blockquote body
       br button caption center col colgroup dd details dir div dl dt embed
       fieldset figcaption figure footer form frame frameset h1 h2 h3 h4 h5 h6
       head header hgroup hr html iframe img input keygen li link listing main
       marquee menu meta nav noembed noframes noscript object ol p param
       plaintext pre script search section select source style summary table
       tbody td template textarea tfoot th thead title tr track ul wbr xmp
       MathML:mi MathML:mo MathML:mn MathML:ms MathML:mtext MathML:annotation-xml
       SVG:foreignObject SVG:desc SVG:title
    ]
    private ELEMENT_SCOPE = %w[
      applet caption html table td th marquee object select template
      MathML:mi MathML:mo MathML:mn MathML:ms MathML:mtext MathML:annotation-xml
      SVG:foreignObject SVG:desc SVG:title
    ]
    private LIST_ITEM_SCOPE = ELEMENT_SCOPE + %w[ol ul]
    private BUTTON_SCOPE = ELEMENT_SCOPE + %w[button]
    private TABLE_SCOPE = %w[html table template]

    # OPTIMIZE: add a mode to the lexer to skip whitespace characters
    private WHITESPACE = /^[ \t\n\r\f]*$/
    private LEADING_WHITESPACE = /^([ \t\n\r\f]+)(.+)$/

    def self.parse(input : IO | String) : DOM::HTMLDocument
      parser = new(Lexer.new(input))
      parser.parse
      parser.document
    end

    getter document : DOM::HTMLDocument

    protected getter! html : DOM::Element
    protected getter! head : DOM::Element
    protected getter! body : DOM::Element
    protected getter? form : DOM::Element?

    def initialize(@lexer : Lexer)
      @stack = [] of DOM::Element
      @document = DOM::HTMLDocument.new
      @formatting = Formatting.new
      @token = uninitialized Token
    end

    protected def current_node : DOM::Element
      @stack.last
    end

    protected def adjusted_current_node : DOM::Node
      # TODO: if document is a fragment and the stack only contains the
      # fragment, then return the context element (?)
      current_node
    end

    @[AlwaysInline]
    protected def next_token
      @token = @lexer.next
      p! @token
    end

    def parse : Nil
      next_token

      p :parse_initial
      parse_initial
      p :parse_before_html
      parse_before_html
      p :parse_before_head
      parse_before_head
      p :parse_in_head
      parse_in_head
      p :parse_after_head
      parse_after_head
      p :parse_in_body
      parse_in_body
      p :parse_after_body
      parse_after_body
      p :parse_after_after_body
      parse_after_after_body
    end

    protected def parse_initial : Nil
      loop do
        case token = @token
        when Token::Character
          unless token.data =~ WHITESPACE
            # parse error
            return
          end
        when Token::Comment
          @document.append DOM::Comment.new(token.data, @document)
        when Token::Doctype
          insert_doctype(token)
          next_token
          break
        else
          # parse error
          break
        end
        next_token
      end
    end

    protected def parse_before_html : Nil
      loop do
        case token = @token
        when Token::Character
          unless token.data =~ WHITESPACE
            break
          end
        when Token::Comment
          @document.append DOM::Comment.new(token.data, @document)
        when Token::Doctype
          # parse error: ignore the token
        when Token::StartTag
          if token.name == "html"
            @html = element = DOM::Element.new("html", @document)
            copy_attributes(token, to: element)
            next_token
            break
          else
            break
          end
        when Token::EndTag
          case token.name
          when "head", "body", "html", "br"
            break
          else
            # parse error: ignore the token
          end
        else
          break
        end
        next_token
      end

      @html ||= DOM::Element.new("html", @document)
      @stack.push(html)
      @document.append(html)
      @document.root = html
    end

    protected def parse_before_head : Nil
      loop do
        case token = @token
        when Token::Character
          unless token.data =~ WHITESPACE
            break
          end
        when Token::Comment
          @document.append DOM::Comment.new(token.data, @document)
        when Token::StartTag
          case token.name
          when "html"
            copy_attributes(token, to: html)
          when "head"
            @head = insert_html_element(token)
            next_token
            break
          else
            break
          end
        when Token::EndTag
          case token.name
          when "head", "body", "html", "br"
            break
          else
            # parse error: ignore the token
          end
        when Token::Doctype
          # parse error: ignore the token
        else
          break
        end

        next_token
      end

      @head ||= insert_html_element("head")
    end

    protected def parse_in_head : Nil
      loop do
        case token = @token
        when Token::Character
          if token.data =~ WHITESPACE
            # append whitespace text nodes to <head>
            insert_text(token.data)
          elsif token.data =~ LEADING_WHITESPACE
            # append leading whitespace as text nodes to <head>
            insert_text($1)
            @token = Token::Character.new($2)
            break
          else
            break
          end
        when Token::Comment
          insert_comment(token)
        when Token::StartTag
          if parse_in_head_start_tag?(token)
            # continue
          elsif token.name == "html"
            copy_attributes(token, to: html)
          elsif token.name == "head"
            # parse error: ignore the token
          else
            break
          end
        when Token::EndTag
          case token.name
          when "head"
            next_token
            break
          when "body", "html", "br"
            break
          when "template"
            raise NotImplementedError.new("template start tag state=in head")
          end
        when Token::Doctype
          # parse error: ignore the token
        else
          break
        end

        next_token
      end

      @stack.pop
    end

    protected def parse_in_head_start_tag?(token) : Bool
      case token.name
      when "base", "basefont", "bgsound", "link"
        insert_html_element(token, push: false)
      when "meta"
        insert_html_element(token, push: false)
        # todo: possibly change the encoding
      when "title"
        insert_html_element(token)
        parse_text(Lexer::State::RCDATA, "title")
      when "noframes", "style"
        insert_html_element(token)
        parse_text(Lexer::State::RAWTEXT, token.name)
      when "noscript"
        insert_html_element(token)
        parse_in_head_noscript
      when "script"
        insert_html_element(token)
        parse_text(Lexer::State::SCRIPT_DATA, "script")
      else
        return false
      end
      true
    end

    # todo: parse "in head noscript" subtree instead of rawtext
    protected def parse_in_head_noscript : Nil
      parse_text(Lexer::State::RAWTEXT, "noscript")
    end

    protected def parse_after_head : Nil
      loop do
        case token = @token
        when Token::Character
          if token.data =~ WHITESPACE
            # appends whitespace text nodes to <html> (?)
            insert_text(token.data)
          else
            break
          end
        when Token::Comment
          insert_comment(token)
        when Token::Doctype
          # parse error: ignore the token
        when Token::StartTag
          case token.name
          when "html"
            copy_attributes(token, to: html)
          when "body"
            @body = insert_html_element(token)
            next_token
            break
          when "frameset"
            insert_html_element(token)
            parse_in_frameset
          when "base", "basefont", "bgsound", "link", "meta", "noframes", "script", "style", "template", "title"
            # parse error
            @stack.push(head)
            parse_in_head_start_tag?(token)
            until @stack.pop == head; end
          when "head"
            # parse error: ignore the token
          else
            break
          end
        when Token::EndTag
          case token.name
          when "body", "html", "br"
            break
          when "template"
            raise NotImplementedError.new("template start tag state=after head")
          else
            # parse error: ignore the token
          end
        when Token::EOF
          break
        end

        next_token
      end

      @body ||= insert_html_element("body")
    end

    protected def parse_in_body : Nil
      loop do
        case token = @token
        when Token::Character
          insert_text(token.data)
        when Token::Comment
          insert_comment(token)
        when Token::StartTag
          case token.name
          when "html"
            # parse error
            copy_attributes(token, to: html)
          when "base", "basefont", "bgsound", "link", "meta", "noframes", "script", "style", "template", "title"
            parse_in_head_start_tag?(token)
          when "body"
            copy_attributes(token, to: body)
          when "frameset"
            # parse error
            # todo: support frameset
          when "address", "article", "aside", "blockquote", "center", "details", "dialog", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "main", "menu", "nav", "ol", "p", "search", "section", "summary", "ul"
            close_element("p", in: BUTTON_SCOPE)
            insert_html_element(token)
          when "h1", "h2", "h3", "h4", "h5", "h6"
            close_element("p", in: BUTTON_SCOPE)
            if {"h1", "h2", "h3", "h4", "h5", "h6"}.includes?(current_node.name)
              # parse error
              @stack.pop
            end
            insert_html_element(token)
          when "pre", "listing"
            close_element("p", in: BUTTON_SCOPE)
            insert_html_element(token)
            tok = next_token
            next unless tok.is_a?(Token::Character)
            insert_text(tok.data.lchop('\n'))
          when "form"
            if @form
              # parse error: ignore the token
            else
              close_element("p", in: BUTTON_SCOPE)
              @form = insert_html_element(token)
            end
          when "li", "dd", "dt"
            @stack.reverse_each do |element|
              case element.name
              when token.name
                close_element(token.name)
                break
              when "address", "div", "p"
                next
              else
                break if SPECIAL_ELEMENT.includes?(element.name)
              end
            end
            close_element("p", in: BUTTON_SCOPE)
            insert_html_element(token)
          when "plaintext"
            close_element("p", in: BUTTON_SCOPE)
            insert_html_element(token)
            tok = @lexer.next_plaintext
            case tok
            when Token::Character
              insert_text(tok.data)
              next_token
            else
              @token = tok
            end
            return
          when "button"
            close_element("button", in: ELEMENT_SCOPE)
            insert_html_element(token)
          when "a"
            if element = @formatting.active?("a")
              adoption_agency(token)
              @formatting.delete(element)
              @stack.delete(element)
              reconstruct_formatting
              @formatting << insert_html_element(token)
            end
          when "b", "big", "code", "em", "font", "i", "s", "small", "strike", "strong", "tt", "u"
            reconstruct_formatting
            element = insert_html_element(token)
            @formatting << element
          when "nobr"
            reconstruct_formatting
            if find_element?("nobr", in: ELEMENT_SCOPE)
              adoption_agency(token)
              reconstruct_formatting
            end
            element = insert_html_element("nobr")
            @formatting << element
          when "applet", "marquee", "object"
            reconstruct_formatting
            marker = insert_html_element(token)
            @formatting << marker
          when "table"
            close_element("p", in: BUTTON_SCOPE) if @document.quirks_mode.none?
            insert_html_element(token)
            parse_in_table
          when "area", "br", "embed", "img", "keygen", "wbr"
            reconstruct_formatting
            insert_html_element(token, push: false)
          when "input"
            close_element("select", in: ELEMENT_SCOPE)
            reconstruct_formatting
            insert_html_element(token, push: false)
          when "param", "source", "track"
            insert_html_element(token, push: false)
          when "hr"
            close_element("p", in: BUTTON_SCOPE)
            if find_element?("select", in: ELEMENT_SCOPE)
              generate_implied_end_tags
            end
            insert_html_element(token, push: false)
          when "image"
            reconstruct_formatting
            element = insert_html_element("img", push: false)
            copy_attributes(token, to: element)
          when "textarea"
            insert_html_element(token)
            parse_text(Lexer::State::RCDATA, "textarea")
          when "xmp"
            close_element("p", in: BUTTON_SCOPE)
            reconstruct_formatting
            insert_html_element(token)
            parse_text(Lexer::State::RAWTEXT, "xmp")
          when "iframe", "noembed", "noscript"
            insert_html_element(token)
            parse_text(Lexer::State::RAWTEXT, token.name)
          when "select"
            if find_element?("select", in: ELEMENT_SCOPE)
              close_element("select")
            else
              reconstruct_formatting
              insert_html_element("select")
            end
          when "option"
            if find_element?("select", in: ELEMENT_SCOPE)
              generate_implied_end_tags(except: {"optgroup"})
            else
              close_current_node("option")
            end
            reconstruct_formatting
            insert_html_element(token)
          when "optgroup"
            if find_element?("select", in: ELEMENT_SCOPE)
              generate_implied_end_tags
            else
              close_current_node("option")
            end
            reconstruct_formatting
            insert_html_element(token)
          when "rb", "rtc"
            if find_element?("ruby", in: ELEMENT_SCOPE)
              generate_implied_end_tags
            end
            insert_html_element(token)
          when "rp", "rt"
            if find_element?("ruby", in: ELEMENT_SCOPE)
              generate_implied_end_tags(except: {"rtc"})
            end
            insert_html_element(token)
          when "math"
            raise NotImplementedError.new("parse MathML")
          when "svg"
            raise NotImplementedError.new("parse SVG")
          when "caption", "col", "colgroup", "frame", "head", "tbody", "td", "tfoot", "th", "thead", "tr"
            # parse error: ignore the token
          else
            reconstruct_formatting
            insert_html_element(token)
          end
        when Token::EndTag
          case token.name
          when "body"
            if @stack.find { |e| e.name == "body" }
              close_element("body")
              next_token
              break
            else
              # parse error: ignore the token
            end
          when "html"
            break if @stack.find { |e| e.name == "body" }
            # parse error: ignore the token
          when "address", "article", "aside", "blockquote", "button", "center", "details", "dialog", "dir", "div", "dl", "fieldset", "figcaption", "figure", "footer", "header", "hgroup", "listing", "main", "menu", "nav", "ol", "pre", "search", "section", "select", "summary", "ul"
            if find_element?(token.name, in: ELEMENT_SCOPE)
              close_element(token.name)
            else
              # parse error: ignore the token
            end
          when "form"
            node, @form = @form, nil
            if node.nil? || find_element?("form", in: ELEMENT_SCOPE) != node
              # parse error: ignore the token
            else
              # generate_implied_end_tags
              close_element("form", in: ELEMENT_SCOPE)
            end
          when "p"
            if find_element?("p", in: BUTTON_SCOPE)
              close_element("p")
            else
              insert_html_element("p", push: false)
            end
          when "li"
            close_element("li", in: LIST_ITEM_SCOPE)
          when "dd", "dt"
            close_element(token.name, in: ELEMENT_SCOPE)
          when "h1", "h2", "h3", "h4", "h5", "h6"
            @stack.reverse_each do |element|
              case element.name
              when "h1", "h2", "h3", "h4", "h5", "h6"
                close_element(element.name)
                break
              else
                break if ELEMENT_SCOPE.includes?(element.name)
              end
            end
          when "a", "b", "big", "code", "em", "font", "i", "nobr", "s", "small", "strike", "strong", "tt", "u"
            adoption_agency(token.name)
          when "applet", "marquee", "object"
            if find_element?(token.name, in: ELEMENT_SCOPE)
              close_element(token.name)
              @formatting.clear_last_marker
            else
              # parse error: ignore the token
            end
          when "br"
            # parse error
            insert_html_element("br", push: false)
          # when "option"
            # todo: maybe clone an option in selectedcontent
          else
            i = -1
            while node = @stack[i]?
              if node.name == token.name
                # generate_implied_end_tags
                close_element(token.name)
              end
              break if SPECIAL_ELEMENT.includes?(node.name)
              i -= 1
            end
          end
        when Token::Doctype
          # parse error: ignore the token
        when Token::EOF
          # parse error if any node in stack isn't in some list
          return
        end

        p! next_token
      end
    end

    protected def parse_text(state, tag_name)
      @lexer.state = state

      while token = p(@lexer.next(tag_name))
        case token
        when Token::Character
          data = token.data
          data = data.lchop('\n') if tag_name == "textarea"
          insert_text(data)
        when Token::EOF, Token::EndTag
          break
        else
          raise "unreachable"
        end
      end

      @stack.pop
    end

    protected def parse_in_table : Nil
      raise NotImplementedError.new("Parser#parse_in_table")
    end

    protected def parse_in_table_text : Nil
      raise NotImplementedError.new("Parser#parse_in_table_text")
    end

    protected def parse_in_caption : Nil
      raise NotImplementedError.new("Parser#parse_in_caption")
    end

    protected def parse_in_column_group : Nil
      raise NotImplementedError.new("Parser#parse_in_column_group")
    end

    protected def parse_in_table_body : Nil
      raise NotImplementedError.new("Parser#parse_in_table_body")
    end

    protected def parse_in_row : Nil
      raise NotImplementedError.new("Parser#parse_in_row")
    end

    protected def parse_in_cell : Nil
      raise NotImplementedError.new("Parser#parse_in_cell")
    end

    protected def parse_in_template : Nil
      raise NotImplementedError.new("Parser#parse_in_template")
    end

    protected def parse_after_body : Nil
      loop do
        case token = @token
        when Token::Character
          if token.data =~ WHITESPACE
            insert_text(token.data)
          else
            insert_text(token.data, body)
          end
          next_token
          next
        when Token::EndTag
          if token.name == "html"
            return
          end
        when Token::StartTag
          if token.name == "html"
            copy_attributes(token, to: html)
            next_token
            next
          end
        when Token::Comment
          insert_comment(token)
          next_token
          next
        when Token::EOF
          return
        when Token::Doctype
          # parse error: ignore the token
          next_token
          next
        end

        parse_in_body
        next_token
      end
    end

    protected def parse_in_frameset : Nil
      raise NotImplementedError.new("Parser#parse_in_frameset")
    end

    protected def parse_after_frameset : Nil
      raise NotImplementedError.new("Parser#parse_after_frameset")
    end

    protected def parse_after_after_body : Nil
      loop do
        case token = @token
        when Token::Character
          if token.data =~ WHITESPACE
            insert_text(token.data)
            next_token
            next
          #else
          #  parse_in_body
          end
        when Token::Comment
          @document.append DOM::Comment.new(token.data, @document)
        when Token::EOF
          return
        when Token::Doctype
          # parse error: ignore the token
          next_token
          next
        end

        parse_in_body
        next_token
      end
    end

    protected def parse_after_after_frameset : Nil
      raise NotImplementedError.new("Parser#parse_after_after_frameset")
    end

    protected def adoption_agency(token : Token) : Nil
      # 1.
      subject = token.name

      # 2.
      if current_node.name == subject && !@formatting.includes?(current_node)
        @stack.pop?
        return
      end

      # 3. 4. + outer-loop 1. 2.
      8.times do
        # 3. 4. 5.
        return unless formatting_element = find_formatting_element(subject)
        return unless @stack.includes?(formatting_element)
        return unless find_element?(formatting_element, in: ELEMENT_SCOPE)

        # 7.
        furthest_block_index = find_furthest_block_index(formatting_element)
        unless furthest_block_index
          # 8.
          until @stack.pop? == formatting_element; end
          @formatting.delete(formatting_element)
          return
        end
        furthest_block = @stack[furthest_block_index]

        # 9. 10.
        bookmark = @stack.index!(formatting_element)
        common_ancestor = @stack[bookmark - 1]

        # 11.
        node = last_node = furthest_block
        node_stack_index = @stack.index!(node)

        # 12. 13.
        inner_loop_counter = 0
        while true
          # 1. 2. 3.
          inner_loop_counter += 1
          node = @stack[node_stack_index -= 1]
          break if node == formatting_element

          if @formatting.active?(node)
            if inner_loop_counter > 3
              # 4.
              @formatting.delete(node)
              # 5.
              @stack.delete(node)
              next
            end
          else
            # 5.
            @stack.delete(node)
            next
          end

          # 6.
          new_element = DOM::Element.new(node.name, @document)
          node.attributes.each { |a| new_element.attributes[a.name] = a.value }
          common_ancestor.append(new_element)
          index = @formatting.replace(node, new_element)
          @stack[@stack.index!(node)] = new_element
          node = new_element

          # 7.
          if last_node == furthest_block
            bookmark = index + 1
          end

          # 8. 9.
          node.append(last_node)
          last_node = node
        end

        # 14. todo: ....
        raise NotImplementedError.new("Parser#adoption_agency(token)")
      end
    end

    private def find_formatting_element(subject)
      formatting_element = nil
      @formatting.reverse_each do |el|
        if el.name == subject
          formatting_element = el
        elsif @formatting.marker?(el)
          break
        end
      end
      formatting_element
    end

    private def find_furthest_block_index(formatting_element)
      i = 0
      while node = @stack[i]?
        if node == formatting_element
          while node = @stack[i]?
            if SPECIAL_ELEMENT.includes?(node.name)
              return i
            end
            i+= 1
          end
          return
        end
        i += 1
      end
    end

    protected def adoption_agency(name : String) : Nil
      raise NotImplementedError.new("Parser#adoption_agency(name)")
    end

    protected def copy_attributes(token, to element)
      token.attributes?.try(&.each { |n, v| element.attributes[n] = v || "" })
    end

    protected def find_element?(name : String, *, in scope)
      @stack.reverse_each do |el|
        return el if el.name == name
        return if scope.includes?(el.name)
      end
    end

    protected def find_element?(element : DOM::Element, *, in scope)
      @stack.reverse_each do |el|
        return element if el == element
        return if scope.includes?(el.name)
      end
    end

    protected def close_element(name, *, in scope)
      if element = find_element?(name, in: scope)
        loop do
          break if @stack.pop == element
        end
      end
    end

    protected def close_element(name)
      loop do
        break if @stack.pop.name == name
      end
    end

    protected def close_current_node(name)
      return unless last = @stack.last?
      return unless last.name == name
      @stack.pop
    end

    protected def generate_implied_end_tags(thorough = false, except = nil)
      while element = @stack.last?
        if except.try(&.includes?(element.name))
          break
        end
        case element.name
        when "dd", "dt", "li", "optgroup", "option", "p", "rb", "rp", "rt", "rtc"
          @stack.pop?
        when "caption", "colgroup", "tbody", "td", "tfoot", "th", "thread", "tr"
          if thorough
            @stack.pop?
          else
            break
          end
        else
          break
        end
      end
    end

    protected def insert_doctype(token) : Nil
      public_id = token.public_id?
      doctype = DOM::DocumentType.new(token.name || "", public_id || "", token.system_id? || "", @document)
      @document.append(doctype)

      if token.quirks_mode? || token.name != "html"
        document.quirks_mode = QuirksMode::FULL
      elsif public_id
        document.quirks_mode = QuirksMode.from(public_id, doctype.system_id)
      end
    end

    protected def insert_comment(token) : Nil
      current_node.append DOM::Comment.new(token.data, @document)
    end

    protected def insert_html_element(token, *, push = true) : DOM::Element
      element = insert_html_element(token.name, push: push)
      copy_attributes(token, to: element)
      element
    end

    protected def insert_html_element(name : String, *, push = true) : DOM::Element
      element = DOM::Element.new(name, @document)
      current_node.append(element)
      @stack.push(element) if push
      element
    end

    protected def insert_text(data : String, parent_node = current_node) : Nil
      return if data.empty?

      if (last = parent_node.last_child?) && last.is_a?(DOM::Text)
        last.data += data
      else
        parent_node.append DOM::Text.new(data, @document)
      end
    end

    protected def reconstruct_formatting : Nil
      return if @formatting.empty?
      i = -1

      @formatting.reverse_each do |entry|
        break if @formatting.marker?(entry) || @stack.includes?(entry)
        i -= 1
      end
      return if i == -1 && @formatting.size == 1

      while element = @formatting[i += 1]?
        new_element = insert_html_element(element.name)
        element.attributes.each { |a| new_element.attributes[a.name] = a.value }
        @formatting[i] = element
      end
    end
  end
end
