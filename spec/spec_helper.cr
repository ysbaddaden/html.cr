# Copyright 2025 Julien PORTALIER
# Distributed under the Apache-2.0 LICENSE

require "minitest/autorun"
require "minitest/spec"
require "json"
require "../src/lexer"

class HTML::Lexer
  # :nodoc:
  struct Error
    getter code : String
    getter line : Int32
    getter column : Int32

    def self.wrap(errors)
      errors.map do |hash|
        code = hash["code"].as(String)
        line = hash["line"].as(Int32)
        column = hash["col"].as(Int32)
        Error.new(code, line, column)
      end
    end

    def initialize(@code, @line, @column)
    end

    def <=>(other : Error)
      cmp = line <=> other.line
      cmp = column <=> other.column if cmp == 0
      cmp = code <=> other.code if cmp == 0
      cmp
    end

    def inspect(io : IO)
      io << @code << " at " << @line << ':' << @column
    end
  end

  # :nodoc:
  getter errors = [] of Error

  # :nodoc:
  def error(code : String, line : Int32, column : Int32)
    @errors << Error.new(code, line, column)
  end
end

class Minitest::Test
  def assert_lexes(input, output, errors, state = HTML::Lexer::State::DATA, tag_name = "__invalid", unescape = false, file = __FILE__, line = __LINE__)
    tokens = [] of HTML::Lexer::Token

    lexer = HTML::Lexer.new(input)
    lexer.state = state

    token = lexer.next(tag_name)
    loop do
      if token.is_a?(HTML::Lexer::Token::Character)
        while (peek = lexer.next(tag_name)).is_a?(HTML::Lexer::Token::Character)
          token = HTML::Lexer::Token::Character.new(token.data + peek.data)
        end
        tokens << token
        token = peek
      end
      tokens << token
      break if token.is_a?(HTML::Lexer::Token::EOF)
      token = lexer.next(tag_name)
    end

    JSON.parse(output).as_a.each do |expected|
      token = tokens.shift? || lexer.next(tag_name)

      case token
      in HTML::Lexer::Token::Doctype
        assert_equal expected[0], "DOCTYPE", nil, file, line
        assert_equal unescape ? self.unescape(expected[1]) : expected[1], token.name, nil, file, line
        assert_equal unescape ? self.unescape(expected[2]) : expected[2], token.public_id?, nil, file, line
        assert_equal unescape ? self.unescape(expected[3]) : expected[3], token.system_id?, nil, file, line
        refute_equal expected[4], token.quirks_mode?, -> {
          expected[4] ? "Expected quirks mode flag to not be set" : "Expected quirks mode flag to be set"
        }, file, line
      in HTML::Lexer::Token::StartTag
        assert_equal expected[0], "StartTag", nil, file, line
        assert_equal unescape ? self.unescape(expected[1]) : expected[1], token.name, nil, file, line

        attrs = expected[2]?
        attrs = nil if attrs.try(&.as_h?.try(&.empty?))
        assert_equal attrs, token.attributes?, nil, file, line

        unless expected[3]?.nil?
          assert_equal expected[3], token.empty?, nil, file, line
        end
      in HTML::Lexer::Token::EndTag
        assert_equal expected[0], "EndTag", nil, file, line
        assert_equal unescape ? self.unescape(expected[1]) : expected[1], token.name, nil, file, line
      in HTML::Lexer::Token::Comment
        assert_equal expected[0], "Comment", nil, file, line
        assert_equal unescape ? self.unescape(expected[1]) : expected[1], token.data, nil, file, line
      in HTML::Lexer::Token::Character
        assert_equal expected[0], "Character", nil, file, line
        assert_equal unescape ? self.unescape(expected[1]) : expected[1], token.data, nil, file, line
      in HTML::Lexer::Token::EOF
        assert_equal expected[0], "EOF", nil, file, line
      in HTML::Lexer::Token
        raise "unreachable"
      end
    end

    # must have consumed everything
    assert_instance_of HTML::Lexer::Token::EOF, tokens.shift?, nil, file, line

    if errors
      lexer.errors.sort!
      expected_errors = HTML::Lexer::Error.wrap(errors).sort!

      unless expected_errors == lexer.errors
        i = 0
        off_by_one_error = expected_errors.all? do |error|
          actual = lexer.errors[i]
          error.code == actual.code &&
            error.line == actual.line &&
              ((error.column - 1)..(error.column + 1)).includes?(actual.column)
          i += 1
        end
        if off_by_one_error
          skip "The reported column for a parse error is off by one."
        else
          assert_equal HTML::Lexer::Error.wrap(errors).sort, lexer.errors.sort, nil, file, line
        end
      end
    else
      assert_empty lexer.errors, "Expected no errors", file, line
    end
  end

  def unescape(value : JSON::Any)
    if str = value.as_s?
      unescape(str)
    else
      value.raw
    end
  end

  def unescape(value : String) : String
    value.gsub(/\\u([A-F0-9]+)/) { |_, m| m[1].to_i(16).unsafe_chr }
  end
end
