require "../spec_helper"
describe "tokenizer/domjs" do
  it "CR in bogus comment state" do
    output = "[[\"Comment\",\"?\\n\"]]"
    input = "<?\r"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "CRLF in bogus comment state" do
    output = "[[\"Comment\",\"?\\n\"]]"
    input = "<?\r\n"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "CRLFLF in bogus comment state" do
    output = "[[\"Comment\",\"?\\n\\n\"]]"
    input = "<?\r\n\n"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "Raw NUL replacement" do
    output = "[[\"Character\",\"\\\\uFFFD\"]]"
    input = unescape("\\u0000")
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 1}], HTML::Lexer::State::RCDATA, "__invalid__", true
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 1}], HTML::Lexer::State::RAWTEXT, "__invalid__", true
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 1}], HTML::Lexer::State::PLAINTEXT, "", true
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 1}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", true
  end
  it "NUL in CDATA section" do
    output = "[[\"Character\",\"\\\\u0000\"]]"
    input = unescape("\\u0000]]>")
    assert_lexes input, output, nil, HTML::Lexer::State::CDATA_SECTION, "__invalid__", true
  end
  it "NUL in script HTML comment" do
    output = "[[\"Character\",\"<!--test\\\\uFFFD--><!--test-\\\\uFFFD--><!--test--\\\\uFFFD-->\"]]"
    input = unescape("<!--test\\u0000--><!--test-\\u0000--><!--test--\\u0000-->")
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 9}, {"code" => "unexpected-null-character", "line" => 1, "col" => 22}, {"code" => "unexpected-null-character", "line" => 1, "col" => 36}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", true
  end
  it "NUL in script HTML comment - double escaped" do
    output = "[[\"Character\",\"<!--<script>\\\\uFFFD--><!--<script>-\\\\uFFFD--><!--<script>--\\\\uFFFD-->\"]]"
    input = unescape("<!--<script>\\u0000--><!--<script>-\\u0000--><!--<script>--\\u0000-->")
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 13}, {"code" => "unexpected-null-character", "line" => 1, "col" => 30}, {"code" => "unexpected-null-character", "line" => 1, "col" => 48}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", true
  end
  it "EOF in script HTML comment" do
    output = "[[\"Character\",\"<!--test\"]]"
    input = "<!--test"
    assert_lexes input, output, [{"code" => "eof-in-script-html-comment-like-text", "line" => 1, "col" => 9}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "EOF in script HTML comment after dash" do
    output = "[[\"Character\",\"<!--test-\"]]"
    input = "<!--test-"
    assert_lexes input, output, [{"code" => "eof-in-script-html-comment-like-text", "line" => 1, "col" => 10}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "EOF in script HTML comment after dash dash" do
    output = "[[\"Character\",\"<!--test--\"]]"
    input = "<!--test--"
    assert_lexes input, output, [{"code" => "eof-in-script-html-comment-like-text", "line" => 1, "col" => 11}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "EOF in script HTML comment double escaped after dash" do
    output = "[[\"Character\",\"<!--<script>-\"]]"
    input = "<!--<script>-"
    assert_lexes input, output, [{"code" => "eof-in-script-html-comment-like-text", "line" => 1, "col" => 14}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "EOF in script HTML comment double escaped after dash dash" do
    output = "[[\"Character\",\"<!--<script>--\"]]"
    input = "<!--<script>--"
    assert_lexes input, output, [{"code" => "eof-in-script-html-comment-like-text", "line" => 1, "col" => 15}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "EOF in script HTML comment - double escaped" do
    output = "[[\"Character\",\"<!--<script>\"]]"
    input = "<!--<script>"
    assert_lexes input, output, [{"code" => "eof-in-script-html-comment-like-text", "line" => 1, "col" => 13}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "Dash in script HTML comment" do
    output = "[[\"Character\",\"<!-- - -->\"]]"
    input = "<!-- - -->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "Dash less-than in script HTML comment" do
    output = "[[\"Character\",\"<!-- -< -->\"]]"
    input = "<!-- -< -->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "Dash at end of script HTML comment" do
    output = "[[\"Character\",\"<!--test--->\"]]"
    input = "<!--test--->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "</script> in script HTML comment" do
    output = "[[\"Character\",\"<!-- \"],[\"EndTag\",\"script\"],[\"Character\",\" -->\"],[\"EndTag\",\"script\"]]"
    input = "<!-- </script> --></script>"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "script", false
  end
  it "</script> in script HTML comment - double escaped" do
    output = "[[\"Character\",\"<!-- <script></script> -->\"],[\"EndTag\",\"script\"]]"
    input = "<!-- <script></script> --></script>"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "script", false
  end
  it "</script> in script HTML comment - double escaped with nested <script>" do
    output = "[[\"Character\",\"<!-- <script><script></script>\"],[\"EndTag\",\"script\"],[\"Character\",\" -->\"],[\"EndTag\",\"script\"]]"
    input = "<!-- <script><script></script></script> --></script>"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "script", false
  end
  it "</script> in script HTML comment - double escaped with abrupt end" do
    output = "[[\"Character\",\"<!-- <script>-->\"],[\"EndTag\",\"script\"],[\"Character\",\" -->\"],[\"EndTag\",\"script\"]]"
    input = "<!-- <script>--></script> --></script>"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "script", false
  end
  it "Incomplete start tag in script HTML comment double escaped" do
    output = "[[\"Character\",\"<!--<scrip>\"],[\"EndTag\",\"script\"],[\"Character\",\"-->\"]]"
    input = "<!--<scrip></script>-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "script", false
  end
  it "Unclosed start tag in script HTML comment double escaped" do
    output = "[[\"Character\",\"<!--<script\"],[\"EndTag\",\"script\"],[\"Character\",\"-->\"]]"
    input = "<!--<script</script>-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "script", false
  end
  it "Incomplete end tag in script HTML comment double escaped" do
    output = "[[\"Character\",\"<!--<script></scrip>-->\"]]"
    input = "<!--<script></scrip>-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "script", false
  end
  it "Unclosed end tag in script HTML comment double escaped" do
    output = "[[\"Character\",\"<!--<script></script-->\"]]"
    input = "<!--<script></script-->"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "script", false
  end
  it "leading U+FEFF must pass through" do
    output = "[[\"Character\",\"\\\\uFEFFfoo\\\\uFEFFbar\"]]"
    input = unescape("\\uFEFFfoo\\uFEFFbar")
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", true
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", true
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", true
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", true
  end
  it "Non BMP-charref in RCDATA" do
    output = "[[\"Character\",\"≂̸\"]]"
    input = "&NotEqualTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
  end
  it "Bad charref in RCDATA" do
    output = "[[\"Character\",\"&NotEqualTild;\"]]"
    input = "&NotEqualTild;"
    assert_lexes input, output, [{"code" => "unknown-named-character-reference", "line" => 1, "col" => 14}], HTML::Lexer::State::RCDATA, "__invalid__", false
  end
  it "lowercase endtags" do
    output = "[[\"EndTag\",\"xmp\"]]"
    input = "</XMP>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "xmp", false
  end
  it "bad endtag (space before name)" do
    output = "[[\"Character\",\"</ XMP>\"]]"
    input = "</ XMP>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "xmp", false
  end
  it "bad endtag (not matching last start tag)" do
    output = "[[\"Character\",\"</xm>\"]]"
    input = "</xm>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "xmp", false
  end
  it "bad endtag (without close bracket)" do
    output = "[[\"Character\",\"</xm \"]]"
    input = "</xm "
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "xmp", false
  end
  it "bad endtag (trailing solidus)" do
    output = "[[\"Character\",\"</xm/\"]]"
    input = "</xm/"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "xmp", false
  end
  it "Non BMP-charref in attribute" do
    output = "[[\"StartTag\",\"p\",{\"id\":\"≂̸\"}]]"
    input = "<p id=\"&NotEqualTilde;\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "--!NUL in comment " do
    output = "[[\"Comment\",\"--!\\\\uFFFD\"]]"
    input = unescape("<!----!\\u0000-->")
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", true
  end
  it "space EOF after doctype " do
    output = "[[\"DOCTYPE\",\"html\",null,null,false]]"
    input = "<!DOCTYPE html "
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 16}], HTML::Lexer::State::DATA, "", false
  end
  it "CDATA in HTML content" do
    output = "[[\"Comment\",\"[CDATA[foo]]\"]]"
    input = "<![CDATA[foo]]>"
    assert_lexes input, output, [{"code" => "cdata-in-html-content", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "CDATA content" do
    output = "[[\"Character\",\"foo&#32;\"]]"
    input = "foo&#32;]]>"
    assert_lexes input, output, nil, HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "CDATA followed by HTML content" do
    output = "[[\"Character\",\"foo&#32; \"]]"
    input = "foo&#32;]]>&#32;"
    assert_lexes input, output, nil, HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "CDATA with extra bracket" do
    output = "[[\"Character\",\"foo]\"]]"
    input = "foo]]]>"
    assert_lexes input, output, nil, HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "CDATA without end marker" do
    output = "[[\"Character\",\"foo\"]]"
    input = "foo"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 4}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "CDATA with single bracket ending" do
    output = "[[\"Character\",\"foo]\"]]"
    input = "foo]"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 5}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "CDATA with two brackets ending" do
    output = "[[\"Character\",\"foo]]\"]]"
    input = "foo]]"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 6}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "HTML tag in script data" do
    output = "[[\"Character\",\"<b>hello world</b>\"]]"
    input = "<b>hello world</b>"
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
end
