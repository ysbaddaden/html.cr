require "../spec_helper"
describe "tokenizer/numericEntities" do
  it "Invalid unterminated numeric entity character overflow before EOF" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#11111111111"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 14}, {"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid unterminated numeric entity character overflow before EOF" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#1111111111"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 13}, {"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid unterminated numeric entity character overflow before EOF" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#111111111111"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 15}, {"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 15}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid unterminated numeric entity character overflow" do
    output = "[[\"Character\",\"�x\"]]"
    input = "&#11111111111x"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 14}, {"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid unterminated numeric entity character overflow" do
    output = "[[\"Character\",\"�x\"]]"
    input = "&#1111111111x"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 13}, {"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 13}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid unterminated numeric entity character overflow" do
    output = "[[\"Character\",\"�x\"]]"
    input = "&#111111111111x"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 15}, {"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 15}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character overflow" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#11111111111;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 15}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character overflow" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#1111111111;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character overflow" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#111111111111;"
    assert_lexes input, output, [{"code" => "character-reference-outside-unicode-range", "line" => 1, "col" => 16}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0000" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#x0000;"
    assert_lexes input, output, [{"code" => "null-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0001" do
    output = "[[\"Character\",\"\\u0001\"]]"
    input = "&#x0001;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0002" do
    output = "[[\"Character\",\"\\u0002\"]]"
    input = "&#x0002;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0003" do
    output = "[[\"Character\",\"\\u0003\"]]"
    input = "&#x0003;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0004" do
    output = "[[\"Character\",\"\\u0004\"]]"
    input = "&#x0004;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0005" do
    output = "[[\"Character\",\"\\u0005\"]]"
    input = "&#x0005;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0006" do
    output = "[[\"Character\",\"\\u0006\"]]"
    input = "&#x0006;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0007" do
    output = "[[\"Character\",\"\\u0007\"]]"
    input = "&#x0007;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0008" do
    output = "[[\"Character\",\"\\b\"]]"
    input = "&#x0008;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+000B" do
    output = "[[\"Character\",\"\\u000b\"]]"
    input = "&#x000b;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+000E" do
    output = "[[\"Character\",\"\\u000e\"]]"
    input = "&#x000e;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+000F" do
    output = "[[\"Character\",\"\\u000f\"]]"
    input = "&#x000f;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0010" do
    output = "[[\"Character\",\"\\u0010\"]]"
    input = "&#x0010;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0011" do
    output = "[[\"Character\",\"\\u0011\"]]"
    input = "&#x0011;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0012" do
    output = "[[\"Character\",\"\\u0012\"]]"
    input = "&#x0012;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0013" do
    output = "[[\"Character\",\"\\u0013\"]]"
    input = "&#x0013;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0014" do
    output = "[[\"Character\",\"\\u0014\"]]"
    input = "&#x0014;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0015" do
    output = "[[\"Character\",\"\\u0015\"]]"
    input = "&#x0015;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0016" do
    output = "[[\"Character\",\"\\u0016\"]]"
    input = "&#x0016;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0017" do
    output = "[[\"Character\",\"\\u0017\"]]"
    input = "&#x0017;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0018" do
    output = "[[\"Character\",\"\\u0018\"]]"
    input = "&#x0018;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+0019" do
    output = "[[\"Character\",\"\\u0019\"]]"
    input = "&#x0019;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+001A" do
    output = "[[\"Character\",\"\\u001a\"]]"
    input = "&#x001a;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+001B" do
    output = "[[\"Character\",\"\\u001b\"]]"
    input = "&#x001b;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+001C" do
    output = "[[\"Character\",\"\\u001c\"]]"
    input = "&#x001c;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+001D" do
    output = "[[\"Character\",\"\\u001d\"]]"
    input = "&#x001d;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+001E" do
    output = "[[\"Character\",\"\\u001e\"]]"
    input = "&#x001e;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+001F" do
    output = "[[\"Character\",\"\\u001f\"]]"
    input = "&#x001f;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+007F" do
    output = "[[\"Character\",\"\\u007f\"]]"
    input = "&#x007f;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+D800" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#xd800;"
    assert_lexes input, output, [{"code" => "surrogate-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+DFFF" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#xdfff;"
    assert_lexes input, output, [{"code" => "surrogate-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD0" do
    output = "[[\"Character\",\"﷐\"]]"
    input = "&#xfdd0;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD1" do
    output = "[[\"Character\",\"﷑\"]]"
    input = "&#xfdd1;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD2" do
    output = "[[\"Character\",\"﷒\"]]"
    input = "&#xfdd2;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD3" do
    output = "[[\"Character\",\"﷓\"]]"
    input = "&#xfdd3;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD4" do
    output = "[[\"Character\",\"﷔\"]]"
    input = "&#xfdd4;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD5" do
    output = "[[\"Character\",\"﷕\"]]"
    input = "&#xfdd5;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD6" do
    output = "[[\"Character\",\"﷖\"]]"
    input = "&#xfdd6;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD7" do
    output = "[[\"Character\",\"﷗\"]]"
    input = "&#xfdd7;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD8" do
    output = "[[\"Character\",\"﷘\"]]"
    input = "&#xfdd8;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDD9" do
    output = "[[\"Character\",\"﷙\"]]"
    input = "&#xfdd9;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDDA" do
    output = "[[\"Character\",\"﷚\"]]"
    input = "&#xfdda;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDDB" do
    output = "[[\"Character\",\"﷛\"]]"
    input = "&#xfddb;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDDC" do
    output = "[[\"Character\",\"﷜\"]]"
    input = "&#xfddc;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDDD" do
    output = "[[\"Character\",\"﷝\"]]"
    input = "&#xfddd;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDDE" do
    output = "[[\"Character\",\"﷞\"]]"
    input = "&#xfdde;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDDF" do
    output = "[[\"Character\",\"﷟\"]]"
    input = "&#xfddf;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE0" do
    output = "[[\"Character\",\"﷠\"]]"
    input = "&#xfde0;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE1" do
    output = "[[\"Character\",\"﷡\"]]"
    input = "&#xfde1;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE2" do
    output = "[[\"Character\",\"﷢\"]]"
    input = "&#xfde2;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE3" do
    output = "[[\"Character\",\"﷣\"]]"
    input = "&#xfde3;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE4" do
    output = "[[\"Character\",\"﷤\"]]"
    input = "&#xfde4;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE5" do
    output = "[[\"Character\",\"﷥\"]]"
    input = "&#xfde5;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE6" do
    output = "[[\"Character\",\"﷦\"]]"
    input = "&#xfde6;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE7" do
    output = "[[\"Character\",\"﷧\"]]"
    input = "&#xfde7;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE8" do
    output = "[[\"Character\",\"﷨\"]]"
    input = "&#xfde8;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDE9" do
    output = "[[\"Character\",\"﷩\"]]"
    input = "&#xfde9;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDEA" do
    output = "[[\"Character\",\"﷪\"]]"
    input = "&#xfdea;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDEB" do
    output = "[[\"Character\",\"﷫\"]]"
    input = "&#xfdeb;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDEC" do
    output = "[[\"Character\",\"﷬\"]]"
    input = "&#xfdec;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDED" do
    output = "[[\"Character\",\"﷭\"]]"
    input = "&#xfded;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDEE" do
    output = "[[\"Character\",\"﷮\"]]"
    input = "&#xfdee;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FDEF" do
    output = "[[\"Character\",\"﷯\"]]"
    input = "&#xfdef;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FFFE" do
    output = "[[\"Character\",\"￾\"]]"
    input = "&#xfffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FFFF" do
    output = "[[\"Character\",\"￿\"]]"
    input = "&#xffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 9}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+1FFFE" do
    output = "[[\"Character\",\"🿾\"]]"
    input = "&#x1fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+1FFFF" do
    output = "[[\"Character\",\"🿿\"]]"
    input = "&#x1ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+2FFFE" do
    output = "[[\"Character\",\"𯿾\"]]"
    input = "&#x2fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+2FFFF" do
    output = "[[\"Character\",\"𯿿\"]]"
    input = "&#x2ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+3FFFE" do
    output = "[[\"Character\",\"𿿾\"]]"
    input = "&#x3fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+3FFFF" do
    output = "[[\"Character\",\"𿿿\"]]"
    input = "&#x3ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+4FFFE" do
    output = "[[\"Character\",\"񏿾\"]]"
    input = "&#x4fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+4FFFF" do
    output = "[[\"Character\",\"񏿿\"]]"
    input = "&#x4ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+5FFFE" do
    output = "[[\"Character\",\"񟿾\"]]"
    input = "&#x5fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+5FFFF" do
    output = "[[\"Character\",\"񟿿\"]]"
    input = "&#x5ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+6FFFE" do
    output = "[[\"Character\",\"񯿾\"]]"
    input = "&#x6fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+6FFFF" do
    output = "[[\"Character\",\"񯿿\"]]"
    input = "&#x6ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+7FFFE" do
    output = "[[\"Character\",\"񿿾\"]]"
    input = "&#x7fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+7FFFF" do
    output = "[[\"Character\",\"񿿿\"]]"
    input = "&#x7ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+8FFFE" do
    output = "[[\"Character\",\"򏿾\"]]"
    input = "&#x8fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+8FFFF" do
    output = "[[\"Character\",\"򏿿\"]]"
    input = "&#x8ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+9FFFE" do
    output = "[[\"Character\",\"򟿾\"]]"
    input = "&#x9fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+9FFFF" do
    output = "[[\"Character\",\"򟿿\"]]"
    input = "&#x9ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+AFFFE" do
    output = "[[\"Character\",\"򯿾\"]]"
    input = "&#xafffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+AFFFF" do
    output = "[[\"Character\",\"򯿿\"]]"
    input = "&#xaffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+BFFFE" do
    output = "[[\"Character\",\"򿿾\"]]"
    input = "&#xbfffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+BFFFF" do
    output = "[[\"Character\",\"򿿿\"]]"
    input = "&#xbffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+CFFFE" do
    output = "[[\"Character\",\"󏿾\"]]"
    input = "&#xcfffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+CFFFF" do
    output = "[[\"Character\",\"󏿿\"]]"
    input = "&#xcffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+DFFFE" do
    output = "[[\"Character\",\"󟿾\"]]"
    input = "&#xdfffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+DFFFF" do
    output = "[[\"Character\",\"󟿿\"]]"
    input = "&#xdffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+EFFFE" do
    output = "[[\"Character\",\"󯿾\"]]"
    input = "&#xefffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+EFFFF" do
    output = "[[\"Character\",\"󯿿\"]]"
    input = "&#xeffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FFFFE" do
    output = "[[\"Character\",\"󿿾\"]]"
    input = "&#xffffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+FFFFF" do
    output = "[[\"Character\",\"󿿿\"]]"
    input = "&#xfffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+10FFFE" do
    output = "[[\"Character\",\"􏿾\"]]"
    input = "&#x10fffe;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "Invalid numeric entity character U+10FFFF" do
    output = "[[\"Character\",\"􏿿\"]]"
    input = "&#x10ffff;"
    assert_lexes input, output, [{"code" => "noncharacter-character-reference", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0009" do
    output = "[[\"Character\",\"\\t\"]]"
    input = "&#x0009;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+000A" do
    output = "[[\"Character\",\"\\n\"]]"
    input = "&#x000a;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0020" do
    output = "[[\"Character\",\" \"]]"
    input = "&#x0020;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0021" do
    output = "[[\"Character\",\"!\"]]"
    input = "&#x0021;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0022" do
    output = "[[\"Character\",\"\\\"\"]]"
    input = "&#x0022;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0023" do
    output = "[[\"Character\",\"#\"]]"
    input = "&#x0023;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0024" do
    output = "[[\"Character\",\"$\"]]"
    input = "&#x0024;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0025" do
    output = "[[\"Character\",\"%\"]]"
    input = "&#x0025;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0026" do
    output = "[[\"Character\",\"&\"]]"
    input = "&#x0026;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0027" do
    output = "[[\"Character\",\"'\"]]"
    input = "&#x0027;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0028" do
    output = "[[\"Character\",\"(\"]]"
    input = "&#x0028;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0029" do
    output = "[[\"Character\",\")\"]]"
    input = "&#x0029;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+002A" do
    output = "[[\"Character\",\"*\"]]"
    input = "&#x002a;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+002B" do
    output = "[[\"Character\",\"+\"]]"
    input = "&#x002b;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+002C" do
    output = "[[\"Character\",\",\"]]"
    input = "&#x002c;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+002D" do
    output = "[[\"Character\",\"-\"]]"
    input = "&#x002d;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+002E" do
    output = "[[\"Character\",\".\"]]"
    input = "&#x002e;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+002F" do
    output = "[[\"Character\",\"/\"]]"
    input = "&#x002f;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0030" do
    output = "[[\"Character\",\"0\"]]"
    input = "&#x0030;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0031" do
    output = "[[\"Character\",\"1\"]]"
    input = "&#x0031;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0032" do
    output = "[[\"Character\",\"2\"]]"
    input = "&#x0032;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0033" do
    output = "[[\"Character\",\"3\"]]"
    input = "&#x0033;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0034" do
    output = "[[\"Character\",\"4\"]]"
    input = "&#x0034;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0035" do
    output = "[[\"Character\",\"5\"]]"
    input = "&#x0035;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0036" do
    output = "[[\"Character\",\"6\"]]"
    input = "&#x0036;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0037" do
    output = "[[\"Character\",\"7\"]]"
    input = "&#x0037;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0038" do
    output = "[[\"Character\",\"8\"]]"
    input = "&#x0038;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0039" do
    output = "[[\"Character\",\"9\"]]"
    input = "&#x0039;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+003A" do
    output = "[[\"Character\",\":\"]]"
    input = "&#x003a;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+003B" do
    output = "[[\"Character\",\";\"]]"
    input = "&#x003b;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+003C" do
    output = "[[\"Character\",\"<\"]]"
    input = "&#x003c;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+003D" do
    output = "[[\"Character\",\"=\"]]"
    input = "&#x003d;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+003E" do
    output = "[[\"Character\",\">\"]]"
    input = "&#x003e;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+003F" do
    output = "[[\"Character\",\"?\"]]"
    input = "&#x003f;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0040" do
    output = "[[\"Character\",\"@\"]]"
    input = "&#x0040;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0041" do
    output = "[[\"Character\",\"A\"]]"
    input = "&#x0041;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0042" do
    output = "[[\"Character\",\"B\"]]"
    input = "&#x0042;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0043" do
    output = "[[\"Character\",\"C\"]]"
    input = "&#x0043;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0044" do
    output = "[[\"Character\",\"D\"]]"
    input = "&#x0044;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0045" do
    output = "[[\"Character\",\"E\"]]"
    input = "&#x0045;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0046" do
    output = "[[\"Character\",\"F\"]]"
    input = "&#x0046;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0047" do
    output = "[[\"Character\",\"G\"]]"
    input = "&#x0047;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0048" do
    output = "[[\"Character\",\"H\"]]"
    input = "&#x0048;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0049" do
    output = "[[\"Character\",\"I\"]]"
    input = "&#x0049;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+004A" do
    output = "[[\"Character\",\"J\"]]"
    input = "&#x004a;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+004B" do
    output = "[[\"Character\",\"K\"]]"
    input = "&#x004b;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+004C" do
    output = "[[\"Character\",\"L\"]]"
    input = "&#x004c;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+004D" do
    output = "[[\"Character\",\"M\"]]"
    input = "&#x004d;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+004E" do
    output = "[[\"Character\",\"N\"]]"
    input = "&#x004e;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+004F" do
    output = "[[\"Character\",\"O\"]]"
    input = "&#x004f;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0050" do
    output = "[[\"Character\",\"P\"]]"
    input = "&#x0050;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0051" do
    output = "[[\"Character\",\"Q\"]]"
    input = "&#x0051;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0052" do
    output = "[[\"Character\",\"R\"]]"
    input = "&#x0052;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0053" do
    output = "[[\"Character\",\"S\"]]"
    input = "&#x0053;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0054" do
    output = "[[\"Character\",\"T\"]]"
    input = "&#x0054;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0055" do
    output = "[[\"Character\",\"U\"]]"
    input = "&#x0055;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0056" do
    output = "[[\"Character\",\"V\"]]"
    input = "&#x0056;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0057" do
    output = "[[\"Character\",\"W\"]]"
    input = "&#x0057;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0058" do
    output = "[[\"Character\",\"X\"]]"
    input = "&#x0058;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0059" do
    output = "[[\"Character\",\"Y\"]]"
    input = "&#x0059;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+005A" do
    output = "[[\"Character\",\"Z\"]]"
    input = "&#x005a;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+005B" do
    output = "[[\"Character\",\"[\"]]"
    input = "&#x005b;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+005C" do
    output = "[[\"Character\",\"\\\\\"]]"
    input = "&#x005c;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+005D" do
    output = "[[\"Character\",\"]\"]]"
    input = "&#x005d;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+005E" do
    output = "[[\"Character\",\"^\"]]"
    input = "&#x005e;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+005F" do
    output = "[[\"Character\",\"_\"]]"
    input = "&#x005f;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0060" do
    output = "[[\"Character\",\"`\"]]"
    input = "&#x0060;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0061" do
    output = "[[\"Character\",\"a\"]]"
    input = "&#x0061;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0062" do
    output = "[[\"Character\",\"b\"]]"
    input = "&#x0062;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0063" do
    output = "[[\"Character\",\"c\"]]"
    input = "&#x0063;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0064" do
    output = "[[\"Character\",\"d\"]]"
    input = "&#x0064;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0065" do
    output = "[[\"Character\",\"e\"]]"
    input = "&#x0065;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0066" do
    output = "[[\"Character\",\"f\"]]"
    input = "&#x0066;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0067" do
    output = "[[\"Character\",\"g\"]]"
    input = "&#x0067;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0068" do
    output = "[[\"Character\",\"h\"]]"
    input = "&#x0068;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0069" do
    output = "[[\"Character\",\"i\"]]"
    input = "&#x0069;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+006A" do
    output = "[[\"Character\",\"j\"]]"
    input = "&#x006a;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+006B" do
    output = "[[\"Character\",\"k\"]]"
    input = "&#x006b;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+006C" do
    output = "[[\"Character\",\"l\"]]"
    input = "&#x006c;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+006D" do
    output = "[[\"Character\",\"m\"]]"
    input = "&#x006d;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+006E" do
    output = "[[\"Character\",\"n\"]]"
    input = "&#x006e;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+006F" do
    output = "[[\"Character\",\"o\"]]"
    input = "&#x006f;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0070" do
    output = "[[\"Character\",\"p\"]]"
    input = "&#x0070;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0071" do
    output = "[[\"Character\",\"q\"]]"
    input = "&#x0071;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0072" do
    output = "[[\"Character\",\"r\"]]"
    input = "&#x0072;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0073" do
    output = "[[\"Character\",\"s\"]]"
    input = "&#x0073;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0074" do
    output = "[[\"Character\",\"t\"]]"
    input = "&#x0074;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0075" do
    output = "[[\"Character\",\"u\"]]"
    input = "&#x0075;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0076" do
    output = "[[\"Character\",\"v\"]]"
    input = "&#x0076;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0077" do
    output = "[[\"Character\",\"w\"]]"
    input = "&#x0077;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0078" do
    output = "[[\"Character\",\"x\"]]"
    input = "&#x0078;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+0079" do
    output = "[[\"Character\",\"y\"]]"
    input = "&#x0079;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+007A" do
    output = "[[\"Character\",\"z\"]]"
    input = "&#x007a;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+007B" do
    output = "[[\"Character\",\"{\"]]"
    input = "&#x007b;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+007C" do
    output = "[[\"Character\",\"|\"]]"
    input = "&#x007c;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+007D" do
    output = "[[\"Character\",\"}\"]]"
    input = "&#x007d;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+007E" do
    output = "[[\"Character\",\"~\"]]"
    input = "&#x007e;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A0" do
    output = "[[\"Character\",\"\u00A0\"]]"
    input = "&#x00a0;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A1" do
    output = "[[\"Character\",\"¡\"]]"
    input = "&#x00a1;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A2" do
    output = "[[\"Character\",\"¢\"]]"
    input = "&#x00a2;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A3" do
    output = "[[\"Character\",\"£\"]]"
    input = "&#x00a3;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A4" do
    output = "[[\"Character\",\"¤\"]]"
    input = "&#x00a4;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A5" do
    output = "[[\"Character\",\"¥\"]]"
    input = "&#x00a5;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A6" do
    output = "[[\"Character\",\"¦\"]]"
    input = "&#x00a6;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A7" do
    output = "[[\"Character\",\"§\"]]"
    input = "&#x00a7;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A8" do
    output = "[[\"Character\",\"¨\"]]"
    input = "&#x00a8;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00A9" do
    output = "[[\"Character\",\"©\"]]"
    input = "&#x00a9;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00AA" do
    output = "[[\"Character\",\"ª\"]]"
    input = "&#x00aa;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00AB" do
    output = "[[\"Character\",\"«\"]]"
    input = "&#x00ab;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00AC" do
    output = "[[\"Character\",\"¬\"]]"
    input = "&#x00ac;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00AD" do
    output = "[[\"Character\",\"\u00AD\"]]"
    input = "&#x00ad;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00AE" do
    output = "[[\"Character\",\"®\"]]"
    input = "&#x00ae;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00AF" do
    output = "[[\"Character\",\"¯\"]]"
    input = "&#x00af;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B0" do
    output = "[[\"Character\",\"°\"]]"
    input = "&#x00b0;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B1" do
    output = "[[\"Character\",\"±\"]]"
    input = "&#x00b1;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B2" do
    output = "[[\"Character\",\"²\"]]"
    input = "&#x00b2;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B3" do
    output = "[[\"Character\",\"³\"]]"
    input = "&#x00b3;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B4" do
    output = "[[\"Character\",\"´\"]]"
    input = "&#x00b4;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B5" do
    output = "[[\"Character\",\"µ\"]]"
    input = "&#x00b5;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B6" do
    output = "[[\"Character\",\"¶\"]]"
    input = "&#x00b6;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B7" do
    output = "[[\"Character\",\"·\"]]"
    input = "&#x00b7;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B8" do
    output = "[[\"Character\",\"¸\"]]"
    input = "&#x00b8;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00B9" do
    output = "[[\"Character\",\"¹\"]]"
    input = "&#x00b9;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00BA" do
    output = "[[\"Character\",\"º\"]]"
    input = "&#x00ba;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00BB" do
    output = "[[\"Character\",\"»\"]]"
    input = "&#x00bb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00BC" do
    output = "[[\"Character\",\"¼\"]]"
    input = "&#x00bc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00BD" do
    output = "[[\"Character\",\"½\"]]"
    input = "&#x00bd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00BE" do
    output = "[[\"Character\",\"¾\"]]"
    input = "&#x00be;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00BF" do
    output = "[[\"Character\",\"¿\"]]"
    input = "&#x00bf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C0" do
    output = "[[\"Character\",\"À\"]]"
    input = "&#x00c0;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C1" do
    output = "[[\"Character\",\"Á\"]]"
    input = "&#x00c1;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C2" do
    output = "[[\"Character\",\"Â\"]]"
    input = "&#x00c2;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C3" do
    output = "[[\"Character\",\"Ã\"]]"
    input = "&#x00c3;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C4" do
    output = "[[\"Character\",\"Ä\"]]"
    input = "&#x00c4;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C5" do
    output = "[[\"Character\",\"Å\"]]"
    input = "&#x00c5;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C6" do
    output = "[[\"Character\",\"Æ\"]]"
    input = "&#x00c6;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C7" do
    output = "[[\"Character\",\"Ç\"]]"
    input = "&#x00c7;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C8" do
    output = "[[\"Character\",\"È\"]]"
    input = "&#x00c8;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00C9" do
    output = "[[\"Character\",\"É\"]]"
    input = "&#x00c9;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00CA" do
    output = "[[\"Character\",\"Ê\"]]"
    input = "&#x00ca;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00CB" do
    output = "[[\"Character\",\"Ë\"]]"
    input = "&#x00cb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00CC" do
    output = "[[\"Character\",\"Ì\"]]"
    input = "&#x00cc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00CD" do
    output = "[[\"Character\",\"Í\"]]"
    input = "&#x00cd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00CE" do
    output = "[[\"Character\",\"Î\"]]"
    input = "&#x00ce;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00CF" do
    output = "[[\"Character\",\"Ï\"]]"
    input = "&#x00cf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D0" do
    output = "[[\"Character\",\"Ð\"]]"
    input = "&#x00d0;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D1" do
    output = "[[\"Character\",\"Ñ\"]]"
    input = "&#x00d1;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D2" do
    output = "[[\"Character\",\"Ò\"]]"
    input = "&#x00d2;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D3" do
    output = "[[\"Character\",\"Ó\"]]"
    input = "&#x00d3;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D4" do
    output = "[[\"Character\",\"Ô\"]]"
    input = "&#x00d4;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D5" do
    output = "[[\"Character\",\"Õ\"]]"
    input = "&#x00d5;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D6" do
    output = "[[\"Character\",\"Ö\"]]"
    input = "&#x00d6;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D7" do
    output = "[[\"Character\",\"×\"]]"
    input = "&#x00d7;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D8" do
    output = "[[\"Character\",\"Ø\"]]"
    input = "&#x00d8;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00D9" do
    output = "[[\"Character\",\"Ù\"]]"
    input = "&#x00d9;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00DA" do
    output = "[[\"Character\",\"Ú\"]]"
    input = "&#x00da;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00DB" do
    output = "[[\"Character\",\"Û\"]]"
    input = "&#x00db;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00DC" do
    output = "[[\"Character\",\"Ü\"]]"
    input = "&#x00dc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00DD" do
    output = "[[\"Character\",\"Ý\"]]"
    input = "&#x00dd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00DE" do
    output = "[[\"Character\",\"Þ\"]]"
    input = "&#x00de;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00DF" do
    output = "[[\"Character\",\"ß\"]]"
    input = "&#x00df;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E0" do
    output = "[[\"Character\",\"à\"]]"
    input = "&#x00e0;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E1" do
    output = "[[\"Character\",\"á\"]]"
    input = "&#x00e1;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E2" do
    output = "[[\"Character\",\"â\"]]"
    input = "&#x00e2;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E3" do
    output = "[[\"Character\",\"ã\"]]"
    input = "&#x00e3;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E4" do
    output = "[[\"Character\",\"ä\"]]"
    input = "&#x00e4;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E5" do
    output = "[[\"Character\",\"å\"]]"
    input = "&#x00e5;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E6" do
    output = "[[\"Character\",\"æ\"]]"
    input = "&#x00e6;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E7" do
    output = "[[\"Character\",\"ç\"]]"
    input = "&#x00e7;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E8" do
    output = "[[\"Character\",\"è\"]]"
    input = "&#x00e8;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00E9" do
    output = "[[\"Character\",\"é\"]]"
    input = "&#x00e9;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00EA" do
    output = "[[\"Character\",\"ê\"]]"
    input = "&#x00ea;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00EB" do
    output = "[[\"Character\",\"ë\"]]"
    input = "&#x00eb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00EC" do
    output = "[[\"Character\",\"ì\"]]"
    input = "&#x00ec;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00ED" do
    output = "[[\"Character\",\"í\"]]"
    input = "&#x00ed;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00EE" do
    output = "[[\"Character\",\"î\"]]"
    input = "&#x00ee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00EF" do
    output = "[[\"Character\",\"ï\"]]"
    input = "&#x00ef;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F0" do
    output = "[[\"Character\",\"ð\"]]"
    input = "&#x00f0;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F1" do
    output = "[[\"Character\",\"ñ\"]]"
    input = "&#x00f1;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F2" do
    output = "[[\"Character\",\"ò\"]]"
    input = "&#x00f2;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F3" do
    output = "[[\"Character\",\"ó\"]]"
    input = "&#x00f3;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F4" do
    output = "[[\"Character\",\"ô\"]]"
    input = "&#x00f4;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F5" do
    output = "[[\"Character\",\"õ\"]]"
    input = "&#x00f5;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F6" do
    output = "[[\"Character\",\"ö\"]]"
    input = "&#x00f6;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F7" do
    output = "[[\"Character\",\"÷\"]]"
    input = "&#x00f7;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F8" do
    output = "[[\"Character\",\"ø\"]]"
    input = "&#x00f8;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00F9" do
    output = "[[\"Character\",\"ù\"]]"
    input = "&#x00f9;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00FA" do
    output = "[[\"Character\",\"ú\"]]"
    input = "&#x00fa;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00FB" do
    output = "[[\"Character\",\"û\"]]"
    input = "&#x00fb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00FC" do
    output = "[[\"Character\",\"ü\"]]"
    input = "&#x00fc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00FD" do
    output = "[[\"Character\",\"ý\"]]"
    input = "&#x00fd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00FE" do
    output = "[[\"Character\",\"þ\"]]"
    input = "&#x00fe;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+00FF" do
    output = "[[\"Character\",\"ÿ\"]]"
    input = "&#x00ff;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+D7FF" do
    output = "[[\"Character\",\"퟿\"]]"
    input = "&#xd7ff;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+E000" do
    output = "[[\"Character\",\"\uE000\"]]"
    input = "&#xe000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+FDCF" do
    output = "[[\"Character\",\"﷏\"]]"
    input = "&#xfdcf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+FDF0" do
    output = "[[\"Character\",\"ﷰ\"]]"
    input = "&#xfdf0;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+FFFD" do
    output = "[[\"Character\",\"�\"]]"
    input = "&#xfffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+10000" do
    output = "[[\"Character\",\"𐀀\"]]"
    input = "&#x10000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+1FFFD" do
    output = "[[\"Character\",\"🿽\"]]"
    input = "&#x1fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+20000" do
    output = "[[\"Character\",\"𠀀\"]]"
    input = "&#x20000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+2FFFD" do
    output = "[[\"Character\",\"𯿽\"]]"
    input = "&#x2fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+30000" do
    output = "[[\"Character\",\"𰀀\"]]"
    input = "&#x30000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+3FFFD" do
    output = "[[\"Character\",\"𿿽\"]]"
    input = "&#x3fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+40000" do
    output = "[[\"Character\",\"񀀀\"]]"
    input = "&#x40000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+4FFFD" do
    output = "[[\"Character\",\"񏿽\"]]"
    input = "&#x4fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+50000" do
    output = "[[\"Character\",\"񐀀\"]]"
    input = "&#x50000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+5FFFD" do
    output = "[[\"Character\",\"񟿽\"]]"
    input = "&#x5fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+60000" do
    output = "[[\"Character\",\"񠀀\"]]"
    input = "&#x60000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+6FFFD" do
    output = "[[\"Character\",\"񯿽\"]]"
    input = "&#x6fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+70000" do
    output = "[[\"Character\",\"񰀀\"]]"
    input = "&#x70000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+7FFFD" do
    output = "[[\"Character\",\"񿿽\"]]"
    input = "&#x7fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+80000" do
    output = "[[\"Character\",\"򀀀\"]]"
    input = "&#x80000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+8FFFD" do
    output = "[[\"Character\",\"򏿽\"]]"
    input = "&#x8fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+90000" do
    output = "[[\"Character\",\"򐀀\"]]"
    input = "&#x90000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+9FFFD" do
    output = "[[\"Character\",\"򟿽\"]]"
    input = "&#x9fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+A0000" do
    output = "[[\"Character\",\"򠀀\"]]"
    input = "&#xa0000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+AFFFD" do
    output = "[[\"Character\",\"򯿽\"]]"
    input = "&#xafffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+B0000" do
    output = "[[\"Character\",\"򰀀\"]]"
    input = "&#xb0000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+BFFFD" do
    output = "[[\"Character\",\"򿿽\"]]"
    input = "&#xbfffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+C0000" do
    output = "[[\"Character\",\"󀀀\"]]"
    input = "&#xc0000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+CFFFD" do
    output = "[[\"Character\",\"󏿽\"]]"
    input = "&#xcfffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+D0000" do
    output = "[[\"Character\",\"󐀀\"]]"
    input = "&#xd0000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+DFFFD" do
    output = "[[\"Character\",\"󟿽\"]]"
    input = "&#xdfffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+E0000" do
    output = "[[\"Character\",\"󠀀\"]]"
    input = "&#xe0000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+EFFFD" do
    output = "[[\"Character\",\"󯿽\"]]"
    input = "&#xefffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+F0000" do
    output = "[[\"Character\",\"\u{F0000}\"]]"
    input = "&#xf0000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+FFFFD" do
    output = "[[\"Character\",\"\u{FFFFD}\"]]"
    input = "&#xffffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+100000" do
    output = "[[\"Character\",\"\u{100000}\"]]"
    input = "&#x100000;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid numeric entity character U+10FFFD" do
    output = "[[\"Character\",\"\u{10FFFD}\"]]"
    input = "&#x10fffd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
end
