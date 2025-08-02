require "../spec_helper"
describe "tokenizer/entities" do
  it "Undefined named entity in a double-quoted attribute value ending in semicolon and whose name starts with a known entity name." do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&noti;\"}]]"
    input = "<h a=\"&noti;\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity name requiring semicolon instead followed by the equals sign in a double-quoted attribute value." do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&lang=\"}]]"
    input = "<h a=\"&lang=\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid entity name followed by the equals sign in a double-quoted attribute value." do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&not=\"}]]"
    input = "<h a=\"&not=\">"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Undefined named entity in a single-quoted attribute value ending in semicolon and whose name starts with a known entity name." do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&noti;\"}]]"
    input = "<h a='&noti;'>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity name requiring semicolon instead followed by the equals sign in a single-quoted attribute value." do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&lang=\"}]]"
    input = "<h a='&lang='>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Valid entity name followed by the equals sign in a single-quoted attribute value." do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&not=\"}]]"
    input = "<h a='&not='>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Undefined named entity in an unquoted attribute value ending in semicolon and whose name starts with a known entity name." do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&noti;\"}]]"
    input = "<h a=&noti;>"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Entity name requiring semicolon instead followed by the equals sign in an unquoted attribute value." do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&lang=\"}]]"
    input = "<h a=&lang=>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 11}], HTML::Lexer::State::DATA, "", false
  end
  it "Valid entity name followed by the equals sign in an unquoted attribute value." do
    output = "[[\"StartTag\",\"h\",{\"a\":\"&not=\"}]]"
    input = "<h a=&not=>"
    assert_lexes input, output, [{"code" => "unexpected-character-in-unquoted-attribute-value", "line" => 1, "col" => 10}], HTML::Lexer::State::DATA, "", false
  end
  it "Ambiguous ampersand." do
    output = "[[\"Character\",\"&rrrraannddom;\"]]"
    input = "&rrrraannddom;"
    assert_lexes input, output, [{"code" => "unknown-named-character-reference", "line" => 1, "col" => 14}], HTML::Lexer::State::DATA, "", false
  end
  it "Semicolonless named entity 'not' followed by 'i;' in body" do
    output = "[[\"Character\",\"¬i;\"]]"
    input = "&noti;"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Very long undefined named entity in body" do
    output = "[[\"Character\",\"&ammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmp;\"]]"
    input = "&ammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmp;"
    assert_lexes input, output, [{"code" => "unknown-named-character-reference", "line" => 1, "col" => 950}], HTML::Lexer::State::DATA, "", false
  end
  it "CR as numeric entity" do
    output = "[[\"Character\",\"\\r\"]]"
    input = "&#013;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "CR as hexadecimal numeric entity" do
    output = "[[\"Character\",\"\\r\"]]"
    input = "&#x00D;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 EURO SIGN numeric entity." do
    output = "[[\"Character\",\"€\"]]"
    input = "&#0128;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR numeric entity." do
    output = "[[\"Character\",\"\u0081\"]]"
    input = "&#0129;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 SINGLE LOW-9 QUOTATION MARK numeric entity." do
    output = "[[\"Character\",\"‚\"]]"
    input = "&#0130;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN SMALL LETTER F WITH HOOK numeric entity." do
    output = "[[\"Character\",\"ƒ\"]]"
    input = "&#0131;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 DOUBLE LOW-9 QUOTATION MARK numeric entity." do
    output = "[[\"Character\",\"„\"]]"
    input = "&#0132;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 HORIZONTAL ELLIPSIS numeric entity." do
    output = "[[\"Character\",\"…\"]]"
    input = "&#0133;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 DAGGER numeric entity." do
    output = "[[\"Character\",\"†\"]]"
    input = "&#0134;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 DOUBLE DAGGER numeric entity." do
    output = "[[\"Character\",\"‡\"]]"
    input = "&#0135;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 MODIFIER LETTER CIRCUMFLEX ACCENT numeric entity." do
    output = "[[\"Character\",\"ˆ\"]]"
    input = "&#0136;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 PER MILLE SIGN numeric entity." do
    output = "[[\"Character\",\"‰\"]]"
    input = "&#0137;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN CAPITAL LETTER S WITH CARON numeric entity." do
    output = "[[\"Character\",\"Š\"]]"
    input = "&#0138;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 SINGLE LEFT-POINTING ANGLE QUOTATION MARK numeric entity." do
    output = "[[\"Character\",\"‹\"]]"
    input = "&#0139;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN CAPITAL LIGATURE OE numeric entity." do
    output = "[[\"Character\",\"Œ\"]]"
    input = "&#0140;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR numeric entity." do
    output = "[[\"Character\",\"\u008D\"]]"
    input = "&#0141;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN CAPITAL LETTER Z WITH CARON numeric entity." do
    output = "[[\"Character\",\"Ž\"]]"
    input = "&#0142;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR numeric entity." do
    output = "[[\"Character\",\"\u008F\"]]"
    input = "&#0143;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR numeric entity." do
    output = "[[\"Character\",\"\u0090\"]]"
    input = "&#0144;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LEFT SINGLE QUOTATION MARK numeric entity." do
    output = "[[\"Character\",\"‘\"]]"
    input = "&#0145;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 RIGHT SINGLE QUOTATION MARK numeric entity." do
    output = "[[\"Character\",\"’\"]]"
    input = "&#0146;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LEFT DOUBLE QUOTATION MARK numeric entity." do
    output = "[[\"Character\",\"“\"]]"
    input = "&#0147;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 RIGHT DOUBLE QUOTATION MARK numeric entity." do
    output = "[[\"Character\",\"”\"]]"
    input = "&#0148;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 BULLET numeric entity." do
    output = "[[\"Character\",\"•\"]]"
    input = "&#0149;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 EN DASH numeric entity." do
    output = "[[\"Character\",\"–\"]]"
    input = "&#0150;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 EM DASH numeric entity." do
    output = "[[\"Character\",\"—\"]]"
    input = "&#0151;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 SMALL TILDE numeric entity." do
    output = "[[\"Character\",\"˜\"]]"
    input = "&#0152;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 TRADE MARK SIGN numeric entity." do
    output = "[[\"Character\",\"™\"]]"
    input = "&#0153;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN SMALL LETTER S WITH CARON numeric entity." do
    output = "[[\"Character\",\"š\"]]"
    input = "&#0154;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 SINGLE RIGHT-POINTING ANGLE QUOTATION MARK numeric entity." do
    output = "[[\"Character\",\"›\"]]"
    input = "&#0155;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN SMALL LIGATURE OE numeric entity." do
    output = "[[\"Character\",\"œ\"]]"
    input = "&#0156;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR numeric entity." do
    output = "[[\"Character\",\"\u009D\"]]"
    input = "&#0157;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 EURO SIGN hexadecimal numeric entity." do
    output = "[[\"Character\",\"€\"]]"
    input = "&#x080;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    output = "[[\"Character\",\"\u0081\"]]"
    input = "&#x081;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 SINGLE LOW-9 QUOTATION MARK hexadecimal numeric entity." do
    output = "[[\"Character\",\"‚\"]]"
    input = "&#x082;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN SMALL LETTER F WITH HOOK hexadecimal numeric entity." do
    output = "[[\"Character\",\"ƒ\"]]"
    input = "&#x083;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 DOUBLE LOW-9 QUOTATION MARK hexadecimal numeric entity." do
    output = "[[\"Character\",\"„\"]]"
    input = "&#x084;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 HORIZONTAL ELLIPSIS hexadecimal numeric entity." do
    output = "[[\"Character\",\"…\"]]"
    input = "&#x085;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 DAGGER hexadecimal numeric entity." do
    output = "[[\"Character\",\"†\"]]"
    input = "&#x086;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 DOUBLE DAGGER hexadecimal numeric entity." do
    output = "[[\"Character\",\"‡\"]]"
    input = "&#x087;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 MODIFIER LETTER CIRCUMFLEX ACCENT hexadecimal numeric entity." do
    output = "[[\"Character\",\"ˆ\"]]"
    input = "&#x088;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 PER MILLE SIGN hexadecimal numeric entity." do
    output = "[[\"Character\",\"‰\"]]"
    input = "&#x089;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN CAPITAL LETTER S WITH CARON hexadecimal numeric entity." do
    output = "[[\"Character\",\"Š\"]]"
    input = "&#x08A;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 SINGLE LEFT-POINTING ANGLE QUOTATION MARK hexadecimal numeric entity." do
    output = "[[\"Character\",\"‹\"]]"
    input = "&#x08B;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN CAPITAL LIGATURE OE hexadecimal numeric entity." do
    output = "[[\"Character\",\"Œ\"]]"
    input = "&#x08C;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    output = "[[\"Character\",\"\u008D\"]]"
    input = "&#x08D;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN CAPITAL LETTER Z WITH CARON hexadecimal numeric entity." do
    output = "[[\"Character\",\"Ž\"]]"
    input = "&#x08E;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    output = "[[\"Character\",\"\u008F\"]]"
    input = "&#x08F;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    output = "[[\"Character\",\"\u0090\"]]"
    input = "&#x090;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LEFT SINGLE QUOTATION MARK hexadecimal numeric entity." do
    output = "[[\"Character\",\"‘\"]]"
    input = "&#x091;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 RIGHT SINGLE QUOTATION MARK hexadecimal numeric entity." do
    output = "[[\"Character\",\"’\"]]"
    input = "&#x092;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LEFT DOUBLE QUOTATION MARK hexadecimal numeric entity." do
    output = "[[\"Character\",\"“\"]]"
    input = "&#x093;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 RIGHT DOUBLE QUOTATION MARK hexadecimal numeric entity." do
    output = "[[\"Character\",\"”\"]]"
    input = "&#x094;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 BULLET hexadecimal numeric entity." do
    output = "[[\"Character\",\"•\"]]"
    input = "&#x095;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 EN DASH hexadecimal numeric entity." do
    output = "[[\"Character\",\"–\"]]"
    input = "&#x096;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 EM DASH hexadecimal numeric entity." do
    output = "[[\"Character\",\"—\"]]"
    input = "&#x097;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 SMALL TILDE hexadecimal numeric entity." do
    output = "[[\"Character\",\"˜\"]]"
    input = "&#x098;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 TRADE MARK SIGN hexadecimal numeric entity." do
    output = "[[\"Character\",\"™\"]]"
    input = "&#x099;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN SMALL LETTER S WITH CARON hexadecimal numeric entity." do
    output = "[[\"Character\",\"š\"]]"
    input = "&#x09A;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 SINGLE RIGHT-POINTING ANGLE QUOTATION MARK hexadecimal numeric entity." do
    output = "[[\"Character\",\"›\"]]"
    input = "&#x09B;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN SMALL LIGATURE OE hexadecimal numeric entity." do
    output = "[[\"Character\",\"œ\"]]"
    input = "&#x09C;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    output = "[[\"Character\",\"\u009D\"]]"
    input = "&#x09D;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN SMALL LETTER Z WITH CARON hexadecimal numeric entity." do
    output = "[[\"Character\",\"ž\"]]"
    input = "&#x09E;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Windows-1252 LATIN CAPITAL LETTER Y WITH DIAERESIS hexadecimal numeric entity." do
    output = "[[\"Character\",\"Ÿ\"]]"
    input = "&#x09F;"
    assert_lexes input, output, [{"code" => "control-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Decimal numeric entity followed by hex character a." do
    output = "[[\"Character\",\"aa\"]]"
    input = "&#97a"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Decimal numeric entity followed by hex character A." do
    output = "[[\"Character\",\"aA\"]]"
    input = "&#97A"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Decimal numeric entity followed by hex character f." do
    output = "[[\"Character\",\"af\"]]"
    input = "&#97f"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Decimal numeric entity followed by hex character A." do
    output = "[[\"Character\",\"aF\"]]"
    input = "&#97F"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
end
