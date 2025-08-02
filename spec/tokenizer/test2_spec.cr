require "../spec_helper"
describe "tokenizer/test2" do
  it "DOCTYPE without name" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE>"
    assert_lexes input, output, [{"code" => "missing-doctype-name", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE without space before name" do
    output = "[[\"DOCTYPE\",\"html\",null,null,true]]"
    input = "<!DOCTYPEhtml>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Incorrect DOCTYPE without a space before name" do
    output = "[[\"DOCTYPE\",\"foo\",null,null,true]]"
    input = "<!DOCTYPEfoo>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with publicId" do
    output = "[[\"DOCTYPE\",\"html\",\"-//W3C//DTD HTML Transitional 4.01//EN\",null,true]]"
    input = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML Transitional 4.01//EN\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with EOF after PUBLIC" do
    output = "[[\"DOCTYPE\",\"html\",null,null,false]]"
    input = "<!DOCTYPE html PUBLIC"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with EOF after PUBLIC '" do
    output = "[[\"DOCTYPE\",\"html\",\"\",null,false]]"
    input = "<!DOCTYPE html PUBLIC '"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 24, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with EOF after PUBLIC 'x" do
    output = "[[\"DOCTYPE\",\"html\",\"x\",null,false]]"
    input = "<!DOCTYPE html PUBLIC 'x"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 25, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with systemId" do
    output = "[[\"DOCTYPE\",\"html\",null,\"-//W3C//DTD HTML Transitional 4.01//EN\",true]]"
    input = "<!DOCTYPE html SYSTEM \"-//W3C//DTD HTML Transitional 4.01//EN\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with single-quoted systemId" do
    output = "[[\"DOCTYPE\",\"html\",null,\"-//W3C//DTD HTML Transitional 4.01//EN\",true]]"
    input = "<!DOCTYPE html SYSTEM '-//W3C//DTD HTML Transitional 4.01//EN'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with publicId and systemId" do
    output = "[[\"DOCTYPE\",\"html\",\"-//W3C//DTD HTML Transitional 4.01//EN\",\"-//W3C//DTD HTML Transitional 4.01//EN\",true]]"
    input = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML Transitional 4.01//EN\" \"-//W3C//DTD HTML Transitional 4.01//EN\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with > in double-quoted publicId" do
    output = "[[\"DOCTYPE\",\"html\",\"\",null,false],[\"Character\",\"x\"]]"
    input = "<!DOCTYPE html PUBLIC \">x"
    assert_lexes input, output, [{"code" => "abrupt-doctype-public-identifier", "col" => 24, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with > in single-quoted publicId" do
    output = "[[\"DOCTYPE\",\"html\",\"\",null,false],[\"Character\",\"x\"]]"
    input = "<!DOCTYPE html PUBLIC '>x"
    assert_lexes input, output, [{"code" => "abrupt-doctype-public-identifier", "col" => 24, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with > in double-quoted systemId" do
    output = "[[\"DOCTYPE\",\"html\",\"foo\",\"\",false],[\"Character\",\"x\"]]"
    input = "<!DOCTYPE html PUBLIC \"foo\" \">x"
    assert_lexes input, output, [{"code" => "abrupt-doctype-system-identifier", "col" => 30, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "DOCTYPE with > in single-quoted systemId" do
    output = "[[\"DOCTYPE\",\"html\",\"foo\",\"\",false],[\"Character\",\"x\"]]"
    input = "<!DOCTYPE html PUBLIC 'foo' '>x"
    assert_lexes input, output, [{"code" => "abrupt-doctype-system-identifier", "col" => 30, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Incomplete doctype" do
    output = "[[\"DOCTYPE\",\"html\",null,null,false]]"
    input = "<!DOCTYPE html "
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 16}], HTML::Lexer::State::DATA, "", false
  end
  it "Numeric entity representing the NUL character" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#0000;"
    assert_lexes input, output, [{"code" => "null-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Hexadecimal entity representing the NUL character" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#x0000;"
    assert_lexes input, output, [{"code" => "null-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Numeric entity representing a codepoint after 1114111 (U+10FFFF)" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#2225222;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "Hexadecimal entity representing a codepoint after 1114111 (U+10FFFF)" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#x1010FFFF;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "Hexadecimal entity pair representing a surrogate pair" do
    output = "[[\"Character\",\"��\"]]"
    input = "&#xD869;&#xDED6;"
    assert_lexes input, output, [{"code" => "surrogate-character-reference", "line" => 1, "col" => 9}, {"code" => "surrogate-character-reference", "line" => 1, "col" => 17}], HTML::Lexer::State::DATA, "", false
  end
  it "Hexadecimal entity with mixed uppercase and lowercase" do
    output = "[[\"Character\",\"ꯍ\"]]"
    input = "&#xaBcD;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity without a name" do
    output = "[[\"Character\",\"&;\"]]"
    input = "&;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Unescaped ampersand in attribute value" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&\"}]]"
    input = "<h a='&'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "StartTag containing <" do
    output = "[[\"StartTag\",\"a<b\",{}]]"
    input = "<a<b>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Non-void element containing trailing /" do
    output = "[[\"StartTag\",\"h\",{},true]]"
    input = "<h/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Void element with permitted slash" do
    output = "[[\"StartTag\",\"br\",{},true]]"
    input = "<br/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Void element with permitted slash (with attribute)" do
    output = "[[\"StartTag\",\"br\",{\"foo\":\"bar\"},true]]"
    input = "<br foo='bar'/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "StartTag containing /" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
    input = "<h/a='b'>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Double-quoted attribute value" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
    input = "<h a=\"b\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Unescaped </" do
    output = "[[\"Character\",\"</\"]]"
    input = "</"
    assert_lexes input, output, [{"code" => "eof-before-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "Illegal end tag name" do
    output = "[[\"Comment\",\"1\"]]"
    input = "</1>"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "Simili processing instruction" do
    output = "[[\"Comment\",\"?namespace\"]]"
    input = "<?namespace>"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "A bogus comment stops at >, even if preceded by two dashes" do
    output = "[[\"Comment\",\"?foo--\"]]"
    input = "<?foo-->"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "Unescaped <" do
    output = "[[\"Character\",\"foo < bar\"]]"
    input = "foo < bar"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Null Byte Replacement" do
    output = "[[\"Character\",\"\\u0000\"]]"
    input = "\u0000"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Comment with dash" do
    output = "[[\"Comment\",\"-x\"]]"
    input = "<!---x"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Entity + newline" do
    output = "[[\"Character\",\"\\nx\\n>\\n\"]]"
    input = "\nx\n&gt;\n"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Start tag with no attributes but space before the greater-than sign" do
    output = "[[\"StartTag\",\"h\",{}]]"
    input = "<h >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Empty attribute followed by uppercase attribute" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"\",\"b\":\"\"}]]"
    input = "<h a B=''>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Double-quote after attribute name" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"\",\"\\\"\":\"\"}]]"
    input = "<h a \">"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Single-quote after attribute name" do
    output = "[[\"StartTag\",\"h\",{\"a\":\"\",\"'\":\"\"}]]"
    input = "<h a '>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Empty end tag with following characters" do
    output = "[[\"Character\",\"abc\"]]"
    input = "a</>bc"
    assert_lexes input, output, [{"code" => "missing-end-tag-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Empty end tag with following tag" do
    output = "[[\"Character\",\"a\"],[\"StartTag\",\"b\",{}],[\"Character\",\"c\"]]"
    input = "a</><b>c"
    assert_lexes input, output, [{"code" => "missing-end-tag-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Empty end tag with following comment" do
    output = "[[\"Character\",\"a\"],[\"Comment\",\"b\"],[\"Character\",\"c\"]]"
    input = "a</><!--b-->c"
    assert_lexes input, output, [{"code" => "missing-end-tag-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Empty end tag with following end tag" do
    output = "[[\"Character\",\"a\"],[\"EndTag\",\"b\"],[\"Character\",\"c\"]]"
    input = "a</></b>c"
    assert_lexes input, output, [{"code" => "missing-end-tag-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
end
