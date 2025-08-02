require "../spec_helper"
describe "tokenizer/pendingSpecChanges" do
  it "<!---- >" do
    output = "[[\"Comment\",\"-- >\"]]"
    input = "<!---- >"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
end
