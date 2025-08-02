require "../spec_helper"
describe "tokenizer/test1" do
  it "Correct Doctype lowercase" do
    output = "[[\"DOCTYPE\",\"html\",null,null,true]]"
    input = "<!DOCTYPE html>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Correct Doctype uppercase" do
    output = "[[\"DOCTYPE\",\"html\",null,null,true]]"
    input = "<!DOCTYPE HTML>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Correct Doctype mixed case" do
    output = "[[\"DOCTYPE\",\"html\",null,null,true]]"
    input = "<!DOCTYPE HtMl>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Correct Doctype case with EOF" do
    output = "[[\"DOCTYPE\",\"html\",null,null,false]]"
    input = "<!DOCTYPE HtMl"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 15}], HTML::Lexer::State::DATA, "", false
  end
  it "Truncated doctype start" do
    output = "[[\"Comment\",\"DOC\"]]"
    input = "<!DOC>"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "Doctype in error" do
    output = "[[\"DOCTYPE\",\"foo\",null,null,true]]"
    input = "<!DOCTYPE foo>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Single Start Tag" do
    output = "[[\"StartTag\",\"h\",{}]]"
    input = "<h>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Empty end tag" do
    output = "[]"
    input = "</>"
    assert_lexes input, output, [{"code" => "missing-end-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "Empty start tag" do
    output = "[[\"Character\",\"<>\"]]"
    input = "<>"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "Start Tag w/attribute" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
    input = "<h a='b'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Start Tag w/attribute no quotes" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
    input = "<h a=b>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Start/End Tag" do
    output = "[[\"StartTag\",\"h\",{}],[\"EndTag\",\"h\"]]"
    input = "<h></h>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Two unclosed start tags" do
    output = "[[\"StartTag\",\"p\",{}],[\"Character\",\"One\"],[\"StartTag\",\"p\",{}],[\"Character\",\"Two\"]]"
    input = "<p>One<p>Two"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "End Tag w/attribute" do
    output = "[[\"StartTag\",\"h\",{}],[\"EndTag\",\"h\"]]"
    input = "<h></h a='b'>"
    assert_lexes input, output, [{"code" => "end-tag-with-attributes", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "Multiple atts" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"b\",\"c\":\"d\"}]]"
    input = "<h a='b' c='d'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Multiple atts no space" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"b\",\"c\":\"d\"}]]"
    input = "<h a='b'c='d'>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Repeated attr" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
    input = "<h a='b' a='d'>"
    assert_lexes input, output, [{"code" => "duplicate-attribute", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "Simple comment" do
    output = "[[\"Comment\",\"comment\"]]"
    input = "<!--comment-->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Comment, Central dash no space" do
    output = "[[\"Comment\",\"-\"]]"
    input = "<!----->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Comment, two central dashes" do
    output = "[[\"Comment\",\" --comment \"]]"
    input = "<!-- --comment -->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Comment, central less-than bang" do
    output = "[[\"Comment\",\"<!\"]]"
    input = "<!--<!-->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Unfinished comment" do
    output = "[[\"Comment\",\"comment\"]]"
    input = "<!--comment"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "Unfinished comment after start of nested comment" do
    output = "[[\"Comment\",\" <!\"]]"
    input = "<!-- <!--"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Start of a comment" do
    output = "[[\"Comment\",\"-\"]]"
    input = "<!-"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "Short comment" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!-->"
    assert_lexes input, output, [{"code" => "abrupt-closing-of-empty-comment", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Short comment two" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!--->"
    assert_lexes input, output, [{"code" => "abrupt-closing-of-empty-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Short comment three" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!---->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "< in comment" do
    output = "[[\"Comment\",\" <test\"]]"
    input = "<!-- <test-->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<< in comment" do
    output = "[[\"Comment\",\"<<\"]]"
    input = "<!--<<-->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<! in comment" do
    output = "[[\"Comment\",\" <!test\"]]"
    input = "<!-- <!test-->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<!- in comment" do
    output = "[[\"Comment\",\" <!-test\"]]"
    input = "<!-- <!-test-->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Nested comment" do
    output = "[[\"Comment\",\" <!--test\"]]"
    input = "<!-- <!--test-->"
    assert_lexes input, output, [{"code" => "nested-comment", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Nested comment with extra <" do
    output = "[[\"Comment\",\" <<!--test\"]]"
    input = "<!-- <<!--test-->"
    assert_lexes input, output, [{"code" => "nested-comment", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "< in script data" do
    output = "[[\"Character\",\"<test-->\"]]"
    input = "<test-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "<! in script data" do
    output = "[[\"Character\",\"<!test-->\"]]"
    input = "<!test-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "<!- in script data" do
    output = "[[\"Character\",\"<!-test-->\"]]"
    input = "<!-test-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "Escaped script data" do
    output = "[[\"Character\",\"<!--test-->\"]]"
    input = "<!--test-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "< in script HTML comment" do
    output = "[[\"Character\",\"<!-- < test -->\"]]"
    input = "<!-- < test -->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "</ in script HTML comment" do
    output = "[[\"Character\",\"<!-- </ test -->\"]]"
    input = "<!-- </ test -->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "Start tag in script HTML comment" do
    output = "[[\"Character\",\"<!-- <test> -->\"]]"
    input = "<!-- <test> -->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "End tag in script HTML comment" do
    output = "[[\"Character\",\"<!-- </test> -->\"]]"
    input = "<!-- </test> -->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "- in script HTML comment double escaped" do
    output = "[[\"Character\",\"<!--<script>-</script>-->\"]]"
    input = "<!--<script>-</script>-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "-- in script HTML comment double escaped" do
    output = "[[\"Character\",\"<!--<script>--</script>-->\"]]"
    input = "<!--<script>--</script>-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "--- in script HTML comment double escaped" do
    output = "[[\"Character\",\"<!--<script>---</script>-->\"]]"
    input = "<!--<script>---</script>-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "- spaced in script HTML comment double escaped" do
    output = "[[\"Character\",\"<!--<script> - </script>-->\"]]"
    input = "<!--<script> - </script>-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "-- spaced in script HTML comment double escaped" do
    output = "[[\"Character\",\"<!--<script> -- </script>-->\"]]"
    input = "<!--<script> -- </script>-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "Ampersand EOF" do
    output = "[[\"Character\",\"&\"]]"
    input = "&"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Ampersand ampersand EOF" do
    output = "[[\"Character\",\"&&\"]]"
    input = "&&"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Ampersand space EOF" do
    output = "[[\"Character\",\"& \"]]"
    input = "& "
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Unfinished entity" do
    output = "[[\"Character\",\"&f\"]]"
    input = "&f"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Ampersand, number sign" do
    output = "[[\"Character\",\"&#\"]]"
    input = "&#"
    assert_lexes input, output, [{"code" => "absence-of-digits-in-numeric-character-reference", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "Unfinished numeric entity" do
    output = "[[\"Character\",\"&#x\"]]"
    input = "&#x"
    assert_lexes input, output, [{"code" => "absence-of-digits-in-numeric-character-reference", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Entity with trailing semicolon (1)" do
    output = "[[\"Character\",\"I'm ¬it\"]]"
    input = "I'm &not;it"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity with trailing semicolon (2)" do
    output = "[[\"Character\",\"I'm ∉\"]]"
    input = "I'm &notin;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity without trailing semicolon (1)" do
    output = "[[\"Character\",\"I'm ¬it\"]]"
    input = "I'm &notit"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Entity without trailing semicolon (2)" do
    output = "[[\"Character\",\"I'm ¬in\"]]"
    input = "I'm &notin"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Partial entity match at end of file" do
    output = "[[\"Character\",\"I'm &no\"]]"
    input = "I'm &no"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Non-ASCII character reference name" do
    output = "[[\"Character\",\"&¬;\"]]"
    input = "&¬;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "ASCII decimal entity" do
    output = "[[\"Character\",\"$\"]]"
    input = "&#0036;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "ASCII hexadecimal entity" do
    output = "[[\"Character\",\"?\"]]"
    input = "&#x3f;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Hexadecimal entity in attribute" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"?\"}],[\"EndTag\",\"h\"]]"
    input = "<h a='&#x3f;'></h>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity in attribute without semicolon ending in x" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&notx\"}]]"
    input = "<h a='&notx'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity in attribute without semicolon ending in 1" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&not1\"}]]"
    input = "<h a='&not1'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity in attribute without semicolon ending in i" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&noti\"}]]"
    input = "<h a='&noti'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity in attribute without semicolon" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"©\"}]]"
    input = "<h a='&COPY'>"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "Unquoted attribute ending in ampersand" do
    output = "[[\"StartTag\",\"s\",{\"o\":\"&\",\"t\":\"\"}]]"
    input = "<s o=& t>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Unquoted attribute at end of tag with final character of &, with tag followed by characters" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a&\"}],[\"Character\",\"foo\"]]"
    input = "<a a=a&>foo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "plaintext element" do
    output = "[[\"StartTag\",\"plaintext\",{}],[\"Character\",\"foobar\"]]"
    input = "<plaintext>foobar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Open angled bracket in unquoted attribute value state" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"f<\"}]]"
    input = "<a a=f<>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
end
