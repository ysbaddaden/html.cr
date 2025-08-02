require "../spec_helper"
describe "tokenizer/contentModelFlags" do
  it "PLAINTEXT content model flag" do
    output = "[[\"Character\",\"<head>&body;\"]]"
    input = "<head>&body;"
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
  end
  it "PLAINTEXT with seeming close tag" do
    output = "[[\"Character\",\"</plaintext>&body;\"]]"
    input = "</plaintext>&body;"
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
  end
  it "End tag closing RCDATA or RAWTEXT" do
    output = "[[\"Character\",\"foo\"],[\"EndTag\",\"xmp\"]]"
    input = "foo</xmp>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "End tag closing RCDATA or RAWTEXT (case-insensitivity)" do
    output = "[[\"Character\",\"foo\"],[\"EndTag\",\"xmp\"]]"
    input = "foo</xMp>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "End tag closing RCDATA or RAWTEXT (ending with space)" do
    output = "[[\"Character\",\"foo\"]]"
    input = "foo</xmp "
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 10}], HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 10}], HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "End tag closing RCDATA or RAWTEXT (ending with EOF)" do
    output = "[[\"Character\",\"foo</xmp\"]]"
    input = "foo</xmp"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "End tag closing RCDATA or RAWTEXT (ending with slash)" do
    output = "[[\"Character\",\"foo\"]]"
    input = "foo</xmp/"
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 10}], HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, [{"code" => "eof-in-tag", "line" => 1, "col" => 10}], HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "End tag not closing RCDATA or RAWTEXT (ending with left-angle-bracket)" do
    output = "[[\"Character\",\"foo</xmp<\"]]"
    input = "foo</xmp<"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "End tag with incorrect name in RCDATA or RAWTEXT" do
    output = "[[\"Character\",\"</foo>bar\"],[\"EndTag\",\"xmp\"]]"
    input = "</foo>bar</xmp>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "Partial end tags leading straight into partial end tags" do
    output = "[[\"Character\",\"</xmp</xmp\"],[\"EndTag\",\"xmp\"]]"
    input = "</xmp</xmp</xmp>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "End tag with incorrect name in RCDATA or RAWTEXT (starting like correct name)" do
    output = "[[\"Character\",\"</foo>bar</xmpaar>\"]]"
    input = "</foo>bar</xmpaar>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "End tag closing RCDATA or RAWTEXT, switching back to PCDATA" do
    output = "[[\"Character\",\"foo\"],[\"EndTag\",\"xmp\"],[\"EndTag\",\"baz\"]]"
    input = "foo</xmp></baz>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "RAWTEXT w/ something looking like an entity" do
    output = "[[\"Character\",\"&foo;\"]]"
    input = "&foo;"
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "RCDATA w/ an entity" do
    output = "[[\"Character\",\"<\"]]"
    input = "&lt;"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "textarea", false
  end
end
