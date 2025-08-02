require "../spec_helper"
describe "tokenizer/unicodeChars" do
  it "Invalid Unicode character U+0001" do
    output = "[[\"Character\",\"\\u0001\"]]"
    input = "\u0001"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0002" do
    output = "[[\"Character\",\"\\u0002\"]]"
    input = "\u0002"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0003" do
    output = "[[\"Character\",\"\\u0003\"]]"
    input = "\u0003"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0004" do
    output = "[[\"Character\",\"\\u0004\"]]"
    input = "\u0004"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0005" do
    output = "[[\"Character\",\"\\u0005\"]]"
    input = "\u0005"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0006" do
    output = "[[\"Character\",\"\\u0006\"]]"
    input = "\u0006"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0007" do
    output = "[[\"Character\",\"\\u0007\"]]"
    input = "\a"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0008" do
    output = "[[\"Character\",\"\\b\"]]"
    input = "\b"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+000B" do
    output = "[[\"Character\",\"\\u000b\"]]"
    input = "\v"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+000E" do
    output = "[[\"Character\",\"\\u000e\"]]"
    input = "\u000E"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+000F" do
    output = "[[\"Character\",\"\\u000f\"]]"
    input = "\u000F"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0010" do
    output = "[[\"Character\",\"\\u0010\"]]"
    input = "\u0010"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0011" do
    output = "[[\"Character\",\"\\u0011\"]]"
    input = "\u0011"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0012" do
    output = "[[\"Character\",\"\\u0012\"]]"
    input = "\u0012"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0013" do
    output = "[[\"Character\",\"\\u0013\"]]"
    input = "\u0013"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0014" do
    output = "[[\"Character\",\"\\u0014\"]]"
    input = "\u0014"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0015" do
    output = "[[\"Character\",\"\\u0015\"]]"
    input = "\u0015"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0016" do
    output = "[[\"Character\",\"\\u0016\"]]"
    input = "\u0016"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0017" do
    output = "[[\"Character\",\"\\u0017\"]]"
    input = "\u0017"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0018" do
    output = "[[\"Character\",\"\\u0018\"]]"
    input = "\u0018"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+0019" do
    output = "[[\"Character\",\"\\u0019\"]]"
    input = "\u0019"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+001A" do
    output = "[[\"Character\",\"\\u001a\"]]"
    input = "\u001A"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+001B" do
    output = "[[\"Character\",\"\\u001b\"]]"
    input = "\e"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+001C" do
    output = "[[\"Character\",\"\\u001c\"]]"
    input = "\u001C"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+001D" do
    output = "[[\"Character\",\"\\u001d\"]]"
    input = "\u001D"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+001E" do
    output = "[[\"Character\",\"\\u001e\"]]"
    input = "\u001E"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+001F" do
    output = "[[\"Character\",\"\\u001f\"]]"
    input = "\u001F"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+007F" do
    output = "[[\"Character\",\"\\u007f\"]]"
    input = "\u007F"
    assert_lexes input, output, [{"code" => "control-character-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD0" do
    output = "[[\"Character\",\"﷐\"]]"
    input = "﷐"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD1" do
    output = "[[\"Character\",\"﷑\"]]"
    input = "﷑"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD2" do
    output = "[[\"Character\",\"﷒\"]]"
    input = "﷒"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD3" do
    output = "[[\"Character\",\"﷓\"]]"
    input = "﷓"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD4" do
    output = "[[\"Character\",\"﷔\"]]"
    input = "﷔"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD5" do
    output = "[[\"Character\",\"﷕\"]]"
    input = "﷕"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD6" do
    output = "[[\"Character\",\"﷖\"]]"
    input = "﷖"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD7" do
    output = "[[\"Character\",\"﷗\"]]"
    input = "﷗"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD8" do
    output = "[[\"Character\",\"﷘\"]]"
    input = "﷘"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDD9" do
    output = "[[\"Character\",\"﷙\"]]"
    input = "﷙"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDDA" do
    output = "[[\"Character\",\"﷚\"]]"
    input = "﷚"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDDB" do
    output = "[[\"Character\",\"﷛\"]]"
    input = "﷛"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDDC" do
    output = "[[\"Character\",\"﷜\"]]"
    input = "﷜"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDDD" do
    output = "[[\"Character\",\"﷝\"]]"
    input = "﷝"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDDE" do
    output = "[[\"Character\",\"﷞\"]]"
    input = "﷞"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDDF" do
    output = "[[\"Character\",\"﷟\"]]"
    input = "﷟"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE0" do
    output = "[[\"Character\",\"﷠\"]]"
    input = "﷠"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE1" do
    output = "[[\"Character\",\"﷡\"]]"
    input = "﷡"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE2" do
    output = "[[\"Character\",\"﷢\"]]"
    input = "﷢"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE3" do
    output = "[[\"Character\",\"﷣\"]]"
    input = "﷣"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE4" do
    output = "[[\"Character\",\"﷤\"]]"
    input = "﷤"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE5" do
    output = "[[\"Character\",\"﷥\"]]"
    input = "﷥"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE6" do
    output = "[[\"Character\",\"﷦\"]]"
    input = "﷦"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE7" do
    output = "[[\"Character\",\"﷧\"]]"
    input = "﷧"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE8" do
    output = "[[\"Character\",\"﷨\"]]"
    input = "﷨"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDE9" do
    output = "[[\"Character\",\"﷩\"]]"
    input = "﷩"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDEA" do
    output = "[[\"Character\",\"﷪\"]]"
    input = "﷪"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDEB" do
    output = "[[\"Character\",\"﷫\"]]"
    input = "﷫"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDEC" do
    output = "[[\"Character\",\"﷬\"]]"
    input = "﷬"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDED" do
    output = "[[\"Character\",\"﷭\"]]"
    input = "﷭"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDEE" do
    output = "[[\"Character\",\"﷮\"]]"
    input = "﷮"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FDEF" do
    output = "[[\"Character\",\"﷯\"]]"
    input = "﷯"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FFFE" do
    output = "[[\"Character\",\"￾\"]]"
    input = "￾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FFFF" do
    output = "[[\"Character\",\"￿\"]]"
    input = "￿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+1FFFE" do
    output = "[[\"Character\",\"🿾\"]]"
    input = "🿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+1FFFF" do
    output = "[[\"Character\",\"🿿\"]]"
    input = "🿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+2FFFE" do
    output = "[[\"Character\",\"𯿾\"]]"
    input = "𯿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+2FFFF" do
    output = "[[\"Character\",\"𯿿\"]]"
    input = "𯿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+3FFFE" do
    output = "[[\"Character\",\"𿿾\"]]"
    input = "𿿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+3FFFF" do
    output = "[[\"Character\",\"𿿿\"]]"
    input = "𿿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+4FFFE" do
    output = "[[\"Character\",\"񏿾\"]]"
    input = "񏿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+4FFFF" do
    output = "[[\"Character\",\"񏿿\"]]"
    input = "񏿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+5FFFE" do
    output = "[[\"Character\",\"񟿾\"]]"
    input = "񟿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+5FFFF" do
    output = "[[\"Character\",\"񟿿\"]]"
    input = "񟿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+6FFFE" do
    output = "[[\"Character\",\"񯿾\"]]"
    input = "񯿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+6FFFF" do
    output = "[[\"Character\",\"񯿿\"]]"
    input = "񯿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+7FFFE" do
    output = "[[\"Character\",\"񿿾\"]]"
    input = "񿿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+7FFFF" do
    output = "[[\"Character\",\"񿿿\"]]"
    input = "񿿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+8FFFE" do
    output = "[[\"Character\",\"򏿾\"]]"
    input = "򏿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+8FFFF" do
    output = "[[\"Character\",\"򏿿\"]]"
    input = "򏿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+9FFFE" do
    output = "[[\"Character\",\"򟿾\"]]"
    input = "򟿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+9FFFF" do
    output = "[[\"Character\",\"򟿿\"]]"
    input = "򟿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+AFFFE" do
    output = "[[\"Character\",\"򯿾\"]]"
    input = "򯿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+AFFFF" do
    output = "[[\"Character\",\"򯿿\"]]"
    input = "򯿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+BFFFE" do
    output = "[[\"Character\",\"򿿾\"]]"
    input = "򿿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+BFFFF" do
    output = "[[\"Character\",\"򿿿\"]]"
    input = "򿿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+CFFFE" do
    output = "[[\"Character\",\"󏿾\"]]"
    input = "󏿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+CFFFF" do
    output = "[[\"Character\",\"󏿿\"]]"
    input = "󏿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+DFFFE" do
    output = "[[\"Character\",\"󟿾\"]]"
    input = "󟿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+DFFFF" do
    output = "[[\"Character\",\"󟿿\"]]"
    input = "󟿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+EFFFE" do
    output = "[[\"Character\",\"󯿾\"]]"
    input = "󯿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+EFFFF" do
    output = "[[\"Character\",\"󯿿\"]]"
    input = "󯿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FFFFE" do
    output = "[[\"Character\",\"󿿾\"]]"
    input = "󿿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+FFFFF" do
    output = "[[\"Character\",\"󿿿\"]]"
    input = "󿿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+10FFFE" do
    output = "[[\"Character\",\"􏿾\"]]"
    input = "􏿾"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid Unicode character U+10FFFF" do
    output = "[[\"Character\",\"􏿿\"]]"
    input = "􏿿"
    assert_lexes input, output, [{"code" => "noncharacter-in-input-stream", "line" => 1, "col" => 1}], HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0009" do
    output = "[[\"Character\",\"\\t\"]]"
    input = "\t"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+000A" do
    output = "[[\"Character\",\"\\n\"]]"
    input = "\n"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0020" do
    output = "[[\"Character\",\" \"]]"
    input = " "
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0021" do
    output = "[[\"Character\",\"!\"]]"
    input = "!"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0022" do
    output = "[[\"Character\",\"\\\"\"]]"
    input = "\""
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0023" do
    output = "[[\"Character\",\"#\"]]"
    input = "#"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0024" do
    output = "[[\"Character\",\"$\"]]"
    input = "$"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0025" do
    output = "[[\"Character\",\"%\"]]"
    input = "%"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0026" do
    output = "[[\"Character\",\"&\"]]"
    input = "&"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0027" do
    output = "[[\"Character\",\"'\"]]"
    input = "'"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0028" do
    output = "[[\"Character\",\"(\"]]"
    input = "("
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0029" do
    output = "[[\"Character\",\")\"]]"
    input = ")"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+002A" do
    output = "[[\"Character\",\"*\"]]"
    input = "*"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+002B" do
    output = "[[\"Character\",\"+\"]]"
    input = "+"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+002C" do
    output = "[[\"Character\",\",\"]]"
    input = ","
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+002D" do
    output = "[[\"Character\",\"-\"]]"
    input = "-"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+002E" do
    output = "[[\"Character\",\".\"]]"
    input = "."
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+002F" do
    output = "[[\"Character\",\"/\"]]"
    input = "/"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0030" do
    output = "[[\"Character\",\"0\"]]"
    input = "0"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0031" do
    output = "[[\"Character\",\"1\"]]"
    input = "1"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0032" do
    output = "[[\"Character\",\"2\"]]"
    input = "2"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0033" do
    output = "[[\"Character\",\"3\"]]"
    input = "3"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0034" do
    output = "[[\"Character\",\"4\"]]"
    input = "4"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0035" do
    output = "[[\"Character\",\"5\"]]"
    input = "5"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0036" do
    output = "[[\"Character\",\"6\"]]"
    input = "6"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0037" do
    output = "[[\"Character\",\"7\"]]"
    input = "7"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0038" do
    output = "[[\"Character\",\"8\"]]"
    input = "8"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0039" do
    output = "[[\"Character\",\"9\"]]"
    input = "9"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+003A" do
    output = "[[\"Character\",\":\"]]"
    input = ":"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+003B" do
    output = "[[\"Character\",\";\"]]"
    input = ";"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+003D" do
    output = "[[\"Character\",\"=\"]]"
    input = "="
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+003E" do
    output = "[[\"Character\",\">\"]]"
    input = ">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+003F" do
    output = "[[\"Character\",\"?\"]]"
    input = "?"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0040" do
    output = "[[\"Character\",\"@\"]]"
    input = "@"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0041" do
    output = "[[\"Character\",\"A\"]]"
    input = "A"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0042" do
    output = "[[\"Character\",\"B\"]]"
    input = "B"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0043" do
    output = "[[\"Character\",\"C\"]]"
    input = "C"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0044" do
    output = "[[\"Character\",\"D\"]]"
    input = "D"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0045" do
    output = "[[\"Character\",\"E\"]]"
    input = "E"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0046" do
    output = "[[\"Character\",\"F\"]]"
    input = "F"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0047" do
    output = "[[\"Character\",\"G\"]]"
    input = "G"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0048" do
    output = "[[\"Character\",\"H\"]]"
    input = "H"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0049" do
    output = "[[\"Character\",\"I\"]]"
    input = "I"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+004A" do
    output = "[[\"Character\",\"J\"]]"
    input = "J"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+004B" do
    output = "[[\"Character\",\"K\"]]"
    input = "K"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+004C" do
    output = "[[\"Character\",\"L\"]]"
    input = "L"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+004D" do
    output = "[[\"Character\",\"M\"]]"
    input = "M"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+004E" do
    output = "[[\"Character\",\"N\"]]"
    input = "N"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+004F" do
    output = "[[\"Character\",\"O\"]]"
    input = "O"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0050" do
    output = "[[\"Character\",\"P\"]]"
    input = "P"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0051" do
    output = "[[\"Character\",\"Q\"]]"
    input = "Q"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0052" do
    output = "[[\"Character\",\"R\"]]"
    input = "R"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0053" do
    output = "[[\"Character\",\"S\"]]"
    input = "S"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0054" do
    output = "[[\"Character\",\"T\"]]"
    input = "T"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0055" do
    output = "[[\"Character\",\"U\"]]"
    input = "U"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0056" do
    output = "[[\"Character\",\"V\"]]"
    input = "V"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0057" do
    output = "[[\"Character\",\"W\"]]"
    input = "W"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0058" do
    output = "[[\"Character\",\"X\"]]"
    input = "X"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0059" do
    output = "[[\"Character\",\"Y\"]]"
    input = "Y"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+005A" do
    output = "[[\"Character\",\"Z\"]]"
    input = "Z"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+005B" do
    output = "[[\"Character\",\"[\"]]"
    input = "["
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+005C" do
    output = "[[\"Character\",\"\\\\\"]]"
    input = "\\"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+005D" do
    output = "[[\"Character\",\"]\"]]"
    input = "]"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+005E" do
    output = "[[\"Character\",\"^\"]]"
    input = "^"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+005F" do
    output = "[[\"Character\",\"_\"]]"
    input = "_"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0060" do
    output = "[[\"Character\",\"`\"]]"
    input = "`"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0061" do
    output = "[[\"Character\",\"a\"]]"
    input = "a"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0062" do
    output = "[[\"Character\",\"b\"]]"
    input = "b"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0063" do
    output = "[[\"Character\",\"c\"]]"
    input = "c"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0064" do
    output = "[[\"Character\",\"d\"]]"
    input = "d"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0065" do
    output = "[[\"Character\",\"e\"]]"
    input = "e"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0066" do
    output = "[[\"Character\",\"f\"]]"
    input = "f"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0067" do
    output = "[[\"Character\",\"g\"]]"
    input = "g"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0068" do
    output = "[[\"Character\",\"h\"]]"
    input = "h"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0069" do
    output = "[[\"Character\",\"i\"]]"
    input = "i"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+006A" do
    output = "[[\"Character\",\"j\"]]"
    input = "j"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+006B" do
    output = "[[\"Character\",\"k\"]]"
    input = "k"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+006C" do
    output = "[[\"Character\",\"l\"]]"
    input = "l"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+006D" do
    output = "[[\"Character\",\"m\"]]"
    input = "m"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+006E" do
    output = "[[\"Character\",\"n\"]]"
    input = "n"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+006F" do
    output = "[[\"Character\",\"o\"]]"
    input = "o"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0070" do
    output = "[[\"Character\",\"p\"]]"
    input = "p"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0071" do
    output = "[[\"Character\",\"q\"]]"
    input = "q"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0072" do
    output = "[[\"Character\",\"r\"]]"
    input = "r"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0073" do
    output = "[[\"Character\",\"s\"]]"
    input = "s"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0074" do
    output = "[[\"Character\",\"t\"]]"
    input = "t"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0075" do
    output = "[[\"Character\",\"u\"]]"
    input = "u"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0076" do
    output = "[[\"Character\",\"v\"]]"
    input = "v"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0077" do
    output = "[[\"Character\",\"w\"]]"
    input = "w"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0078" do
    output = "[[\"Character\",\"x\"]]"
    input = "x"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+0079" do
    output = "[[\"Character\",\"y\"]]"
    input = "y"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+007A" do
    output = "[[\"Character\",\"z\"]]"
    input = "z"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+007B" do
    output = "[[\"Character\",\"{\"]]"
    input = "{"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+007C" do
    output = "[[\"Character\",\"|\"]]"
    input = "|"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+007D" do
    output = "[[\"Character\",\"}\"]]"
    input = "}"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+007E" do
    output = "[[\"Character\",\"~\"]]"
    input = "~"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A0" do
    output = "[[\"Character\",\"\u00A0\"]]"
    input = "\u00A0"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A1" do
    output = "[[\"Character\",\"¡\"]]"
    input = "¡"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A2" do
    output = "[[\"Character\",\"¢\"]]"
    input = "¢"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A3" do
    output = "[[\"Character\",\"£\"]]"
    input = "£"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A4" do
    output = "[[\"Character\",\"¤\"]]"
    input = "¤"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A5" do
    output = "[[\"Character\",\"¥\"]]"
    input = "¥"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A6" do
    output = "[[\"Character\",\"¦\"]]"
    input = "¦"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A7" do
    output = "[[\"Character\",\"§\"]]"
    input = "§"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A8" do
    output = "[[\"Character\",\"¨\"]]"
    input = "¨"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00A9" do
    output = "[[\"Character\",\"©\"]]"
    input = "©"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00AA" do
    output = "[[\"Character\",\"ª\"]]"
    input = "ª"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00AB" do
    output = "[[\"Character\",\"«\"]]"
    input = "«"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00AC" do
    output = "[[\"Character\",\"¬\"]]"
    input = "¬"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00AD" do
    output = "[[\"Character\",\"\u00AD\"]]"
    input = "\u00AD"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00AE" do
    output = "[[\"Character\",\"®\"]]"
    input = "®"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00AF" do
    output = "[[\"Character\",\"¯\"]]"
    input = "¯"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B0" do
    output = "[[\"Character\",\"°\"]]"
    input = "°"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B1" do
    output = "[[\"Character\",\"±\"]]"
    input = "±"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B2" do
    output = "[[\"Character\",\"²\"]]"
    input = "²"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B3" do
    output = "[[\"Character\",\"³\"]]"
    input = "³"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B4" do
    output = "[[\"Character\",\"´\"]]"
    input = "´"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B5" do
    output = "[[\"Character\",\"µ\"]]"
    input = "µ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B6" do
    output = "[[\"Character\",\"¶\"]]"
    input = "¶"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B7" do
    output = "[[\"Character\",\"·\"]]"
    input = "·"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B8" do
    output = "[[\"Character\",\"¸\"]]"
    input = "¸"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00B9" do
    output = "[[\"Character\",\"¹\"]]"
    input = "¹"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00BA" do
    output = "[[\"Character\",\"º\"]]"
    input = "º"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00BB" do
    output = "[[\"Character\",\"»\"]]"
    input = "»"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00BC" do
    output = "[[\"Character\",\"¼\"]]"
    input = "¼"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00BD" do
    output = "[[\"Character\",\"½\"]]"
    input = "½"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00BE" do
    output = "[[\"Character\",\"¾\"]]"
    input = "¾"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00BF" do
    output = "[[\"Character\",\"¿\"]]"
    input = "¿"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C0" do
    output = "[[\"Character\",\"À\"]]"
    input = "À"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C1" do
    output = "[[\"Character\",\"Á\"]]"
    input = "Á"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C2" do
    output = "[[\"Character\",\"Â\"]]"
    input = "Â"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C3" do
    output = "[[\"Character\",\"Ã\"]]"
    input = "Ã"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C4" do
    output = "[[\"Character\",\"Ä\"]]"
    input = "Ä"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C5" do
    output = "[[\"Character\",\"Å\"]]"
    input = "Å"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C6" do
    output = "[[\"Character\",\"Æ\"]]"
    input = "Æ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C7" do
    output = "[[\"Character\",\"Ç\"]]"
    input = "Ç"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C8" do
    output = "[[\"Character\",\"È\"]]"
    input = "È"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00C9" do
    output = "[[\"Character\",\"É\"]]"
    input = "É"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00CA" do
    output = "[[\"Character\",\"Ê\"]]"
    input = "Ê"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00CB" do
    output = "[[\"Character\",\"Ë\"]]"
    input = "Ë"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00CC" do
    output = "[[\"Character\",\"Ì\"]]"
    input = "Ì"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00CD" do
    output = "[[\"Character\",\"Í\"]]"
    input = "Í"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00CE" do
    output = "[[\"Character\",\"Î\"]]"
    input = "Î"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00CF" do
    output = "[[\"Character\",\"Ï\"]]"
    input = "Ï"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D0" do
    output = "[[\"Character\",\"Ð\"]]"
    input = "Ð"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D1" do
    output = "[[\"Character\",\"Ñ\"]]"
    input = "Ñ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D2" do
    output = "[[\"Character\",\"Ò\"]]"
    input = "Ò"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D3" do
    output = "[[\"Character\",\"Ó\"]]"
    input = "Ó"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D4" do
    output = "[[\"Character\",\"Ô\"]]"
    input = "Ô"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D5" do
    output = "[[\"Character\",\"Õ\"]]"
    input = "Õ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D6" do
    output = "[[\"Character\",\"Ö\"]]"
    input = "Ö"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D7" do
    output = "[[\"Character\",\"×\"]]"
    input = "×"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D8" do
    output = "[[\"Character\",\"Ø\"]]"
    input = "Ø"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00D9" do
    output = "[[\"Character\",\"Ù\"]]"
    input = "Ù"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00DA" do
    output = "[[\"Character\",\"Ú\"]]"
    input = "Ú"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00DB" do
    output = "[[\"Character\",\"Û\"]]"
    input = "Û"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00DC" do
    output = "[[\"Character\",\"Ü\"]]"
    input = "Ü"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00DD" do
    output = "[[\"Character\",\"Ý\"]]"
    input = "Ý"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00DE" do
    output = "[[\"Character\",\"Þ\"]]"
    input = "Þ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00DF" do
    output = "[[\"Character\",\"ß\"]]"
    input = "ß"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E0" do
    output = "[[\"Character\",\"à\"]]"
    input = "à"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E1" do
    output = "[[\"Character\",\"á\"]]"
    input = "á"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E2" do
    output = "[[\"Character\",\"â\"]]"
    input = "â"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E3" do
    output = "[[\"Character\",\"ã\"]]"
    input = "ã"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E4" do
    output = "[[\"Character\",\"ä\"]]"
    input = "ä"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E5" do
    output = "[[\"Character\",\"å\"]]"
    input = "å"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E6" do
    output = "[[\"Character\",\"æ\"]]"
    input = "æ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E7" do
    output = "[[\"Character\",\"ç\"]]"
    input = "ç"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E8" do
    output = "[[\"Character\",\"è\"]]"
    input = "è"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00E9" do
    output = "[[\"Character\",\"é\"]]"
    input = "é"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00EA" do
    output = "[[\"Character\",\"ê\"]]"
    input = "ê"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00EB" do
    output = "[[\"Character\",\"ë\"]]"
    input = "ë"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00EC" do
    output = "[[\"Character\",\"ì\"]]"
    input = "ì"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00ED" do
    output = "[[\"Character\",\"í\"]]"
    input = "í"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00EE" do
    output = "[[\"Character\",\"î\"]]"
    input = "î"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00EF" do
    output = "[[\"Character\",\"ï\"]]"
    input = "ï"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F0" do
    output = "[[\"Character\",\"ð\"]]"
    input = "ð"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F1" do
    output = "[[\"Character\",\"ñ\"]]"
    input = "ñ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F2" do
    output = "[[\"Character\",\"ò\"]]"
    input = "ò"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F3" do
    output = "[[\"Character\",\"ó\"]]"
    input = "ó"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F4" do
    output = "[[\"Character\",\"ô\"]]"
    input = "ô"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F5" do
    output = "[[\"Character\",\"õ\"]]"
    input = "õ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F6" do
    output = "[[\"Character\",\"ö\"]]"
    input = "ö"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F7" do
    output = "[[\"Character\",\"÷\"]]"
    input = "÷"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F8" do
    output = "[[\"Character\",\"ø\"]]"
    input = "ø"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00F9" do
    output = "[[\"Character\",\"ù\"]]"
    input = "ù"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00FA" do
    output = "[[\"Character\",\"ú\"]]"
    input = "ú"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00FB" do
    output = "[[\"Character\",\"û\"]]"
    input = "û"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00FC" do
    output = "[[\"Character\",\"ü\"]]"
    input = "ü"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00FD" do
    output = "[[\"Character\",\"ý\"]]"
    input = "ý"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00FE" do
    output = "[[\"Character\",\"þ\"]]"
    input = "þ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+00FF" do
    output = "[[\"Character\",\"ÿ\"]]"
    input = "ÿ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+D7FF" do
    output = "[[\"Character\",\"퟿\"]]"
    input = "퟿"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+E000" do
    output = "[[\"Character\",\"\uE000\"]]"
    input = "\uE000"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+FDCF" do
    output = "[[\"Character\",\"﷏\"]]"
    input = "﷏"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+FDF0" do
    output = "[[\"Character\",\"ﷰ\"]]"
    input = "ﷰ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+FFFD" do
    output = "[[\"Character\",\"�\"]]"
    input = "�"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+10000" do
    output = "[[\"Character\",\"𐀀\"]]"
    input = "𐀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+1FFFD" do
    output = "[[\"Character\",\"🿽\"]]"
    input = "🿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+20000" do
    output = "[[\"Character\",\"𠀀\"]]"
    input = "𠀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+2FFFD" do
    output = "[[\"Character\",\"𯿽\"]]"
    input = "𯿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+30000" do
    output = "[[\"Character\",\"𰀀\"]]"
    input = "𰀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+3FFFD" do
    output = "[[\"Character\",\"𿿽\"]]"
    input = "𿿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+40000" do
    output = "[[\"Character\",\"񀀀\"]]"
    input = "񀀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+4FFFD" do
    output = "[[\"Character\",\"񏿽\"]]"
    input = "񏿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+50000" do
    output = "[[\"Character\",\"񐀀\"]]"
    input = "񐀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+5FFFD" do
    output = "[[\"Character\",\"񟿽\"]]"
    input = "񟿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+60000" do
    output = "[[\"Character\",\"񠀀\"]]"
    input = "񠀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+6FFFD" do
    output = "[[\"Character\",\"񯿽\"]]"
    input = "񯿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+70000" do
    output = "[[\"Character\",\"񰀀\"]]"
    input = "񰀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+7FFFD" do
    output = "[[\"Character\",\"񿿽\"]]"
    input = "񿿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+80000" do
    output = "[[\"Character\",\"򀀀\"]]"
    input = "򀀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+8FFFD" do
    output = "[[\"Character\",\"򏿽\"]]"
    input = "򏿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+90000" do
    output = "[[\"Character\",\"򐀀\"]]"
    input = "򐀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+9FFFD" do
    output = "[[\"Character\",\"򟿽\"]]"
    input = "򟿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+A0000" do
    output = "[[\"Character\",\"򠀀\"]]"
    input = "򠀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+AFFFD" do
    output = "[[\"Character\",\"򯿽\"]]"
    input = "򯿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+B0000" do
    output = "[[\"Character\",\"򰀀\"]]"
    input = "򰀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+BFFFD" do
    output = "[[\"Character\",\"򿿽\"]]"
    input = "򿿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+C0000" do
    output = "[[\"Character\",\"󀀀\"]]"
    input = "󀀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+CFFFD" do
    output = "[[\"Character\",\"󏿽\"]]"
    input = "󏿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+D0000" do
    output = "[[\"Character\",\"󐀀\"]]"
    input = "󐀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+DFFFD" do
    output = "[[\"Character\",\"󟿽\"]]"
    input = "󟿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+E0000" do
    output = "[[\"Character\",\"󠀀\"]]"
    input = "󠀀"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+EFFFD" do
    output = "[[\"Character\",\"󯿽\"]]"
    input = "󯿽"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+F0000" do
    output = "[[\"Character\",\"\u{F0000}\"]]"
    input = "\u{F0000}"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+FFFFD" do
    output = "[[\"Character\",\"\u{FFFFD}\"]]"
    input = "\u{FFFFD}"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+100000" do
    output = "[[\"Character\",\"\u{100000}\"]]"
    input = "\u{100000}"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid Unicode character U+10FFFD" do
    output = "[[\"Character\",\"\u{10FFFD}\"]]"
    input = "\u{10FFFD}"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
end
