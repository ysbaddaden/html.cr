require "../spec_helper"
describe "tokenizer/test3" do
  it "[empty]" do
    output = "[]"
    input = ""
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "[empty]" do
    output = "[]"
    input = ""
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 1}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "\\u0009" do
    output = "[[\"Character\",\"\\t\"]]"
    input = "\t"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "\\u0009" do
    output = "[[\"Character\",\"\\t\"]]"
    input = "\t"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "\\u000A" do
    output = "[[\"Character\",\"\\n\"]]"
    input = "\n"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "\\u000A" do
    output = "[[\"Character\",\"\\n\"]]"
    input = "\n"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 2, "col" => 1}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "\\u000B" do
    output = "[[\"Character\",\"\\u000b\"]]"
    input = "\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "\\u000B" do
    output = "[[\"Character\",\"\\u000b\"]]"
    input = "\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}, {"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "\\u000C" do
    output = "[[\"Character\",\"\\f\"]]"
    input = "\f"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "\\u000C" do
    output = "[[\"Character\",\"\\f\"]]"
    input = "\f"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it " " do
    output = "[[\"Character\",\" \"]]"
    input = " "
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it " " do
    output = "[[\"Character\",\" \"]]"
    input = " "
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "!" do
    output = "[[\"Character\",\"!\"]]"
    input = "!"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "!" do
    output = "[[\"Character\",\"!\"]]"
    input = "!"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "\"" do
    output = "[[\"Character\",\"\\\"\"]]"
    input = "\""
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "\"" do
    output = "[[\"Character\",\"\\\"\"]]"
    input = "\""
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "%" do
    output = "[[\"Character\",\"%\"]]"
    input = "%"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "%" do
    output = "[[\"Character\",\"%\"]]"
    input = "%"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "&" do
    output = "[[\"Character\",\"&\"]]"
    input = "&"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "&" do
    output = "[[\"Character\",\"&\"]]"
    input = "&"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "'" do
    output = "[[\"Character\",\"'\"]]"
    input = "'"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "'" do
    output = "[[\"Character\",\"'\"]]"
    input = "'"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "," do
    output = "[[\"Character\",\",\"]]"
    input = ","
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "," do
    output = "[[\"Character\",\",\"]]"
    input = ","
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "-" do
    output = "[[\"Character\",\"-\"]]"
    input = "-"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "-" do
    output = "[[\"Character\",\"-\"]]"
    input = "-"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "." do
    output = "[[\"Character\",\".\"]]"
    input = "."
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "." do
    output = "[[\"Character\",\".\"]]"
    input = "."
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "/" do
    output = "[[\"Character\",\"/\"]]"
    input = "/"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "/" do
    output = "[[\"Character\",\"/\"]]"
    input = "/"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "0" do
    output = "[[\"Character\",\"0\"]]"
    input = "0"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "0" do
    output = "[[\"Character\",\"0\"]]"
    input = "0"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "1" do
    output = "[[\"Character\",\"1\"]]"
    input = "1"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "1" do
    output = "[[\"Character\",\"1\"]]"
    input = "1"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "9" do
    output = "[[\"Character\",\"9\"]]"
    input = "9"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "9" do
    output = "[[\"Character\",\"9\"]]"
    input = "9"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";" do
    output = "[[\"Character\",\";\"]]"
    input = ";"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";" do
    output = "[[\"Character\",\";\"]]"
    input = ";"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";=" do
    output = "[[\"Character\",\";=\"]]"
    input = ";="
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";=" do
    output = "[[\"Character\",\";=\"]]"
    input = ";="
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";>" do
    output = "[[\"Character\",\";>\"]]"
    input = ";>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";>" do
    output = "[[\"Character\",\";>\"]]"
    input = ";>"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";?" do
    output = "[[\"Character\",\";?\"]]"
    input = ";?"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";?" do
    output = "[[\"Character\",\";?\"]]"
    input = ";?"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";@" do
    output = "[[\"Character\",\";@\"]]"
    input = ";@"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";@" do
    output = "[[\"Character\",\";@\"]]"
    input = ";@"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";A" do
    output = "[[\"Character\",\";A\"]]"
    input = ";A"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";A" do
    output = "[[\"Character\",\";A\"]]"
    input = ";A"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";B" do
    output = "[[\"Character\",\";B\"]]"
    input = ";B"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";B" do
    output = "[[\"Character\",\";B\"]]"
    input = ";B"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";Y" do
    output = "[[\"Character\",\";Y\"]]"
    input = ";Y"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";Y" do
    output = "[[\"Character\",\";Y\"]]"
    input = ";Y"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";Z" do
    output = "[[\"Character\",\";Z\"]]"
    input = ";Z"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";Z" do
    output = "[[\"Character\",\";Z\"]]"
    input = ";Z"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";`" do
    output = "[[\"Character\",\";`\"]]"
    input = ";`"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";`" do
    output = "[[\"Character\",\";`\"]]"
    input = ";`"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";a" do
    output = "[[\"Character\",\";a\"]]"
    input = ";a"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";a" do
    output = "[[\"Character\",\";a\"]]"
    input = ";a"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";b" do
    output = "[[\"Character\",\";b\"]]"
    input = ";b"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";b" do
    output = "[[\"Character\",\";b\"]]"
    input = ";b"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";y" do
    output = "[[\"Character\",\";y\"]]"
    input = ";y"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";y" do
    output = "[[\"Character\",\";y\"]]"
    input = ";y"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";z" do
    output = "[[\"Character\",\";z\"]]"
    input = ";z"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";z" do
    output = "[[\"Character\",\";z\"]]"
    input = ";z"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";{" do
    output = "[[\"Character\",\";{\"]]"
    input = ";{"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";{" do
    output = "[[\"Character\",\";{\"]]"
    input = ";{"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ";\\uDBC0\\uDC00" do
    output = "[[\"Character\",\";\u{100000}\"]]"
    input = ";\u{100000}"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ";\\uDBC0\\uDC00" do
    output = "[[\"Character\",\";\u{100000}\"]]"
    input = ";\u{100000}"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 4}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "<" do
    output = "[[\"Character\",\"<\"]]"
    input = "<"
    assert_lexes input, output, [{"code" => "eof-before-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<\\u0000" do
    output = "[[\"Character\",\"<\\u0000\"]]"
    input = "<\u0000"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}, {"code" => "unexpected-null-character", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<\\u0009" do
    output = "[[\"Character\",\"<\\t\"]]"
    input = "<\t"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<\\u000A" do
    output = "[[\"Character\",\"<\\n\"]]"
    input = "<\n"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<\\u000B" do
    output = "[[\"Character\",\"<\\u000b\"]]"
    input = "<\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 2}, {"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<\\u000C" do
    output = "[[\"Character\",\"<\\f\"]]"
    input = "<\f"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "< " do
    output = "[[\"Character\",\"< \"]]"
    input = "< "
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!\\u0000" do
    output = "[[\"Comment\",\"�\"]]"
    input = "<!\u0000"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}, {"code" => "unexpected-null-character", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!\\u0009" do
    output = "[[\"Comment\",\"\\t\"]]"
    input = "<!\t"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!\\u000A" do
    output = "[[\"Comment\",\"\\n\"]]"
    input = "<!\n"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!\\u000B" do
    output = "[[\"Comment\",\"\\u000b\"]]"
    input = "<!\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 3}, {"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!\\u000C" do
    output = "[[\"Comment\",\"\\f\"]]"
    input = "<!\f"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<! " do
    output = "[[\"Comment\",\" \"]]"
    input = "<! "
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<! \\u0000" do
    output = "[[\"Comment\",\" �\"]]"
    input = "<! \u0000"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}, {"code" => "unexpected-null-character", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<!!" do
    output = "[[\"Comment\",\"!\"]]"
    input = "<!!"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!\"" do
    output = "[[\"Comment\",\"\\\"\"]]"
    input = "<!\""
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!&" do
    output = "[[\"Comment\",\"&\"]]"
    input = "<!&"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!'" do
    output = "[[\"Comment\",\"'\"]]"
    input = "<!'"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-" do
    output = "[[\"Comment\",\"-\"]]"
    input = "<!-"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!--"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--\\u0000" do
    output = "[[\"Comment\",\"�\"]]"
    input = "<!--\u0000"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 5}, {"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--\\u0009" do
    output = "[[\"Comment\",\"\\t\"]]"
    input = "<!--\t"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--\\u000A" do
    output = "[[\"Comment\",\"\\n\"]]"
    input = "<!--\n"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--\\u000B" do
    output = "[[\"Comment\",\"\\u000b\"]]"
    input = "<!--\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 5}, {"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--\\u000C" do
    output = "[[\"Comment\",\"\\f\"]]"
    input = "<!--\f"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- " do
    output = "[[\"Comment\",\" \"]]"
    input = "<!-- "
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- \\u0000" do
    output = "[[\"Comment\",\" �\"]]"
    input = "<!-- \u0000"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 6}, {"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- \\u0009" do
    output = "[[\"Comment\",\" \\t\"]]"
    input = "<!-- \t"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- \\u000A" do
    output = "[[\"Comment\",\" \\n\"]]"
    input = "<!-- \n"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- \\u000B" do
    output = "[[\"Comment\",\" \\u000b\"]]"
    input = "<!-- \v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 6}, {"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- \\u000C" do
    output = "[[\"Comment\",\" \\f\"]]"
    input = "<!-- \f"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--  " do
    output = "[[\"Comment\",\"  \"]]"
    input = "<!--  "
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- !" do
    output = "[[\"Comment\",\" !\"]]"
    input = "<!-- !"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- \"" do
    output = "[[\"Comment\",\" \\\"\"]]"
    input = "<!-- \""
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- &" do
    output = "[[\"Comment\",\" &\"]]"
    input = "<!-- &"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- '" do
    output = "[[\"Comment\",\" '\"]]"
    input = "<!-- '"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- ," do
    output = "[[\"Comment\",\" ,\"]]"
    input = "<!-- ,"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -" do
    output = "[[\"Comment\",\" \"]]"
    input = "<!-- -"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -\\u0000" do
    output = "[[\"Comment\",\" -�\"]]"
    input = "<!-- -\u0000"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 7}, {"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -\\u0009" do
    output = "[[\"Comment\",\" -\\t\"]]"
    input = "<!-- -\t"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -\\u000A" do
    output = "[[\"Comment\",\" -\\n\"]]"
    input = "<!-- -\n"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -\\u000B" do
    output = "[[\"Comment\",\" -\\u000b\"]]"
    input = "<!-- -\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 7}, {"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -\\u000C" do
    output = "[[\"Comment\",\" -\\f\"]]"
    input = "<!-- -\f"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- - " do
    output = "[[\"Comment\",\" - \"]]"
    input = "<!-- - "
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -!" do
    output = "[[\"Comment\",\" -!\"]]"
    input = "<!-- -!"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -\"" do
    output = "[[\"Comment\",\" -\\\"\"]]"
    input = "<!-- -\""
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -&" do
    output = "[[\"Comment\",\" -&\"]]"
    input = "<!-- -&"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -'" do
    output = "[[\"Comment\",\" -'\"]]"
    input = "<!-- -'"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -," do
    output = "[[\"Comment\",\" -,\"]]"
    input = "<!-- -,"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- --" do
    output = "[[\"Comment\",\" \"]]"
    input = "<!-- --"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -." do
    output = "[[\"Comment\",\" -.\"]]"
    input = "<!-- -."
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -/" do
    output = "[[\"Comment\",\" -/\"]]"
    input = "<!-- -/"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -0" do
    output = "[[\"Comment\",\" -0\"]]"
    input = "<!-- -0"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -1" do
    output = "[[\"Comment\",\" -1\"]]"
    input = "<!-- -1"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -9" do
    output = "[[\"Comment\",\" -9\"]]"
    input = "<!-- -9"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -<" do
    output = "[[\"Comment\",\" -<\"]]"
    input = "<!-- -<"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -=" do
    output = "[[\"Comment\",\" -=\"]]"
    input = "<!-- -="
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- ->" do
    output = "[[\"Comment\",\" ->\"]]"
    input = "<!-- ->"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -?" do
    output = "[[\"Comment\",\" -?\"]]"
    input = "<!-- -?"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -@" do
    output = "[[\"Comment\",\" -@\"]]"
    input = "<!-- -@"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -A" do
    output = "[[\"Comment\",\" -A\"]]"
    input = "<!-- -A"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -B" do
    output = "[[\"Comment\",\" -B\"]]"
    input = "<!-- -B"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -Y" do
    output = "[[\"Comment\",\" -Y\"]]"
    input = "<!-- -Y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -Z" do
    output = "[[\"Comment\",\" -Z\"]]"
    input = "<!-- -Z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -`" do
    output = "[[\"Comment\",\" -`\"]]"
    input = "<!-- -`"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -a" do
    output = "[[\"Comment\",\" -a\"]]"
    input = "<!-- -a"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -b" do
    output = "[[\"Comment\",\" -b\"]]"
    input = "<!-- -b"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -y" do
    output = "[[\"Comment\",\" -y\"]]"
    input = "<!-- -y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -z" do
    output = "[[\"Comment\",\" -z\"]]"
    input = "<!-- -z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -{" do
    output = "[[\"Comment\",\" -{\"]]"
    input = "<!-- -{"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- -\\uDBC0\\uDC00" do
    output = "[[\"Comment\",\" -\u{100000}\"]]"
    input = "<!-- -\u{100000}"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- ." do
    output = "[[\"Comment\",\" .\"]]"
    input = "<!-- ."
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- /" do
    output = "[[\"Comment\",\" /\"]]"
    input = "<!-- /"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- 0" do
    output = "[[\"Comment\",\" 0\"]]"
    input = "<!-- 0"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- 1" do
    output = "[[\"Comment\",\" 1\"]]"
    input = "<!-- 1"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- 9" do
    output = "[[\"Comment\",\" 9\"]]"
    input = "<!-- 9"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- <" do
    output = "[[\"Comment\",\" <\"]]"
    input = "<!-- <"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- =" do
    output = "[[\"Comment\",\" =\"]]"
    input = "<!-- ="
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- >" do
    output = "[[\"Comment\",\" >\"]]"
    input = "<!-- >"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- ?" do
    output = "[[\"Comment\",\" ?\"]]"
    input = "<!-- ?"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- @" do
    output = "[[\"Comment\",\" @\"]]"
    input = "<!-- @"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- A" do
    output = "[[\"Comment\",\" A\"]]"
    input = "<!-- A"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- B" do
    output = "[[\"Comment\",\" B\"]]"
    input = "<!-- B"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- Y" do
    output = "[[\"Comment\",\" Y\"]]"
    input = "<!-- Y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- Z" do
    output = "[[\"Comment\",\" Z\"]]"
    input = "<!-- Z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- `" do
    output = "[[\"Comment\",\" `\"]]"
    input = "<!-- `"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- a" do
    output = "[[\"Comment\",\" a\"]]"
    input = "<!-- a"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- b" do
    output = "[[\"Comment\",\" b\"]]"
    input = "<!-- b"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- y" do
    output = "[[\"Comment\",\" y\"]]"
    input = "<!-- y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- z" do
    output = "[[\"Comment\",\" z\"]]"
    input = "<!-- z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- {" do
    output = "[[\"Comment\",\" {\"]]"
    input = "<!-- {"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-- \\uDBC0\\uDC00" do
    output = "[[\"Comment\",\" \u{100000}\"]]"
    input = "<!-- \u{100000}"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--!" do
    output = "[[\"Comment\",\"!\"]]"
    input = "<!--!"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--\"" do
    output = "[[\"Comment\",\"\\\"\"]]"
    input = "<!--\""
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--&" do
    output = "[[\"Comment\",\"&\"]]"
    input = "<!--&"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--'" do
    output = "[[\"Comment\",\"'\"]]"
    input = "<!--'"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--," do
    output = "[[\"Comment\",\",\"]]"
    input = "<!--,"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!---"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---\\u0000" do
    output = "[[\"Comment\",\"-�\"]]"
    input = "<!---\u0000"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 6}, {"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---\\u0009" do
    output = "[[\"Comment\",\"-\\t\"]]"
    input = "<!---\t"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---\\u000A" do
    output = "[[\"Comment\",\"-\\n\"]]"
    input = "<!---\n"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---\\u000B" do
    output = "[[\"Comment\",\"-\\u000b\"]]"
    input = "<!---\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 6}, {"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---\\u000C" do
    output = "[[\"Comment\",\"-\\f\"]]"
    input = "<!---\f"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--- " do
    output = "[[\"Comment\",\"- \"]]"
    input = "<!--- "
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---!" do
    output = "[[\"Comment\",\"-!\"]]"
    input = "<!---!"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---\"" do
    output = "[[\"Comment\",\"-\\\"\"]]"
    input = "<!---\""
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---&" do
    output = "[[\"Comment\",\"-&\"]]"
    input = "<!---&"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---'" do
    output = "[[\"Comment\",\"-'\"]]"
    input = "<!---'"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---," do
    output = "[[\"Comment\",\"-,\"]]"
    input = "<!---,"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!----"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----\\u0000" do
    output = "[[\"Comment\",\"--�\"]]"
    input = "<!----\u0000"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 7}, {"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----\\u0009" do
    output = "[[\"Comment\",\"--\\t\"]]"
    input = "<!----\t"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----\\u000A" do
    output = "[[\"Comment\",\"--\\n\"]]"
    input = "<!----\n"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----\\u000B" do
    output = "[[\"Comment\",\"--\\u000b\"]]"
    input = "<!----\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 7}, {"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----\\u000C" do
    output = "[[\"Comment\",\"--\\f\"]]"
    input = "<!----\f"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---- " do
    output = "[[\"Comment\",\"-- \"]]"
    input = "<!---- "
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---- -" do
    output = "[[\"Comment\",\"-- \"]]"
    input = "<!---- -"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---- --" do
    output = "[[\"Comment\",\"-- \"]]"
    input = "<!---- --"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---- -->" do
    output = "[[\"Comment\",\"-- \"]]"
    input = "<!---- -->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<!----  -->" do
    output = "[[\"Comment\",\"--  \"]]"
    input = "<!----  -->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<!---- a-->" do
    output = "[[\"Comment\",\"-- a\"]]"
    input = "<!---- a-->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<!----!" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!----!"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!>" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!----!>"
    assert_lexes input, output, [{"code" => "incorrectly-closed-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----! >" do
    output = "[[\"Comment\",\"--! >\"]]"
    input = "<!----! >"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!LF>" do
    output = "[[\"Comment\",\"--!\\n>\"]]"
    input = "<!----!\n>"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 2, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!CR>" do
    output = "[[\"Comment\",\"--!\\n>\"]]"
    input = "<!----!\r>"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 2, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!CRLF>" do
    output = "[[\"Comment\",\"--!\\n>\"]]"
    input = "<!----!\r\n>"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 2, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!a" do
    output = "[[\"Comment\",\"--!a\"]]"
    input = "<!----!a"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!a-" do
    output = "[[\"Comment\",\"--!a\"]]"
    input = "<!----!a-"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!a--" do
    output = "[[\"Comment\",\"--!a\"]]"
    input = "<!----!a--"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!a-->" do
    output = "[[\"Comment\",\"--!a\"]]"
    input = "<!----!a-->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<!----!-" do
    output = "[[\"Comment\",\"--!\"]]"
    input = "<!----!-"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!--" do
    output = "[[\"Comment\",\"--!\"]]"
    input = "<!----!--"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----!-->" do
    output = "[[\"Comment\",\"--!\"]]"
    input = "<!----!-->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<!----\"" do
    output = "[[\"Comment\",\"--\\\"\"]]"
    input = "<!----\""
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----&" do
    output = "[[\"Comment\",\"--&\"]]"
    input = "<!----&"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----'" do
    output = "[[\"Comment\",\"--'\"]]"
    input = "<!----'"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----," do
    output = "[[\"Comment\",\"--,\"]]"
    input = "<!----,"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!-----" do
    output = "[[\"Comment\",\"-\"]]"
    input = "<!-----"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----." do
    output = "[[\"Comment\",\"--.\"]]"
    input = "<!----."
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----/" do
    output = "[[\"Comment\",\"--/\"]]"
    input = "<!----/"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----0" do
    output = "[[\"Comment\",\"--0\"]]"
    input = "<!----0"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----1" do
    output = "[[\"Comment\",\"--1\"]]"
    input = "<!----1"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----9" do
    output = "[[\"Comment\",\"--9\"]]"
    input = "<!----9"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----<" do
    output = "[[\"Comment\",\"--<\"]]"
    input = "<!----<"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----=" do
    output = "[[\"Comment\",\"--=\"]]"
    input = "<!----="
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---->" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!---->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<!----?" do
    output = "[[\"Comment\",\"--?\"]]"
    input = "<!----?"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----@" do
    output = "[[\"Comment\",\"--@\"]]"
    input = "<!----@"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----A" do
    output = "[[\"Comment\",\"--A\"]]"
    input = "<!----A"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----B" do
    output = "[[\"Comment\",\"--B\"]]"
    input = "<!----B"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----Y" do
    output = "[[\"Comment\",\"--Y\"]]"
    input = "<!----Y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----Z" do
    output = "[[\"Comment\",\"--Z\"]]"
    input = "<!----Z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----`" do
    output = "[[\"Comment\",\"--`\"]]"
    input = "<!----`"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----a" do
    output = "[[\"Comment\",\"--a\"]]"
    input = "<!----a"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----b" do
    output = "[[\"Comment\",\"--b\"]]"
    input = "<!----b"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----y" do
    output = "[[\"Comment\",\"--y\"]]"
    input = "<!----y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----z" do
    output = "[[\"Comment\",\"--z\"]]"
    input = "<!----z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----{" do
    output = "[[\"Comment\",\"--{\"]]"
    input = "<!----{"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!----\\uDBC0\\uDC00" do
    output = "[[\"Comment\",\"--\u{100000}\"]]"
    input = "<!----\u{100000}"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---." do
    output = "[[\"Comment\",\"-.\"]]"
    input = "<!---."
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---/" do
    output = "[[\"Comment\",\"-/\"]]"
    input = "<!---/"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---0" do
    output = "[[\"Comment\",\"-0\"]]"
    input = "<!---0"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---1" do
    output = "[[\"Comment\",\"-1\"]]"
    input = "<!---1"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---9" do
    output = "[[\"Comment\",\"-9\"]]"
    input = "<!---9"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---<" do
    output = "[[\"Comment\",\"-<\"]]"
    input = "<!---<"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---=" do
    output = "[[\"Comment\",\"-=\"]]"
    input = "<!---="
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---?" do
    output = "[[\"Comment\",\"-?\"]]"
    input = "<!---?"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---@" do
    output = "[[\"Comment\",\"-@\"]]"
    input = "<!---@"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---A" do
    output = "[[\"Comment\",\"-A\"]]"
    input = "<!---A"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---B" do
    output = "[[\"Comment\",\"-B\"]]"
    input = "<!---B"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---Y" do
    output = "[[\"Comment\",\"-Y\"]]"
    input = "<!---Y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---Z" do
    output = "[[\"Comment\",\"-Z\"]]"
    input = "<!---Z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---`" do
    output = "[[\"Comment\",\"-`\"]]"
    input = "<!---`"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---a" do
    output = "[[\"Comment\",\"-a\"]]"
    input = "<!---a"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---b" do
    output = "[[\"Comment\",\"-b\"]]"
    input = "<!---b"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---y" do
    output = "[[\"Comment\",\"-y\"]]"
    input = "<!---y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---z" do
    output = "[[\"Comment\",\"-z\"]]"
    input = "<!---z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---{" do
    output = "[[\"Comment\",\"-{\"]]"
    input = "<!---{"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!---\\uDBC0\\uDC00" do
    output = "[[\"Comment\",\"-\u{100000}\"]]"
    input = "<!---\u{100000}"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--." do
    output = "[[\"Comment\",\".\"]]"
    input = "<!--."
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--/" do
    output = "[[\"Comment\",\"/\"]]"
    input = "<!--/"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--0" do
    output = "[[\"Comment\",\"0\"]]"
    input = "<!--0"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--1" do
    output = "[[\"Comment\",\"1\"]]"
    input = "<!--1"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--9" do
    output = "[[\"Comment\",\"9\"]]"
    input = "<!--9"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--<" do
    output = "[[\"Comment\",\"<\"]]"
    input = "<!--<"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--=" do
    output = "[[\"Comment\",\"=\"]]"
    input = "<!--="
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--?" do
    output = "[[\"Comment\",\"?\"]]"
    input = "<!--?"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--@" do
    output = "[[\"Comment\",\"@\"]]"
    input = "<!--@"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--A" do
    output = "[[\"Comment\",\"A\"]]"
    input = "<!--A"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--B" do
    output = "[[\"Comment\",\"B\"]]"
    input = "<!--B"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--Y" do
    output = "[[\"Comment\",\"Y\"]]"
    input = "<!--Y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--Z" do
    output = "[[\"Comment\",\"Z\"]]"
    input = "<!--Z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--`" do
    output = "[[\"Comment\",\"`\"]]"
    input = "<!--`"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--a" do
    output = "[[\"Comment\",\"a\"]]"
    input = "<!--a"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--b" do
    output = "[[\"Comment\",\"b\"]]"
    input = "<!--b"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--y" do
    output = "[[\"Comment\",\"y\"]]"
    input = "<!--y"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--z" do
    output = "[[\"Comment\",\"z\"]]"
    input = "<!--z"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--{" do
    output = "[[\"Comment\",\"{\"]]"
    input = "<!--{"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<!--\\uDBC0\\uDC00" do
    output = "[[\"Comment\",\"\u{100000}\"]]"
    input = "<!--\u{100000}"
    assert_lexes input, output, [{"code" => "eof-in-comment", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<!/" do
    output = "[[\"Comment\",\"/\"]]"
    input = "<!/"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!0" do
    output = "[[\"Comment\",\"0\"]]"
    input = "<!0"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!1" do
    output = "[[\"Comment\",\"1\"]]"
    input = "<!1"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!9" do
    output = "[[\"Comment\",\"9\"]]"
    input = "<!9"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!<" do
    output = "[[\"Comment\",\"<\"]]"
    input = "<!<"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!=" do
    output = "[[\"Comment\",\"=\"]]"
    input = "<!="
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!>" do
    output = "[[\"Comment\",\"\"]]"
    input = "<!>"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!?" do
    output = "[[\"Comment\",\"?\"]]"
    input = "<!?"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!@" do
    output = "[[\"Comment\",\"@\"]]"
    input = "<!@"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!A" do
    output = "[[\"Comment\",\"A\"]]"
    input = "<!A"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!B" do
    output = "[[\"Comment\",\"B\"]]"
    input = "<!B"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\\u0000" do
    output = "[[\"DOCTYPE\",\"�\",null,null,false]]"
    input = "<!DOCTYPE\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "unexpected-null-character", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\\u0008" do
    output = "[[\"DOCTYPE\",\"\\b\",null,null,false]]"
    input = "<!DOCTYPE\b"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\\u0009" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE\t"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\\u000A" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE\n"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\\u000B" do
    output = "[[\"DOCTYPE\",\"\\u000b\",null,null,false]]"
    input = "<!DOCTYPE\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\\u000C" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE\f"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\\u000D" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE\r"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\\u001F" do
    output = "[[\"DOCTYPE\",\"\\u001f\",null,null,false]]"
    input = "<!DOCTYPE\u001F"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE " do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE "
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \\u0000" do
    output = "[[\"DOCTYPE\",\"�\",null,null,false]]"
    input = "<!DOCTYPE \u0000"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 11}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \\u0008" do
    output = "[[\"DOCTYPE\",\"\\b\",null,null,false]]"
    input = "<!DOCTYPE \b"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 11}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \\u0009" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE \t"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \\u000A" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE \n"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \\u000B" do
    output = "[[\"DOCTYPE\",\"\\u000b\",null,null,false]]"
    input = "<!DOCTYPE \v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 11}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \\u000C" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE \f"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \\u000D" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE \r"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \\u001F" do
    output = "[[\"DOCTYPE\",\"\\u001f\",null,null,false]]"
    input = "<!DOCTYPE \u001F"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 11}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE  " do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE  "
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE !" do
    output = "[[\"DOCTYPE\",\"!\",null,null,false]]"
    input = "<!DOCTYPE !"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \"" do
    output = "[[\"DOCTYPE\",\"\\\"\",null,null,false]]"
    input = "<!DOCTYPE \""
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE &" do
    output = "[[\"DOCTYPE\",\"&\",null,null,false]]"
    input = "<!DOCTYPE &"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE '" do
    output = "[[\"DOCTYPE\",\"'\",null,null,false]]"
    input = "<!DOCTYPE '"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE -" do
    output = "[[\"DOCTYPE\",\"-\",null,null,false]]"
    input = "<!DOCTYPE -"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE /" do
    output = "[[\"DOCTYPE\",\"/\",null,null,false]]"
    input = "<!DOCTYPE /"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE 0" do
    output = "[[\"DOCTYPE\",\"0\",null,null,false]]"
    input = "<!DOCTYPE 0"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE 1" do
    output = "[[\"DOCTYPE\",\"1\",null,null,false]]"
    input = "<!DOCTYPE 1"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE 9" do
    output = "[[\"DOCTYPE\",\"9\",null,null,false]]"
    input = "<!DOCTYPE 9"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE <" do
    output = "[[\"DOCTYPE\",\"<\",null,null,false]]"
    input = "<!DOCTYPE <"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE =" do
    output = "[[\"DOCTYPE\",\"=\",null,null,false]]"
    input = "<!DOCTYPE ="
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE >" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE >"
    assert_lexes input, output, [{"code" => "missing-doctype-name", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE ?" do
    output = "[[\"DOCTYPE\",\"?\",null,null,false]]"
    input = "<!DOCTYPE ?"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE @" do
    output = "[[\"DOCTYPE\",\"@\",null,null,false]]"
    input = "<!DOCTYPE @"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE A"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE B" do
    output = "[[\"DOCTYPE\",\"b\",null,null,false]]"
    input = "<!DOCTYPE B"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE Y" do
    output = "[[\"DOCTYPE\",\"y\",null,null,false]]"
    input = "<!DOCTYPE Y"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE Z" do
    output = "[[\"DOCTYPE\",\"z\",null,null,false]]"
    input = "<!DOCTYPE Z"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE [" do
    output = "[[\"DOCTYPE\",\"[\",null,null,false]]"
    input = "<!DOCTYPE ["
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE `" do
    output = "[[\"DOCTYPE\",\"`\",null,null,false]]"
    input = "<!DOCTYPE `"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\\u0000" do
    output = "[[\"DOCTYPE\",\"a�\",null,null,false]]"
    input = "<!DOCTYPE a\u0000"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 12}, {"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\\u0008" do
    output = "[[\"DOCTYPE\",\"a\\b\",null,null,false]]"
    input = "<!DOCTYPE a\b"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 12}, {"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a\t"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a\n"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\\u000B" do
    output = "[[\"DOCTYPE\",\"a\\u000b\",null,null,false]]"
    input = "<!DOCTYPE a\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 12}, {"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a\f"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a\r"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\\u001F" do
    output = "[[\"DOCTYPE\",\"a\\u001f\",null,null,false]]"
    input = "<!DOCTYPE a\u001F"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 12}, {"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a "
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \u0000"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}, {"code" => "unexpected-null-character", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \\u0008" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \b"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 13}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \t"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \n"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 13}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \f"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \r"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \\u001F" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \u001F"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 13}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a  " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a  "
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a !" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a !"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \"" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \""
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a &" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a &"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a '" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a '"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a -" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a -"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a /" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a /"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a 0" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a 0"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a 1" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a 1"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a 9" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a 9"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a <" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a <"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a =" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a ="
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a >" do
    output = "[[\"DOCTYPE\",\"a\",null,null,true]]"
    input = "<!DOCTYPE a >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a ?" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a ?"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a @" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a @"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a A"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a B"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC\u0000"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}, {"code" => "unexpected-null-character", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\\u0008" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC\b"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC\t"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC\n"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC\f"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC\r"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\\u001F" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC\u001F"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC "
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC!" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC!"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\""
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"�\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "unexpected-null-character", "col" => 20, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",\"\\t\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",\"\\n\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",\"\\u000b\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",\"\\f\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\" " do
    output = "[[\"DOCTYPE\",\"a\",\" \",null,false]]"
    input = "<!DOCTYPE a PUBLIC\" "
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"!" do
    output = "[[\"DOCTYPE\",\"a\",\"!\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"!"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"\"" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"\""
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"\"\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"\"\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}, {"code" => "unexpected-null-character", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"\" \\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"\" \u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 22, "line" => 1}, {"code" => "unexpected-null-character", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"#" do
    output = "[[\"DOCTYPE\",\"a\",\"#\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"#"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"&" do
    output = "[[\"DOCTYPE\",\"a\",\"&\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"&"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"'" do
    output = "[[\"DOCTYPE\",\"a\",\"'\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"'"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"-" do
    output = "[[\"DOCTYPE\",\"a\",\"-\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"-"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"/" do
    output = "[[\"DOCTYPE\",\"a\",\"/\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"/"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"0" do
    output = "[[\"DOCTYPE\",\"a\",\"0\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"0"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"1" do
    output = "[[\"DOCTYPE\",\"a\",\"1\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"1"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"9" do
    output = "[[\"DOCTYPE\",\"a\",\"9\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"9"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"<" do
    output = "[[\"DOCTYPE\",\"a\",\"<\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"<"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"=" do
    output = "[[\"DOCTYPE\",\"a\",\"=\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"="
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\">" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\">"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "abrupt-doctype-public-identifier", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"?" do
    output = "[[\"DOCTYPE\",\"a\",\"?\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"?"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"@" do
    output = "[[\"DOCTYPE\",\"a\",\"@\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"@"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"A" do
    output = "[[\"DOCTYPE\",\"a\",\"A\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"A"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"B" do
    output = "[[\"DOCTYPE\",\"a\",\"B\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"B"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"Y" do
    output = "[[\"DOCTYPE\",\"a\",\"Y\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"Z" do
    output = "[[\"DOCTYPE\",\"a\",\"Z\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"`" do
    output = "[[\"DOCTYPE\",\"a\",\"`\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"`"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"a" do
    output = "[[\"DOCTYPE\",\"a\",\"a\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"a"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"b" do
    output = "[[\"DOCTYPE\",\"a\",\"b\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"b"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"y" do
    output = "[[\"DOCTYPE\",\"a\",\"y\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"z" do
    output = "[[\"DOCTYPE\",\"a\",\"z\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"{" do
    output = "[[\"DOCTYPE\",\"a\",\"{\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"{"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\"\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",\"\u{100000}\",null,false]]"
    input = "<!DOCTYPE a PUBLIC\"\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC#" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC#"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC&" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC&"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"�\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "unexpected-null-character", "col" => 20, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",\"\\t\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",\"\\n\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",\"\\u000b\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",\"\\f\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC' " do
    output = "[[\"DOCTYPE\",\"a\",\" \",null,false]]"
    input = "<!DOCTYPE a PUBLIC' "
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'!" do
    output = "[[\"DOCTYPE\",\"a\",\"!\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'!"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'\"" do
    output = "[[\"DOCTYPE\",\"a\",\"\\\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'\""
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'&" do
    output = "[[\"DOCTYPE\",\"a\",\"&\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'&"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}, {"code" => "unexpected-null-character", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\\u0008" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''\b"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 21}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 21}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''\r"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\\u001F" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''\u001F"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 21}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'' " do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'' "
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''!" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''!"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\"" do
    output = "[[\"DOCTYPE\",\"a\",\"\",\"\",false]]"
    input = "<!DOCTYPE a PUBLIC''\""
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-whitespace-between-doctype-public-and-system-identifiers", "col" => 21, "line" => 1}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''#" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''#"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''&" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''&"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'''" do
    output = "[[\"DOCTYPE\",\"a\",\"\",\"\",false]]"
    input = "<!DOCTYPE a PUBLIC'''"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-whitespace-between-doctype-public-and-system-identifiers", "col" => 21, "line" => 1}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''''\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"\",\"\",true]]"
    input = "<!DOCTYPE a PUBLIC''''\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-whitespace-between-doctype-public-and-system-identifiers", "col" => 21, "line" => 1}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 23}, {"code" => "unexpected-null-character", "line" => 1, "col" => 23}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''''x\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"\",\"\",true]]"
    input = "<!DOCTYPE a PUBLIC''''x\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-whitespace-between-doctype-public-and-system-identifiers", "col" => 21, "line" => 1}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 23}, {"code" => "unexpected-null-character", "line" => 1, "col" => 24}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'''' \\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"\",\"\",true]]"
    input = "<!DOCTYPE a PUBLIC'''' \u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-whitespace-between-doctype-public-and-system-identifiers", "col" => 21, "line" => 1}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 24}, {"code" => "unexpected-null-character", "line" => 1, "col" => 24}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'''' x\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"\",\"\",true]]"
    input = "<!DOCTYPE a PUBLIC'''' x\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-whitespace-between-doctype-public-and-system-identifiers", "col" => 21, "line" => 1}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 24}, {"code" => "unexpected-null-character", "line" => 1, "col" => 25}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''(" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''("
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''-" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''-"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''/" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''/"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''0" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''0"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''1" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''1"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''9" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''9"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''<" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''<"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''=" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''="
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''>" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,true]]"
    input = "<!DOCTYPE a PUBLIC''>"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''?" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''?"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''@" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''@"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''A" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''A"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''B" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''B"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''Y" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''Z" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''`" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''`"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''a" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''a"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''b" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''b"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''y" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''z" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''{" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''{"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC''\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC''\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'(" do
    output = "[[\"DOCTYPE\",\"a\",\"(\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'("
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'-" do
    output = "[[\"DOCTYPE\",\"a\",\"-\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'-"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'/" do
    output = "[[\"DOCTYPE\",\"a\",\"/\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'/"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'0" do
    output = "[[\"DOCTYPE\",\"a\",\"0\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'0"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'1" do
    output = "[[\"DOCTYPE\",\"a\",\"1\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'1"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'9" do
    output = "[[\"DOCTYPE\",\"a\",\"9\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'9"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'<" do
    output = "[[\"DOCTYPE\",\"a\",\"<\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'<"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'=" do
    output = "[[\"DOCTYPE\",\"a\",\"=\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'="
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'>" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'>"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "abrupt-doctype-public-identifier", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'?" do
    output = "[[\"DOCTYPE\",\"a\",\"?\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'?"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'@" do
    output = "[[\"DOCTYPE\",\"a\",\"@\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'@"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'A" do
    output = "[[\"DOCTYPE\",\"a\",\"A\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'A"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'B" do
    output = "[[\"DOCTYPE\",\"a\",\"B\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'B"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'Y" do
    output = "[[\"DOCTYPE\",\"a\",\"Y\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'Z" do
    output = "[[\"DOCTYPE\",\"a\",\"Z\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'`" do
    output = "[[\"DOCTYPE\",\"a\",\"`\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'`"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'a" do
    output = "[[\"DOCTYPE\",\"a\",\"a\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'a"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'b" do
    output = "[[\"DOCTYPE\",\"a\",\"b\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'b"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'y" do
    output = "[[\"DOCTYPE\",\"a\",\"y\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'z" do
    output = "[[\"DOCTYPE\",\"a\",\"z\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'{" do
    output = "[[\"DOCTYPE\",\"a\",\"{\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'{"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC'\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",\"\u{100000}\",null,false]]"
    input = "<!DOCTYPE a PUBLIC'\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-public-keyword", "col" => 19, "line" => 1}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC(" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC("
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC-" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC-"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC/" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC/"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC0" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC0"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC1" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC1"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC9" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC9"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC<" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC<"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC=" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC="
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC>" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC>"
    assert_lexes input, output, [{"code" => "missing-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC?" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC?"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC@" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC@"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLICA" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLICA"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLICB" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLICB"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLICY" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLICY"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLICZ" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLICZ"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC`" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC`"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLICa" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLICa"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLICb" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLICb"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLICy" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLICy"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLICz" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLICz"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC{" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC{"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a PUBLIC\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a PUBLIC\u{100000}"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-public-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM\u0000"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "col" => 19, "line" => 1}, {"code" => "unexpected-null-character", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM \\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM \u0000"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "col" => 20, "line" => 1}, {"code" => "unexpected-null-character", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM x\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM \u0000"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "col" => 20, "line" => 1}, {"code" => "unexpected-null-character", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\\u0008" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM\b"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM\t"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM\n"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM\f"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM\r"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\\u001F" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM\u001F"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "missing-quote-before-doctype-system-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM "
    assert_lexes input, output, [{"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM!" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM!"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "col" => 19, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM\""
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,\"�\",false]]"
    input = "<!DOCTYPE a SYSTEM\"\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-null-character", "col" => 20, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\t\",false]]"
    input = "<!DOCTYPE a SYSTEM\"\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\n\",false]]"
    input = "<!DOCTYPE a SYSTEM\"\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\u000b\",false]]"
    input = "<!DOCTYPE a SYSTEM\"\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\f\",false]]"
    input = "<!DOCTYPE a SYSTEM\"\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\" " do
    output = "[[\"DOCTYPE\",\"a\",null,\" \",false]]"
    input = "<!DOCTYPE a SYSTEM\" "
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"!" do
    output = "[[\"DOCTYPE\",\"a\",null,\"!\",false]]"
    input = "<!DOCTYPE a SYSTEM\"!"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"\"" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM\"\""
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"#" do
    output = "[[\"DOCTYPE\",\"a\",null,\"#\",false]]"
    input = "<!DOCTYPE a SYSTEM\"#"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"&" do
    output = "[[\"DOCTYPE\",\"a\",null,\"&\",false]]"
    input = "<!DOCTYPE a SYSTEM\"&"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"'" do
    output = "[[\"DOCTYPE\",\"a\",null,\"'\",false]]"
    input = "<!DOCTYPE a SYSTEM\"'"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"-" do
    output = "[[\"DOCTYPE\",\"a\",null,\"-\",false]]"
    input = "<!DOCTYPE a SYSTEM\"-"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"/" do
    output = "[[\"DOCTYPE\",\"a\",null,\"/\",false]]"
    input = "<!DOCTYPE a SYSTEM\"/"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"0" do
    output = "[[\"DOCTYPE\",\"a\",null,\"0\",false]]"
    input = "<!DOCTYPE a SYSTEM\"0"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"1" do
    output = "[[\"DOCTYPE\",\"a\",null,\"1\",false]]"
    input = "<!DOCTYPE a SYSTEM\"1"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"9" do
    output = "[[\"DOCTYPE\",\"a\",null,\"9\",false]]"
    input = "<!DOCTYPE a SYSTEM\"9"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"<" do
    output = "[[\"DOCTYPE\",\"a\",null,\"<\",false]]"
    input = "<!DOCTYPE a SYSTEM\"<"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"=" do
    output = "[[\"DOCTYPE\",\"a\",null,\"=\",false]]"
    input = "<!DOCTYPE a SYSTEM\"="
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\">" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM\">"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "abrupt-doctype-system-identifier", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"?" do
    output = "[[\"DOCTYPE\",\"a\",null,\"?\",false]]"
    input = "<!DOCTYPE a SYSTEM\"?"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"@" do
    output = "[[\"DOCTYPE\",\"a\",null,\"@\",false]]"
    input = "<!DOCTYPE a SYSTEM\"@"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"A\",false]]"
    input = "<!DOCTYPE a SYSTEM\"A"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"B\",false]]"
    input = "<!DOCTYPE a SYSTEM\"B"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"Y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"Y\",false]]"
    input = "<!DOCTYPE a SYSTEM\"Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"Z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"Z\",false]]"
    input = "<!DOCTYPE a SYSTEM\"Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"`" do
    output = "[[\"DOCTYPE\",\"a\",null,\"`\",false]]"
    input = "<!DOCTYPE a SYSTEM\"`"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"a" do
    output = "[[\"DOCTYPE\",\"a\",null,\"a\",false]]"
    input = "<!DOCTYPE a SYSTEM\"a"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"b" do
    output = "[[\"DOCTYPE\",\"a\",null,\"b\",false]]"
    input = "<!DOCTYPE a SYSTEM\"b"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"y\",false]]"
    input = "<!DOCTYPE a SYSTEM\"y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"z\",false]]"
    input = "<!DOCTYPE a SYSTEM\"z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"{" do
    output = "[[\"DOCTYPE\",\"a\",null,\"{\",false]]"
    input = "<!DOCTYPE a SYSTEM\"{"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\"\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\u{100000}\",false]]"
    input = "<!DOCTYPE a SYSTEM\"\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM#" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM#"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM&" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM&"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM'"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,\"�\",false]]"
    input = "<!DOCTYPE a SYSTEM'\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-null-character", "col" => 20, "line" => 1}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\t\",false]]"
    input = "<!DOCTYPE a SYSTEM'\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\n\",false]]"
    input = "<!DOCTYPE a SYSTEM'\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\u000b\",false]]"
    input = "<!DOCTYPE a SYSTEM'\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\f\",false]]"
    input = "<!DOCTYPE a SYSTEM'\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM' " do
    output = "[[\"DOCTYPE\",\"a\",null,\" \",false]]"
    input = "<!DOCTYPE a SYSTEM' "
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'!" do
    output = "[[\"DOCTYPE\",\"a\",null,\"!\",false]]"
    input = "<!DOCTYPE a SYSTEM'!"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'\"" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\\"\",false]]"
    input = "<!DOCTYPE a SYSTEM'\""
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'&" do
    output = "[[\"DOCTYPE\",\"a\",null,\"&\",false]]"
    input = "<!DOCTYPE a SYSTEM'&"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM''"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}, {"code" => "unexpected-null-character", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\\u0008" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''\b"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 21}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM''\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM''\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 21}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM''\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM''\r"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 1, "line" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\\u001F" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''\u001F"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 21}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'' " do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM'' "
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'' \\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM'' \u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 22, "line" => 1}, {"code" => "unexpected-null-character", "line" => 1, "col" => 22}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'' x\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM'' x\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 22, "line" => 1}, {"code" => "unexpected-null-character", "line" => 1, "col" => 23}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''!" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''!"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\"" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''\""
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''&" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''&"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'''" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM'''"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''-" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''-"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''/" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''/"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''0" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''0"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''1" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''1"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''9" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''9"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''<" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''<"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''=" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''="
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''>" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''>"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''?" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''?"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''@" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''@"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''A"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''B"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''Y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''Z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''`" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''`"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''a" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''a"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''b" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''b"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''{" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''{"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM''\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPE a SYSTEM''\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "unexpected-character-after-doctype-system-identifier", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'(" do
    output = "[[\"DOCTYPE\",\"a\",null,\"(\",false]]"
    input = "<!DOCTYPE a SYSTEM'("
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'-" do
    output = "[[\"DOCTYPE\",\"a\",null,\"-\",false]]"
    input = "<!DOCTYPE a SYSTEM'-"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'/" do
    output = "[[\"DOCTYPE\",\"a\",null,\"/\",false]]"
    input = "<!DOCTYPE a SYSTEM'/"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'0" do
    output = "[[\"DOCTYPE\",\"a\",null,\"0\",false]]"
    input = "<!DOCTYPE a SYSTEM'0"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'1" do
    output = "[[\"DOCTYPE\",\"a\",null,\"1\",false]]"
    input = "<!DOCTYPE a SYSTEM'1"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'9" do
    output = "[[\"DOCTYPE\",\"a\",null,\"9\",false]]"
    input = "<!DOCTYPE a SYSTEM'9"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'<" do
    output = "[[\"DOCTYPE\",\"a\",null,\"<\",false]]"
    input = "<!DOCTYPE a SYSTEM'<"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'=" do
    output = "[[\"DOCTYPE\",\"a\",null,\"=\",false]]"
    input = "<!DOCTYPE a SYSTEM'="
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'>" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPE a SYSTEM'>"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "abrupt-doctype-system-identifier", "col" => 20, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'?" do
    output = "[[\"DOCTYPE\",\"a\",null,\"?\",false]]"
    input = "<!DOCTYPE a SYSTEM'?"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'@" do
    output = "[[\"DOCTYPE\",\"a\",null,\"@\",false]]"
    input = "<!DOCTYPE a SYSTEM'@"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"A\",false]]"
    input = "<!DOCTYPE a SYSTEM'A"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"B\",false]]"
    input = "<!DOCTYPE a SYSTEM'B"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'Y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"Y\",false]]"
    input = "<!DOCTYPE a SYSTEM'Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'Z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"Z\",false]]"
    input = "<!DOCTYPE a SYSTEM'Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'`" do
    output = "[[\"DOCTYPE\",\"a\",null,\"`\",false]]"
    input = "<!DOCTYPE a SYSTEM'`"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'a" do
    output = "[[\"DOCTYPE\",\"a\",null,\"a\",false]]"
    input = "<!DOCTYPE a SYSTEM'a"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'b" do
    output = "[[\"DOCTYPE\",\"a\",null,\"b\",false]]"
    input = "<!DOCTYPE a SYSTEM'b"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"y\",false]]"
    input = "<!DOCTYPE a SYSTEM'y"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"z\",false]]"
    input = "<!DOCTYPE a SYSTEM'z"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'{" do
    output = "[[\"DOCTYPE\",\"a\",null,\"{\",false]]"
    input = "<!DOCTYPE a SYSTEM'{"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 21, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM'\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\u{100000}\",false]]"
    input = "<!DOCTYPE a SYSTEM'\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "col" => 22, "line" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM(" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM("
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM-" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM-"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM/" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM/"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM0" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM0"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM1" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM1"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM9" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM9"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM<" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM<"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM=" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM="
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM>" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM>"
    assert_lexes input, output, [{"code" => "missing-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM?" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM?"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM@" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM@"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEMA" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEMA"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEMB" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEMB"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEMY" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEMY"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEMZ" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEMZ"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM`" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM`"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEMa" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEMa"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEMb" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEMb"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEMy" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEMy"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEMz" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEMz"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM{" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM{"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a SYSTEM\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a SYSTEM\u{100000}"
    assert_lexes input, output, [{"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a Y" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a Y"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a Z" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a Z"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a `" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a `"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a\u0000"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}, {"code" => "unexpected-null-character", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a\t"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a\n"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a\v"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a\f"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a "
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a!" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a!"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a\"" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a\""
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a&" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a&"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a'" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a'"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a-" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a-"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a/" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a/"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a0" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a0"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a1" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a1"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a9" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a9"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a<" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a<"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a=" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a="
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a>" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a>"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a?" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a?"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a@" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a@"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a aA" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a aA"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a aB" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a aB"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a aY" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a aY"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a aZ" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a aZ"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a`" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a`"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a aa" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a aa"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a ab" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a ab"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a ay" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a ay"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a az" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a az"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a{" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a{"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a a\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a a\u{100000}"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a b" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a b"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a y" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a y"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a z" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a z"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a {" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a {"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a \\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPE a \u{100000}"
    assert_lexes input, output, [{"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a!" do
    output = "[[\"DOCTYPE\",\"a!\",null,null,false]]"
    input = "<!DOCTYPE a!"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\"" do
    output = "[[\"DOCTYPE\",\"a\\\"\",null,null,false]]"
    input = "<!DOCTYPE a\""
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a&" do
    output = "[[\"DOCTYPE\",\"a&\",null,null,false]]"
    input = "<!DOCTYPE a&"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a'" do
    output = "[[\"DOCTYPE\",\"a'\",null,null,false]]"
    input = "<!DOCTYPE a'"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a-" do
    output = "[[\"DOCTYPE\",\"a-\",null,null,false]]"
    input = "<!DOCTYPE a-"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a/" do
    output = "[[\"DOCTYPE\",\"a/\",null,null,false]]"
    input = "<!DOCTYPE a/"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a0" do
    output = "[[\"DOCTYPE\",\"a0\",null,null,false]]"
    input = "<!DOCTYPE a0"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a1" do
    output = "[[\"DOCTYPE\",\"a1\",null,null,false]]"
    input = "<!DOCTYPE a1"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a9" do
    output = "[[\"DOCTYPE\",\"a9\",null,null,false]]"
    input = "<!DOCTYPE a9"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a<" do
    output = "[[\"DOCTYPE\",\"a<\",null,null,false]]"
    input = "<!DOCTYPE a<"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a=" do
    output = "[[\"DOCTYPE\",\"a=\",null,null,false]]"
    input = "<!DOCTYPE a="
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a>" do
    output = "[[\"DOCTYPE\",\"a\",null,null,true]]"
    input = "<!DOCTYPE a>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a?" do
    output = "[[\"DOCTYPE\",\"a?\",null,null,false]]"
    input = "<!DOCTYPE a?"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a@" do
    output = "[[\"DOCTYPE\",\"a@\",null,null,false]]"
    input = "<!DOCTYPE a@"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE aA" do
    output = "[[\"DOCTYPE\",\"aa\",null,null,false]]"
    input = "<!DOCTYPE aA"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE aB" do
    output = "[[\"DOCTYPE\",\"ab\",null,null,false]]"
    input = "<!DOCTYPE aB"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE aY" do
    output = "[[\"DOCTYPE\",\"ay\",null,null,false]]"
    input = "<!DOCTYPE aY"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE aZ" do
    output = "[[\"DOCTYPE\",\"az\",null,null,false]]"
    input = "<!DOCTYPE aZ"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a[" do
    output = "[[\"DOCTYPE\",\"a[\",null,null,false]]"
    input = "<!DOCTYPE a["
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a`" do
    output = "[[\"DOCTYPE\",\"a`\",null,null,false]]"
    input = "<!DOCTYPE a`"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE aa" do
    output = "[[\"DOCTYPE\",\"aa\",null,null,false]]"
    input = "<!DOCTYPE aa"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE ab" do
    output = "[[\"DOCTYPE\",\"ab\",null,null,false]]"
    input = "<!DOCTYPE ab"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE ay" do
    output = "[[\"DOCTYPE\",\"ay\",null,null,false]]"
    input = "<!DOCTYPE ay"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE az" do
    output = "[[\"DOCTYPE\",\"az\",null,null,false]]"
    input = "<!DOCTYPE az"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a{" do
    output = "[[\"DOCTYPE\",\"a{\",null,null,false]]"
    input = "<!DOCTYPE a{"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE a\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\u{100000}\",null,null,false]]"
    input = "<!DOCTYPE a\u{100000}"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE b" do
    output = "[[\"DOCTYPE\",\"b\",null,null,false]]"
    input = "<!DOCTYPE b"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE y" do
    output = "[[\"DOCTYPE\",\"y\",null,null,false]]"
    input = "<!DOCTYPE y"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE z" do
    output = "[[\"DOCTYPE\",\"z\",null,null,false]]"
    input = "<!DOCTYPE z"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE {" do
    output = "[[\"DOCTYPE\",\"{\",null,null,false]]"
    input = "<!DOCTYPE {"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE \\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"\u{100000}\",null,null,false]]"
    input = "<!DOCTYPE \u{100000}"
    assert_lexes input, output, [{"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE!" do
    output = "[[\"DOCTYPE\",\"!\",null,null,false]]"
    input = "<!DOCTYPE!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\"" do
    output = "[[\"DOCTYPE\",\"\\\"\",null,null,false]]"
    input = "<!DOCTYPE\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE&" do
    output = "[[\"DOCTYPE\",\"&\",null,null,false]]"
    input = "<!DOCTYPE&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE'" do
    output = "[[\"DOCTYPE\",\"'\",null,null,false]]"
    input = "<!DOCTYPE'"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE-" do
    output = "[[\"DOCTYPE\",\"-\",null,null,false]]"
    input = "<!DOCTYPE-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE/" do
    output = "[[\"DOCTYPE\",\"/\",null,null,false]]"
    input = "<!DOCTYPE/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE0" do
    output = "[[\"DOCTYPE\",\"0\",null,null,false]]"
    input = "<!DOCTYPE0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE1" do
    output = "[[\"DOCTYPE\",\"1\",null,null,false]]"
    input = "<!DOCTYPE1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE9" do
    output = "[[\"DOCTYPE\",\"9\",null,null,false]]"
    input = "<!DOCTYPE9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE<" do
    output = "[[\"DOCTYPE\",\"<\",null,null,false]]"
    input = "<!DOCTYPE<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE=" do
    output = "[[\"DOCTYPE\",\"=\",null,null,false]]"
    input = "<!DOCTYPE="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE>" do
    output = "[[\"DOCTYPE\",null,null,null,false]]"
    input = "<!DOCTYPE>"
    assert_lexes input, output, [{"code" => "missing-doctype-name", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE?" do
    output = "[[\"DOCTYPE\",\"?\",null,null,false]]"
    input = "<!DOCTYPE?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE@" do
    output = "[[\"DOCTYPE\",\"@\",null,null,false]]"
    input = "<!DOCTYPE@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEA" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEA"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEB" do
    output = "[[\"DOCTYPE\",\"b\",null,null,false]]"
    input = "<!DOCTYPEB"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEY" do
    output = "[[\"DOCTYPE\",\"y\",null,null,false]]"
    input = "<!DOCTYPEY"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEZ" do
    output = "[[\"DOCTYPE\",\"z\",null,null,false]]"
    input = "<!DOCTYPEZ"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE`" do
    output = "[[\"DOCTYPE\",\"`\",null,null,false]]"
    input = "<!DOCTYPE`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\\u0000" do
    output = "[[\"DOCTYPE\",\"a�\",null,null,false]]"
    input = "<!DOCTYPEa\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "unexpected-null-character", "line" => 1, "col" => 11}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\\u0008" do
    output = "[[\"DOCTYPE\",\"a\\b\",null,null,false]]"
    input = "<!DOCTYPEa\b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 11}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\\u000B" do
    output = "[[\"DOCTYPE\",\"a\\u000b\",null,null,false]]"
    input = "<!DOCTYPEa\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 11}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa\r"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\\u001F" do
    output = "[[\"DOCTYPE\",\"a\\u001f\",null,null,false]]"
    input = "<!DOCTYPEa\u001F"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 11}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}, {"code" => "unexpected-null-character", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \\u0008" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 12}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 12}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \r"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \\u001F" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \u001F"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 12}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa  " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa  "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa !" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa !"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \"" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa &" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa &"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa '" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa '"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa -" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa -"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa /" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa /"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa 0" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa 0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa 1" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa 1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa 9" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa 9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa <" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa <"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa =" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa ="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa >" do
    output = "[[\"DOCTYPE\",\"a\",null,null,true]]"
    input = "<!DOCTYPEa >"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa ?" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa ?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa @" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa @"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa A"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa B"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}, {"code" => "unexpected-null-character", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\\u0008" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC\b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC\r"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\\u001F" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC\u001F"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC!" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"�\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-null-character", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",\"\\t\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",\"\\n\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",\"\\u000b\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",\"\\f\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\" " do
    output = "[[\"DOCTYPE\",\"a\",\" \",null,false]]"
    input = "<!DOCTYPEa PUBLIC\" "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"!" do
    output = "[[\"DOCTYPE\",\"a\",\"!\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"\"" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"#" do
    output = "[[\"DOCTYPE\",\"a\",\"#\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"#"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"&" do
    output = "[[\"DOCTYPE\",\"a\",\"&\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"'" do
    output = "[[\"DOCTYPE\",\"a\",\"'\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"'"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"-" do
    output = "[[\"DOCTYPE\",\"a\",\"-\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"/" do
    output = "[[\"DOCTYPE\",\"a\",\"/\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"0" do
    output = "[[\"DOCTYPE\",\"a\",\"0\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"1" do
    output = "[[\"DOCTYPE\",\"a\",\"1\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"9" do
    output = "[[\"DOCTYPE\",\"a\",\"9\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"<" do
    output = "[[\"DOCTYPE\",\"a\",\"<\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"=" do
    output = "[[\"DOCTYPE\",\"a\",\"=\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\">" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\">"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "abrupt-doctype-public-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"?" do
    output = "[[\"DOCTYPE\",\"a\",\"?\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"@" do
    output = "[[\"DOCTYPE\",\"a\",\"@\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"A" do
    output = "[[\"DOCTYPE\",\"a\",\"A\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"A"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"B" do
    output = "[[\"DOCTYPE\",\"a\",\"B\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"B"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"Y" do
    output = "[[\"DOCTYPE\",\"a\",\"Y\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"Z" do
    output = "[[\"DOCTYPE\",\"a\",\"Z\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"`" do
    output = "[[\"DOCTYPE\",\"a\",\"`\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"a" do
    output = "[[\"DOCTYPE\",\"a\",\"a\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"a"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"b" do
    output = "[[\"DOCTYPE\",\"a\",\"b\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"y" do
    output = "[[\"DOCTYPE\",\"a\",\"y\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"z" do
    output = "[[\"DOCTYPE\",\"a\",\"z\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"{" do
    output = "[[\"DOCTYPE\",\"a\",\"{\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\"\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",\"\u{100000}\",null,false]]"
    input = "<!DOCTYPEa PUBLIC\"\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC#" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC#"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC&" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"�\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-null-character", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",\"\\t\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",\"\\n\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",\"\\u000b\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",\"\\f\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC' " do
    output = "[[\"DOCTYPE\",\"a\",\" \",null,false]]"
    input = "<!DOCTYPEa PUBLIC' "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'!" do
    output = "[[\"DOCTYPE\",\"a\",\"!\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'\"" do
    output = "[[\"DOCTYPE\",\"a\",\"\\\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'&" do
    output = "[[\"DOCTYPE\",\"a\",\"&\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}, {"code" => "unexpected-null-character", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\\u0008" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''\b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''\r"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\\u001F" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''\u001F"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'' " do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'' "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''!" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\"" do
    output = "[[\"DOCTYPE\",\"a\",\"\",\"\",false]]"
    input = "<!DOCTYPEa PUBLIC''\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-whitespace-between-doctype-public-and-system-identifiers", "line" => 1, "col" => 20}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''#" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''#"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''&" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'''" do
    output = "[[\"DOCTYPE\",\"a\",\"\",\"\",false]]"
    input = "<!DOCTYPEa PUBLIC'''"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-whitespace-between-doctype-public-and-system-identifiers", "line" => 1, "col" => 20}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''(" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''("
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''-" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''/" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''0" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''1" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''9" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''<" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''=" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''>" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,true]]"
    input = "<!DOCTYPEa PUBLIC''>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''?" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''@" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''A" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''A"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''B" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''B"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''Y" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''Z" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''`" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''a" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''a"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''b" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''y" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''z" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''{" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC''\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC''\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'(" do
    output = "[[\"DOCTYPE\",\"a\",\"(\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'("
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'-" do
    output = "[[\"DOCTYPE\",\"a\",\"-\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'/" do
    output = "[[\"DOCTYPE\",\"a\",\"/\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'0" do
    output = "[[\"DOCTYPE\",\"a\",\"0\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'1" do
    output = "[[\"DOCTYPE\",\"a\",\"1\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'9" do
    output = "[[\"DOCTYPE\",\"a\",\"9\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'<" do
    output = "[[\"DOCTYPE\",\"a\",\"<\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'=" do
    output = "[[\"DOCTYPE\",\"a\",\"=\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'>" do
    output = "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "abrupt-doctype-public-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'?" do
    output = "[[\"DOCTYPE\",\"a\",\"?\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'@" do
    output = "[[\"DOCTYPE\",\"a\",\"@\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'A" do
    output = "[[\"DOCTYPE\",\"a\",\"A\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'A"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'B" do
    output = "[[\"DOCTYPE\",\"a\",\"B\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'B"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'Y" do
    output = "[[\"DOCTYPE\",\"a\",\"Y\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'Z" do
    output = "[[\"DOCTYPE\",\"a\",\"Z\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'`" do
    output = "[[\"DOCTYPE\",\"a\",\"`\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'a" do
    output = "[[\"DOCTYPE\",\"a\",\"a\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'a"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'b" do
    output = "[[\"DOCTYPE\",\"a\",\"b\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'y" do
    output = "[[\"DOCTYPE\",\"a\",\"y\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'z" do
    output = "[[\"DOCTYPE\",\"a\",\"z\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'{" do
    output = "[[\"DOCTYPE\",\"a\",\"{\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC'\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",\"\u{100000}\",null,false]]"
    input = "<!DOCTYPEa PUBLIC'\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-public-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC(" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC("
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC-" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC/" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC0" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC1" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC9" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC<" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC=" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC>" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC?" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC@" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLICA" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLICA"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLICB" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLICB"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLICY" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLICY"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLICZ" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLICZ"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC`" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLICa" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLICa"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLICb" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLICb"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLICy" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLICy"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLICz" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLICz"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC{" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa PUBLIC\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa PUBLIC\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-public-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}, {"code" => "unexpected-null-character", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\\u0008" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM\b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM\r"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\\u001F" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM\u001F"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 18}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM!" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,\"�\",false]]"
    input = "<!DOCTYPEa SYSTEM\"\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-null-character", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\t\",false]]"
    input = "<!DOCTYPEa SYSTEM\"\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\n\",false]]"
    input = "<!DOCTYPEa SYSTEM\"\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\u000b\",false]]"
    input = "<!DOCTYPEa SYSTEM\"\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\f\",false]]"
    input = "<!DOCTYPEa SYSTEM\"\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\" " do
    output = "[[\"DOCTYPE\",\"a\",null,\" \",false]]"
    input = "<!DOCTYPEa SYSTEM\" "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"!" do
    output = "[[\"DOCTYPE\",\"a\",null,\"!\",false]]"
    input = "<!DOCTYPEa SYSTEM\"!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"\"" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM\"\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"#" do
    output = "[[\"DOCTYPE\",\"a\",null,\"#\",false]]"
    input = "<!DOCTYPEa SYSTEM\"#"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"&" do
    output = "[[\"DOCTYPE\",\"a\",null,\"&\",false]]"
    input = "<!DOCTYPEa SYSTEM\"&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"'" do
    output = "[[\"DOCTYPE\",\"a\",null,\"'\",false]]"
    input = "<!DOCTYPEa SYSTEM\"'"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"-" do
    output = "[[\"DOCTYPE\",\"a\",null,\"-\",false]]"
    input = "<!DOCTYPEa SYSTEM\"-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"/" do
    output = "[[\"DOCTYPE\",\"a\",null,\"/\",false]]"
    input = "<!DOCTYPEa SYSTEM\"/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"0" do
    output = "[[\"DOCTYPE\",\"a\",null,\"0\",false]]"
    input = "<!DOCTYPEa SYSTEM\"0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"1" do
    output = "[[\"DOCTYPE\",\"a\",null,\"1\",false]]"
    input = "<!DOCTYPEa SYSTEM\"1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"9" do
    output = "[[\"DOCTYPE\",\"a\",null,\"9\",false]]"
    input = "<!DOCTYPEa SYSTEM\"9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"<" do
    output = "[[\"DOCTYPE\",\"a\",null,\"<\",false]]"
    input = "<!DOCTYPEa SYSTEM\"<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"=" do
    output = "[[\"DOCTYPE\",\"a\",null,\"=\",false]]"
    input = "<!DOCTYPEa SYSTEM\"="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\">" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM\">"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "abrupt-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"?" do
    output = "[[\"DOCTYPE\",\"a\",null,\"?\",false]]"
    input = "<!DOCTYPEa SYSTEM\"?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"@" do
    output = "[[\"DOCTYPE\",\"a\",null,\"@\",false]]"
    input = "<!DOCTYPEa SYSTEM\"@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"A\",false]]"
    input = "<!DOCTYPEa SYSTEM\"A"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"B\",false]]"
    input = "<!DOCTYPEa SYSTEM\"B"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"Y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"Y\",false]]"
    input = "<!DOCTYPEa SYSTEM\"Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"Z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"Z\",false]]"
    input = "<!DOCTYPEa SYSTEM\"Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"`" do
    output = "[[\"DOCTYPE\",\"a\",null,\"`\",false]]"
    input = "<!DOCTYPEa SYSTEM\"`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"a" do
    output = "[[\"DOCTYPE\",\"a\",null,\"a\",false]]"
    input = "<!DOCTYPEa SYSTEM\"a"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"b" do
    output = "[[\"DOCTYPE\",\"a\",null,\"b\",false]]"
    input = "<!DOCTYPEa SYSTEM\"b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"y\",false]]"
    input = "<!DOCTYPEa SYSTEM\"y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"z\",false]]"
    input = "<!DOCTYPEa SYSTEM\"z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"{" do
    output = "[[\"DOCTYPE\",\"a\",null,\"{\",false]]"
    input = "<!DOCTYPEa SYSTEM\"{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\"\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\u{100000}\",false]]"
    input = "<!DOCTYPEa SYSTEM\"\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM#" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM#"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM&" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM'"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,\"�\",false]]"
    input = "<!DOCTYPEa SYSTEM'\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-null-character", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\t\",false]]"
    input = "<!DOCTYPEa SYSTEM'\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\n\",false]]"
    input = "<!DOCTYPEa SYSTEM'\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\u000b\",false]]"
    input = "<!DOCTYPEa SYSTEM'\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 19}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\f\",false]]"
    input = "<!DOCTYPEa SYSTEM'\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM' " do
    output = "[[\"DOCTYPE\",\"a\",null,\" \",false]]"
    input = "<!DOCTYPEa SYSTEM' "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'!" do
    output = "[[\"DOCTYPE\",\"a\",null,\"!\",false]]"
    input = "<!DOCTYPEa SYSTEM'!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'\"" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\\\"\",false]]"
    input = "<!DOCTYPEa SYSTEM'\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'&" do
    output = "[[\"DOCTYPE\",\"a\",null,\"&\",false]]"
    input = "<!DOCTYPEa SYSTEM'&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM''"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}, {"code" => "unexpected-null-character", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\\u0008" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''\b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM''\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM''\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM''\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\\u000D" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM''\r"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\\u001F" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''\u001F"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 20}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'' " do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM'' "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''!" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\"" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''&" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'''" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM'''"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''-" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''/" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''0" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''1" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''9" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''<" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''=" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''>" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''?" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''@" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''A"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''B"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''Y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''Z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''`" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''a" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''a"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''b" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''{" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM''\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
    input = "<!DOCTYPEa SYSTEM''\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "unexpected-character-after-doctype-system-identifier", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'(" do
    output = "[[\"DOCTYPE\",\"a\",null,\"(\",false]]"
    input = "<!DOCTYPEa SYSTEM'("
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'-" do
    output = "[[\"DOCTYPE\",\"a\",null,\"-\",false]]"
    input = "<!DOCTYPEa SYSTEM'-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'/" do
    output = "[[\"DOCTYPE\",\"a\",null,\"/\",false]]"
    input = "<!DOCTYPEa SYSTEM'/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'0" do
    output = "[[\"DOCTYPE\",\"a\",null,\"0\",false]]"
    input = "<!DOCTYPEa SYSTEM'0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'1" do
    output = "[[\"DOCTYPE\",\"a\",null,\"1\",false]]"
    input = "<!DOCTYPEa SYSTEM'1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'9" do
    output = "[[\"DOCTYPE\",\"a\",null,\"9\",false]]"
    input = "<!DOCTYPEa SYSTEM'9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'<" do
    output = "[[\"DOCTYPE\",\"a\",null,\"<\",false]]"
    input = "<!DOCTYPEa SYSTEM'<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'=" do
    output = "[[\"DOCTYPE\",\"a\",null,\"=\",false]]"
    input = "<!DOCTYPEa SYSTEM'="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'>" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
    input = "<!DOCTYPEa SYSTEM'>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "abrupt-doctype-system-identifier", "line" => 1, "col" => 19}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'?" do
    output = "[[\"DOCTYPE\",\"a\",null,\"?\",false]]"
    input = "<!DOCTYPEa SYSTEM'?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'@" do
    output = "[[\"DOCTYPE\",\"a\",null,\"@\",false]]"
    input = "<!DOCTYPEa SYSTEM'@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'A" do
    output = "[[\"DOCTYPE\",\"a\",null,\"A\",false]]"
    input = "<!DOCTYPEa SYSTEM'A"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'B" do
    output = "[[\"DOCTYPE\",\"a\",null,\"B\",false]]"
    input = "<!DOCTYPEa SYSTEM'B"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'Y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"Y\",false]]"
    input = "<!DOCTYPEa SYSTEM'Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'Z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"Z\",false]]"
    input = "<!DOCTYPEa SYSTEM'Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'`" do
    output = "[[\"DOCTYPE\",\"a\",null,\"`\",false]]"
    input = "<!DOCTYPEa SYSTEM'`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'a" do
    output = "[[\"DOCTYPE\",\"a\",null,\"a\",false]]"
    input = "<!DOCTYPEa SYSTEM'a"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'b" do
    output = "[[\"DOCTYPE\",\"a\",null,\"b\",false]]"
    input = "<!DOCTYPEa SYSTEM'b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'y" do
    output = "[[\"DOCTYPE\",\"a\",null,\"y\",false]]"
    input = "<!DOCTYPEa SYSTEM'y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'z" do
    output = "[[\"DOCTYPE\",\"a\",null,\"z\",false]]"
    input = "<!DOCTYPEa SYSTEM'z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'{" do
    output = "[[\"DOCTYPE\",\"a\",null,\"{\",false]]"
    input = "<!DOCTYPEa SYSTEM'{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 20}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM'\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,\"\u{100000}\",false]]"
    input = "<!DOCTYPEa SYSTEM'\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-whitespace-after-doctype-system-keyword", "line" => 1, "col" => 18}, {"code" => "eof-in-doctype", "line" => 1, "col" => 21}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM(" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM("
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM-" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM/" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM0" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM1" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM9" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM<" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM=" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM>" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM?" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM@" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEMA" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEMA"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEMB" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEMB"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEMY" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEMY"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEMZ" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEMZ"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM`" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEMa" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEMa"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEMb" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEMb"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEMy" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEMy"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEMz" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEMz"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM{" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa SYSTEM\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa SYSTEM\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "missing-quote-before-doctype-system-identifier", "line" => 1, "col" => 18}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa Y" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa Y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa Z" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa Z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa `" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa `"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a\\u0000" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a\u0000"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}, {"code" => "unexpected-null-character", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a\\u0009" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a\t"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a\\u000A" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a\n"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a\\u000B" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a\v"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a\\u000C" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a\f"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a " do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a "
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a!" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a\"" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a&" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a'" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a'"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a-" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a/" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a0" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a1" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a9" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a<" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a=" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a>" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a?" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a@" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa aA" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa aA"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa aB" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa aB"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa aY" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa aY"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa aZ" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa aZ"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a`" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa aa" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa aa"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa ab" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa ab"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa ay" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa ay"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa az" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa az"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a{" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa a\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa a\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa b" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa b"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa y" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa y"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa z" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa z"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa {" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa {"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa \\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\",null,null,false]]"
    input = "<!DOCTYPEa \u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "invalid-character-sequence-after-doctype-name", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa!" do
    output = "[[\"DOCTYPE\",\"a!\",null,null,false]]"
    input = "<!DOCTYPEa!"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\"" do
    output = "[[\"DOCTYPE\",\"a\\\"\",null,null,false]]"
    input = "<!DOCTYPEa\""
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa&" do
    output = "[[\"DOCTYPE\",\"a&\",null,null,false]]"
    input = "<!DOCTYPEa&"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa'" do
    output = "[[\"DOCTYPE\",\"a'\",null,null,false]]"
    input = "<!DOCTYPEa'"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa-" do
    output = "[[\"DOCTYPE\",\"a-\",null,null,false]]"
    input = "<!DOCTYPEa-"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa/" do
    output = "[[\"DOCTYPE\",\"a/\",null,null,false]]"
    input = "<!DOCTYPEa/"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa0" do
    output = "[[\"DOCTYPE\",\"a0\",null,null,false]]"
    input = "<!DOCTYPEa0"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa1" do
    output = "[[\"DOCTYPE\",\"a1\",null,null,false]]"
    input = "<!DOCTYPEa1"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa9" do
    output = "[[\"DOCTYPE\",\"a9\",null,null,false]]"
    input = "<!DOCTYPEa9"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa<" do
    output = "[[\"DOCTYPE\",\"a<\",null,null,false]]"
    input = "<!DOCTYPEa<"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa=" do
    output = "[[\"DOCTYPE\",\"a=\",null,null,false]]"
    input = "<!DOCTYPEa="
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa>" do
    output = "[[\"DOCTYPE\",\"a\",null,null,true]]"
    input = "<!DOCTYPEa>"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa?" do
    output = "[[\"DOCTYPE\",\"a?\",null,null,false]]"
    input = "<!DOCTYPEa?"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa@" do
    output = "[[\"DOCTYPE\",\"a@\",null,null,false]]"
    input = "<!DOCTYPEa@"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEaA" do
    output = "[[\"DOCTYPE\",\"aa\",null,null,false]]"
    input = "<!DOCTYPEaA"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEaB" do
    output = "[[\"DOCTYPE\",\"ab\",null,null,false]]"
    input = "<!DOCTYPEaB"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEaY" do
    output = "[[\"DOCTYPE\",\"ay\",null,null,false]]"
    input = "<!DOCTYPEaY"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEaZ" do
    output = "[[\"DOCTYPE\",\"az\",null,null,false]]"
    input = "<!DOCTYPEaZ"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa[" do
    output = "[[\"DOCTYPE\",\"a[\",null,null,false]]"
    input = "<!DOCTYPEa["
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa`" do
    output = "[[\"DOCTYPE\",\"a`\",null,null,false]]"
    input = "<!DOCTYPEa`"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEaa" do
    output = "[[\"DOCTYPE\",\"aa\",null,null,false]]"
    input = "<!DOCTYPEaa"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEab" do
    output = "[[\"DOCTYPE\",\"ab\",null,null,false]]"
    input = "<!DOCTYPEab"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEay" do
    output = "[[\"DOCTYPE\",\"ay\",null,null,false]]"
    input = "<!DOCTYPEay"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEaz" do
    output = "[[\"DOCTYPE\",\"az\",null,null,false]]"
    input = "<!DOCTYPEaz"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa{" do
    output = "[[\"DOCTYPE\",\"a{\",null,null,false]]"
    input = "<!DOCTYPEa{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEa\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"a\u{100000}\",null,null,false]]"
    input = "<!DOCTYPEa\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEb" do
    output = "[[\"DOCTYPE\",\"b\",null,null,false]]"
    input = "<!DOCTYPEb"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEy" do
    output = "[[\"DOCTYPE\",\"y\",null,null,false]]"
    input = "<!DOCTYPEy"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPEz" do
    output = "[[\"DOCTYPE\",\"z\",null,null,false]]"
    input = "<!DOCTYPEz"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE{" do
    output = "[[\"DOCTYPE\",\"{\",null,null,false]]"
    input = "<!DOCTYPE{"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "<!DOCTYPE\\uDBC0\\uDC00" do
    output = "[[\"DOCTYPE\",\"\u{100000}\",null,null,false]]"
    input = "<!DOCTYPE\u{100000}"
    assert_lexes input, output, [{"code" => "missing-whitespace-before-doctype-name", "line" => 1, "col" => 10}, {"code" => "eof-in-doctype", "line" => 1, "col" => 12}], HTML::Lexer::State::DATA, "", false
  end
  it "<!Y" do
    output = "[[\"Comment\",\"Y\"]]"
    input = "<!Y"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!Z" do
    output = "[[\"Comment\",\"Z\"]]"
    input = "<!Z"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!`" do
    output = "[[\"Comment\",\"`\"]]"
    input = "<!`"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!a" do
    output = "[[\"Comment\",\"a\"]]"
    input = "<!a"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!b" do
    output = "[[\"Comment\",\"b\"]]"
    input = "<!b"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!y" do
    output = "[[\"Comment\",\"y\"]]"
    input = "<!y"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!z" do
    output = "[[\"Comment\",\"z\"]]"
    input = "<!z"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!{" do
    output = "[[\"Comment\",\"{\"]]"
    input = "<!{"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<!\\uDBC0\\uDC00" do
    output = "[[\"Comment\",\"\u{100000}\"]]"
    input = "<!\u{100000}"
    assert_lexes input, output, [{"code" => "incorrectly-opened-comment", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<\"" do
    output = "[[\"Character\",\"<\\\"\"]]"
    input = "<\""
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<&" do
    output = "[[\"Character\",\"<&\"]]"
    input = "<&"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<'" do
    output = "[[\"Character\",\"<'\"]]"
    input = "<'"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<-" do
    output = "[[\"Character\",\"<-\"]]"
    input = "<-"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<." do
    output = "[[\"Character\",\"<.\"]]"
    input = "<."
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "</" do
    output = "[[\"Character\",\"</\"]]"
    input = "</"
    assert_lexes input, output, [{"code" => "eof-before-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</\\u0000" do
    output = "[[\"Comment\",\"�\"]]"
    input = "</\u0000"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}, {"code" => "unexpected-null-character", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</\\u0009" do
    output = "[[\"Comment\",\"\\t\"]]"
    input = "</\t"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</\\u000A" do
    output = "[[\"Comment\",\"\\n\"]]"
    input = "</\n"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</\\u000B" do
    output = "[[\"Comment\",\"\\u000b\"]]"
    input = "</\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 3}, {"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</\\u000C" do
    output = "[[\"Comment\",\"\\f\"]]"
    input = "</\f"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</ " do
    output = "[[\"Comment\",\" \"]]"
    input = "</ "
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</ \\u0000" do
    output = "[[\"Comment\",\" �\"]]"
    input = "</ \u0000"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}, {"code" => "unexpected-null-character", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "</!" do
    output = "[[\"Comment\",\"!\"]]"
    input = "</!"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</\"" do
    output = "[[\"Comment\",\"\\\"\"]]"
    input = "</\""
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</&" do
    output = "[[\"Comment\",\"&\"]]"
    input = "</&"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</'" do
    output = "[[\"Comment\",\"'\"]]"
    input = "</'"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</-" do
    output = "[[\"Comment\",\"-\"]]"
    input = "</-"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<//" do
    output = "[[\"Comment\",\"/\"]]"
    input = "<//"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</0" do
    output = "[[\"Comment\",\"0\"]]"
    input = "</0"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</1" do
    output = "[[\"Comment\",\"1\"]]"
    input = "</1"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</9" do
    output = "[[\"Comment\",\"9\"]]"
    input = "</9"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</<" do
    output = "[[\"Comment\",\"<\"]]"
    input = "</<"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</=" do
    output = "[[\"Comment\",\"=\"]]"
    input = "</="
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</>" do
    output = "[]"
    input = "</>"
    assert_lexes input, output, [{"code" => "missing-end-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</?" do
    output = "[[\"Comment\",\"?\"]]"
    input = "</?"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</@" do
    output = "[[\"Comment\",\"@\"]]"
    input = "</@"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</A>" do
    output = "[[\"EndTag\",\"a\"]]"
    input = "</A>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "</B>" do
    output = "[[\"EndTag\",\"b\"]]"
    input = "</B>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "</Y>" do
    output = "[[\"EndTag\",\"y\"]]"
    input = "</Y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "</Z>" do
    output = "[[\"EndTag\",\"z\"]]"
    input = "</Z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "</[" do
    output = "[[\"Comment\",\"[\"]]"
    input = "</["
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</`" do
    output = "[[\"Comment\",\"`\"]]"
    input = "</`"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</a>" do
    output = "[[\"EndTag\",\"a\"]]"
    input = "</a>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "</b>" do
    output = "[[\"EndTag\",\"b\"]]"
    input = "</b>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "</y>" do
    output = "[[\"EndTag\",\"y\"]]"
    input = "</y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "</z>" do
    output = "[[\"EndTag\",\"z\"]]"
    input = "</z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "</{" do
    output = "[[\"Comment\",\"{\"]]"
    input = "</{"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "</\\uDBC0\\uDC00" do
    output = "[[\"Comment\",\"\u{100000}\"]]"
    input = "</\u{100000}"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<0" do
    output = "[[\"Character\",\"<0\"]]"
    input = "<0"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<1" do
    output = "[[\"Character\",\"<1\"]]"
    input = "<1"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<9" do
    output = "[[\"Character\",\"<9\"]]"
    input = "<9"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<<" do
    output = "[[\"Character\",\"<<\"]]"
    input = "<<"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}, {"code" => "eof-before-tag-name", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<=" do
    output = "[[\"Character\",\"<=\"]]"
    input = "<="
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<>" do
    output = "[[\"Character\",\"<>\"]]"
    input = "<>"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?" do
    output = "[[\"Comment\",\"?\"]]"
    input = "<?"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?\\u0000" do
    output = "[[\"Comment\",\"?�\"]]"
    input = "<?\u0000"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}, {"code" => "unexpected-null-character", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<?\\u0009" do
    output = "[[\"Comment\",\"?\\t\"]]"
    input = "<?\t"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?\\u000A" do
    output = "[[\"Comment\",\"?\\n\"]]"
    input = "<?\n"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?\\u000B" do
    output = "[[\"Comment\",\"?\\u000b\"]]"
    input = "<?\v"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}, {"code" => "control-character-in-input-stream", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<?\\u000C" do
    output = "[[\"Comment\",\"?\\f\"]]"
    input = "<?\f"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<? " do
    output = "[[\"Comment\",\"? \"]]"
    input = "<? "
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<? \\u0000" do
    output = "[[\"Comment\",\"? �\"]]"
    input = "<? \u0000"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}, {"code" => "unexpected-null-character", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<?!" do
    output = "[[\"Comment\",\"?!\"]]"
    input = "<?!"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?\"" do
    output = "[[\"Comment\",\"?\\\"\"]]"
    input = "<?\""
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?&" do
    output = "[[\"Comment\",\"?&\"]]"
    input = "<?&"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?'" do
    output = "[[\"Comment\",\"?'\"]]"
    input = "<?'"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?-" do
    output = "[[\"Comment\",\"?-\"]]"
    input = "<?-"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?/" do
    output = "[[\"Comment\",\"?/\"]]"
    input = "<?/"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?0" do
    output = "[[\"Comment\",\"?0\"]]"
    input = "<?0"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?1" do
    output = "[[\"Comment\",\"?1\"]]"
    input = "<?1"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?9" do
    output = "[[\"Comment\",\"?9\"]]"
    input = "<?9"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?<" do
    output = "[[\"Comment\",\"?<\"]]"
    input = "<?<"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?=" do
    output = "[[\"Comment\",\"?=\"]]"
    input = "<?="
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?>" do
    output = "[[\"Comment\",\"?\"]]"
    input = "<?>"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<??" do
    output = "[[\"Comment\",\"??\"]]"
    input = "<??"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?@" do
    output = "[[\"Comment\",\"?@\"]]"
    input = "<?@"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?A" do
    output = "[[\"Comment\",\"?A\"]]"
    input = "<?A"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?B" do
    output = "[[\"Comment\",\"?B\"]]"
    input = "<?B"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?Y" do
    output = "[[\"Comment\",\"?Y\"]]"
    input = "<?Y"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?Z" do
    output = "[[\"Comment\",\"?Z\"]]"
    input = "<?Z"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?`" do
    output = "[[\"Comment\",\"?`\"]]"
    input = "<?`"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?a" do
    output = "[[\"Comment\",\"?a\"]]"
    input = "<?a"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?b" do
    output = "[[\"Comment\",\"?b\"]]"
    input = "<?b"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?y" do
    output = "[[\"Comment\",\"?y\"]]"
    input = "<?y"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?z" do
    output = "[[\"Comment\",\"?z\"]]"
    input = "<?z"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?{" do
    output = "[[\"Comment\",\"?{\"]]"
    input = "<?{"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<?\\uDBC0\\uDC00" do
    output = "[[\"Comment\",\"?\u{100000}\"]]"
    input = "<?\u{100000}"
    assert_lexes input, output, [{"code" => "unexpected-question-mark-instead-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<@" do
    output = "[[\"Character\",\"<@\"]]"
    input = "<@"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<A>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<A>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<B>" do
    output = "[[\"StartTag\",\"b\",{}]]"
    input = "<B>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<Y>" do
    output = "[[\"StartTag\",\"y\",{}]]"
    input = "<Y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<Z>" do
    output = "[[\"StartTag\",\"z\",{}]]"
    input = "<Z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<[" do
    output = "[[\"Character\",\"<[\"]]"
    input = "<["
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<`" do
    output = "[[\"Character\",\"<`\"]]"
    input = "<`"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<a>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a\\u0000>" do
    output = "[[\"StartTag\",\"a�\",{}]]"
    input = "<a\u0000>"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<a\\u0008>" do
    output = "[[\"StartTag\",\"a\\b\",{}]]"
    input = "<a\b>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<a\\u0009>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a\t>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a\\u000A>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a\n>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a\\u000B>" do
    output = "[[\"StartTag\",\"a\\u000b\",{}]]"
    input = "<a\v>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<a\\u000C>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a\f>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a\\u000D>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a\r>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a\\u001F>" do
    output = "[[\"StartTag\",\"a\\u001f\",{}]]"
    input = "<a\u001F>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 3}], HTML::Lexer::State::DATA, "", false
  end
  it "<a >" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a \\u0000>" do
    output = "[[\"StartTag\",\"a\",{\"�\":\"\"}]]"
    input = "<a \u0000>"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a \\u0008>" do
    output = "[[\"StartTag\",\"a\",{\"\\b\":\"\"}]]"
    input = "<a \b>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a \\u0009>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a \t>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a \\u000A>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a \n>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a \\u000B>" do
    output = "[[\"StartTag\",\"a\",{\"\\u000b\":\"\"}]]"
    input = "<a \v>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a \\u000C>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a \f>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a \\u000D>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a \r>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a \\u001F>" do
    output = "[[\"StartTag\",\"a\",{\"\\u001f\":\"\"}]]"
    input = "<a \u001F>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a  >" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a  >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a !>" do
    output = "[[\"StartTag\",\"a\",{\"!\":\"\"}]]"
    input = "<a !>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a \">" do
    output = "[[\"StartTag\",\"a\",{\"\\\"\":\"\"}]]"
    input = "<a \">"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a #>" do
    output = "[[\"StartTag\",\"a\",{\"#\":\"\"}]]"
    input = "<a #>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a &>" do
    output = "[[\"StartTag\",\"a\",{\"&\":\"\"}]]"
    input = "<a &>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a '>" do
    output = "[[\"StartTag\",\"a\",{\"'\":\"\"}]]"
    input = "<a '>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a (>" do
    output = "[[\"StartTag\",\"a\",{\"(\":\"\"}]]"
    input = "<a (>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a ->" do
    output = "[[\"StartTag\",\"a\",{\"-\":\"\"}]]"
    input = "<a ->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a .>" do
    output = "[[\"StartTag\",\"a\",{\".\":\"\"}]]"
    input = "<a .>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a />" do
    output = "[[\"StartTag\",\"a\",{},true]]"
    input = "<a />"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a 0>" do
    output = "[[\"StartTag\",\"a\",{\"0\":\"\"}]]"
    input = "<a 0>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a 1>" do
    output = "[[\"StartTag\",\"a\",{\"1\":\"\"}]]"
    input = "<a 1>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a 9>" do
    output = "[[\"StartTag\",\"a\",{\"9\":\"\"}]]"
    input = "<a 9>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a <>" do
    output = "[[\"StartTag\",\"a\",{\"<\":\"\"}]]"
    input = "<a <>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a =>" do
    output = "[[\"StartTag\",\"a\",{\"=\":\"\"}]]"
    input = "<a =>"
    assert_lexes input, output, [{"code" => "unexpected-equals-sign-before-attribute-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a >" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a ?>" do
    output = "[[\"StartTag\",\"a\",{\"?\":\"\"}]]"
    input = "<a ?>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a @>" do
    output = "[[\"StartTag\",\"a\",{\"@\":\"\"}]]"
    input = "<a @>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a A>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a B>" do
    output = "[[\"StartTag\",\"a\",{\"b\":\"\"}]]"
    input = "<a B>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a Y>" do
    output = "[[\"StartTag\",\"a\",{\"y\":\"\"}]]"
    input = "<a Y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a Z>" do
    output = "[[\"StartTag\",\"a\",{\"z\":\"\"}]]"
    input = "<a Z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a [>" do
    output = "[[\"StartTag\",\"a\",{\"[\":\"\"}]]"
    input = "<a [>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a `>" do
    output = "[[\"StartTag\",\"a\",{\"`\":\"\"}]]"
    input = "<a `>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a\\u0000>" do
    output = "[[\"StartTag\",\"a\",{\"a�\":\"\"}]]"
    input = "<a a\u0000>"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a\\u0008>" do
    output = "[[\"StartTag\",\"a\",{\"a\\b\":\"\"}]]"
    input = "<a a\b>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a\\u0009>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a\t>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a\\u000A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a\n>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a\\u000B>" do
    output = "[[\"StartTag\",\"a\",{\"a\\u000b\":\"\"}]]"
    input = "<a a\v>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a\\u000C>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a\f>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a\\u000D>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a\r>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a\\u001F>" do
    output = "[[\"StartTag\",\"a\",{\"a\\u001f\":\"\"}]]"
    input = "<a a\u001F>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a >" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a \\u0000>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"�\":\"\"}]]"
    input = "<a a \u0000>"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a \\u0008>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\b\":\"\"}]]"
    input = "<a a \b>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a \\u0009>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a \t>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a \\u000A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a \n>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a \\u000B>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\u000b\":\"\"}]]"
    input = "<a a \v>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a \\u000C>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a \f>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a \\u000D>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a \r>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a \\u001F>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\u001f\":\"\"}]]"
    input = "<a a \u001F>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a  >" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a  >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a !>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"!\":\"\"}]]"
    input = "<a a !>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a \">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\\"\":\"\"}]]"
    input = "<a a \">"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a #>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"#\":\"\"}]]"
    input = "<a a #>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a &>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"&\":\"\"}]]"
    input = "<a a &>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a '>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"'\":\"\"}]]"
    input = "<a a '>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a (>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"(\":\"\"}]]"
    input = "<a a (>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a ->" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"-\":\"\"}]]"
    input = "<a a ->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a .>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\".\":\"\"}]]"
    input = "<a a .>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a />" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"},true]]"
    input = "<a a />"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a 0>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"0\":\"\"}]]"
    input = "<a a 0>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a 1>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"1\":\"\"}]]"
    input = "<a a 1>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a 9>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"9\":\"\"}]]"
    input = "<a a 9>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a <>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"<\":\"\"}]]"
    input = "<a a <>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a =>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a =>"
    assert_lexes input, output, [{"code" => "missing-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a >" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a ?>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"?\":\"\"}]]"
    input = "<a a ?>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a @>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"@\":\"\"}]]"
    input = "<a a @>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a A>"
    assert_lexes input, output, [{"code" => "duplicate-attribute", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a B>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"b\":\"\"}]]"
    input = "<a a B>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a Y>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"y\":\"\"}]]"
    input = "<a a Y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a Z>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"z\":\"\"}]]"
    input = "<a a Z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a [>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"[\":\"\"}]]"
    input = "<a a [>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a `>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"`\":\"\"}]]"
    input = "<a a `>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a a>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a a>"
    assert_lexes input, output, [{"code" => "duplicate-attribute", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a b>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"b\":\"\"}]]"
    input = "<a a b>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a y>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"y\":\"\"}]]"
    input = "<a a y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a z>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"z\":\"\"}]]"
    input = "<a a z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a {>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"{\":\"\"}]]"
    input = "<a a {>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a \\uDBC0\\uDC00>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\u{100000}\":\"\"}]]"
    input = "<a a \u{100000}>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a!>" do
    output = "[[\"StartTag\",\"a\",{\"a!\":\"\"}]]"
    input = "<a a!>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a\">" do
    output = "[[\"StartTag\",\"a\",{\"a\\\"\":\"\"}]]"
    input = "<a a\">"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a#>" do
    output = "[[\"StartTag\",\"a\",{\"a#\":\"\"}]]"
    input = "<a a#>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a&>" do
    output = "[[\"StartTag\",\"a\",{\"a&\":\"\"}]]"
    input = "<a a&>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a'>" do
    output = "[[\"StartTag\",\"a\",{\"a'\":\"\"}]]"
    input = "<a a'>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a(>" do
    output = "[[\"StartTag\",\"a\",{\"a(\":\"\"}]]"
    input = "<a a(>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a->" do
    output = "[[\"StartTag\",\"a\",{\"a-\":\"\"}]]"
    input = "<a a->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a.>" do
    output = "[[\"StartTag\",\"a\",{\"a.\":\"\"}]]"
    input = "<a a.>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a/>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"},true]]"
    input = "<a a/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a0>" do
    output = "[[\"StartTag\",\"a\",{\"a0\":\"\"}]]"
    input = "<a a0>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a1>" do
    output = "[[\"StartTag\",\"a\",{\"a1\":\"\"}]]"
    input = "<a a1>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a9>" do
    output = "[[\"StartTag\",\"a\",{\"a9\":\"\"}]]"
    input = "<a a9>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a<>" do
    output = "[[\"StartTag\",\"a\",{\"a<\":\"\"}]]"
    input = "<a a<>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=>"
    assert_lexes input, output, [{"code" => "missing-attribute-value", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\\u0000>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"�\"}]]"
    input = "<a a=\u0000>"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\\u0008>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\b\"}]]"
    input = "<a a=\b>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\\u0009>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=\t>"
    assert_lexes input, output, [{"code" => "missing-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\\u000A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=\n>"
    assert_lexes input, output, [{"code" => "missing-attribute-value", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\\u000B>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\u000b\"}]]"
    input = "<a a=\v>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\\u000C>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=\f>"
    assert_lexes input, output, [{"code" => "missing-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\\u000D>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=\r>"
    assert_lexes input, output, [{"code" => "missing-attribute-value", "line" => 2, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\\u001F>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\u001f\"}]]"
    input = "<a a=\u001F>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a= >" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a= >"
    assert_lexes input, output, [{"code" => "missing-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=!>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"!\"}]]"
    input = "<a a=!>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=\"\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"\\u0000\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"�\"}]]"
    input = "<a a=\"\u0000\">"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"\\u0009\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\t\"}]]"
    input = "<a a=\"\t\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"\\u000A\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\n\"}]]"
    input = "<a a=\"\n\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"\\u000B\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\u000b\"}]]"
    input = "<a a=\"\v\">"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"\\u000C\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\f\"}]]"
    input = "<a a=\"\f\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\" \">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\" \"}]]"
    input = "<a a=\" \">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"!\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"!\"}]]"
    input = "<a a=\"!\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=\"\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"#\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"#\"}]]"
    input = "<a a=\"#\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"%\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"%\"}]]"
    input = "<a a=\"%\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"&\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"&\"}]]"
    input = "<a a=\"&\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"'\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"'\"}]]"
    input = "<a a=\"'\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"-\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"-\"}]]"
    input = "<a a=\"-\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"/\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"/\"}]]"
    input = "<a a=\"/\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"0\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"0\"}]]"
    input = "<a a=\"0\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"1\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"1\"}]]"
    input = "<a a=\"1\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"9\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"9\"}]]"
    input = "<a a=\"9\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"<\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"<\"}]]"
    input = "<a a=\"<\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"=\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"=\"}]]"
    input = "<a a=\"=\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\">\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\">\"}]]"
    input = "<a a=\">\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"?\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"?\"}]]"
    input = "<a a=\"?\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"@\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"@\"}]]"
    input = "<a a=\"@\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"A\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"A\"}]]"
    input = "<a a=\"A\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"B\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"B\"}]]"
    input = "<a a=\"B\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"Y\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"Y\"}]]"
    input = "<a a=\"Y\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"Z\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"Z\"}]]"
    input = "<a a=\"Z\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"`\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"`\"}]]"
    input = "<a a=\"`\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"a\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
    input = "<a a=\"a\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"b\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"b\"}]]"
    input = "<a a=\"b\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"y\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"y\"}]]"
    input = "<a a=\"y\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"z\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"z\"}]]"
    input = "<a a=\"z\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"{\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"{\"}]]"
    input = "<a a=\"{\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\"\\uDBC0\\uDC00\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\u{100000}\"}]]"
    input = "<a a=\"\u{100000}\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=#>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"#\"}]]"
    input = "<a a=#>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=%>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"%\"}]]"
    input = "<a a=%>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=&>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"&\"}]]"
    input = "<a a=&>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=''>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='\\u0000'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"�\"}]]"
    input = "<a a='\u0000'>"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a='\\u0009'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\t\"}]]"
    input = "<a a='\t'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='\\u000A'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\n\"}]]"
    input = "<a a='\n'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='\\u000B'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\u000b\"}]]"
    input = "<a a='\v'>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a='\\u000C'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\f\"}]]"
    input = "<a a='\f'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=' '>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\" \"}]]"
    input = "<a a=' '>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='!'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"!\"}]]"
    input = "<a a='!'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='\"'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\\\"\"}]]"
    input = "<a a='\"'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='%'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"%\"}]]"
    input = "<a a='%'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='&'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"&\"}]]"
    input = "<a a='&'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=''>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\\u0000>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"�\":\"\"}]]"
    input = "<a a=''\u0000>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}, {"code" => "unexpected-null-character", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\\u0008>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\b\":\"\"}]]"
    input = "<a a=''\b>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 8}, {"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\\u0009>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=''\t>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\\u000A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=''\n>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\\u000B>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\u000b\":\"\"}]]"
    input = "<a a=''\v>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 8}, {"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\\u000C>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=''\f>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\\u000D>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=''\r>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\\u001F>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\u001f\":\"\"}]]"
    input = "<a a=''\u001F>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 8}, {"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a='' >" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a='' >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''!>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"!\":\"\"}]]"
    input = "<a a=''!>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\\"\":\"\"}]]"
    input = "<a a=''\">"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}, {"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''&>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"&\":\"\"}]]"
    input = "<a a=''&>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a='''>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"'\":\"\"}]]"
    input = "<a a='''>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}, {"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''->" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"-\":\"\"}]]"
    input = "<a a=''->"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''.>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\".\":\"\"}]]"
    input = "<a a=''.>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''/>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"},true]]"
    input = "<a a=''/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''0>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"0\":\"\"}]]"
    input = "<a a=''0>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''1>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"1\":\"\"}]]"
    input = "<a a=''1>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''9>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"9\":\"\"}]]"
    input = "<a a=''9>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''<>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"<\":\"\"}]]"
    input = "<a a=''<>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}, {"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''=>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"=\":\"\"}]]"
    input = "<a a=''=>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}, {"code" => "unexpected-equals-sign-before-attribute-name", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=''>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''?>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"?\":\"\"}]]"
    input = "<a a=''?>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''@>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"@\":\"\"}]]"
    input = "<a a=''@>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=''A>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}, {"code" => "duplicate-attribute", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''B>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"b\":\"\"}]]"
    input = "<a a=''B>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''Y>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"y\":\"\"}]]"
    input = "<a a=''Y>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''Z>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"z\":\"\"}]]"
    input = "<a a=''Z>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''`>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"`\":\"\"}]]"
    input = "<a a=''`>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''a>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=''a>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}, {"code" => "duplicate-attribute", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''b>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"b\":\"\"}]]"
    input = "<a a=''b>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''y>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"y\":\"\"}]]"
    input = "<a a=''y>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''z>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"z\":\"\"}]]"
    input = "<a a=''z>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''{>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"{\":\"\"}]]"
    input = "<a a=''{>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=''\\uDBC0\\uDC00>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\",\"\u{100000}\":\"\"}]]"
    input = "<a a=''\u{100000}>"
    assert_lexes input, output, [{"code" => "missing-whitespace-between-attributes", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a='('>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"(\"}]]"
    input = "<a a='('>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='-'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"-\"}]]"
    input = "<a a='-'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='/'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"/\"}]]"
    input = "<a a='/'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='0'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"0\"}]]"
    input = "<a a='0'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='1'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"1\"}]]"
    input = "<a a='1'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='9'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"9\"}]]"
    input = "<a a='9'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='<'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"<\"}]]"
    input = "<a a='<'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='='>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"=\"}]]"
    input = "<a a='='>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='>'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\">\"}]]"
    input = "<a a='>'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='?'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"?\"}]]"
    input = "<a a='?'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='@'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"@\"}]]"
    input = "<a a='@'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='A'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"A\"}]]"
    input = "<a a='A'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='B'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"B\"}]]"
    input = "<a a='B'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='Y'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"Y\"}]]"
    input = "<a a='Y'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='Z'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"Z\"}]]"
    input = "<a a='Z'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='`'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"`\"}]]"
    input = "<a a='`'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='a'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
    input = "<a a='a'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='b'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"b\"}]]"
    input = "<a a='b'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='y'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"y\"}]]"
    input = "<a a='y'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='z'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"z\"}]]"
    input = "<a a='z'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='{'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"{\"}]]"
    input = "<a a='{'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a='\\uDBC0\\uDC00'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\u{100000}\"}]]"
    input = "<a a='\u{100000}'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=(>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"(\"}]]"
    input = "<a a=(>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=->" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"-\"}]]"
    input = "<a a=->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=/>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"/\"}]]"
    input = "<a a=/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=0>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"0\"}]]"
    input = "<a a=0>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=1>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"1\"}]]"
    input = "<a a=1>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=9>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"9\"}]]"
    input = "<a a=9>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=<>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"<\"}]]"
    input = "<a a=<>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a==>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"=\"}]]"
    input = "<a a==>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a=>"
    assert_lexes input, output, [{"code" => "missing-attribute-value", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=?>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"?\"}]]"
    input = "<a a=?>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=@>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"@\"}]]"
    input = "<a a=@>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"A\"}]]"
    input = "<a a=A>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=B>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"B\"}]]"
    input = "<a a=B>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=Y>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"Y\"}]]"
    input = "<a a=Y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=Z>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"Z\"}]]"
    input = "<a a=Z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=`>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"`\"}]]"
    input = "<a a=`>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
    input = "<a a=a>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\\u0000>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a�\"}]]"
    input = "<a a=a\u0000>"
    assert_lexes input, output, [{"code" => "unexpected-null-character", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\\u0008>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\\b\"}]]"
    input = "<a a=a\b>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\\u0009>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
    input = "<a a=a\t>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\\u000A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
    input = "<a a=a\n>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\\u000B>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\\u000b\"}]]"
    input = "<a a=a\v>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\\u000C>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
    input = "<a a=a\f>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\\u000D>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
    input = "<a a=a\r>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\\u001F>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\\u001f\"}]]"
    input = "<a a=a\u001F>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a >" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
    input = "<a a=a >"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a!>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a!\"}]]"
    input = "<a a=a!>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\">" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\\\"\"}]]"
    input = "<a a=a\">"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a#>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a#\"}]]"
    input = "<a a=a#>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a%>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a%\"}]]"
    input = "<a a=a%>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a&>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a&\"}]]"
    input = "<a a=a&>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a'>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a'\"}]]"
    input = "<a a=a'>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a(>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a(\"}]]"
    input = "<a a=a(>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a->" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a-\"}]]"
    input = "<a a=a->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a/>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a/\"}]]"
    input = "<a a=a/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a0>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a0\"}]]"
    input = "<a a=a0>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a1>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a1\"}]]"
    input = "<a a=a1>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a9>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a9\"}]]"
    input = "<a a=a9>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a<>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a<\"}]]"
    input = "<a a=a<>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a=>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a=\"}]]"
    input = "<a a=a=>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
    input = "<a a=a>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a?>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a?\"}]]"
    input = "<a a=a?>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a@>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a@\"}]]"
    input = "<a a=a@>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=aA>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"aA\"}]]"
    input = "<a a=aA>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=aB>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"aB\"}]]"
    input = "<a a=aB>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=aY>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"aY\"}]]"
    input = "<a a=aY>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=aZ>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"aZ\"}]]"
    input = "<a a=aZ>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a`>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a`\"}]]"
    input = "<a a=a`>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "<a a=aa>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"aa\"}]]"
    input = "<a a=aa>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=ab>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"ab\"}]]"
    input = "<a a=ab>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=ay>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"ay\"}]]"
    input = "<a a=ay>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=az>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"az\"}]]"
    input = "<a a=az>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a{>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a{\"}]]"
    input = "<a a=a{>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=a\\uDBC0\\uDC00>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"a\u{100000}\"}]]"
    input = "<a a=a\u{100000}>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=b>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"b\"}]]"
    input = "<a a=b>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=y>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"y\"}]]"
    input = "<a a=y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=z>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"z\"}]]"
    input = "<a a=z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a={>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"{\"}]]"
    input = "<a a={>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a=\\uDBC0\\uDC00>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\u{100000}\"}]]"
    input = "<a a=\u{100000}>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a a>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a?>" do
    output = "[[\"StartTag\",\"a\",{\"a?\":\"\"}]]"
    input = "<a a?>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a@>" do
    output = "[[\"StartTag\",\"a\",{\"a@\":\"\"}]]"
    input = "<a a@>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a aA>" do
    output = "[[\"StartTag\",\"a\",{\"aa\":\"\"}]]"
    input = "<a aA>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a aB>" do
    output = "[[\"StartTag\",\"a\",{\"ab\":\"\"}]]"
    input = "<a aB>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a aY>" do
    output = "[[\"StartTag\",\"a\",{\"ay\":\"\"}]]"
    input = "<a aY>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a aZ>" do
    output = "[[\"StartTag\",\"a\",{\"az\":\"\"}]]"
    input = "<a aZ>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a[>" do
    output = "[[\"StartTag\",\"a\",{\"a[\":\"\"}]]"
    input = "<a a[>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a`>" do
    output = "[[\"StartTag\",\"a\",{\"a`\":\"\"}]]"
    input = "<a a`>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a aa>" do
    output = "[[\"StartTag\",\"a\",{\"aa\":\"\"}]]"
    input = "<a aa>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a ab>" do
    output = "[[\"StartTag\",\"a\",{\"ab\":\"\"}]]"
    input = "<a ab>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a ay>" do
    output = "[[\"StartTag\",\"a\",{\"ay\":\"\"}]]"
    input = "<a ay>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a az>" do
    output = "[[\"StartTag\",\"a\",{\"az\":\"\"}]]"
    input = "<a az>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a{>" do
    output = "[[\"StartTag\",\"a\",{\"a{\":\"\"}]]"
    input = "<a a{>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a a\\uDBC0\\uDC00>" do
    output = "[[\"StartTag\",\"a\",{\"a\u{100000}\":\"\"}]]"
    input = "<a a\u{100000}>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a b>" do
    output = "[[\"StartTag\",\"a\",{\"b\":\"\"}]]"
    input = "<a b>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a y>" do
    output = "[[\"StartTag\",\"a\",{\"y\":\"\"}]]"
    input = "<a y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a z>" do
    output = "[[\"StartTag\",\"a\",{\"z\":\"\"}]]"
    input = "<a z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a {>" do
    output = "[[\"StartTag\",\"a\",{\"{\":\"\"}]]"
    input = "<a {>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a \\uDBC0\\uDC00>" do
    output = "[[\"StartTag\",\"a\",{\"\u{100000}\":\"\"}]]"
    input = "<a \u{100000}>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a!>" do
    output = "[[\"StartTag\",\"a!\",{}]]"
    input = "<a!>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a\">" do
    output = "[[\"StartTag\",\"a\\\"\",{}]]"
    input = "<a\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a&>" do
    output = "[[\"StartTag\",\"a&\",{}]]"
    input = "<a&>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a'>" do
    output = "[[\"StartTag\",\"a'\",{}]]"
    input = "<a'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a->" do
    output = "[[\"StartTag\",\"a-\",{}]]"
    input = "<a->"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a.>" do
    output = "[[\"StartTag\",\"a.\",{}]]"
    input = "<a.>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a/>" do
    output = "[[\"StartTag\",\"a\",{},true]]"
    input = "<a/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a/\\u0000>" do
    output = "[[\"StartTag\",\"a\",{\"�\":\"\"}]]"
    input = "<a/\u0000>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}, {"code" => "unexpected-null-character", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/\\u0009>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a/\t>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/\\u000A>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a/\n>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/\\u000B>" do
    output = "[[\"StartTag\",\"a\",{\"\\u000b\":\"\"}]]"
    input = "<a/\v>"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 4}, {"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/\\u000C>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a/\f>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/ >" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a/ >"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/!>" do
    output = "[[\"StartTag\",\"a\",{\"!\":\"\"}]]"
    input = "<a/!>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/\">" do
    output = "[[\"StartTag\",\"a\",{\"\\\"\":\"\"}]]"
    input = "<a/\">"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}, {"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/&>" do
    output = "[[\"StartTag\",\"a\",{\"&\":\"\"}]]"
    input = "<a/&>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/'>" do
    output = "[[\"StartTag\",\"a\",{\"'\":\"\"}]]"
    input = "<a/'>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}, {"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/->" do
    output = "[[\"StartTag\",\"a\",{\"-\":\"\"}]]"
    input = "<a/->"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a//>" do
    output = "[[\"StartTag\",\"a\",{},true]]"
    input = "<a//>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/0>" do
    output = "[[\"StartTag\",\"a\",{\"0\":\"\"}]]"
    input = "<a/0>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/1>" do
    output = "[[\"StartTag\",\"a\",{\"1\":\"\"}]]"
    input = "<a/1>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/9>" do
    output = "[[\"StartTag\",\"a\",{\"9\":\"\"}]]"
    input = "<a/9>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/<>" do
    output = "[[\"StartTag\",\"a\",{\"<\":\"\"}]]"
    input = "<a/<>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}, {"code" => "unexpected-character-in-attribute-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/=>" do
    output = "[[\"StartTag\",\"a\",{\"=\":\"\"}]]"
    input = "<a/=>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}, {"code" => "unexpected-equals-sign-before-attribute-name", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/>" do
    output = "[[\"StartTag\",\"a\",{},true]]"
    input = "<a/>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a/?>" do
    output = "[[\"StartTag\",\"a\",{\"?\":\"\"}]]"
    input = "<a/?>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/@>" do
    output = "[[\"StartTag\",\"a\",{\"@\":\"\"}]]"
    input = "<a/@>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/A>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a/A>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/B>" do
    output = "[[\"StartTag\",\"a\",{\"b\":\"\"}]]"
    input = "<a/B>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/Y>" do
    output = "[[\"StartTag\",\"a\",{\"y\":\"\"}]]"
    input = "<a/Y>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/Z>" do
    output = "[[\"StartTag\",\"a\",{\"z\":\"\"}]]"
    input = "<a/Z>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/`>" do
    output = "[[\"StartTag\",\"a\",{\"`\":\"\"}]]"
    input = "<a/`>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/a>" do
    output = "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
    input = "<a/a>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/b>" do
    output = "[[\"StartTag\",\"a\",{\"b\":\"\"}]]"
    input = "<a/b>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/y>" do
    output = "[[\"StartTag\",\"a\",{\"y\":\"\"}]]"
    input = "<a/y>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/z>" do
    output = "[[\"StartTag\",\"a\",{\"z\":\"\"}]]"
    input = "<a/z>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/{>" do
    output = "[[\"StartTag\",\"a\",{\"{\":\"\"}]]"
    input = "<a/{>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a/\\uDBC0\\uDC00>" do
    output = "[[\"StartTag\",\"a\",{\"\u{100000}\":\"\"}]]"
    input = "<a/\u{100000}>"
    assert_lexes input, output, [{"code" => "unexpected-solidus-in-tag", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "<a0>" do
    output = "[[\"StartTag\",\"a0\",{}]]"
    input = "<a0>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a1>" do
    output = "[[\"StartTag\",\"a1\",{}]]"
    input = "<a1>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a9>" do
    output = "[[\"StartTag\",\"a9\",{}]]"
    input = "<a9>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a<>" do
    output = "[[\"StartTag\",\"a<\",{}]]"
    input = "<a<>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a=>" do
    output = "[[\"StartTag\",\"a=\",{}]]"
    input = "<a=>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a>" do
    output = "[[\"StartTag\",\"a\",{}]]"
    input = "<a>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a?>" do
    output = "[[\"StartTag\",\"a?\",{}]]"
    input = "<a?>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a@>" do
    output = "[[\"StartTag\",\"a@\",{}]]"
    input = "<a@>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<aA>" do
    output = "[[\"StartTag\",\"aa\",{}]]"
    input = "<aA>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<aB>" do
    output = "[[\"StartTag\",\"ab\",{}]]"
    input = "<aB>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<aY>" do
    output = "[[\"StartTag\",\"ay\",{}]]"
    input = "<aY>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<aZ>" do
    output = "[[\"StartTag\",\"az\",{}]]"
    input = "<aZ>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a[>" do
    output = "[[\"StartTag\",\"a[\",{}]]"
    input = "<a[>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a`>" do
    output = "[[\"StartTag\",\"a`\",{}]]"
    input = "<a`>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<aa>" do
    output = "[[\"StartTag\",\"aa\",{}]]"
    input = "<aa>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<ab>" do
    output = "[[\"StartTag\",\"ab\",{}]]"
    input = "<ab>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<ay>" do
    output = "[[\"StartTag\",\"ay\",{}]]"
    input = "<ay>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<az>" do
    output = "[[\"StartTag\",\"az\",{}]]"
    input = "<az>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a{>" do
    output = "[[\"StartTag\",\"a{\",{}]]"
    input = "<a{>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<a\\uDBC0\\uDC00>" do
    output = "[[\"StartTag\",\"a\u{100000}\",{}]]"
    input = "<a\u{100000}>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<b>" do
    output = "[[\"StartTag\",\"b\",{}]]"
    input = "<b>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<y>" do
    output = "[[\"StartTag\",\"y\",{}]]"
    input = "<y>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<z>" do
    output = "[[\"StartTag\",\"z\",{}]]"
    input = "<z>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "<{" do
    output = "[[\"Character\",\"<{\"]]"
    input = "<{"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "<\\uDBC0\\uDC00" do
    output = "[[\"Character\",\"<\u{100000}\"]]"
    input = "<\u{100000}"
    assert_lexes input, output, [{"code" => "invalid-first-character-of-tag-name", "line" => 1, "col" => 2}], HTML::Lexer::State::DATA, "", false
  end
  it "=" do
    output = "[[\"Character\",\"=\"]]"
    input = "="
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "=" do
    output = "[[\"Character\",\"=\"]]"
    input = "="
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it ">" do
    output = "[[\"Character\",\">\"]]"
    input = ">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it ">" do
    output = "[[\"Character\",\">\"]]"
    input = ">"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "?" do
    output = "[[\"Character\",\"?\"]]"
    input = "?"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "?" do
    output = "[[\"Character\",\"?\"]]"
    input = "?"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "@" do
    output = "[[\"Character\",\"@\"]]"
    input = "@"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "@" do
    output = "[[\"Character\",\"@\"]]"
    input = "@"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "A" do
    output = "[[\"Character\",\"A\"]]"
    input = "A"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "A" do
    output = "[[\"Character\",\"A\"]]"
    input = "A"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "B" do
    output = "[[\"Character\",\"B\"]]"
    input = "B"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "B" do
    output = "[[\"Character\",\"B\"]]"
    input = "B"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "Y" do
    output = "[[\"Character\",\"Y\"]]"
    input = "Y"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "Y" do
    output = "[[\"Character\",\"Y\"]]"
    input = "Y"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "Z" do
    output = "[[\"Character\",\"Z\"]]"
    input = "Z"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "Z" do
    output = "[[\"Character\",\"Z\"]]"
    input = "Z"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "`" do
    output = "[[\"Character\",\"`\"]]"
    input = "`"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "`" do
    output = "[[\"Character\",\"`\"]]"
    input = "`"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "a" do
    output = "[[\"Character\",\"a\"]]"
    input = "a"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "a" do
    output = "[[\"Character\",\"a\"]]"
    input = "a"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "b" do
    output = "[[\"Character\",\"b\"]]"
    input = "b"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "b" do
    output = "[[\"Character\",\"b\"]]"
    input = "b"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "y" do
    output = "[[\"Character\",\"y\"]]"
    input = "y"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "y" do
    output = "[[\"Character\",\"y\"]]"
    input = "y"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "z" do
    output = "[[\"Character\",\"z\"]]"
    input = "z"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "z" do
    output = "[[\"Character\",\"z\"]]"
    input = "z"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "{" do
    output = "[[\"Character\",\"{\"]]"
    input = "{"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "{" do
    output = "[[\"Character\",\"{\"]]"
    input = "{"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 2}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
  it "\\uDBC0\\uDC00" do
    output = "[[\"Character\",\"\u{100000}\"]]"
    input = "\u{100000}"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::PLAINTEXT, "", false
    assert_lexes input, output, nil, HTML::Lexer::State::RCDATA, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::RAWTEXT, "__invalid__", false
    assert_lexes input, output, nil, HTML::Lexer::State::SCRIPT_DATA, "__invalid__", false
  end
  it "\\uDBC0\\uDC00" do
    output = "[[\"Character\",\"\u{100000}\"]]"
    input = "\u{100000}"
    assert_lexes input, output, [{"code" => "eof-in-cdata", "line" => 1, "col" => 3}], HTML::Lexer::State::CDATA_SECTION, "__invalid__", false
  end
end
