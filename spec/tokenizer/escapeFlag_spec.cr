require "../spec_helper"
describe "tokenizer/escapeFlag" do
  it "Commented close tag in RCDATA or RAWTEXT" do
    output = "[[\"Character\",\"foo<!--\"],[\"EndTag\",\"xmp\"],[\"Character\",\"-->\"],[\"EndTag\",\"xmp\"]]"
    input = "foo<!--</xmp>--></xmp>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "Bogus comment in RCDATA or RAWTEXT" do
    output = "[[\"Character\",\"foo<!-->baz\"],[\"EndTag\",\"xmp\"]]"
    input = "foo<!-->baz</xmp>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "End tag surrounded by bogus comment in RCDATA or RAWTEXT" do
    output = "[[\"Character\",\"foo<!-->\"],[\"EndTag\",\"xmp\"],[\"Comment\",\"\"],[\"Character\",\"baz\"],[\"EndTag\",\"xmp\"]]"
    input = "foo<!--></xmp><!-->baz</xmp>"
    assert_lexes input, output, [{"code" => "abrupt-closing-of-empty-comment", "line" => 1, "col" => 19}], HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, [{"code" => "abrupt-closing-of-empty-comment", "line" => 1, "col" => 19}], HTML::Lexer::State::RAWTEXT, "xmp", false
  end
  it "Commented entities in RCDATA" do
    output = "[[\"Character\",\" & <!-- & --> & \"],[\"EndTag\",\"xmp\"]]"
    input = " &amp; <!-- &amp; --> &amp; </xmp>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
  end
  it "Incorrect comment ending sequences in RCDATA or RAWTEXT" do
    output = "[[\"Character\",\"foo<!-- x --x>x-- >x--!>x--<>\"],[\"EndTag\",\"xmp\"]]"
    input = "foo<!-- x --x>x-- >x--!>x--<></xmp>"
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "xmp", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "xmp", false
  end
end
