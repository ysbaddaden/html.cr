require "../spec_helper"
describe "tokenizer/test4" do
  it "< in attribute name" do
    output = "[[\"StartTag\",\"z\",{\"0\":\"\",\"<\":\"\"}]]"
    input = "<z/0  <>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}, {"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "< in unquoted attribute value" do
    output = "[[\"StartTag\",\"z\",{\"x\":\"<\"}]]"
    input = "<z x=<>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "= in unquoted attribute value" do
    output = "[[\"StartTag\",\"z\",{\"z\":\"z=z\"}]]"
    input = "<z z=z=z>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "= attribute" do
    output = "[[\"StartTag\",\"z\",{\"=\":\"\"}]]"
    input = "<z =>"
    assert_lexes input, output, [{"code" => "unexpected-equals-sign-before-attribute-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "== attribute" do
    output = "[[\"StartTag\",\"z\",{\"=\":\"\"}]]"
    input = "<z ==>"
    assert_lexes input, output, [{"code" => "unexpected-equals-sign-before-attribute-name", "line" => 1, "col" => 4}, {"code" => "missing-attribute-value", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "=== attribute" do
    output = "[[\"StartTag\",\"z\",{\"=\":\"=\"}]]"
    input = "<z ===>"
    assert_lexes input, output, [{"code" => "unexpected-equals-sign-before-attribute-name", "line" => 1, "col" => 4}, {"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "==== attribute" do
    output = "[[\"StartTag\",\"z\",{\"=\":\"==\"}]]"
    input = "<z ====>"
    assert_lexes input, output, [{"code" => "unexpected-equals-sign-before-attribute-name", "line" => 1, "col" => 4}, {"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 6}, {"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "\" after ampersand in double-quoted attribute value" do
    output = "[[\"StartTag\",\"z\",{\"z\":\"&\"}]]"
    input = "<z z=\"&\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "' after ampersand in double-quoted attribute value" do
    output = "[[\"StartTag\",\"z\",{\"z\":\"&'\"}]]"
    input = "<z z=\"&'\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "' after ampersand in single-quoted attribute value" do
    output = "[[\"StartTag\",\"z\",{\"z\":\"&\"}]]"
    input = "<z z='&'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "\" after ampersand in single-quoted attribute value" do
    output = "[[\"StartTag\",\"z\",{\"z\":\"&\\\"\"}]]"
    input = "<z z='&\"'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Text after bogus character reference" do
    output = "[[\"StartTag\",\"z\",{\"z\":\"&xlink_xmlns;\"}],[\"Character\",\"bar\"],[\"StartTag\",\"z\",{}]]"
    input = "<z z='&xlink_xmlns;'>bar<z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Text after hex character reference" do
    output = "[[\"StartTag\",\"z\",{\"z\":\"  foo\"}],[\"Character\",\"bar\"],[\"StartTag\",\"z\",{}]]"
    input = "<z z='&#x0020; foo'>bar<z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Attribute name starting with \"" do
    output = "[[\"StartTag\",\"foo\",{\"\\\"\":\"bar\"}]]"
    input = "<foo \"='bar'>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Attribute name starting with '" do
    output = "[[\"StartTag\",\"foo\",{\"'\":\"bar\"}]]"
    input = "<foo '='bar'>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Attribute name containing \"" do
    output = "[[\"StartTag\",\"foo\",{\"a\\\"b\":\"bar\"}]]"
    input = "<foo a\"b='bar'>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Attribute name containing '" do
    output = "[[\"StartTag\",\"foo\",{\"a'b\":\"bar\"}]]"
    input = "<foo a'b='bar'>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Unquoted attribute value containing '" do
    output = "[[\"StartTag\",\"foo\",{\"a\":\"b'c\"}]]"
    input = "<foo a=b'c>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Unquoted attribute value containing \"" do
    output = "[[\"StartTag\",\"foo\",{\"a\":\"b\\\"c\"}]]"
    input = "<foo a=b\"c>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Double-quoted attribute value not followed by whitespace" do
    output = "[[\"StartTag\",\"foo\",{\"a\":\"b\",\"c\":\"\"}]]"
    input = "<foo a=\"b\"c>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "Single-quoted attribute value not followed by whitespace" do
    output = "[[\"StartTag\",\"foo\",{\"a\":\"b\",\"c\":\"\"}]]"
    input = "<foo a='b'c>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "Quoted attribute followed by permitted /" do
    output = "[[\"StartTag\",\"br\",{\"a\":\"b\"},true]]"
    input = "<br a='b'/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Quoted attribute followed by non-permitted /" do
    output = "[[\"StartTag\",\"bar\",{\"a\":\"b\"},true]]"
    input = "<bar a='b'/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "CR EOF after doctype name" do
    output = "[[\"DOCTYPE\",\"html\",null,null,false]]"
    input = "<!doctype html \r"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "CR EOF in tag name" do
    output = "[]"
    input = "<z\r"
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Slash EOF in tag name" do
    output = "[]"
    input = "<z/"
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Zero hex numeric entity" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#x0"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}, {"code" => "null-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Zero decimal numeric entity" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#0"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 4}, {"code" => "null-character-reference", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Zero-prefixed hex numeric entity" do
    output = "[[\"Character\",\"A\"]]"
    input = "&#x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Zero-prefixed decimal numeric entity" do
    output = "[[\"Character\",\"A\"]]"
    input = "&#000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Empty hex numeric entities" do
    output = "[[\"Character\",\"&#x &#X \"]]"
    input = "&#x &#X "
    assert_lexes input, output, [{"code" => "absence-of-digits-in-numeric-character-reference", "line" => 1, "col" => 4}, {"code" => "absence-of-digits-in-numeric-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid digit in hex numeric entity" do
    output = "[[\"Character\",\"&#xZ\"]]"
    input = "&#xZ"
    assert_lexes input, output, [{"code" => "absence-of-digits-in-numeric-character-reference", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Empty decimal numeric entities" do
    output = "[[\"Character\",\"&# &#; \"]]"
    input = "&# &#; "
    assert_lexes input, output, [{"code" => "absence-of-digits-in-numeric-character-reference", "line" => 1, "col" => 3}, {"code" => "absence-of-digits-in-numeric-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid digit in decimal numeric entity" do
    output = "[[\"Character\",\"&#A\"]]"
    input = "&#A"
    assert_lexes input, output, [{"code" => "absence-of-digits-in-numeric-character-reference", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "Non-BMP numeric entity" do
    output = "[[\"Character\",\"𐀀\"]]"
    input = "&#x10000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Maximum non-BMP numeric entity" do
    output = "[[\"Character\",\"􏿿\"]]"
    input = "&#X10FFFF;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "Above maximum numeric entity" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#x110000;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "32-bit hex numeric entity" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#x80000041;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "33-bit hex numeric entity" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#x100000041;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "33-bit decimal numeric entity" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#4294967361;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "65-bit hex numeric entity" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#x10000000000000041;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 22}], HTML::Lexer::State::DATA, "", false
  end
  it "65-bit decimal numeric entity" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#18446744073709551681;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 24}], HTML::Lexer::State::DATA, "", false
  end
  it "Surrogate code point edge cases" do
    output = "[[\"Character\",\"퟿����\uE000\"]]"
    input = "&#xD7FF;&#xD800;&#xD801;&#xDFFE;&#xDFFF;&#xE000;"
    assert_lexes input, output, [{"code" => "surrogate-character-reference", "line" => 1, "col" => 17}, {"code" => "surrogate-character-reference", "line" => 1, "col" => 25}, {"code" => "surrogate-character-reference", "line" => 1, "col" => 33}, {"code" => "surrogate-character-reference", "line" => 1, "col" => 41}], HTML::Lexer::State::DATA, "", false
  end
  it "Uppercase start tag name" do
    output = "[[\"StartTag\",\"x\",{}]]"
    input = "<X>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Uppercase end tag name" do
    output = "[[\"EndTag\",\"x\"]]"
    input = "</X>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Uppercase attribute name" do
    output = "[[\"StartTag\",\"x\",{\"x\":\"\"}]]"
    input = "<x X>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Tag/attribute name case edge values" do
    output = "[[\"StartTag\",\"x@az[`az{\",{\"@az[`az{\":\"\"}]]"
    input = "<x@AZ[`az{ @AZ[`az{>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Duplicate different-case attributes" do
    output = "[[\"StartTag\",\"x\",{\"x\":\"1\"}]]"
    input = "<x x=1 x=2 X=3>"
    assert_lexes input, output, [{"code" => "duplicate-attribute", "line" => 1, "col" => 9}, {"code" => "duplicate-attribute", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "Uppercase close tag attributes" do
    output = "[[\"EndTag\",\"x\"]]"
    input = "</x X>"
    assert_lexes input, output, [{"code" => "end-tag-with-attributes", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Duplicate close tag attributes" do
    output = "[[\"EndTag\",\"x\"]]"
    input = "</x x x>"
    assert_lexes input, output, [{"code" => "duplicate-attribute", "line" => 1, "col" => 8}, {"code" => "end-tag-with-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Permitted slash" do
    output = "[[\"StartTag\",\"br\",{},true]]"
    input = "<br/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Non-permitted slash" do
    output = "[[\"StartTag\",\"xr\",{},true]]"
    input = "<xr/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Permitted slash but in close tag" do
    output = "[[\"EndTag\",\"br\"]]"
    input = "</br/>"
    assert_lexes input, output, [{"code" => "end-tag-with-trailing-solidus", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Doctype public case-sensitivity (1)" do
    output = "[[\"DOCTYPE\",\"html\",\"AbC\",\"XyZ\",true]]"
    input = "<!DoCtYpE HtMl PuBlIc \"AbC\" \"XyZ\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Doctype public case-sensitivity (2)" do
    output = "[[\"DOCTYPE\",\"html\",\"aBc\",\"xYz\",true]]"
    input = "<!dOcTyPe hTmL pUbLiC \"aBc\" \"xYz\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Doctype system case-sensitivity (1)" do
    output = "[[\"DOCTYPE\",\"html\",null,\"XyZ\",true]]"
    input = "<!DoCtYpE HtMl SyStEm \"XyZ\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Doctype system case-sensitivity (2)" do
    output = "[[\"DOCTYPE\",\"html\",null,\"xYz\",true]]"
    input = "<!dOcTyPe hTmL sYsTeM \"xYz\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "U+0000 in lookahead region after non-matching character" do
    output = "[[\"Comment\",\"doc\"],[\"Character\",\"\\u0000\"]]"
    input = "<!doc>\u0000"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}, {"code" => "unexpected-null-character", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "U+0000 in lookahead region" do
    output = "[[\"Comment\",\"doc�\"]]"
    input = "<!doc\u0000"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}, {"code" => "unexpected-null-character", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "U+0080 in lookahead region" do
    output = "[[\"Comment\",\"doc\u0080\"]]"
    input = "<!doc\u0080"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "U+FDD1 in lookahead region" do
    output = "[[\"Comment\",\"doc﷑\"]]"
    input = "<!doc﷑"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}, {"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "U+1FFFF in lookahead region" do
    output = "[[\"Comment\",\"doc🿿\"]]"
    input = "<!doc🿿"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}, {"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "CR followed by non-LF" do
    output = "[[\"Character\",\"\\n?\"]]"
    input = "\r?"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "CR at EOF" do
    output = "[[\"Character\",\"\\n\"]]"
    input = "\r"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "LF at EOF" do
    output = "[[\"Character\",\"\\n\"]]"
    input = "\n"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "CR LF" do
    output = "[[\"Character\",\"\\n\"]]"
    input = "\r\n"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "CR CR" do
    output = "[[\"Character\",\"\\n\\n\"]]"
    input = "\r\r"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "LF LF" do
    output = "[[\"Character\",\"\\n\\n\"]]"
    input = "\n\n"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "LF CR" do
    output = "[[\"Character\",\"\\n\\n\"]]"
    input = "\n\r"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "text CR CR CR text" do
    output = "[[\"Character\",\"text\\n\\n\\ntext\"]]"
    input = "text\r\r\rtext"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Doctype publik" do
    output = "[[\"DOCTYPE\",\"html\",null,null,false]]"
    input = "<!DOCTYPE html PUBLIK \"AbC\" \"XyZ\">"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 16}], HTML::Lexer::State::DATA, "", false
  end
  it "Doctype publi" do
    output = "[[\"DOCTYPE\",\"html\",null,null,false]]"
    input = "<!DOCTYPE html PUBLI"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 16}], HTML::Lexer::State::DATA, "", false
  end
  it "Doctype sistem" do
    output = "[[\"DOCTYPE\",\"html\",null,null,false]]"
    input = "<!DOCTYPE html SISTEM \"AbC\">"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 16}], HTML::Lexer::State::DATA, "", false
  end
  it "Doctype sys" do
    output = "[[\"DOCTYPE\",\"html\",null,null,false]]"
    input = "<!DOCTYPE html SYS"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 16}], HTML::Lexer::State::DATA, "", false
  end
  it "Doctype html x>text" do
    output = "[[\"DOCTYPE\",\"html\",null,null,false],[\"Character\",\"text\"]]"
    input = "<!DOCTYPE html x>text"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 16}], HTML::Lexer::State::DATA, "", false
  end
  it "Grave accent in unquoted attribute" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"aa`\"}]]"
    input = "<a a=aa`>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "EOF in tag name state " do
    output = "[]"
    input = "<a"
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "EOF in before attribute name state" do
    output = "[]"
    input = "<a "
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "EOF in attribute name state" do
    output = "[]"
    input = "<a a"
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "EOF in after attribute name state" do
    output = "[]"
    input = "<a a "
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "EOF in before attribute value state" do
    output = "[]"
    input = "<a a ="
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "EOF in attribute value (double quoted) state" do
    output = "[]"
    input = "<a a =\"a"
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "EOF in attribute value (single quoted) state" do
    output = "[]"
    input = "<a a ='a"
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "EOF in attribute value (unquoted) state" do
    output = "[]"
    input = "<a a =a"
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "EOF in after attribute value state" do
    output = "[]"
    input = "<a a ='a'"
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
end
