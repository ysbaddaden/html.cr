require "minitest/autorun"
require "minitest/spec"
require "json"
require "../src/lexer"

class Minitest::Test
  def assert_lexes(input, output, file = __FILE__, line = __LINE__)
    lexer = HTML::Lexer.new(input)

    JSON.parse(output).as_a.each do |expected|
      case token = lexer.next
      in HTML::Lexer::Token::Doctype
        assert_equal expected[0], "DOCTYPE", nil, file, line
        assert_equal expected[1], token.name, nil, file, line
        assert_equal expected[2], token.public_id?, nil, file, line
        assert_equal expected[3], token.system_id?, nil, file, line
      in HTML::Lexer::Token::StartTag
        assert_equal expected[0], "StartTag", nil, file, line
        assert_equal expected[1], token.name, nil, file, line

        attrs = expected[2]?
        attrs = nil if attrs.try(&.as_h?.try(&.empty?))
        assert_equal attrs, token.attributes?, nil, file, line

        unless expected[3]?.nil?
          assert_equal expected[3], token.empty?, nil, file, line
        end
      in HTML::Lexer::Token::EndTag
        assert_equal expected[0], "EndTag", nil, file, line
        assert_equal expected[1], token.name, nil, file, line
      in HTML::Lexer::Token::Comment
        assert_equal expected[0], "Comment", nil, file, line
        assert_equal expected[1], token.data, nil, file, line
      in HTML::Lexer::Token::Character
        assert_equal expected[0], "Character", nil, file, line
        assert_equal expected[1], token.data, nil, file, line
      in HTML::Lexer::Token::EOF
        assert_equal expected[0], "EOF", nil, file, line
      in HTML::Lexer::Token
        raise "unreachable"
      end
    end

    # must have consumed everything
    assert_instance_of HTML::Lexer::Token::EOF, lexer.next, nil, file, line
  end
end
