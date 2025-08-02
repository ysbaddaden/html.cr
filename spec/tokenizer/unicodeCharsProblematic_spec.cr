require "../spec_helper"
describe "tokenizer/unicodeCharsProblematic" do
  it "Invalid Unicode character U+DFFF" do
    output = "[[\"Character\",\"\\\\uDFFF\"]]"
    input = unescape("\\uDFFF")
    assert_lexes input, output, [{"code" => "surrogate-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", true
  end
  it "Invalid Unicode character U+D800" do
    output = "[[\"Character\",\"\\\\uD800\"]]"
    input = unescape("\\uD800")
    assert_lexes input, output, [{"code" => "surrogate-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", true
  end
  it "Invalid Unicode character U+DFFF with valid preceding character" do
    output = "[[\"Character\",\"a\\\\uDFFF\"]]"
    input = unescape("a\\uDFFF")
    assert_lexes input, output, [{"code" => "surrogate-in-input-stream", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", true
  end
  it "Invalid Unicode character U+D800 with valid following character" do
    output = "[[\"Character\",\"\\\\uD800a\"]]"
    input = unescape("\\uD800a")
    assert_lexes input, output, [{"code" => "surrogate-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", true
  end
  it "CR followed by U+0000" do
    output = "[[\"Character\",\"\\n\\u0000\"]]"
    input = "\r\u0000"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
end
