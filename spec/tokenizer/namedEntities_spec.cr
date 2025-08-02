require "../spec_helper"
describe "tokenizer/namedEntities" do
  it "Named entity: AElig without a semi-colon" do
    output = "[[\"Character\",\"Æ\"]]"
    input = "&AElig"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: AElig; with a semi-colon" do
    output = "[[\"Character\",\"Æ\"]]"
    input = "&AElig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: AMP without a semi-colon" do
    output = "[[\"Character\",\"&\"]]"
    input = "&AMP"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: AMP; with a semi-colon" do
    output = "[[\"Character\",\"&\"]]"
    input = "&AMP;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Aacute without a semi-colon" do
    output = "[[\"Character\",\"Á\"]]"
    input = "&Aacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Aacute; with a semi-colon" do
    output = "[[\"Character\",\"Á\"]]"
    input = "&Aacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Abreve without a semi-colon" do
    output = "[[\"Character\",\"&Abreve\"]]"
    input = "&Abreve"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Abreve; with a semi-colon" do
    output = "[[\"Character\",\"Ă\"]]"
    input = "&Abreve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Acirc without a semi-colon" do
    output = "[[\"Character\",\"Â\"]]"
    input = "&Acirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Acirc; with a semi-colon" do
    output = "[[\"Character\",\"Â\"]]"
    input = "&Acirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Acy without a semi-colon" do
    output = "[[\"Character\",\"&Acy\"]]"
    input = "&Acy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Acy; with a semi-colon" do
    output = "[[\"Character\",\"А\"]]"
    input = "&Acy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Afr without a semi-colon" do
    output = "[[\"Character\",\"&Afr\"]]"
    input = "&Afr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Afr; with a semi-colon" do
    output = "[[\"Character\",\"𝔄\"]]"
    input = "&Afr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Agrave without a semi-colon" do
    output = "[[\"Character\",\"À\"]]"
    input = "&Agrave"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Agrave; with a semi-colon" do
    output = "[[\"Character\",\"À\"]]"
    input = "&Agrave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Alpha without a semi-colon" do
    output = "[[\"Character\",\"&Alpha\"]]"
    input = "&Alpha"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Alpha; with a semi-colon" do
    output = "[[\"Character\",\"Α\"]]"
    input = "&Alpha;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Amacr without a semi-colon" do
    output = "[[\"Character\",\"&Amacr\"]]"
    input = "&Amacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Amacr; with a semi-colon" do
    output = "[[\"Character\",\"Ā\"]]"
    input = "&Amacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: And without a semi-colon" do
    output = "[[\"Character\",\"&And\"]]"
    input = "&And"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: And; with a semi-colon" do
    output = "[[\"Character\",\"⩓\"]]"
    input = "&And;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Aogon without a semi-colon" do
    output = "[[\"Character\",\"&Aogon\"]]"
    input = "&Aogon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Aogon; with a semi-colon" do
    output = "[[\"Character\",\"Ą\"]]"
    input = "&Aogon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Aopf without a semi-colon" do
    output = "[[\"Character\",\"&Aopf\"]]"
    input = "&Aopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Aopf; with a semi-colon" do
    output = "[[\"Character\",\"𝔸\"]]"
    input = "&Aopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ApplyFunction without a semi-colon" do
    output = "[[\"Character\",\"&ApplyFunction\"]]"
    input = "&ApplyFunction"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ApplyFunction; with a semi-colon" do
    output = "[[\"Character\",\"\u2061\"]]"
    input = "&ApplyFunction;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Aring without a semi-colon" do
    output = "[[\"Character\",\"Å\"]]"
    input = "&Aring"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Aring; with a semi-colon" do
    output = "[[\"Character\",\"Å\"]]"
    input = "&Aring;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ascr without a semi-colon" do
    output = "[[\"Character\",\"&Ascr\"]]"
    input = "&Ascr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ascr; with a semi-colon" do
    output = "[[\"Character\",\"𝒜\"]]"
    input = "&Ascr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Assign without a semi-colon" do
    output = "[[\"Character\",\"&Assign\"]]"
    input = "&Assign"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Assign; with a semi-colon" do
    output = "[[\"Character\",\"≔\"]]"
    input = "&Assign;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Atilde without a semi-colon" do
    output = "[[\"Character\",\"Ã\"]]"
    input = "&Atilde"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Atilde; with a semi-colon" do
    output = "[[\"Character\",\"Ã\"]]"
    input = "&Atilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Auml without a semi-colon" do
    output = "[[\"Character\",\"Ä\"]]"
    input = "&Auml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Auml; with a semi-colon" do
    output = "[[\"Character\",\"Ä\"]]"
    input = "&Auml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Backslash without a semi-colon" do
    output = "[[\"Character\",\"&Backslash\"]]"
    input = "&Backslash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Backslash; with a semi-colon" do
    output = "[[\"Character\",\"∖\"]]"
    input = "&Backslash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Barv without a semi-colon" do
    output = "[[\"Character\",\"&Barv\"]]"
    input = "&Barv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Barv; with a semi-colon" do
    output = "[[\"Character\",\"⫧\"]]"
    input = "&Barv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Barwed without a semi-colon" do
    output = "[[\"Character\",\"&Barwed\"]]"
    input = "&Barwed"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Barwed; with a semi-colon" do
    output = "[[\"Character\",\"⌆\"]]"
    input = "&Barwed;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Bcy without a semi-colon" do
    output = "[[\"Character\",\"&Bcy\"]]"
    input = "&Bcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Bcy; with a semi-colon" do
    output = "[[\"Character\",\"Б\"]]"
    input = "&Bcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Because without a semi-colon" do
    output = "[[\"Character\",\"&Because\"]]"
    input = "&Because"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Because; with a semi-colon" do
    output = "[[\"Character\",\"∵\"]]"
    input = "&Because;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Bernoullis without a semi-colon" do
    output = "[[\"Character\",\"&Bernoullis\"]]"
    input = "&Bernoullis"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Bernoullis; with a semi-colon" do
    output = "[[\"Character\",\"ℬ\"]]"
    input = "&Bernoullis;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Beta without a semi-colon" do
    output = "[[\"Character\",\"&Beta\"]]"
    input = "&Beta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Beta; with a semi-colon" do
    output = "[[\"Character\",\"Β\"]]"
    input = "&Beta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Bfr without a semi-colon" do
    output = "[[\"Character\",\"&Bfr\"]]"
    input = "&Bfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Bfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔅\"]]"
    input = "&Bfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Bopf without a semi-colon" do
    output = "[[\"Character\",\"&Bopf\"]]"
    input = "&Bopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Bopf; with a semi-colon" do
    output = "[[\"Character\",\"𝔹\"]]"
    input = "&Bopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Breve without a semi-colon" do
    output = "[[\"Character\",\"&Breve\"]]"
    input = "&Breve"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Breve; with a semi-colon" do
    output = "[[\"Character\",\"˘\"]]"
    input = "&Breve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Bscr without a semi-colon" do
    output = "[[\"Character\",\"&Bscr\"]]"
    input = "&Bscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Bscr; with a semi-colon" do
    output = "[[\"Character\",\"ℬ\"]]"
    input = "&Bscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Bumpeq without a semi-colon" do
    output = "[[\"Character\",\"&Bumpeq\"]]"
    input = "&Bumpeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Bumpeq; with a semi-colon" do
    output = "[[\"Character\",\"≎\"]]"
    input = "&Bumpeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CHcy without a semi-colon" do
    output = "[[\"Character\",\"&CHcy\"]]"
    input = "&CHcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CHcy; with a semi-colon" do
    output = "[[\"Character\",\"Ч\"]]"
    input = "&CHcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: COPY without a semi-colon" do
    output = "[[\"Character\",\"©\"]]"
    input = "&COPY"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: COPY; with a semi-colon" do
    output = "[[\"Character\",\"©\"]]"
    input = "&COPY;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cacute without a semi-colon" do
    output = "[[\"Character\",\"&Cacute\"]]"
    input = "&Cacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cacute; with a semi-colon" do
    output = "[[\"Character\",\"Ć\"]]"
    input = "&Cacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cap without a semi-colon" do
    output = "[[\"Character\",\"&Cap\"]]"
    input = "&Cap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cap; with a semi-colon" do
    output = "[[\"Character\",\"⋒\"]]"
    input = "&Cap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CapitalDifferentialD without a semi-colon" do
    output = "[[\"Character\",\"&CapitalDifferentialD\"]]"
    input = "&CapitalDifferentialD"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CapitalDifferentialD; with a semi-colon" do
    output = "[[\"Character\",\"ⅅ\"]]"
    input = "&CapitalDifferentialD;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cayleys without a semi-colon" do
    output = "[[\"Character\",\"&Cayleys\"]]"
    input = "&Cayleys"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cayleys; with a semi-colon" do
    output = "[[\"Character\",\"ℭ\"]]"
    input = "&Cayleys;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ccaron without a semi-colon" do
    output = "[[\"Character\",\"&Ccaron\"]]"
    input = "&Ccaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ccaron; with a semi-colon" do
    output = "[[\"Character\",\"Č\"]]"
    input = "&Ccaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ccedil without a semi-colon" do
    output = "[[\"Character\",\"Ç\"]]"
    input = "&Ccedil"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ccedil; with a semi-colon" do
    output = "[[\"Character\",\"Ç\"]]"
    input = "&Ccedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ccirc without a semi-colon" do
    output = "[[\"Character\",\"&Ccirc\"]]"
    input = "&Ccirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ccirc; with a semi-colon" do
    output = "[[\"Character\",\"Ĉ\"]]"
    input = "&Ccirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cconint without a semi-colon" do
    output = "[[\"Character\",\"&Cconint\"]]"
    input = "&Cconint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cconint; with a semi-colon" do
    output = "[[\"Character\",\"∰\"]]"
    input = "&Cconint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cdot without a semi-colon" do
    output = "[[\"Character\",\"&Cdot\"]]"
    input = "&Cdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cdot; with a semi-colon" do
    output = "[[\"Character\",\"Ċ\"]]"
    input = "&Cdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cedilla without a semi-colon" do
    output = "[[\"Character\",\"&Cedilla\"]]"
    input = "&Cedilla"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cedilla; with a semi-colon" do
    output = "[[\"Character\",\"¸\"]]"
    input = "&Cedilla;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CenterDot without a semi-colon" do
    output = "[[\"Character\",\"&CenterDot\"]]"
    input = "&CenterDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CenterDot; with a semi-colon" do
    output = "[[\"Character\",\"·\"]]"
    input = "&CenterDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cfr without a semi-colon" do
    output = "[[\"Character\",\"&Cfr\"]]"
    input = "&Cfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cfr; with a semi-colon" do
    output = "[[\"Character\",\"ℭ\"]]"
    input = "&Cfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Chi without a semi-colon" do
    output = "[[\"Character\",\"&Chi\"]]"
    input = "&Chi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Chi; with a semi-colon" do
    output = "[[\"Character\",\"Χ\"]]"
    input = "&Chi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CircleDot without a semi-colon" do
    output = "[[\"Character\",\"&CircleDot\"]]"
    input = "&CircleDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CircleDot; with a semi-colon" do
    output = "[[\"Character\",\"⊙\"]]"
    input = "&CircleDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CircleMinus without a semi-colon" do
    output = "[[\"Character\",\"&CircleMinus\"]]"
    input = "&CircleMinus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CircleMinus; with a semi-colon" do
    output = "[[\"Character\",\"⊖\"]]"
    input = "&CircleMinus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CirclePlus without a semi-colon" do
    output = "[[\"Character\",\"&CirclePlus\"]]"
    input = "&CirclePlus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CirclePlus; with a semi-colon" do
    output = "[[\"Character\",\"⊕\"]]"
    input = "&CirclePlus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CircleTimes without a semi-colon" do
    output = "[[\"Character\",\"&CircleTimes\"]]"
    input = "&CircleTimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CircleTimes; with a semi-colon" do
    output = "[[\"Character\",\"⊗\"]]"
    input = "&CircleTimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ClockwiseContourIntegral without a semi-colon" do
    output = "[[\"Character\",\"&ClockwiseContourIntegral\"]]"
    input = "&ClockwiseContourIntegral"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ClockwiseContourIntegral; with a semi-colon" do
    output = "[[\"Character\",\"∲\"]]"
    input = "&ClockwiseContourIntegral;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CloseCurlyDoubleQuote without a semi-colon" do
    output = "[[\"Character\",\"&CloseCurlyDoubleQuote\"]]"
    input = "&CloseCurlyDoubleQuote"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CloseCurlyDoubleQuote; with a semi-colon" do
    output = "[[\"Character\",\"”\"]]"
    input = "&CloseCurlyDoubleQuote;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CloseCurlyQuote without a semi-colon" do
    output = "[[\"Character\",\"&CloseCurlyQuote\"]]"
    input = "&CloseCurlyQuote"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CloseCurlyQuote; with a semi-colon" do
    output = "[[\"Character\",\"’\"]]"
    input = "&CloseCurlyQuote;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Colon without a semi-colon" do
    output = "[[\"Character\",\"&Colon\"]]"
    input = "&Colon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Colon; with a semi-colon" do
    output = "[[\"Character\",\"∷\"]]"
    input = "&Colon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Colone without a semi-colon" do
    output = "[[\"Character\",\"&Colone\"]]"
    input = "&Colone"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Colone; with a semi-colon" do
    output = "[[\"Character\",\"⩴\"]]"
    input = "&Colone;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Congruent without a semi-colon" do
    output = "[[\"Character\",\"&Congruent\"]]"
    input = "&Congruent"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Congruent; with a semi-colon" do
    output = "[[\"Character\",\"≡\"]]"
    input = "&Congruent;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Conint without a semi-colon" do
    output = "[[\"Character\",\"&Conint\"]]"
    input = "&Conint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Conint; with a semi-colon" do
    output = "[[\"Character\",\"∯\"]]"
    input = "&Conint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ContourIntegral without a semi-colon" do
    output = "[[\"Character\",\"&ContourIntegral\"]]"
    input = "&ContourIntegral"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ContourIntegral; with a semi-colon" do
    output = "[[\"Character\",\"∮\"]]"
    input = "&ContourIntegral;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Copf without a semi-colon" do
    output = "[[\"Character\",\"&Copf\"]]"
    input = "&Copf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Copf; with a semi-colon" do
    output = "[[\"Character\",\"ℂ\"]]"
    input = "&Copf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Coproduct without a semi-colon" do
    output = "[[\"Character\",\"&Coproduct\"]]"
    input = "&Coproduct"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Coproduct; with a semi-colon" do
    output = "[[\"Character\",\"∐\"]]"
    input = "&Coproduct;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CounterClockwiseContourIntegral without a semi-colon" do
    output = "[[\"Character\",\"&CounterClockwiseContourIntegral\"]]"
    input = "&CounterClockwiseContourIntegral"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CounterClockwiseContourIntegral; with a semi-colon" do
    output = "[[\"Character\",\"∳\"]]"
    input = "&CounterClockwiseContourIntegral;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cross without a semi-colon" do
    output = "[[\"Character\",\"&Cross\"]]"
    input = "&Cross"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cross; with a semi-colon" do
    output = "[[\"Character\",\"⨯\"]]"
    input = "&Cross;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cscr without a semi-colon" do
    output = "[[\"Character\",\"&Cscr\"]]"
    input = "&Cscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒞\"]]"
    input = "&Cscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Cup without a semi-colon" do
    output = "[[\"Character\",\"&Cup\"]]"
    input = "&Cup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Cup; with a semi-colon" do
    output = "[[\"Character\",\"⋓\"]]"
    input = "&Cup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: CupCap without a semi-colon" do
    output = "[[\"Character\",\"&CupCap\"]]"
    input = "&CupCap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: CupCap; with a semi-colon" do
    output = "[[\"Character\",\"≍\"]]"
    input = "&CupCap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DD without a semi-colon" do
    output = "[[\"Character\",\"&DD\"]]"
    input = "&DD"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DD; with a semi-colon" do
    output = "[[\"Character\",\"ⅅ\"]]"
    input = "&DD;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DDotrahd without a semi-colon" do
    output = "[[\"Character\",\"&DDotrahd\"]]"
    input = "&DDotrahd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DDotrahd; with a semi-colon" do
    output = "[[\"Character\",\"⤑\"]]"
    input = "&DDotrahd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DJcy without a semi-colon" do
    output = "[[\"Character\",\"&DJcy\"]]"
    input = "&DJcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DJcy; with a semi-colon" do
    output = "[[\"Character\",\"Ђ\"]]"
    input = "&DJcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DScy without a semi-colon" do
    output = "[[\"Character\",\"&DScy\"]]"
    input = "&DScy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DScy; with a semi-colon" do
    output = "[[\"Character\",\"Ѕ\"]]"
    input = "&DScy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DZcy without a semi-colon" do
    output = "[[\"Character\",\"&DZcy\"]]"
    input = "&DZcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DZcy; with a semi-colon" do
    output = "[[\"Character\",\"Џ\"]]"
    input = "&DZcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Dagger without a semi-colon" do
    output = "[[\"Character\",\"&Dagger\"]]"
    input = "&Dagger"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Dagger; with a semi-colon" do
    output = "[[\"Character\",\"‡\"]]"
    input = "&Dagger;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Darr without a semi-colon" do
    output = "[[\"Character\",\"&Darr\"]]"
    input = "&Darr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Darr; with a semi-colon" do
    output = "[[\"Character\",\"↡\"]]"
    input = "&Darr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Dashv without a semi-colon" do
    output = "[[\"Character\",\"&Dashv\"]]"
    input = "&Dashv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Dashv; with a semi-colon" do
    output = "[[\"Character\",\"⫤\"]]"
    input = "&Dashv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Dcaron without a semi-colon" do
    output = "[[\"Character\",\"&Dcaron\"]]"
    input = "&Dcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Dcaron; with a semi-colon" do
    output = "[[\"Character\",\"Ď\"]]"
    input = "&Dcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Dcy without a semi-colon" do
    output = "[[\"Character\",\"&Dcy\"]]"
    input = "&Dcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Dcy; with a semi-colon" do
    output = "[[\"Character\",\"Д\"]]"
    input = "&Dcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Del without a semi-colon" do
    output = "[[\"Character\",\"&Del\"]]"
    input = "&Del"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Del; with a semi-colon" do
    output = "[[\"Character\",\"∇\"]]"
    input = "&Del;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Delta without a semi-colon" do
    output = "[[\"Character\",\"&Delta\"]]"
    input = "&Delta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Delta; with a semi-colon" do
    output = "[[\"Character\",\"Δ\"]]"
    input = "&Delta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Dfr without a semi-colon" do
    output = "[[\"Character\",\"&Dfr\"]]"
    input = "&Dfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Dfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔇\"]]"
    input = "&Dfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DiacriticalAcute without a semi-colon" do
    output = "[[\"Character\",\"&DiacriticalAcute\"]]"
    input = "&DiacriticalAcute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DiacriticalAcute; with a semi-colon" do
    output = "[[\"Character\",\"´\"]]"
    input = "&DiacriticalAcute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DiacriticalDot without a semi-colon" do
    output = "[[\"Character\",\"&DiacriticalDot\"]]"
    input = "&DiacriticalDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DiacriticalDot; with a semi-colon" do
    output = "[[\"Character\",\"˙\"]]"
    input = "&DiacriticalDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DiacriticalDoubleAcute without a semi-colon" do
    output = "[[\"Character\",\"&DiacriticalDoubleAcute\"]]"
    input = "&DiacriticalDoubleAcute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DiacriticalDoubleAcute; with a semi-colon" do
    output = "[[\"Character\",\"˝\"]]"
    input = "&DiacriticalDoubleAcute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DiacriticalGrave without a semi-colon" do
    output = "[[\"Character\",\"&DiacriticalGrave\"]]"
    input = "&DiacriticalGrave"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DiacriticalGrave; with a semi-colon" do
    output = "[[\"Character\",\"`\"]]"
    input = "&DiacriticalGrave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DiacriticalTilde without a semi-colon" do
    output = "[[\"Character\",\"&DiacriticalTilde\"]]"
    input = "&DiacriticalTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DiacriticalTilde; with a semi-colon" do
    output = "[[\"Character\",\"˜\"]]"
    input = "&DiacriticalTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Diamond without a semi-colon" do
    output = "[[\"Character\",\"&Diamond\"]]"
    input = "&Diamond"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Diamond; with a semi-colon" do
    output = "[[\"Character\",\"⋄\"]]"
    input = "&Diamond;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DifferentialD without a semi-colon" do
    output = "[[\"Character\",\"&DifferentialD\"]]"
    input = "&DifferentialD"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DifferentialD; with a semi-colon" do
    output = "[[\"Character\",\"ⅆ\"]]"
    input = "&DifferentialD;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Dopf without a semi-colon" do
    output = "[[\"Character\",\"&Dopf\"]]"
    input = "&Dopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Dopf; with a semi-colon" do
    output = "[[\"Character\",\"𝔻\"]]"
    input = "&Dopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Dot without a semi-colon" do
    output = "[[\"Character\",\"&Dot\"]]"
    input = "&Dot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Dot; with a semi-colon" do
    output = "[[\"Character\",\"¨\"]]"
    input = "&Dot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DotDot without a semi-colon" do
    output = "[[\"Character\",\"&DotDot\"]]"
    input = "&DotDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DotDot; with a semi-colon" do
    output = "[[\"Character\",\"⃜\"]]"
    input = "&DotDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DotEqual without a semi-colon" do
    output = "[[\"Character\",\"&DotEqual\"]]"
    input = "&DotEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DotEqual; with a semi-colon" do
    output = "[[\"Character\",\"≐\"]]"
    input = "&DotEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleContourIntegral without a semi-colon" do
    output = "[[\"Character\",\"&DoubleContourIntegral\"]]"
    input = "&DoubleContourIntegral"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleContourIntegral; with a semi-colon" do
    output = "[[\"Character\",\"∯\"]]"
    input = "&DoubleContourIntegral;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleDot without a semi-colon" do
    output = "[[\"Character\",\"&DoubleDot\"]]"
    input = "&DoubleDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleDot; with a semi-colon" do
    output = "[[\"Character\",\"¨\"]]"
    input = "&DoubleDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleDownArrow without a semi-colon" do
    output = "[[\"Character\",\"&DoubleDownArrow\"]]"
    input = "&DoubleDownArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleDownArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇓\"]]"
    input = "&DoubleDownArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleLeftArrow without a semi-colon" do
    output = "[[\"Character\",\"&DoubleLeftArrow\"]]"
    input = "&DoubleLeftArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleLeftArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇐\"]]"
    input = "&DoubleLeftArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleLeftRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&DoubleLeftRightArrow\"]]"
    input = "&DoubleLeftRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleLeftRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇔\"]]"
    input = "&DoubleLeftRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleLeftTee without a semi-colon" do
    output = "[[\"Character\",\"&DoubleLeftTee\"]]"
    input = "&DoubleLeftTee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleLeftTee; with a semi-colon" do
    output = "[[\"Character\",\"⫤\"]]"
    input = "&DoubleLeftTee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleLongLeftArrow without a semi-colon" do
    output = "[[\"Character\",\"&DoubleLongLeftArrow\"]]"
    input = "&DoubleLongLeftArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleLongLeftArrow; with a semi-colon" do
    output = "[[\"Character\",\"⟸\"]]"
    input = "&DoubleLongLeftArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleLongLeftRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&DoubleLongLeftRightArrow\"]]"
    input = "&DoubleLongLeftRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleLongLeftRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"⟺\"]]"
    input = "&DoubleLongLeftRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleLongRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&DoubleLongRightArrow\"]]"
    input = "&DoubleLongRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleLongRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"⟹\"]]"
    input = "&DoubleLongRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&DoubleRightArrow\"]]"
    input = "&DoubleRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇒\"]]"
    input = "&DoubleRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleRightTee without a semi-colon" do
    output = "[[\"Character\",\"&DoubleRightTee\"]]"
    input = "&DoubleRightTee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleRightTee; with a semi-colon" do
    output = "[[\"Character\",\"⊨\"]]"
    input = "&DoubleRightTee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleUpArrow without a semi-colon" do
    output = "[[\"Character\",\"&DoubleUpArrow\"]]"
    input = "&DoubleUpArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleUpArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇑\"]]"
    input = "&DoubleUpArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleUpDownArrow without a semi-colon" do
    output = "[[\"Character\",\"&DoubleUpDownArrow\"]]"
    input = "&DoubleUpDownArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleUpDownArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇕\"]]"
    input = "&DoubleUpDownArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DoubleVerticalBar without a semi-colon" do
    output = "[[\"Character\",\"&DoubleVerticalBar\"]]"
    input = "&DoubleVerticalBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DoubleVerticalBar; with a semi-colon" do
    output = "[[\"Character\",\"∥\"]]"
    input = "&DoubleVerticalBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownArrow without a semi-colon" do
    output = "[[\"Character\",\"&DownArrow\"]]"
    input = "&DownArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownArrow; with a semi-colon" do
    output = "[[\"Character\",\"↓\"]]"
    input = "&DownArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownArrowBar without a semi-colon" do
    output = "[[\"Character\",\"&DownArrowBar\"]]"
    input = "&DownArrowBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownArrowBar; with a semi-colon" do
    output = "[[\"Character\",\"⤓\"]]"
    input = "&DownArrowBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownArrowUpArrow without a semi-colon" do
    output = "[[\"Character\",\"&DownArrowUpArrow\"]]"
    input = "&DownArrowUpArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownArrowUpArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇵\"]]"
    input = "&DownArrowUpArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownBreve without a semi-colon" do
    output = "[[\"Character\",\"&DownBreve\"]]"
    input = "&DownBreve"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownBreve; with a semi-colon" do
    output = "[[\"Character\",\"̑\"]]"
    input = "&DownBreve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownLeftRightVector without a semi-colon" do
    output = "[[\"Character\",\"&DownLeftRightVector\"]]"
    input = "&DownLeftRightVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownLeftRightVector; with a semi-colon" do
    output = "[[\"Character\",\"⥐\"]]"
    input = "&DownLeftRightVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownLeftTeeVector without a semi-colon" do
    output = "[[\"Character\",\"&DownLeftTeeVector\"]]"
    input = "&DownLeftTeeVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownLeftTeeVector; with a semi-colon" do
    output = "[[\"Character\",\"⥞\"]]"
    input = "&DownLeftTeeVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownLeftVector without a semi-colon" do
    output = "[[\"Character\",\"&DownLeftVector\"]]"
    input = "&DownLeftVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownLeftVector; with a semi-colon" do
    output = "[[\"Character\",\"↽\"]]"
    input = "&DownLeftVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownLeftVectorBar without a semi-colon" do
    output = "[[\"Character\",\"&DownLeftVectorBar\"]]"
    input = "&DownLeftVectorBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownLeftVectorBar; with a semi-colon" do
    output = "[[\"Character\",\"⥖\"]]"
    input = "&DownLeftVectorBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownRightTeeVector without a semi-colon" do
    output = "[[\"Character\",\"&DownRightTeeVector\"]]"
    input = "&DownRightTeeVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownRightTeeVector; with a semi-colon" do
    output = "[[\"Character\",\"⥟\"]]"
    input = "&DownRightTeeVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownRightVector without a semi-colon" do
    output = "[[\"Character\",\"&DownRightVector\"]]"
    input = "&DownRightVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownRightVector; with a semi-colon" do
    output = "[[\"Character\",\"⇁\"]]"
    input = "&DownRightVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownRightVectorBar without a semi-colon" do
    output = "[[\"Character\",\"&DownRightVectorBar\"]]"
    input = "&DownRightVectorBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownRightVectorBar; with a semi-colon" do
    output = "[[\"Character\",\"⥗\"]]"
    input = "&DownRightVectorBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownTee without a semi-colon" do
    output = "[[\"Character\",\"&DownTee\"]]"
    input = "&DownTee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownTee; with a semi-colon" do
    output = "[[\"Character\",\"⊤\"]]"
    input = "&DownTee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: DownTeeArrow without a semi-colon" do
    output = "[[\"Character\",\"&DownTeeArrow\"]]"
    input = "&DownTeeArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: DownTeeArrow; with a semi-colon" do
    output = "[[\"Character\",\"↧\"]]"
    input = "&DownTeeArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Downarrow without a semi-colon" do
    output = "[[\"Character\",\"&Downarrow\"]]"
    input = "&Downarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Downarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇓\"]]"
    input = "&Downarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Dscr without a semi-colon" do
    output = "[[\"Character\",\"&Dscr\"]]"
    input = "&Dscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Dscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒟\"]]"
    input = "&Dscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Dstrok without a semi-colon" do
    output = "[[\"Character\",\"&Dstrok\"]]"
    input = "&Dstrok"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Dstrok; with a semi-colon" do
    output = "[[\"Character\",\"Đ\"]]"
    input = "&Dstrok;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ENG without a semi-colon" do
    output = "[[\"Character\",\"&ENG\"]]"
    input = "&ENG"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ENG; with a semi-colon" do
    output = "[[\"Character\",\"Ŋ\"]]"
    input = "&ENG;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ETH without a semi-colon" do
    output = "[[\"Character\",\"Ð\"]]"
    input = "&ETH"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ETH; with a semi-colon" do
    output = "[[\"Character\",\"Ð\"]]"
    input = "&ETH;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Eacute without a semi-colon" do
    output = "[[\"Character\",\"É\"]]"
    input = "&Eacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Eacute; with a semi-colon" do
    output = "[[\"Character\",\"É\"]]"
    input = "&Eacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ecaron without a semi-colon" do
    output = "[[\"Character\",\"&Ecaron\"]]"
    input = "&Ecaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ecaron; with a semi-colon" do
    output = "[[\"Character\",\"Ě\"]]"
    input = "&Ecaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ecirc without a semi-colon" do
    output = "[[\"Character\",\"Ê\"]]"
    input = "&Ecirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ecirc; with a semi-colon" do
    output = "[[\"Character\",\"Ê\"]]"
    input = "&Ecirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ecy without a semi-colon" do
    output = "[[\"Character\",\"&Ecy\"]]"
    input = "&Ecy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ecy; with a semi-colon" do
    output = "[[\"Character\",\"Э\"]]"
    input = "&Ecy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Edot without a semi-colon" do
    output = "[[\"Character\",\"&Edot\"]]"
    input = "&Edot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Edot; with a semi-colon" do
    output = "[[\"Character\",\"Ė\"]]"
    input = "&Edot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Efr without a semi-colon" do
    output = "[[\"Character\",\"&Efr\"]]"
    input = "&Efr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Efr; with a semi-colon" do
    output = "[[\"Character\",\"𝔈\"]]"
    input = "&Efr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Egrave without a semi-colon" do
    output = "[[\"Character\",\"È\"]]"
    input = "&Egrave"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Egrave; with a semi-colon" do
    output = "[[\"Character\",\"È\"]]"
    input = "&Egrave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Element without a semi-colon" do
    output = "[[\"Character\",\"&Element\"]]"
    input = "&Element"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Element; with a semi-colon" do
    output = "[[\"Character\",\"∈\"]]"
    input = "&Element;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Emacr without a semi-colon" do
    output = "[[\"Character\",\"&Emacr\"]]"
    input = "&Emacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Emacr; with a semi-colon" do
    output = "[[\"Character\",\"Ē\"]]"
    input = "&Emacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: EmptySmallSquare without a semi-colon" do
    output = "[[\"Character\",\"&EmptySmallSquare\"]]"
    input = "&EmptySmallSquare"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: EmptySmallSquare; with a semi-colon" do
    output = "[[\"Character\",\"◻\"]]"
    input = "&EmptySmallSquare;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: EmptyVerySmallSquare without a semi-colon" do
    output = "[[\"Character\",\"&EmptyVerySmallSquare\"]]"
    input = "&EmptyVerySmallSquare"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: EmptyVerySmallSquare; with a semi-colon" do
    output = "[[\"Character\",\"▫\"]]"
    input = "&EmptyVerySmallSquare;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Eogon without a semi-colon" do
    output = "[[\"Character\",\"&Eogon\"]]"
    input = "&Eogon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Eogon; with a semi-colon" do
    output = "[[\"Character\",\"Ę\"]]"
    input = "&Eogon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Eopf without a semi-colon" do
    output = "[[\"Character\",\"&Eopf\"]]"
    input = "&Eopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Eopf; with a semi-colon" do
    output = "[[\"Character\",\"𝔼\"]]"
    input = "&Eopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Epsilon without a semi-colon" do
    output = "[[\"Character\",\"&Epsilon\"]]"
    input = "&Epsilon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Epsilon; with a semi-colon" do
    output = "[[\"Character\",\"Ε\"]]"
    input = "&Epsilon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Equal without a semi-colon" do
    output = "[[\"Character\",\"&Equal\"]]"
    input = "&Equal"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Equal; with a semi-colon" do
    output = "[[\"Character\",\"⩵\"]]"
    input = "&Equal;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: EqualTilde without a semi-colon" do
    output = "[[\"Character\",\"&EqualTilde\"]]"
    input = "&EqualTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: EqualTilde; with a semi-colon" do
    output = "[[\"Character\",\"≂\"]]"
    input = "&EqualTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Equilibrium without a semi-colon" do
    output = "[[\"Character\",\"&Equilibrium\"]]"
    input = "&Equilibrium"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Equilibrium; with a semi-colon" do
    output = "[[\"Character\",\"⇌\"]]"
    input = "&Equilibrium;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Escr without a semi-colon" do
    output = "[[\"Character\",\"&Escr\"]]"
    input = "&Escr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Escr; with a semi-colon" do
    output = "[[\"Character\",\"ℰ\"]]"
    input = "&Escr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Esim without a semi-colon" do
    output = "[[\"Character\",\"&Esim\"]]"
    input = "&Esim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Esim; with a semi-colon" do
    output = "[[\"Character\",\"⩳\"]]"
    input = "&Esim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Eta without a semi-colon" do
    output = "[[\"Character\",\"&Eta\"]]"
    input = "&Eta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Eta; with a semi-colon" do
    output = "[[\"Character\",\"Η\"]]"
    input = "&Eta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Euml without a semi-colon" do
    output = "[[\"Character\",\"Ë\"]]"
    input = "&Euml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Euml; with a semi-colon" do
    output = "[[\"Character\",\"Ë\"]]"
    input = "&Euml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Exists without a semi-colon" do
    output = "[[\"Character\",\"&Exists\"]]"
    input = "&Exists"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Exists; with a semi-colon" do
    output = "[[\"Character\",\"∃\"]]"
    input = "&Exists;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ExponentialE without a semi-colon" do
    output = "[[\"Character\",\"&ExponentialE\"]]"
    input = "&ExponentialE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ExponentialE; with a semi-colon" do
    output = "[[\"Character\",\"ⅇ\"]]"
    input = "&ExponentialE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Fcy without a semi-colon" do
    output = "[[\"Character\",\"&Fcy\"]]"
    input = "&Fcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Fcy; with a semi-colon" do
    output = "[[\"Character\",\"Ф\"]]"
    input = "&Fcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ffr without a semi-colon" do
    output = "[[\"Character\",\"&Ffr\"]]"
    input = "&Ffr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ffr; with a semi-colon" do
    output = "[[\"Character\",\"𝔉\"]]"
    input = "&Ffr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: FilledSmallSquare without a semi-colon" do
    output = "[[\"Character\",\"&FilledSmallSquare\"]]"
    input = "&FilledSmallSquare"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: FilledSmallSquare; with a semi-colon" do
    output = "[[\"Character\",\"◼\"]]"
    input = "&FilledSmallSquare;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: FilledVerySmallSquare without a semi-colon" do
    output = "[[\"Character\",\"&FilledVerySmallSquare\"]]"
    input = "&FilledVerySmallSquare"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: FilledVerySmallSquare; with a semi-colon" do
    output = "[[\"Character\",\"▪\"]]"
    input = "&FilledVerySmallSquare;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Fopf without a semi-colon" do
    output = "[[\"Character\",\"&Fopf\"]]"
    input = "&Fopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Fopf; with a semi-colon" do
    output = "[[\"Character\",\"𝔽\"]]"
    input = "&Fopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ForAll without a semi-colon" do
    output = "[[\"Character\",\"&ForAll\"]]"
    input = "&ForAll"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ForAll; with a semi-colon" do
    output = "[[\"Character\",\"∀\"]]"
    input = "&ForAll;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Fouriertrf without a semi-colon" do
    output = "[[\"Character\",\"&Fouriertrf\"]]"
    input = "&Fouriertrf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Fouriertrf; with a semi-colon" do
    output = "[[\"Character\",\"ℱ\"]]"
    input = "&Fouriertrf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Fscr without a semi-colon" do
    output = "[[\"Character\",\"&Fscr\"]]"
    input = "&Fscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Fscr; with a semi-colon" do
    output = "[[\"Character\",\"ℱ\"]]"
    input = "&Fscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: GJcy without a semi-colon" do
    output = "[[\"Character\",\"&GJcy\"]]"
    input = "&GJcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GJcy; with a semi-colon" do
    output = "[[\"Character\",\"Ѓ\"]]"
    input = "&GJcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GT without a semi-colon" do
    output = "[[\"Character\",\">\"]]"
    input = "&GT"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GT; with a semi-colon" do
    output = "[[\"Character\",\">\"]]"
    input = "&GT;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gamma without a semi-colon" do
    output = "[[\"Character\",\"&Gamma\"]]"
    input = "&Gamma"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gamma; with a semi-colon" do
    output = "[[\"Character\",\"Γ\"]]"
    input = "&Gamma;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gammad without a semi-colon" do
    output = "[[\"Character\",\"&Gammad\"]]"
    input = "&Gammad"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gammad; with a semi-colon" do
    output = "[[\"Character\",\"Ϝ\"]]"
    input = "&Gammad;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gbreve without a semi-colon" do
    output = "[[\"Character\",\"&Gbreve\"]]"
    input = "&Gbreve"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gbreve; with a semi-colon" do
    output = "[[\"Character\",\"Ğ\"]]"
    input = "&Gbreve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gcedil without a semi-colon" do
    output = "[[\"Character\",\"&Gcedil\"]]"
    input = "&Gcedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gcedil; with a semi-colon" do
    output = "[[\"Character\",\"Ģ\"]]"
    input = "&Gcedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gcirc without a semi-colon" do
    output = "[[\"Character\",\"&Gcirc\"]]"
    input = "&Gcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gcirc; with a semi-colon" do
    output = "[[\"Character\",\"Ĝ\"]]"
    input = "&Gcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gcy without a semi-colon" do
    output = "[[\"Character\",\"&Gcy\"]]"
    input = "&Gcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gcy; with a semi-colon" do
    output = "[[\"Character\",\"Г\"]]"
    input = "&Gcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gdot without a semi-colon" do
    output = "[[\"Character\",\"&Gdot\"]]"
    input = "&Gdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gdot; with a semi-colon" do
    output = "[[\"Character\",\"Ġ\"]]"
    input = "&Gdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gfr without a semi-colon" do
    output = "[[\"Character\",\"&Gfr\"]]"
    input = "&Gfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔊\"]]"
    input = "&Gfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gg without a semi-colon" do
    output = "[[\"Character\",\"&Gg\"]]"
    input = "&Gg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gg; with a semi-colon" do
    output = "[[\"Character\",\"⋙\"]]"
    input = "&Gg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gopf without a semi-colon" do
    output = "[[\"Character\",\"&Gopf\"]]"
    input = "&Gopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gopf; with a semi-colon" do
    output = "[[\"Character\",\"𝔾\"]]"
    input = "&Gopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: GreaterEqual without a semi-colon" do
    output = "[[\"Character\",\"&GreaterEqual\"]]"
    input = "&GreaterEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GreaterEqual; with a semi-colon" do
    output = "[[\"Character\",\"≥\"]]"
    input = "&GreaterEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: GreaterEqualLess without a semi-colon" do
    output = "[[\"Character\",\"&GreaterEqualLess\"]]"
    input = "&GreaterEqualLess"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GreaterEqualLess; with a semi-colon" do
    output = "[[\"Character\",\"⋛\"]]"
    input = "&GreaterEqualLess;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: GreaterFullEqual without a semi-colon" do
    output = "[[\"Character\",\"&GreaterFullEqual\"]]"
    input = "&GreaterFullEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GreaterFullEqual; with a semi-colon" do
    output = "[[\"Character\",\"≧\"]]"
    input = "&GreaterFullEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: GreaterGreater without a semi-colon" do
    output = "[[\"Character\",\"&GreaterGreater\"]]"
    input = "&GreaterGreater"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GreaterGreater; with a semi-colon" do
    output = "[[\"Character\",\"⪢\"]]"
    input = "&GreaterGreater;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: GreaterLess without a semi-colon" do
    output = "[[\"Character\",\"&GreaterLess\"]]"
    input = "&GreaterLess"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GreaterLess; with a semi-colon" do
    output = "[[\"Character\",\"≷\"]]"
    input = "&GreaterLess;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: GreaterSlantEqual without a semi-colon" do
    output = "[[\"Character\",\"&GreaterSlantEqual\"]]"
    input = "&GreaterSlantEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GreaterSlantEqual; with a semi-colon" do
    output = "[[\"Character\",\"⩾\"]]"
    input = "&GreaterSlantEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: GreaterTilde without a semi-colon" do
    output = "[[\"Character\",\"&GreaterTilde\"]]"
    input = "&GreaterTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: GreaterTilde; with a semi-colon" do
    output = "[[\"Character\",\"≳\"]]"
    input = "&GreaterTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gscr without a semi-colon" do
    output = "[[\"Character\",\"&Gscr\"]]"
    input = "&Gscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒢\"]]"
    input = "&Gscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Gt without a semi-colon" do
    output = "[[\"Character\",\"&Gt\"]]"
    input = "&Gt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Gt; with a semi-colon" do
    output = "[[\"Character\",\"≫\"]]"
    input = "&Gt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: HARDcy without a semi-colon" do
    output = "[[\"Character\",\"&HARDcy\"]]"
    input = "&HARDcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: HARDcy; with a semi-colon" do
    output = "[[\"Character\",\"Ъ\"]]"
    input = "&HARDcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Hacek without a semi-colon" do
    output = "[[\"Character\",\"&Hacek\"]]"
    input = "&Hacek"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Hacek; with a semi-colon" do
    output = "[[\"Character\",\"ˇ\"]]"
    input = "&Hacek;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Hat without a semi-colon" do
    output = "[[\"Character\",\"&Hat\"]]"
    input = "&Hat"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Hat; with a semi-colon" do
    output = "[[\"Character\",\"^\"]]"
    input = "&Hat;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Hcirc without a semi-colon" do
    output = "[[\"Character\",\"&Hcirc\"]]"
    input = "&Hcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Hcirc; with a semi-colon" do
    output = "[[\"Character\",\"Ĥ\"]]"
    input = "&Hcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Hfr without a semi-colon" do
    output = "[[\"Character\",\"&Hfr\"]]"
    input = "&Hfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Hfr; with a semi-colon" do
    output = "[[\"Character\",\"ℌ\"]]"
    input = "&Hfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: HilbertSpace without a semi-colon" do
    output = "[[\"Character\",\"&HilbertSpace\"]]"
    input = "&HilbertSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: HilbertSpace; with a semi-colon" do
    output = "[[\"Character\",\"ℋ\"]]"
    input = "&HilbertSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Hopf without a semi-colon" do
    output = "[[\"Character\",\"&Hopf\"]]"
    input = "&Hopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Hopf; with a semi-colon" do
    output = "[[\"Character\",\"ℍ\"]]"
    input = "&Hopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: HorizontalLine without a semi-colon" do
    output = "[[\"Character\",\"&HorizontalLine\"]]"
    input = "&HorizontalLine"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: HorizontalLine; with a semi-colon" do
    output = "[[\"Character\",\"─\"]]"
    input = "&HorizontalLine;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Hscr without a semi-colon" do
    output = "[[\"Character\",\"&Hscr\"]]"
    input = "&Hscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Hscr; with a semi-colon" do
    output = "[[\"Character\",\"ℋ\"]]"
    input = "&Hscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Hstrok without a semi-colon" do
    output = "[[\"Character\",\"&Hstrok\"]]"
    input = "&Hstrok"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Hstrok; with a semi-colon" do
    output = "[[\"Character\",\"Ħ\"]]"
    input = "&Hstrok;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: HumpDownHump without a semi-colon" do
    output = "[[\"Character\",\"&HumpDownHump\"]]"
    input = "&HumpDownHump"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: HumpDownHump; with a semi-colon" do
    output = "[[\"Character\",\"≎\"]]"
    input = "&HumpDownHump;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: HumpEqual without a semi-colon" do
    output = "[[\"Character\",\"&HumpEqual\"]]"
    input = "&HumpEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: HumpEqual; with a semi-colon" do
    output = "[[\"Character\",\"≏\"]]"
    input = "&HumpEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: IEcy without a semi-colon" do
    output = "[[\"Character\",\"&IEcy\"]]"
    input = "&IEcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: IEcy; with a semi-colon" do
    output = "[[\"Character\",\"Е\"]]"
    input = "&IEcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: IJlig without a semi-colon" do
    output = "[[\"Character\",\"&IJlig\"]]"
    input = "&IJlig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: IJlig; with a semi-colon" do
    output = "[[\"Character\",\"Ĳ\"]]"
    input = "&IJlig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: IOcy without a semi-colon" do
    output = "[[\"Character\",\"&IOcy\"]]"
    input = "&IOcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: IOcy; with a semi-colon" do
    output = "[[\"Character\",\"Ё\"]]"
    input = "&IOcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Iacute without a semi-colon" do
    output = "[[\"Character\",\"Í\"]]"
    input = "&Iacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Iacute; with a semi-colon" do
    output = "[[\"Character\",\"Í\"]]"
    input = "&Iacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Icirc without a semi-colon" do
    output = "[[\"Character\",\"Î\"]]"
    input = "&Icirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Icirc; with a semi-colon" do
    output = "[[\"Character\",\"Î\"]]"
    input = "&Icirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Icy without a semi-colon" do
    output = "[[\"Character\",\"&Icy\"]]"
    input = "&Icy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Icy; with a semi-colon" do
    output = "[[\"Character\",\"И\"]]"
    input = "&Icy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Idot without a semi-colon" do
    output = "[[\"Character\",\"&Idot\"]]"
    input = "&Idot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Idot; with a semi-colon" do
    output = "[[\"Character\",\"İ\"]]"
    input = "&Idot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ifr without a semi-colon" do
    output = "[[\"Character\",\"&Ifr\"]]"
    input = "&Ifr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ifr; with a semi-colon" do
    output = "[[\"Character\",\"ℑ\"]]"
    input = "&Ifr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Igrave without a semi-colon" do
    output = "[[\"Character\",\"Ì\"]]"
    input = "&Igrave"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Igrave; with a semi-colon" do
    output = "[[\"Character\",\"Ì\"]]"
    input = "&Igrave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Im without a semi-colon" do
    output = "[[\"Character\",\"&Im\"]]"
    input = "&Im"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Im; with a semi-colon" do
    output = "[[\"Character\",\"ℑ\"]]"
    input = "&Im;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Imacr without a semi-colon" do
    output = "[[\"Character\",\"&Imacr\"]]"
    input = "&Imacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Imacr; with a semi-colon" do
    output = "[[\"Character\",\"Ī\"]]"
    input = "&Imacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ImaginaryI without a semi-colon" do
    output = "[[\"Character\",\"&ImaginaryI\"]]"
    input = "&ImaginaryI"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ImaginaryI; with a semi-colon" do
    output = "[[\"Character\",\"ⅈ\"]]"
    input = "&ImaginaryI;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Implies without a semi-colon" do
    output = "[[\"Character\",\"&Implies\"]]"
    input = "&Implies"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Implies; with a semi-colon" do
    output = "[[\"Character\",\"⇒\"]]"
    input = "&Implies;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Int without a semi-colon" do
    output = "[[\"Character\",\"&Int\"]]"
    input = "&Int"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Int; with a semi-colon" do
    output = "[[\"Character\",\"∬\"]]"
    input = "&Int;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Integral without a semi-colon" do
    output = "[[\"Character\",\"&Integral\"]]"
    input = "&Integral"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Integral; with a semi-colon" do
    output = "[[\"Character\",\"∫\"]]"
    input = "&Integral;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Intersection without a semi-colon" do
    output = "[[\"Character\",\"&Intersection\"]]"
    input = "&Intersection"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Intersection; with a semi-colon" do
    output = "[[\"Character\",\"⋂\"]]"
    input = "&Intersection;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: InvisibleComma without a semi-colon" do
    output = "[[\"Character\",\"&InvisibleComma\"]]"
    input = "&InvisibleComma"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: InvisibleComma; with a semi-colon" do
    output = "[[\"Character\",\"\u2063\"]]"
    input = "&InvisibleComma;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: InvisibleTimes without a semi-colon" do
    output = "[[\"Character\",\"&InvisibleTimes\"]]"
    input = "&InvisibleTimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: InvisibleTimes; with a semi-colon" do
    output = "[[\"Character\",\"\u2062\"]]"
    input = "&InvisibleTimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Iogon without a semi-colon" do
    output = "[[\"Character\",\"&Iogon\"]]"
    input = "&Iogon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Iogon; with a semi-colon" do
    output = "[[\"Character\",\"Į\"]]"
    input = "&Iogon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Iopf without a semi-colon" do
    output = "[[\"Character\",\"&Iopf\"]]"
    input = "&Iopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Iopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕀\"]]"
    input = "&Iopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Iota without a semi-colon" do
    output = "[[\"Character\",\"&Iota\"]]"
    input = "&Iota"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Iota; with a semi-colon" do
    output = "[[\"Character\",\"Ι\"]]"
    input = "&Iota;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Iscr without a semi-colon" do
    output = "[[\"Character\",\"&Iscr\"]]"
    input = "&Iscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Iscr; with a semi-colon" do
    output = "[[\"Character\",\"ℐ\"]]"
    input = "&Iscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Itilde without a semi-colon" do
    output = "[[\"Character\",\"&Itilde\"]]"
    input = "&Itilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Itilde; with a semi-colon" do
    output = "[[\"Character\",\"Ĩ\"]]"
    input = "&Itilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Iukcy without a semi-colon" do
    output = "[[\"Character\",\"&Iukcy\"]]"
    input = "&Iukcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Iukcy; with a semi-colon" do
    output = "[[\"Character\",\"І\"]]"
    input = "&Iukcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Iuml without a semi-colon" do
    output = "[[\"Character\",\"Ï\"]]"
    input = "&Iuml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Iuml; with a semi-colon" do
    output = "[[\"Character\",\"Ï\"]]"
    input = "&Iuml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Jcirc without a semi-colon" do
    output = "[[\"Character\",\"&Jcirc\"]]"
    input = "&Jcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Jcirc; with a semi-colon" do
    output = "[[\"Character\",\"Ĵ\"]]"
    input = "&Jcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Jcy without a semi-colon" do
    output = "[[\"Character\",\"&Jcy\"]]"
    input = "&Jcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Jcy; with a semi-colon" do
    output = "[[\"Character\",\"Й\"]]"
    input = "&Jcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Jfr without a semi-colon" do
    output = "[[\"Character\",\"&Jfr\"]]"
    input = "&Jfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Jfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔍\"]]"
    input = "&Jfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Jopf without a semi-colon" do
    output = "[[\"Character\",\"&Jopf\"]]"
    input = "&Jopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Jopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕁\"]]"
    input = "&Jopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Jscr without a semi-colon" do
    output = "[[\"Character\",\"&Jscr\"]]"
    input = "&Jscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Jscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒥\"]]"
    input = "&Jscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Jsercy without a semi-colon" do
    output = "[[\"Character\",\"&Jsercy\"]]"
    input = "&Jsercy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Jsercy; with a semi-colon" do
    output = "[[\"Character\",\"Ј\"]]"
    input = "&Jsercy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Jukcy without a semi-colon" do
    output = "[[\"Character\",\"&Jukcy\"]]"
    input = "&Jukcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Jukcy; with a semi-colon" do
    output = "[[\"Character\",\"Є\"]]"
    input = "&Jukcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: KHcy without a semi-colon" do
    output = "[[\"Character\",\"&KHcy\"]]"
    input = "&KHcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: KHcy; with a semi-colon" do
    output = "[[\"Character\",\"Х\"]]"
    input = "&KHcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: KJcy without a semi-colon" do
    output = "[[\"Character\",\"&KJcy\"]]"
    input = "&KJcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: KJcy; with a semi-colon" do
    output = "[[\"Character\",\"Ќ\"]]"
    input = "&KJcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Kappa without a semi-colon" do
    output = "[[\"Character\",\"&Kappa\"]]"
    input = "&Kappa"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Kappa; with a semi-colon" do
    output = "[[\"Character\",\"Κ\"]]"
    input = "&Kappa;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Kcedil without a semi-colon" do
    output = "[[\"Character\",\"&Kcedil\"]]"
    input = "&Kcedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Kcedil; with a semi-colon" do
    output = "[[\"Character\",\"Ķ\"]]"
    input = "&Kcedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Kcy without a semi-colon" do
    output = "[[\"Character\",\"&Kcy\"]]"
    input = "&Kcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Kcy; with a semi-colon" do
    output = "[[\"Character\",\"К\"]]"
    input = "&Kcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Kfr without a semi-colon" do
    output = "[[\"Character\",\"&Kfr\"]]"
    input = "&Kfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Kfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔎\"]]"
    input = "&Kfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Kopf without a semi-colon" do
    output = "[[\"Character\",\"&Kopf\"]]"
    input = "&Kopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Kopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕂\"]]"
    input = "&Kopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Kscr without a semi-colon" do
    output = "[[\"Character\",\"&Kscr\"]]"
    input = "&Kscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Kscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒦\"]]"
    input = "&Kscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LJcy without a semi-colon" do
    output = "[[\"Character\",\"&LJcy\"]]"
    input = "&LJcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LJcy; with a semi-colon" do
    output = "[[\"Character\",\"Љ\"]]"
    input = "&LJcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LT without a semi-colon" do
    output = "[[\"Character\",\"<\"]]"
    input = "&LT"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LT; with a semi-colon" do
    output = "[[\"Character\",\"<\"]]"
    input = "&LT;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lacute without a semi-colon" do
    output = "[[\"Character\",\"&Lacute\"]]"
    input = "&Lacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lacute; with a semi-colon" do
    output = "[[\"Character\",\"Ĺ\"]]"
    input = "&Lacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lambda without a semi-colon" do
    output = "[[\"Character\",\"&Lambda\"]]"
    input = "&Lambda"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lambda; with a semi-colon" do
    output = "[[\"Character\",\"Λ\"]]"
    input = "&Lambda;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lang without a semi-colon" do
    output = "[[\"Character\",\"&Lang\"]]"
    input = "&Lang"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lang; with a semi-colon" do
    output = "[[\"Character\",\"⟪\"]]"
    input = "&Lang;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Laplacetrf without a semi-colon" do
    output = "[[\"Character\",\"&Laplacetrf\"]]"
    input = "&Laplacetrf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Laplacetrf; with a semi-colon" do
    output = "[[\"Character\",\"ℒ\"]]"
    input = "&Laplacetrf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Larr without a semi-colon" do
    output = "[[\"Character\",\"&Larr\"]]"
    input = "&Larr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Larr; with a semi-colon" do
    output = "[[\"Character\",\"↞\"]]"
    input = "&Larr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lcaron without a semi-colon" do
    output = "[[\"Character\",\"&Lcaron\"]]"
    input = "&Lcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lcaron; with a semi-colon" do
    output = "[[\"Character\",\"Ľ\"]]"
    input = "&Lcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lcedil without a semi-colon" do
    output = "[[\"Character\",\"&Lcedil\"]]"
    input = "&Lcedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lcedil; with a semi-colon" do
    output = "[[\"Character\",\"Ļ\"]]"
    input = "&Lcedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lcy without a semi-colon" do
    output = "[[\"Character\",\"&Lcy\"]]"
    input = "&Lcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lcy; with a semi-colon" do
    output = "[[\"Character\",\"Л\"]]"
    input = "&Lcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftAngleBracket without a semi-colon" do
    output = "[[\"Character\",\"&LeftAngleBracket\"]]"
    input = "&LeftAngleBracket"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftAngleBracket; with a semi-colon" do
    output = "[[\"Character\",\"⟨\"]]"
    input = "&LeftAngleBracket;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftArrow without a semi-colon" do
    output = "[[\"Character\",\"&LeftArrow\"]]"
    input = "&LeftArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftArrow; with a semi-colon" do
    output = "[[\"Character\",\"←\"]]"
    input = "&LeftArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftArrowBar without a semi-colon" do
    output = "[[\"Character\",\"&LeftArrowBar\"]]"
    input = "&LeftArrowBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftArrowBar; with a semi-colon" do
    output = "[[\"Character\",\"⇤\"]]"
    input = "&LeftArrowBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftArrowRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&LeftArrowRightArrow\"]]"
    input = "&LeftArrowRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftArrowRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇆\"]]"
    input = "&LeftArrowRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftCeiling without a semi-colon" do
    output = "[[\"Character\",\"&LeftCeiling\"]]"
    input = "&LeftCeiling"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftCeiling; with a semi-colon" do
    output = "[[\"Character\",\"⌈\"]]"
    input = "&LeftCeiling;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftDoubleBracket without a semi-colon" do
    output = "[[\"Character\",\"&LeftDoubleBracket\"]]"
    input = "&LeftDoubleBracket"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftDoubleBracket; with a semi-colon" do
    output = "[[\"Character\",\"⟦\"]]"
    input = "&LeftDoubleBracket;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftDownTeeVector without a semi-colon" do
    output = "[[\"Character\",\"&LeftDownTeeVector\"]]"
    input = "&LeftDownTeeVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftDownTeeVector; with a semi-colon" do
    output = "[[\"Character\",\"⥡\"]]"
    input = "&LeftDownTeeVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftDownVector without a semi-colon" do
    output = "[[\"Character\",\"&LeftDownVector\"]]"
    input = "&LeftDownVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftDownVector; with a semi-colon" do
    output = "[[\"Character\",\"⇃\"]]"
    input = "&LeftDownVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftDownVectorBar without a semi-colon" do
    output = "[[\"Character\",\"&LeftDownVectorBar\"]]"
    input = "&LeftDownVectorBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftDownVectorBar; with a semi-colon" do
    output = "[[\"Character\",\"⥙\"]]"
    input = "&LeftDownVectorBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftFloor without a semi-colon" do
    output = "[[\"Character\",\"&LeftFloor\"]]"
    input = "&LeftFloor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftFloor; with a semi-colon" do
    output = "[[\"Character\",\"⌊\"]]"
    input = "&LeftFloor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&LeftRightArrow\"]]"
    input = "&LeftRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"↔\"]]"
    input = "&LeftRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftRightVector without a semi-colon" do
    output = "[[\"Character\",\"&LeftRightVector\"]]"
    input = "&LeftRightVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftRightVector; with a semi-colon" do
    output = "[[\"Character\",\"⥎\"]]"
    input = "&LeftRightVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftTee without a semi-colon" do
    output = "[[\"Character\",\"&LeftTee\"]]"
    input = "&LeftTee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftTee; with a semi-colon" do
    output = "[[\"Character\",\"⊣\"]]"
    input = "&LeftTee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftTeeArrow without a semi-colon" do
    output = "[[\"Character\",\"&LeftTeeArrow\"]]"
    input = "&LeftTeeArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftTeeArrow; with a semi-colon" do
    output = "[[\"Character\",\"↤\"]]"
    input = "&LeftTeeArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftTeeVector without a semi-colon" do
    output = "[[\"Character\",\"&LeftTeeVector\"]]"
    input = "&LeftTeeVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftTeeVector; with a semi-colon" do
    output = "[[\"Character\",\"⥚\"]]"
    input = "&LeftTeeVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftTriangle without a semi-colon" do
    output = "[[\"Character\",\"&LeftTriangle\"]]"
    input = "&LeftTriangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftTriangle; with a semi-colon" do
    output = "[[\"Character\",\"⊲\"]]"
    input = "&LeftTriangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftTriangleBar without a semi-colon" do
    output = "[[\"Character\",\"&LeftTriangleBar\"]]"
    input = "&LeftTriangleBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftTriangleBar; with a semi-colon" do
    output = "[[\"Character\",\"⧏\"]]"
    input = "&LeftTriangleBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftTriangleEqual without a semi-colon" do
    output = "[[\"Character\",\"&LeftTriangleEqual\"]]"
    input = "&LeftTriangleEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftTriangleEqual; with a semi-colon" do
    output = "[[\"Character\",\"⊴\"]]"
    input = "&LeftTriangleEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftUpDownVector without a semi-colon" do
    output = "[[\"Character\",\"&LeftUpDownVector\"]]"
    input = "&LeftUpDownVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftUpDownVector; with a semi-colon" do
    output = "[[\"Character\",\"⥑\"]]"
    input = "&LeftUpDownVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftUpTeeVector without a semi-colon" do
    output = "[[\"Character\",\"&LeftUpTeeVector\"]]"
    input = "&LeftUpTeeVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftUpTeeVector; with a semi-colon" do
    output = "[[\"Character\",\"⥠\"]]"
    input = "&LeftUpTeeVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftUpVector without a semi-colon" do
    output = "[[\"Character\",\"&LeftUpVector\"]]"
    input = "&LeftUpVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftUpVector; with a semi-colon" do
    output = "[[\"Character\",\"↿\"]]"
    input = "&LeftUpVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftUpVectorBar without a semi-colon" do
    output = "[[\"Character\",\"&LeftUpVectorBar\"]]"
    input = "&LeftUpVectorBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftUpVectorBar; with a semi-colon" do
    output = "[[\"Character\",\"⥘\"]]"
    input = "&LeftUpVectorBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftVector without a semi-colon" do
    output = "[[\"Character\",\"&LeftVector\"]]"
    input = "&LeftVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftVector; with a semi-colon" do
    output = "[[\"Character\",\"↼\"]]"
    input = "&LeftVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LeftVectorBar without a semi-colon" do
    output = "[[\"Character\",\"&LeftVectorBar\"]]"
    input = "&LeftVectorBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LeftVectorBar; with a semi-colon" do
    output = "[[\"Character\",\"⥒\"]]"
    input = "&LeftVectorBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Leftarrow without a semi-colon" do
    output = "[[\"Character\",\"&Leftarrow\"]]"
    input = "&Leftarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Leftarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇐\"]]"
    input = "&Leftarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Leftrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&Leftrightarrow\"]]"
    input = "&Leftrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Leftrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇔\"]]"
    input = "&Leftrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LessEqualGreater without a semi-colon" do
    output = "[[\"Character\",\"&LessEqualGreater\"]]"
    input = "&LessEqualGreater"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LessEqualGreater; with a semi-colon" do
    output = "[[\"Character\",\"⋚\"]]"
    input = "&LessEqualGreater;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LessFullEqual without a semi-colon" do
    output = "[[\"Character\",\"&LessFullEqual\"]]"
    input = "&LessFullEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LessFullEqual; with a semi-colon" do
    output = "[[\"Character\",\"≦\"]]"
    input = "&LessFullEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LessGreater without a semi-colon" do
    output = "[[\"Character\",\"&LessGreater\"]]"
    input = "&LessGreater"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LessGreater; with a semi-colon" do
    output = "[[\"Character\",\"≶\"]]"
    input = "&LessGreater;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LessLess without a semi-colon" do
    output = "[[\"Character\",\"&LessLess\"]]"
    input = "&LessLess"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LessLess; with a semi-colon" do
    output = "[[\"Character\",\"⪡\"]]"
    input = "&LessLess;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LessSlantEqual without a semi-colon" do
    output = "[[\"Character\",\"&LessSlantEqual\"]]"
    input = "&LessSlantEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LessSlantEqual; with a semi-colon" do
    output = "[[\"Character\",\"⩽\"]]"
    input = "&LessSlantEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LessTilde without a semi-colon" do
    output = "[[\"Character\",\"&LessTilde\"]]"
    input = "&LessTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LessTilde; with a semi-colon" do
    output = "[[\"Character\",\"≲\"]]"
    input = "&LessTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lfr without a semi-colon" do
    output = "[[\"Character\",\"&Lfr\"]]"
    input = "&Lfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔏\"]]"
    input = "&Lfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ll without a semi-colon" do
    output = "[[\"Character\",\"&Ll\"]]"
    input = "&Ll"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ll; with a semi-colon" do
    output = "[[\"Character\",\"⋘\"]]"
    input = "&Ll;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lleftarrow without a semi-colon" do
    output = "[[\"Character\",\"&Lleftarrow\"]]"
    input = "&Lleftarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lleftarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇚\"]]"
    input = "&Lleftarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lmidot without a semi-colon" do
    output = "[[\"Character\",\"&Lmidot\"]]"
    input = "&Lmidot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lmidot; with a semi-colon" do
    output = "[[\"Character\",\"Ŀ\"]]"
    input = "&Lmidot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LongLeftArrow without a semi-colon" do
    output = "[[\"Character\",\"&LongLeftArrow\"]]"
    input = "&LongLeftArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LongLeftArrow; with a semi-colon" do
    output = "[[\"Character\",\"⟵\"]]"
    input = "&LongLeftArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LongLeftRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&LongLeftRightArrow\"]]"
    input = "&LongLeftRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LongLeftRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"⟷\"]]"
    input = "&LongLeftRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LongRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&LongRightArrow\"]]"
    input = "&LongRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LongRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"⟶\"]]"
    input = "&LongRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Longleftarrow without a semi-colon" do
    output = "[[\"Character\",\"&Longleftarrow\"]]"
    input = "&Longleftarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Longleftarrow; with a semi-colon" do
    output = "[[\"Character\",\"⟸\"]]"
    input = "&Longleftarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Longleftrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&Longleftrightarrow\"]]"
    input = "&Longleftrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Longleftrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"⟺\"]]"
    input = "&Longleftrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Longrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&Longrightarrow\"]]"
    input = "&Longrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Longrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"⟹\"]]"
    input = "&Longrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lopf without a semi-colon" do
    output = "[[\"Character\",\"&Lopf\"]]"
    input = "&Lopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕃\"]]"
    input = "&Lopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LowerLeftArrow without a semi-colon" do
    output = "[[\"Character\",\"&LowerLeftArrow\"]]"
    input = "&LowerLeftArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LowerLeftArrow; with a semi-colon" do
    output = "[[\"Character\",\"↙\"]]"
    input = "&LowerLeftArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: LowerRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&LowerRightArrow\"]]"
    input = "&LowerRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: LowerRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"↘\"]]"
    input = "&LowerRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lscr without a semi-colon" do
    output = "[[\"Character\",\"&Lscr\"]]"
    input = "&Lscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lscr; with a semi-colon" do
    output = "[[\"Character\",\"ℒ\"]]"
    input = "&Lscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lsh without a semi-colon" do
    output = "[[\"Character\",\"&Lsh\"]]"
    input = "&Lsh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lsh; with a semi-colon" do
    output = "[[\"Character\",\"↰\"]]"
    input = "&Lsh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lstrok without a semi-colon" do
    output = "[[\"Character\",\"&Lstrok\"]]"
    input = "&Lstrok"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lstrok; with a semi-colon" do
    output = "[[\"Character\",\"Ł\"]]"
    input = "&Lstrok;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Lt without a semi-colon" do
    output = "[[\"Character\",\"&Lt\"]]"
    input = "&Lt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Lt; with a semi-colon" do
    output = "[[\"Character\",\"≪\"]]"
    input = "&Lt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Map without a semi-colon" do
    output = "[[\"Character\",\"&Map\"]]"
    input = "&Map"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Map; with a semi-colon" do
    output = "[[\"Character\",\"⤅\"]]"
    input = "&Map;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Mcy without a semi-colon" do
    output = "[[\"Character\",\"&Mcy\"]]"
    input = "&Mcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Mcy; with a semi-colon" do
    output = "[[\"Character\",\"М\"]]"
    input = "&Mcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: MediumSpace without a semi-colon" do
    output = "[[\"Character\",\"&MediumSpace\"]]"
    input = "&MediumSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: MediumSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u205F\"]]"
    input = "&MediumSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Mellintrf without a semi-colon" do
    output = "[[\"Character\",\"&Mellintrf\"]]"
    input = "&Mellintrf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Mellintrf; with a semi-colon" do
    output = "[[\"Character\",\"ℳ\"]]"
    input = "&Mellintrf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Mfr without a semi-colon" do
    output = "[[\"Character\",\"&Mfr\"]]"
    input = "&Mfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Mfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔐\"]]"
    input = "&Mfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: MinusPlus without a semi-colon" do
    output = "[[\"Character\",\"&MinusPlus\"]]"
    input = "&MinusPlus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: MinusPlus; with a semi-colon" do
    output = "[[\"Character\",\"∓\"]]"
    input = "&MinusPlus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Mopf without a semi-colon" do
    output = "[[\"Character\",\"&Mopf\"]]"
    input = "&Mopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Mopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕄\"]]"
    input = "&Mopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Mscr without a semi-colon" do
    output = "[[\"Character\",\"&Mscr\"]]"
    input = "&Mscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Mscr; with a semi-colon" do
    output = "[[\"Character\",\"ℳ\"]]"
    input = "&Mscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Mu without a semi-colon" do
    output = "[[\"Character\",\"&Mu\"]]"
    input = "&Mu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Mu; with a semi-colon" do
    output = "[[\"Character\",\"Μ\"]]"
    input = "&Mu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NJcy without a semi-colon" do
    output = "[[\"Character\",\"&NJcy\"]]"
    input = "&NJcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NJcy; with a semi-colon" do
    output = "[[\"Character\",\"Њ\"]]"
    input = "&NJcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Nacute without a semi-colon" do
    output = "[[\"Character\",\"&Nacute\"]]"
    input = "&Nacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Nacute; with a semi-colon" do
    output = "[[\"Character\",\"Ń\"]]"
    input = "&Nacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ncaron without a semi-colon" do
    output = "[[\"Character\",\"&Ncaron\"]]"
    input = "&Ncaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ncaron; with a semi-colon" do
    output = "[[\"Character\",\"Ň\"]]"
    input = "&Ncaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ncedil without a semi-colon" do
    output = "[[\"Character\",\"&Ncedil\"]]"
    input = "&Ncedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ncedil; with a semi-colon" do
    output = "[[\"Character\",\"Ņ\"]]"
    input = "&Ncedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ncy without a semi-colon" do
    output = "[[\"Character\",\"&Ncy\"]]"
    input = "&Ncy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ncy; with a semi-colon" do
    output = "[[\"Character\",\"Н\"]]"
    input = "&Ncy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NegativeMediumSpace without a semi-colon" do
    output = "[[\"Character\",\"&NegativeMediumSpace\"]]"
    input = "&NegativeMediumSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NegativeMediumSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u200B\"]]"
    input = "&NegativeMediumSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NegativeThickSpace without a semi-colon" do
    output = "[[\"Character\",\"&NegativeThickSpace\"]]"
    input = "&NegativeThickSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NegativeThickSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u200B\"]]"
    input = "&NegativeThickSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NegativeThinSpace without a semi-colon" do
    output = "[[\"Character\",\"&NegativeThinSpace\"]]"
    input = "&NegativeThinSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NegativeThinSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u200B\"]]"
    input = "&NegativeThinSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NegativeVeryThinSpace without a semi-colon" do
    output = "[[\"Character\",\"&NegativeVeryThinSpace\"]]"
    input = "&NegativeVeryThinSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NegativeVeryThinSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u200B\"]]"
    input = "&NegativeVeryThinSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NestedGreaterGreater without a semi-colon" do
    output = "[[\"Character\",\"&NestedGreaterGreater\"]]"
    input = "&NestedGreaterGreater"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NestedGreaterGreater; with a semi-colon" do
    output = "[[\"Character\",\"≫\"]]"
    input = "&NestedGreaterGreater;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NestedLessLess without a semi-colon" do
    output = "[[\"Character\",\"&NestedLessLess\"]]"
    input = "&NestedLessLess"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NestedLessLess; with a semi-colon" do
    output = "[[\"Character\",\"≪\"]]"
    input = "&NestedLessLess;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NewLine without a semi-colon" do
    output = "[[\"Character\",\"&NewLine\"]]"
    input = "&NewLine"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NewLine; with a semi-colon" do
    output = "[[\"Character\",\"\\n\"]]"
    input = "&NewLine;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Nfr without a semi-colon" do
    output = "[[\"Character\",\"&Nfr\"]]"
    input = "&Nfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Nfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔑\"]]"
    input = "&Nfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NoBreak without a semi-colon" do
    output = "[[\"Character\",\"&NoBreak\"]]"
    input = "&NoBreak"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NoBreak; with a semi-colon" do
    output = "[[\"Character\",\"\u2060\"]]"
    input = "&NoBreak;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NonBreakingSpace without a semi-colon" do
    output = "[[\"Character\",\"&NonBreakingSpace\"]]"
    input = "&NonBreakingSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NonBreakingSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u00A0\"]]"
    input = "&NonBreakingSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Nopf without a semi-colon" do
    output = "[[\"Character\",\"&Nopf\"]]"
    input = "&Nopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Nopf; with a semi-colon" do
    output = "[[\"Character\",\"ℕ\"]]"
    input = "&Nopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Not without a semi-colon" do
    output = "[[\"Character\",\"&Not\"]]"
    input = "&Not"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Not; with a semi-colon" do
    output = "[[\"Character\",\"⫬\"]]"
    input = "&Not;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotCongruent without a semi-colon" do
    output = "[[\"Character\",\"&NotCongruent\"]]"
    input = "&NotCongruent"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotCongruent; with a semi-colon" do
    output = "[[\"Character\",\"≢\"]]"
    input = "&NotCongruent;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotCupCap without a semi-colon" do
    output = "[[\"Character\",\"&NotCupCap\"]]"
    input = "&NotCupCap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotCupCap; with a semi-colon" do
    output = "[[\"Character\",\"≭\"]]"
    input = "&NotCupCap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotDoubleVerticalBar without a semi-colon" do
    output = "[[\"Character\",\"&NotDoubleVerticalBar\"]]"
    input = "&NotDoubleVerticalBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotDoubleVerticalBar; with a semi-colon" do
    output = "[[\"Character\",\"∦\"]]"
    input = "&NotDoubleVerticalBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotElement without a semi-colon" do
    output = "[[\"Character\",\"&NotElement\"]]"
    input = "&NotElement"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotElement; with a semi-colon" do
    output = "[[\"Character\",\"∉\"]]"
    input = "&NotElement;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotEqual\"]]"
    input = "&NotEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotEqual; with a semi-colon" do
    output = "[[\"Character\",\"≠\"]]"
    input = "&NotEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotEqualTilde without a semi-colon" do
    output = "[[\"Character\",\"&NotEqualTilde\"]]"
    input = "&NotEqualTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotEqualTilde; with a semi-colon" do
    output = "[[\"Character\",\"≂̸\"]]"
    input = "&NotEqualTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotExists without a semi-colon" do
    output = "[[\"Character\",\"&NotExists\"]]"
    input = "&NotExists"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotExists; with a semi-colon" do
    output = "[[\"Character\",\"∄\"]]"
    input = "&NotExists;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotGreater without a semi-colon" do
    output = "[[\"Character\",\"&NotGreater\"]]"
    input = "&NotGreater"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotGreater; with a semi-colon" do
    output = "[[\"Character\",\"≯\"]]"
    input = "&NotGreater;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotGreaterEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotGreaterEqual\"]]"
    input = "&NotGreaterEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotGreaterEqual; with a semi-colon" do
    output = "[[\"Character\",\"≱\"]]"
    input = "&NotGreaterEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotGreaterFullEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotGreaterFullEqual\"]]"
    input = "&NotGreaterFullEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotGreaterFullEqual; with a semi-colon" do
    output = "[[\"Character\",\"≧̸\"]]"
    input = "&NotGreaterFullEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotGreaterGreater without a semi-colon" do
    output = "[[\"Character\",\"&NotGreaterGreater\"]]"
    input = "&NotGreaterGreater"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotGreaterGreater; with a semi-colon" do
    output = "[[\"Character\",\"≫̸\"]]"
    input = "&NotGreaterGreater;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotGreaterLess without a semi-colon" do
    output = "[[\"Character\",\"&NotGreaterLess\"]]"
    input = "&NotGreaterLess"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotGreaterLess; with a semi-colon" do
    output = "[[\"Character\",\"≹\"]]"
    input = "&NotGreaterLess;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotGreaterSlantEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotGreaterSlantEqual\"]]"
    input = "&NotGreaterSlantEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotGreaterSlantEqual; with a semi-colon" do
    output = "[[\"Character\",\"⩾̸\"]]"
    input = "&NotGreaterSlantEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotGreaterTilde without a semi-colon" do
    output = "[[\"Character\",\"&NotGreaterTilde\"]]"
    input = "&NotGreaterTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotGreaterTilde; with a semi-colon" do
    output = "[[\"Character\",\"≵\"]]"
    input = "&NotGreaterTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotHumpDownHump without a semi-colon" do
    output = "[[\"Character\",\"&NotHumpDownHump\"]]"
    input = "&NotHumpDownHump"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotHumpDownHump; with a semi-colon" do
    output = "[[\"Character\",\"≎̸\"]]"
    input = "&NotHumpDownHump;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotHumpEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotHumpEqual\"]]"
    input = "&NotHumpEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotHumpEqual; with a semi-colon" do
    output = "[[\"Character\",\"≏̸\"]]"
    input = "&NotHumpEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotLeftTriangle without a semi-colon" do
    output = "[[\"Character\",\"&NotLeftTriangle\"]]"
    input = "&NotLeftTriangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotLeftTriangle; with a semi-colon" do
    output = "[[\"Character\",\"⋪\"]]"
    input = "&NotLeftTriangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotLeftTriangleBar without a semi-colon" do
    output = "[[\"Character\",\"&NotLeftTriangleBar\"]]"
    input = "&NotLeftTriangleBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotLeftTriangleBar; with a semi-colon" do
    output = "[[\"Character\",\"⧏̸\"]]"
    input = "&NotLeftTriangleBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotLeftTriangleEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotLeftTriangleEqual\"]]"
    input = "&NotLeftTriangleEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotLeftTriangleEqual; with a semi-colon" do
    output = "[[\"Character\",\"⋬\"]]"
    input = "&NotLeftTriangleEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotLess without a semi-colon" do
    output = "[[\"Character\",\"&NotLess\"]]"
    input = "&NotLess"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotLess; with a semi-colon" do
    output = "[[\"Character\",\"≮\"]]"
    input = "&NotLess;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotLessEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotLessEqual\"]]"
    input = "&NotLessEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotLessEqual; with a semi-colon" do
    output = "[[\"Character\",\"≰\"]]"
    input = "&NotLessEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotLessGreater without a semi-colon" do
    output = "[[\"Character\",\"&NotLessGreater\"]]"
    input = "&NotLessGreater"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotLessGreater; with a semi-colon" do
    output = "[[\"Character\",\"≸\"]]"
    input = "&NotLessGreater;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotLessLess without a semi-colon" do
    output = "[[\"Character\",\"&NotLessLess\"]]"
    input = "&NotLessLess"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotLessLess; with a semi-colon" do
    output = "[[\"Character\",\"≪̸\"]]"
    input = "&NotLessLess;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotLessSlantEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotLessSlantEqual\"]]"
    input = "&NotLessSlantEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotLessSlantEqual; with a semi-colon" do
    output = "[[\"Character\",\"⩽̸\"]]"
    input = "&NotLessSlantEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotLessTilde without a semi-colon" do
    output = "[[\"Character\",\"&NotLessTilde\"]]"
    input = "&NotLessTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotLessTilde; with a semi-colon" do
    output = "[[\"Character\",\"≴\"]]"
    input = "&NotLessTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotNestedGreaterGreater without a semi-colon" do
    output = "[[\"Character\",\"&NotNestedGreaterGreater\"]]"
    input = "&NotNestedGreaterGreater"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotNestedGreaterGreater; with a semi-colon" do
    output = "[[\"Character\",\"⪢̸\"]]"
    input = "&NotNestedGreaterGreater;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotNestedLessLess without a semi-colon" do
    output = "[[\"Character\",\"&NotNestedLessLess\"]]"
    input = "&NotNestedLessLess"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotNestedLessLess; with a semi-colon" do
    output = "[[\"Character\",\"⪡̸\"]]"
    input = "&NotNestedLessLess;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotPrecedes without a semi-colon" do
    output = "[[\"Character\",\"&NotPrecedes\"]]"
    input = "&NotPrecedes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotPrecedes; with a semi-colon" do
    output = "[[\"Character\",\"⊀\"]]"
    input = "&NotPrecedes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotPrecedesEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotPrecedesEqual\"]]"
    input = "&NotPrecedesEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotPrecedesEqual; with a semi-colon" do
    output = "[[\"Character\",\"⪯̸\"]]"
    input = "&NotPrecedesEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotPrecedesSlantEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotPrecedesSlantEqual\"]]"
    input = "&NotPrecedesSlantEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotPrecedesSlantEqual; with a semi-colon" do
    output = "[[\"Character\",\"⋠\"]]"
    input = "&NotPrecedesSlantEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotReverseElement without a semi-colon" do
    output = "[[\"Character\",\"&NotReverseElement\"]]"
    input = "&NotReverseElement"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotReverseElement; with a semi-colon" do
    output = "[[\"Character\",\"∌\"]]"
    input = "&NotReverseElement;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotRightTriangle without a semi-colon" do
    output = "[[\"Character\",\"&NotRightTriangle\"]]"
    input = "&NotRightTriangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotRightTriangle; with a semi-colon" do
    output = "[[\"Character\",\"⋫\"]]"
    input = "&NotRightTriangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotRightTriangleBar without a semi-colon" do
    output = "[[\"Character\",\"&NotRightTriangleBar\"]]"
    input = "&NotRightTriangleBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotRightTriangleBar; with a semi-colon" do
    output = "[[\"Character\",\"⧐̸\"]]"
    input = "&NotRightTriangleBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotRightTriangleEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotRightTriangleEqual\"]]"
    input = "&NotRightTriangleEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotRightTriangleEqual; with a semi-colon" do
    output = "[[\"Character\",\"⋭\"]]"
    input = "&NotRightTriangleEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSquareSubset without a semi-colon" do
    output = "[[\"Character\",\"&NotSquareSubset\"]]"
    input = "&NotSquareSubset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSquareSubset; with a semi-colon" do
    output = "[[\"Character\",\"⊏̸\"]]"
    input = "&NotSquareSubset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSquareSubsetEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotSquareSubsetEqual\"]]"
    input = "&NotSquareSubsetEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSquareSubsetEqual; with a semi-colon" do
    output = "[[\"Character\",\"⋢\"]]"
    input = "&NotSquareSubsetEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSquareSuperset without a semi-colon" do
    output = "[[\"Character\",\"&NotSquareSuperset\"]]"
    input = "&NotSquareSuperset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSquareSuperset; with a semi-colon" do
    output = "[[\"Character\",\"⊐̸\"]]"
    input = "&NotSquareSuperset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSquareSupersetEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotSquareSupersetEqual\"]]"
    input = "&NotSquareSupersetEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSquareSupersetEqual; with a semi-colon" do
    output = "[[\"Character\",\"⋣\"]]"
    input = "&NotSquareSupersetEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSubset without a semi-colon" do
    output = "[[\"Character\",\"&NotSubset\"]]"
    input = "&NotSubset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSubset; with a semi-colon" do
    output = "[[\"Character\",\"⊂⃒\"]]"
    input = "&NotSubset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSubsetEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotSubsetEqual\"]]"
    input = "&NotSubsetEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSubsetEqual; with a semi-colon" do
    output = "[[\"Character\",\"⊈\"]]"
    input = "&NotSubsetEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSucceeds without a semi-colon" do
    output = "[[\"Character\",\"&NotSucceeds\"]]"
    input = "&NotSucceeds"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSucceeds; with a semi-colon" do
    output = "[[\"Character\",\"⊁\"]]"
    input = "&NotSucceeds;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSucceedsEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotSucceedsEqual\"]]"
    input = "&NotSucceedsEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSucceedsEqual; with a semi-colon" do
    output = "[[\"Character\",\"⪰̸\"]]"
    input = "&NotSucceedsEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSucceedsSlantEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotSucceedsSlantEqual\"]]"
    input = "&NotSucceedsSlantEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSucceedsSlantEqual; with a semi-colon" do
    output = "[[\"Character\",\"⋡\"]]"
    input = "&NotSucceedsSlantEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSucceedsTilde without a semi-colon" do
    output = "[[\"Character\",\"&NotSucceedsTilde\"]]"
    input = "&NotSucceedsTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSucceedsTilde; with a semi-colon" do
    output = "[[\"Character\",\"≿̸\"]]"
    input = "&NotSucceedsTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSuperset without a semi-colon" do
    output = "[[\"Character\",\"&NotSuperset\"]]"
    input = "&NotSuperset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSuperset; with a semi-colon" do
    output = "[[\"Character\",\"⊃⃒\"]]"
    input = "&NotSuperset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotSupersetEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotSupersetEqual\"]]"
    input = "&NotSupersetEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotSupersetEqual; with a semi-colon" do
    output = "[[\"Character\",\"⊉\"]]"
    input = "&NotSupersetEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotTilde without a semi-colon" do
    output = "[[\"Character\",\"&NotTilde\"]]"
    input = "&NotTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotTilde; with a semi-colon" do
    output = "[[\"Character\",\"≁\"]]"
    input = "&NotTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotTildeEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotTildeEqual\"]]"
    input = "&NotTildeEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotTildeEqual; with a semi-colon" do
    output = "[[\"Character\",\"≄\"]]"
    input = "&NotTildeEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotTildeFullEqual without a semi-colon" do
    output = "[[\"Character\",\"&NotTildeFullEqual\"]]"
    input = "&NotTildeFullEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotTildeFullEqual; with a semi-colon" do
    output = "[[\"Character\",\"≇\"]]"
    input = "&NotTildeFullEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotTildeTilde without a semi-colon" do
    output = "[[\"Character\",\"&NotTildeTilde\"]]"
    input = "&NotTildeTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotTildeTilde; with a semi-colon" do
    output = "[[\"Character\",\"≉\"]]"
    input = "&NotTildeTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: NotVerticalBar without a semi-colon" do
    output = "[[\"Character\",\"&NotVerticalBar\"]]"
    input = "&NotVerticalBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: NotVerticalBar; with a semi-colon" do
    output = "[[\"Character\",\"∤\"]]"
    input = "&NotVerticalBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Nscr without a semi-colon" do
    output = "[[\"Character\",\"&Nscr\"]]"
    input = "&Nscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Nscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒩\"]]"
    input = "&Nscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ntilde without a semi-colon" do
    output = "[[\"Character\",\"Ñ\"]]"
    input = "&Ntilde"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ntilde; with a semi-colon" do
    output = "[[\"Character\",\"Ñ\"]]"
    input = "&Ntilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Nu without a semi-colon" do
    output = "[[\"Character\",\"&Nu\"]]"
    input = "&Nu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Nu; with a semi-colon" do
    output = "[[\"Character\",\"Ν\"]]"
    input = "&Nu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: OElig without a semi-colon" do
    output = "[[\"Character\",\"&OElig\"]]"
    input = "&OElig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: OElig; with a semi-colon" do
    output = "[[\"Character\",\"Œ\"]]"
    input = "&OElig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Oacute without a semi-colon" do
    output = "[[\"Character\",\"Ó\"]]"
    input = "&Oacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Oacute; with a semi-colon" do
    output = "[[\"Character\",\"Ó\"]]"
    input = "&Oacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ocirc without a semi-colon" do
    output = "[[\"Character\",\"Ô\"]]"
    input = "&Ocirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ocirc; with a semi-colon" do
    output = "[[\"Character\",\"Ô\"]]"
    input = "&Ocirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ocy without a semi-colon" do
    output = "[[\"Character\",\"&Ocy\"]]"
    input = "&Ocy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ocy; with a semi-colon" do
    output = "[[\"Character\",\"О\"]]"
    input = "&Ocy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Odblac without a semi-colon" do
    output = "[[\"Character\",\"&Odblac\"]]"
    input = "&Odblac"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Odblac; with a semi-colon" do
    output = "[[\"Character\",\"Ő\"]]"
    input = "&Odblac;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ofr without a semi-colon" do
    output = "[[\"Character\",\"&Ofr\"]]"
    input = "&Ofr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ofr; with a semi-colon" do
    output = "[[\"Character\",\"𝔒\"]]"
    input = "&Ofr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ograve without a semi-colon" do
    output = "[[\"Character\",\"Ò\"]]"
    input = "&Ograve"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ograve; with a semi-colon" do
    output = "[[\"Character\",\"Ò\"]]"
    input = "&Ograve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Omacr without a semi-colon" do
    output = "[[\"Character\",\"&Omacr\"]]"
    input = "&Omacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Omacr; with a semi-colon" do
    output = "[[\"Character\",\"Ō\"]]"
    input = "&Omacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Omega without a semi-colon" do
    output = "[[\"Character\",\"&Omega\"]]"
    input = "&Omega"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Omega; with a semi-colon" do
    output = "[[\"Character\",\"Ω\"]]"
    input = "&Omega;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Omicron without a semi-colon" do
    output = "[[\"Character\",\"&Omicron\"]]"
    input = "&Omicron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Omicron; with a semi-colon" do
    output = "[[\"Character\",\"Ο\"]]"
    input = "&Omicron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Oopf without a semi-colon" do
    output = "[[\"Character\",\"&Oopf\"]]"
    input = "&Oopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Oopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕆\"]]"
    input = "&Oopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: OpenCurlyDoubleQuote without a semi-colon" do
    output = "[[\"Character\",\"&OpenCurlyDoubleQuote\"]]"
    input = "&OpenCurlyDoubleQuote"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: OpenCurlyDoubleQuote; with a semi-colon" do
    output = "[[\"Character\",\"“\"]]"
    input = "&OpenCurlyDoubleQuote;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: OpenCurlyQuote without a semi-colon" do
    output = "[[\"Character\",\"&OpenCurlyQuote\"]]"
    input = "&OpenCurlyQuote"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: OpenCurlyQuote; with a semi-colon" do
    output = "[[\"Character\",\"‘\"]]"
    input = "&OpenCurlyQuote;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Or without a semi-colon" do
    output = "[[\"Character\",\"&Or\"]]"
    input = "&Or"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Or; with a semi-colon" do
    output = "[[\"Character\",\"⩔\"]]"
    input = "&Or;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Oscr without a semi-colon" do
    output = "[[\"Character\",\"&Oscr\"]]"
    input = "&Oscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Oscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒪\"]]"
    input = "&Oscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Oslash without a semi-colon" do
    output = "[[\"Character\",\"Ø\"]]"
    input = "&Oslash"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Oslash; with a semi-colon" do
    output = "[[\"Character\",\"Ø\"]]"
    input = "&Oslash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Otilde without a semi-colon" do
    output = "[[\"Character\",\"Õ\"]]"
    input = "&Otilde"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Otilde; with a semi-colon" do
    output = "[[\"Character\",\"Õ\"]]"
    input = "&Otilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Otimes without a semi-colon" do
    output = "[[\"Character\",\"&Otimes\"]]"
    input = "&Otimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Otimes; with a semi-colon" do
    output = "[[\"Character\",\"⨷\"]]"
    input = "&Otimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ouml without a semi-colon" do
    output = "[[\"Character\",\"Ö\"]]"
    input = "&Ouml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ouml; with a semi-colon" do
    output = "[[\"Character\",\"Ö\"]]"
    input = "&Ouml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: OverBar without a semi-colon" do
    output = "[[\"Character\",\"&OverBar\"]]"
    input = "&OverBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: OverBar; with a semi-colon" do
    output = "[[\"Character\",\"‾\"]]"
    input = "&OverBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: OverBrace without a semi-colon" do
    output = "[[\"Character\",\"&OverBrace\"]]"
    input = "&OverBrace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: OverBrace; with a semi-colon" do
    output = "[[\"Character\",\"⏞\"]]"
    input = "&OverBrace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: OverBracket without a semi-colon" do
    output = "[[\"Character\",\"&OverBracket\"]]"
    input = "&OverBracket"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: OverBracket; with a semi-colon" do
    output = "[[\"Character\",\"⎴\"]]"
    input = "&OverBracket;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: OverParenthesis without a semi-colon" do
    output = "[[\"Character\",\"&OverParenthesis\"]]"
    input = "&OverParenthesis"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: OverParenthesis; with a semi-colon" do
    output = "[[\"Character\",\"⏜\"]]"
    input = "&OverParenthesis;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: PartialD without a semi-colon" do
    output = "[[\"Character\",\"&PartialD\"]]"
    input = "&PartialD"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: PartialD; with a semi-colon" do
    output = "[[\"Character\",\"∂\"]]"
    input = "&PartialD;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Pcy without a semi-colon" do
    output = "[[\"Character\",\"&Pcy\"]]"
    input = "&Pcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Pcy; with a semi-colon" do
    output = "[[\"Character\",\"П\"]]"
    input = "&Pcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Pfr without a semi-colon" do
    output = "[[\"Character\",\"&Pfr\"]]"
    input = "&Pfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Pfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔓\"]]"
    input = "&Pfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Phi without a semi-colon" do
    output = "[[\"Character\",\"&Phi\"]]"
    input = "&Phi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Phi; with a semi-colon" do
    output = "[[\"Character\",\"Φ\"]]"
    input = "&Phi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Pi without a semi-colon" do
    output = "[[\"Character\",\"&Pi\"]]"
    input = "&Pi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Pi; with a semi-colon" do
    output = "[[\"Character\",\"Π\"]]"
    input = "&Pi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: PlusMinus without a semi-colon" do
    output = "[[\"Character\",\"&PlusMinus\"]]"
    input = "&PlusMinus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: PlusMinus; with a semi-colon" do
    output = "[[\"Character\",\"±\"]]"
    input = "&PlusMinus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Poincareplane without a semi-colon" do
    output = "[[\"Character\",\"&Poincareplane\"]]"
    input = "&Poincareplane"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Poincareplane; with a semi-colon" do
    output = "[[\"Character\",\"ℌ\"]]"
    input = "&Poincareplane;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Popf without a semi-colon" do
    output = "[[\"Character\",\"&Popf\"]]"
    input = "&Popf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Popf; with a semi-colon" do
    output = "[[\"Character\",\"ℙ\"]]"
    input = "&Popf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Pr without a semi-colon" do
    output = "[[\"Character\",\"&Pr\"]]"
    input = "&Pr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Pr; with a semi-colon" do
    output = "[[\"Character\",\"⪻\"]]"
    input = "&Pr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Precedes without a semi-colon" do
    output = "[[\"Character\",\"&Precedes\"]]"
    input = "&Precedes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Precedes; with a semi-colon" do
    output = "[[\"Character\",\"≺\"]]"
    input = "&Precedes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: PrecedesEqual without a semi-colon" do
    output = "[[\"Character\",\"&PrecedesEqual\"]]"
    input = "&PrecedesEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: PrecedesEqual; with a semi-colon" do
    output = "[[\"Character\",\"⪯\"]]"
    input = "&PrecedesEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: PrecedesSlantEqual without a semi-colon" do
    output = "[[\"Character\",\"&PrecedesSlantEqual\"]]"
    input = "&PrecedesSlantEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: PrecedesSlantEqual; with a semi-colon" do
    output = "[[\"Character\",\"≼\"]]"
    input = "&PrecedesSlantEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: PrecedesTilde without a semi-colon" do
    output = "[[\"Character\",\"&PrecedesTilde\"]]"
    input = "&PrecedesTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: PrecedesTilde; with a semi-colon" do
    output = "[[\"Character\",\"≾\"]]"
    input = "&PrecedesTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Prime without a semi-colon" do
    output = "[[\"Character\",\"&Prime\"]]"
    input = "&Prime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Prime; with a semi-colon" do
    output = "[[\"Character\",\"″\"]]"
    input = "&Prime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Product without a semi-colon" do
    output = "[[\"Character\",\"&Product\"]]"
    input = "&Product"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Product; with a semi-colon" do
    output = "[[\"Character\",\"∏\"]]"
    input = "&Product;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Proportion without a semi-colon" do
    output = "[[\"Character\",\"&Proportion\"]]"
    input = "&Proportion"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Proportion; with a semi-colon" do
    output = "[[\"Character\",\"∷\"]]"
    input = "&Proportion;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Proportional without a semi-colon" do
    output = "[[\"Character\",\"&Proportional\"]]"
    input = "&Proportional"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Proportional; with a semi-colon" do
    output = "[[\"Character\",\"∝\"]]"
    input = "&Proportional;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Pscr without a semi-colon" do
    output = "[[\"Character\",\"&Pscr\"]]"
    input = "&Pscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Pscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒫\"]]"
    input = "&Pscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Psi without a semi-colon" do
    output = "[[\"Character\",\"&Psi\"]]"
    input = "&Psi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Psi; with a semi-colon" do
    output = "[[\"Character\",\"Ψ\"]]"
    input = "&Psi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: QUOT without a semi-colon" do
    output = "[[\"Character\",\"\\\"\"]]"
    input = "&QUOT"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: QUOT; with a semi-colon" do
    output = "[[\"Character\",\"\\\"\"]]"
    input = "&QUOT;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Qfr without a semi-colon" do
    output = "[[\"Character\",\"&Qfr\"]]"
    input = "&Qfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Qfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔔\"]]"
    input = "&Qfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Qopf without a semi-colon" do
    output = "[[\"Character\",\"&Qopf\"]]"
    input = "&Qopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Qopf; with a semi-colon" do
    output = "[[\"Character\",\"ℚ\"]]"
    input = "&Qopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Qscr without a semi-colon" do
    output = "[[\"Character\",\"&Qscr\"]]"
    input = "&Qscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Qscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒬\"]]"
    input = "&Qscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RBarr without a semi-colon" do
    output = "[[\"Character\",\"&RBarr\"]]"
    input = "&RBarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RBarr; with a semi-colon" do
    output = "[[\"Character\",\"⤐\"]]"
    input = "&RBarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: REG without a semi-colon" do
    output = "[[\"Character\",\"®\"]]"
    input = "&REG"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: REG; with a semi-colon" do
    output = "[[\"Character\",\"®\"]]"
    input = "&REG;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Racute without a semi-colon" do
    output = "[[\"Character\",\"&Racute\"]]"
    input = "&Racute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Racute; with a semi-colon" do
    output = "[[\"Character\",\"Ŕ\"]]"
    input = "&Racute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rang without a semi-colon" do
    output = "[[\"Character\",\"&Rang\"]]"
    input = "&Rang"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rang; with a semi-colon" do
    output = "[[\"Character\",\"⟫\"]]"
    input = "&Rang;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rarr without a semi-colon" do
    output = "[[\"Character\",\"&Rarr\"]]"
    input = "&Rarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rarr; with a semi-colon" do
    output = "[[\"Character\",\"↠\"]]"
    input = "&Rarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rarrtl without a semi-colon" do
    output = "[[\"Character\",\"&Rarrtl\"]]"
    input = "&Rarrtl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rarrtl; with a semi-colon" do
    output = "[[\"Character\",\"⤖\"]]"
    input = "&Rarrtl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rcaron without a semi-colon" do
    output = "[[\"Character\",\"&Rcaron\"]]"
    input = "&Rcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rcaron; with a semi-colon" do
    output = "[[\"Character\",\"Ř\"]]"
    input = "&Rcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rcedil without a semi-colon" do
    output = "[[\"Character\",\"&Rcedil\"]]"
    input = "&Rcedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rcedil; with a semi-colon" do
    output = "[[\"Character\",\"Ŗ\"]]"
    input = "&Rcedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rcy without a semi-colon" do
    output = "[[\"Character\",\"&Rcy\"]]"
    input = "&Rcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rcy; with a semi-colon" do
    output = "[[\"Character\",\"Р\"]]"
    input = "&Rcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Re without a semi-colon" do
    output = "[[\"Character\",\"&Re\"]]"
    input = "&Re"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Re; with a semi-colon" do
    output = "[[\"Character\",\"ℜ\"]]"
    input = "&Re;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ReverseElement without a semi-colon" do
    output = "[[\"Character\",\"&ReverseElement\"]]"
    input = "&ReverseElement"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ReverseElement; with a semi-colon" do
    output = "[[\"Character\",\"∋\"]]"
    input = "&ReverseElement;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ReverseEquilibrium without a semi-colon" do
    output = "[[\"Character\",\"&ReverseEquilibrium\"]]"
    input = "&ReverseEquilibrium"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ReverseEquilibrium; with a semi-colon" do
    output = "[[\"Character\",\"⇋\"]]"
    input = "&ReverseEquilibrium;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ReverseUpEquilibrium without a semi-colon" do
    output = "[[\"Character\",\"&ReverseUpEquilibrium\"]]"
    input = "&ReverseUpEquilibrium"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ReverseUpEquilibrium; with a semi-colon" do
    output = "[[\"Character\",\"⥯\"]]"
    input = "&ReverseUpEquilibrium;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rfr without a semi-colon" do
    output = "[[\"Character\",\"&Rfr\"]]"
    input = "&Rfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rfr; with a semi-colon" do
    output = "[[\"Character\",\"ℜ\"]]"
    input = "&Rfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rho without a semi-colon" do
    output = "[[\"Character\",\"&Rho\"]]"
    input = "&Rho"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rho; with a semi-colon" do
    output = "[[\"Character\",\"Ρ\"]]"
    input = "&Rho;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightAngleBracket without a semi-colon" do
    output = "[[\"Character\",\"&RightAngleBracket\"]]"
    input = "&RightAngleBracket"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightAngleBracket; with a semi-colon" do
    output = "[[\"Character\",\"⟩\"]]"
    input = "&RightAngleBracket;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightArrow without a semi-colon" do
    output = "[[\"Character\",\"&RightArrow\"]]"
    input = "&RightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightArrow; with a semi-colon" do
    output = "[[\"Character\",\"→\"]]"
    input = "&RightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightArrowBar without a semi-colon" do
    output = "[[\"Character\",\"&RightArrowBar\"]]"
    input = "&RightArrowBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightArrowBar; with a semi-colon" do
    output = "[[\"Character\",\"⇥\"]]"
    input = "&RightArrowBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightArrowLeftArrow without a semi-colon" do
    output = "[[\"Character\",\"&RightArrowLeftArrow\"]]"
    input = "&RightArrowLeftArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightArrowLeftArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇄\"]]"
    input = "&RightArrowLeftArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightCeiling without a semi-colon" do
    output = "[[\"Character\",\"&RightCeiling\"]]"
    input = "&RightCeiling"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightCeiling; with a semi-colon" do
    output = "[[\"Character\",\"⌉\"]]"
    input = "&RightCeiling;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightDoubleBracket without a semi-colon" do
    output = "[[\"Character\",\"&RightDoubleBracket\"]]"
    input = "&RightDoubleBracket"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightDoubleBracket; with a semi-colon" do
    output = "[[\"Character\",\"⟧\"]]"
    input = "&RightDoubleBracket;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightDownTeeVector without a semi-colon" do
    output = "[[\"Character\",\"&RightDownTeeVector\"]]"
    input = "&RightDownTeeVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightDownTeeVector; with a semi-colon" do
    output = "[[\"Character\",\"⥝\"]]"
    input = "&RightDownTeeVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightDownVector without a semi-colon" do
    output = "[[\"Character\",\"&RightDownVector\"]]"
    input = "&RightDownVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightDownVector; with a semi-colon" do
    output = "[[\"Character\",\"⇂\"]]"
    input = "&RightDownVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightDownVectorBar without a semi-colon" do
    output = "[[\"Character\",\"&RightDownVectorBar\"]]"
    input = "&RightDownVectorBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightDownVectorBar; with a semi-colon" do
    output = "[[\"Character\",\"⥕\"]]"
    input = "&RightDownVectorBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightFloor without a semi-colon" do
    output = "[[\"Character\",\"&RightFloor\"]]"
    input = "&RightFloor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightFloor; with a semi-colon" do
    output = "[[\"Character\",\"⌋\"]]"
    input = "&RightFloor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightTee without a semi-colon" do
    output = "[[\"Character\",\"&RightTee\"]]"
    input = "&RightTee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightTee; with a semi-colon" do
    output = "[[\"Character\",\"⊢\"]]"
    input = "&RightTee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightTeeArrow without a semi-colon" do
    output = "[[\"Character\",\"&RightTeeArrow\"]]"
    input = "&RightTeeArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightTeeArrow; with a semi-colon" do
    output = "[[\"Character\",\"↦\"]]"
    input = "&RightTeeArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightTeeVector without a semi-colon" do
    output = "[[\"Character\",\"&RightTeeVector\"]]"
    input = "&RightTeeVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightTeeVector; with a semi-colon" do
    output = "[[\"Character\",\"⥛\"]]"
    input = "&RightTeeVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightTriangle without a semi-colon" do
    output = "[[\"Character\",\"&RightTriangle\"]]"
    input = "&RightTriangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightTriangle; with a semi-colon" do
    output = "[[\"Character\",\"⊳\"]]"
    input = "&RightTriangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightTriangleBar without a semi-colon" do
    output = "[[\"Character\",\"&RightTriangleBar\"]]"
    input = "&RightTriangleBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightTriangleBar; with a semi-colon" do
    output = "[[\"Character\",\"⧐\"]]"
    input = "&RightTriangleBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightTriangleEqual without a semi-colon" do
    output = "[[\"Character\",\"&RightTriangleEqual\"]]"
    input = "&RightTriangleEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightTriangleEqual; with a semi-colon" do
    output = "[[\"Character\",\"⊵\"]]"
    input = "&RightTriangleEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightUpDownVector without a semi-colon" do
    output = "[[\"Character\",\"&RightUpDownVector\"]]"
    input = "&RightUpDownVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightUpDownVector; with a semi-colon" do
    output = "[[\"Character\",\"⥏\"]]"
    input = "&RightUpDownVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightUpTeeVector without a semi-colon" do
    output = "[[\"Character\",\"&RightUpTeeVector\"]]"
    input = "&RightUpTeeVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightUpTeeVector; with a semi-colon" do
    output = "[[\"Character\",\"⥜\"]]"
    input = "&RightUpTeeVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightUpVector without a semi-colon" do
    output = "[[\"Character\",\"&RightUpVector\"]]"
    input = "&RightUpVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightUpVector; with a semi-colon" do
    output = "[[\"Character\",\"↾\"]]"
    input = "&RightUpVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightUpVectorBar without a semi-colon" do
    output = "[[\"Character\",\"&RightUpVectorBar\"]]"
    input = "&RightUpVectorBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightUpVectorBar; with a semi-colon" do
    output = "[[\"Character\",\"⥔\"]]"
    input = "&RightUpVectorBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightVector without a semi-colon" do
    output = "[[\"Character\",\"&RightVector\"]]"
    input = "&RightVector"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightVector; with a semi-colon" do
    output = "[[\"Character\",\"⇀\"]]"
    input = "&RightVector;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RightVectorBar without a semi-colon" do
    output = "[[\"Character\",\"&RightVectorBar\"]]"
    input = "&RightVectorBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RightVectorBar; with a semi-colon" do
    output = "[[\"Character\",\"⥓\"]]"
    input = "&RightVectorBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rightarrow without a semi-colon" do
    output = "[[\"Character\",\"&Rightarrow\"]]"
    input = "&Rightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rightarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇒\"]]"
    input = "&Rightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ropf without a semi-colon" do
    output = "[[\"Character\",\"&Ropf\"]]"
    input = "&Ropf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ropf; with a semi-colon" do
    output = "[[\"Character\",\"ℝ\"]]"
    input = "&Ropf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RoundImplies without a semi-colon" do
    output = "[[\"Character\",\"&RoundImplies\"]]"
    input = "&RoundImplies"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RoundImplies; with a semi-colon" do
    output = "[[\"Character\",\"⥰\"]]"
    input = "&RoundImplies;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&Rrightarrow\"]]"
    input = "&Rrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇛\"]]"
    input = "&Rrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rscr without a semi-colon" do
    output = "[[\"Character\",\"&Rscr\"]]"
    input = "&Rscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rscr; with a semi-colon" do
    output = "[[\"Character\",\"ℛ\"]]"
    input = "&Rscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Rsh without a semi-colon" do
    output = "[[\"Character\",\"&Rsh\"]]"
    input = "&Rsh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Rsh; with a semi-colon" do
    output = "[[\"Character\",\"↱\"]]"
    input = "&Rsh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: RuleDelayed without a semi-colon" do
    output = "[[\"Character\",\"&RuleDelayed\"]]"
    input = "&RuleDelayed"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: RuleDelayed; with a semi-colon" do
    output = "[[\"Character\",\"⧴\"]]"
    input = "&RuleDelayed;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SHCHcy without a semi-colon" do
    output = "[[\"Character\",\"&SHCHcy\"]]"
    input = "&SHCHcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SHCHcy; with a semi-colon" do
    output = "[[\"Character\",\"Щ\"]]"
    input = "&SHCHcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SHcy without a semi-colon" do
    output = "[[\"Character\",\"&SHcy\"]]"
    input = "&SHcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SHcy; with a semi-colon" do
    output = "[[\"Character\",\"Ш\"]]"
    input = "&SHcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SOFTcy without a semi-colon" do
    output = "[[\"Character\",\"&SOFTcy\"]]"
    input = "&SOFTcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SOFTcy; with a semi-colon" do
    output = "[[\"Character\",\"Ь\"]]"
    input = "&SOFTcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sacute without a semi-colon" do
    output = "[[\"Character\",\"&Sacute\"]]"
    input = "&Sacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sacute; with a semi-colon" do
    output = "[[\"Character\",\"Ś\"]]"
    input = "&Sacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sc without a semi-colon" do
    output = "[[\"Character\",\"&Sc\"]]"
    input = "&Sc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sc; with a semi-colon" do
    output = "[[\"Character\",\"⪼\"]]"
    input = "&Sc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Scaron without a semi-colon" do
    output = "[[\"Character\",\"&Scaron\"]]"
    input = "&Scaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Scaron; with a semi-colon" do
    output = "[[\"Character\",\"Š\"]]"
    input = "&Scaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Scedil without a semi-colon" do
    output = "[[\"Character\",\"&Scedil\"]]"
    input = "&Scedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Scedil; with a semi-colon" do
    output = "[[\"Character\",\"Ş\"]]"
    input = "&Scedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Scirc without a semi-colon" do
    output = "[[\"Character\",\"&Scirc\"]]"
    input = "&Scirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Scirc; with a semi-colon" do
    output = "[[\"Character\",\"Ŝ\"]]"
    input = "&Scirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Scy without a semi-colon" do
    output = "[[\"Character\",\"&Scy\"]]"
    input = "&Scy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Scy; with a semi-colon" do
    output = "[[\"Character\",\"С\"]]"
    input = "&Scy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sfr without a semi-colon" do
    output = "[[\"Character\",\"&Sfr\"]]"
    input = "&Sfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔖\"]]"
    input = "&Sfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ShortDownArrow without a semi-colon" do
    output = "[[\"Character\",\"&ShortDownArrow\"]]"
    input = "&ShortDownArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ShortDownArrow; with a semi-colon" do
    output = "[[\"Character\",\"↓\"]]"
    input = "&ShortDownArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ShortLeftArrow without a semi-colon" do
    output = "[[\"Character\",\"&ShortLeftArrow\"]]"
    input = "&ShortLeftArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ShortLeftArrow; with a semi-colon" do
    output = "[[\"Character\",\"←\"]]"
    input = "&ShortLeftArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ShortRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&ShortRightArrow\"]]"
    input = "&ShortRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ShortRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"→\"]]"
    input = "&ShortRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ShortUpArrow without a semi-colon" do
    output = "[[\"Character\",\"&ShortUpArrow\"]]"
    input = "&ShortUpArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ShortUpArrow; with a semi-colon" do
    output = "[[\"Character\",\"↑\"]]"
    input = "&ShortUpArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sigma without a semi-colon" do
    output = "[[\"Character\",\"&Sigma\"]]"
    input = "&Sigma"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sigma; with a semi-colon" do
    output = "[[\"Character\",\"Σ\"]]"
    input = "&Sigma;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SmallCircle without a semi-colon" do
    output = "[[\"Character\",\"&SmallCircle\"]]"
    input = "&SmallCircle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SmallCircle; with a semi-colon" do
    output = "[[\"Character\",\"∘\"]]"
    input = "&SmallCircle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sopf without a semi-colon" do
    output = "[[\"Character\",\"&Sopf\"]]"
    input = "&Sopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕊\"]]"
    input = "&Sopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sqrt without a semi-colon" do
    output = "[[\"Character\",\"&Sqrt\"]]"
    input = "&Sqrt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sqrt; with a semi-colon" do
    output = "[[\"Character\",\"√\"]]"
    input = "&Sqrt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Square without a semi-colon" do
    output = "[[\"Character\",\"&Square\"]]"
    input = "&Square"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Square; with a semi-colon" do
    output = "[[\"Character\",\"□\"]]"
    input = "&Square;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SquareIntersection without a semi-colon" do
    output = "[[\"Character\",\"&SquareIntersection\"]]"
    input = "&SquareIntersection"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SquareIntersection; with a semi-colon" do
    output = "[[\"Character\",\"⊓\"]]"
    input = "&SquareIntersection;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SquareSubset without a semi-colon" do
    output = "[[\"Character\",\"&SquareSubset\"]]"
    input = "&SquareSubset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SquareSubset; with a semi-colon" do
    output = "[[\"Character\",\"⊏\"]]"
    input = "&SquareSubset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SquareSubsetEqual without a semi-colon" do
    output = "[[\"Character\",\"&SquareSubsetEqual\"]]"
    input = "&SquareSubsetEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SquareSubsetEqual; with a semi-colon" do
    output = "[[\"Character\",\"⊑\"]]"
    input = "&SquareSubsetEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SquareSuperset without a semi-colon" do
    output = "[[\"Character\",\"&SquareSuperset\"]]"
    input = "&SquareSuperset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SquareSuperset; with a semi-colon" do
    output = "[[\"Character\",\"⊐\"]]"
    input = "&SquareSuperset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SquareSupersetEqual without a semi-colon" do
    output = "[[\"Character\",\"&SquareSupersetEqual\"]]"
    input = "&SquareSupersetEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SquareSupersetEqual; with a semi-colon" do
    output = "[[\"Character\",\"⊒\"]]"
    input = "&SquareSupersetEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SquareUnion without a semi-colon" do
    output = "[[\"Character\",\"&SquareUnion\"]]"
    input = "&SquareUnion"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SquareUnion; with a semi-colon" do
    output = "[[\"Character\",\"⊔\"]]"
    input = "&SquareUnion;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sscr without a semi-colon" do
    output = "[[\"Character\",\"&Sscr\"]]"
    input = "&Sscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒮\"]]"
    input = "&Sscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Star without a semi-colon" do
    output = "[[\"Character\",\"&Star\"]]"
    input = "&Star"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Star; with a semi-colon" do
    output = "[[\"Character\",\"⋆\"]]"
    input = "&Star;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sub without a semi-colon" do
    output = "[[\"Character\",\"&Sub\"]]"
    input = "&Sub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sub; with a semi-colon" do
    output = "[[\"Character\",\"⋐\"]]"
    input = "&Sub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Subset without a semi-colon" do
    output = "[[\"Character\",\"&Subset\"]]"
    input = "&Subset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Subset; with a semi-colon" do
    output = "[[\"Character\",\"⋐\"]]"
    input = "&Subset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SubsetEqual without a semi-colon" do
    output = "[[\"Character\",\"&SubsetEqual\"]]"
    input = "&SubsetEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SubsetEqual; with a semi-colon" do
    output = "[[\"Character\",\"⊆\"]]"
    input = "&SubsetEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Succeeds without a semi-colon" do
    output = "[[\"Character\",\"&Succeeds\"]]"
    input = "&Succeeds"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Succeeds; with a semi-colon" do
    output = "[[\"Character\",\"≻\"]]"
    input = "&Succeeds;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SucceedsEqual without a semi-colon" do
    output = "[[\"Character\",\"&SucceedsEqual\"]]"
    input = "&SucceedsEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SucceedsEqual; with a semi-colon" do
    output = "[[\"Character\",\"⪰\"]]"
    input = "&SucceedsEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SucceedsSlantEqual without a semi-colon" do
    output = "[[\"Character\",\"&SucceedsSlantEqual\"]]"
    input = "&SucceedsSlantEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SucceedsSlantEqual; with a semi-colon" do
    output = "[[\"Character\",\"≽\"]]"
    input = "&SucceedsSlantEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SucceedsTilde without a semi-colon" do
    output = "[[\"Character\",\"&SucceedsTilde\"]]"
    input = "&SucceedsTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SucceedsTilde; with a semi-colon" do
    output = "[[\"Character\",\"≿\"]]"
    input = "&SucceedsTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SuchThat without a semi-colon" do
    output = "[[\"Character\",\"&SuchThat\"]]"
    input = "&SuchThat"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SuchThat; with a semi-colon" do
    output = "[[\"Character\",\"∋\"]]"
    input = "&SuchThat;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sum without a semi-colon" do
    output = "[[\"Character\",\"&Sum\"]]"
    input = "&Sum"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sum; with a semi-colon" do
    output = "[[\"Character\",\"∑\"]]"
    input = "&Sum;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Sup without a semi-colon" do
    output = "[[\"Character\",\"&Sup\"]]"
    input = "&Sup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Sup; with a semi-colon" do
    output = "[[\"Character\",\"⋑\"]]"
    input = "&Sup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Superset without a semi-colon" do
    output = "[[\"Character\",\"&Superset\"]]"
    input = "&Superset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Superset; with a semi-colon" do
    output = "[[\"Character\",\"⊃\"]]"
    input = "&Superset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: SupersetEqual without a semi-colon" do
    output = "[[\"Character\",\"&SupersetEqual\"]]"
    input = "&SupersetEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: SupersetEqual; with a semi-colon" do
    output = "[[\"Character\",\"⊇\"]]"
    input = "&SupersetEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Supset without a semi-colon" do
    output = "[[\"Character\",\"&Supset\"]]"
    input = "&Supset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Supset; with a semi-colon" do
    output = "[[\"Character\",\"⋑\"]]"
    input = "&Supset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: THORN without a semi-colon" do
    output = "[[\"Character\",\"Þ\"]]"
    input = "&THORN"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: THORN; with a semi-colon" do
    output = "[[\"Character\",\"Þ\"]]"
    input = "&THORN;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: TRADE without a semi-colon" do
    output = "[[\"Character\",\"&TRADE\"]]"
    input = "&TRADE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: TRADE; with a semi-colon" do
    output = "[[\"Character\",\"™\"]]"
    input = "&TRADE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: TSHcy without a semi-colon" do
    output = "[[\"Character\",\"&TSHcy\"]]"
    input = "&TSHcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: TSHcy; with a semi-colon" do
    output = "[[\"Character\",\"Ћ\"]]"
    input = "&TSHcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: TScy without a semi-colon" do
    output = "[[\"Character\",\"&TScy\"]]"
    input = "&TScy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: TScy; with a semi-colon" do
    output = "[[\"Character\",\"Ц\"]]"
    input = "&TScy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Tab without a semi-colon" do
    output = "[[\"Character\",\"&Tab\"]]"
    input = "&Tab"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Tab; with a semi-colon" do
    output = "[[\"Character\",\"\\t\"]]"
    input = "&Tab;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Tau without a semi-colon" do
    output = "[[\"Character\",\"&Tau\"]]"
    input = "&Tau"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Tau; with a semi-colon" do
    output = "[[\"Character\",\"Τ\"]]"
    input = "&Tau;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Tcaron without a semi-colon" do
    output = "[[\"Character\",\"&Tcaron\"]]"
    input = "&Tcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Tcaron; with a semi-colon" do
    output = "[[\"Character\",\"Ť\"]]"
    input = "&Tcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Tcedil without a semi-colon" do
    output = "[[\"Character\",\"&Tcedil\"]]"
    input = "&Tcedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Tcedil; with a semi-colon" do
    output = "[[\"Character\",\"Ţ\"]]"
    input = "&Tcedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Tcy without a semi-colon" do
    output = "[[\"Character\",\"&Tcy\"]]"
    input = "&Tcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Tcy; with a semi-colon" do
    output = "[[\"Character\",\"Т\"]]"
    input = "&Tcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Tfr without a semi-colon" do
    output = "[[\"Character\",\"&Tfr\"]]"
    input = "&Tfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Tfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔗\"]]"
    input = "&Tfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Therefore without a semi-colon" do
    output = "[[\"Character\",\"&Therefore\"]]"
    input = "&Therefore"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Therefore; with a semi-colon" do
    output = "[[\"Character\",\"∴\"]]"
    input = "&Therefore;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Theta without a semi-colon" do
    output = "[[\"Character\",\"&Theta\"]]"
    input = "&Theta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Theta; with a semi-colon" do
    output = "[[\"Character\",\"Θ\"]]"
    input = "&Theta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ThickSpace without a semi-colon" do
    output = "[[\"Character\",\"&ThickSpace\"]]"
    input = "&ThickSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ThickSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u205F\u200A\"]]"
    input = "&ThickSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ThinSpace without a semi-colon" do
    output = "[[\"Character\",\"&ThinSpace\"]]"
    input = "&ThinSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ThinSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u2009\"]]"
    input = "&ThinSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Tilde without a semi-colon" do
    output = "[[\"Character\",\"&Tilde\"]]"
    input = "&Tilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Tilde; with a semi-colon" do
    output = "[[\"Character\",\"∼\"]]"
    input = "&Tilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: TildeEqual without a semi-colon" do
    output = "[[\"Character\",\"&TildeEqual\"]]"
    input = "&TildeEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: TildeEqual; with a semi-colon" do
    output = "[[\"Character\",\"≃\"]]"
    input = "&TildeEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: TildeFullEqual without a semi-colon" do
    output = "[[\"Character\",\"&TildeFullEqual\"]]"
    input = "&TildeFullEqual"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: TildeFullEqual; with a semi-colon" do
    output = "[[\"Character\",\"≅\"]]"
    input = "&TildeFullEqual;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: TildeTilde without a semi-colon" do
    output = "[[\"Character\",\"&TildeTilde\"]]"
    input = "&TildeTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: TildeTilde; with a semi-colon" do
    output = "[[\"Character\",\"≈\"]]"
    input = "&TildeTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Topf without a semi-colon" do
    output = "[[\"Character\",\"&Topf\"]]"
    input = "&Topf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Topf; with a semi-colon" do
    output = "[[\"Character\",\"𝕋\"]]"
    input = "&Topf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: TripleDot without a semi-colon" do
    output = "[[\"Character\",\"&TripleDot\"]]"
    input = "&TripleDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: TripleDot; with a semi-colon" do
    output = "[[\"Character\",\"⃛\"]]"
    input = "&TripleDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Tscr without a semi-colon" do
    output = "[[\"Character\",\"&Tscr\"]]"
    input = "&Tscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Tscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒯\"]]"
    input = "&Tscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Tstrok without a semi-colon" do
    output = "[[\"Character\",\"&Tstrok\"]]"
    input = "&Tstrok"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Tstrok; with a semi-colon" do
    output = "[[\"Character\",\"Ŧ\"]]"
    input = "&Tstrok;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uacute without a semi-colon" do
    output = "[[\"Character\",\"Ú\"]]"
    input = "&Uacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uacute; with a semi-colon" do
    output = "[[\"Character\",\"Ú\"]]"
    input = "&Uacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Uarr without a semi-colon" do
    output = "[[\"Character\",\"&Uarr\"]]"
    input = "&Uarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uarr; with a semi-colon" do
    output = "[[\"Character\",\"↟\"]]"
    input = "&Uarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Uarrocir without a semi-colon" do
    output = "[[\"Character\",\"&Uarrocir\"]]"
    input = "&Uarrocir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uarrocir; with a semi-colon" do
    output = "[[\"Character\",\"⥉\"]]"
    input = "&Uarrocir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ubrcy without a semi-colon" do
    output = "[[\"Character\",\"&Ubrcy\"]]"
    input = "&Ubrcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ubrcy; with a semi-colon" do
    output = "[[\"Character\",\"Ў\"]]"
    input = "&Ubrcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ubreve without a semi-colon" do
    output = "[[\"Character\",\"&Ubreve\"]]"
    input = "&Ubreve"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ubreve; with a semi-colon" do
    output = "[[\"Character\",\"Ŭ\"]]"
    input = "&Ubreve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ucirc without a semi-colon" do
    output = "[[\"Character\",\"Û\"]]"
    input = "&Ucirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ucirc; with a semi-colon" do
    output = "[[\"Character\",\"Û\"]]"
    input = "&Ucirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ucy without a semi-colon" do
    output = "[[\"Character\",\"&Ucy\"]]"
    input = "&Ucy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ucy; with a semi-colon" do
    output = "[[\"Character\",\"У\"]]"
    input = "&Ucy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Udblac without a semi-colon" do
    output = "[[\"Character\",\"&Udblac\"]]"
    input = "&Udblac"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Udblac; with a semi-colon" do
    output = "[[\"Character\",\"Ű\"]]"
    input = "&Udblac;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ufr without a semi-colon" do
    output = "[[\"Character\",\"&Ufr\"]]"
    input = "&Ufr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ufr; with a semi-colon" do
    output = "[[\"Character\",\"𝔘\"]]"
    input = "&Ufr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ugrave without a semi-colon" do
    output = "[[\"Character\",\"Ù\"]]"
    input = "&Ugrave"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ugrave; with a semi-colon" do
    output = "[[\"Character\",\"Ù\"]]"
    input = "&Ugrave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Umacr without a semi-colon" do
    output = "[[\"Character\",\"&Umacr\"]]"
    input = "&Umacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Umacr; with a semi-colon" do
    output = "[[\"Character\",\"Ū\"]]"
    input = "&Umacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UnderBar without a semi-colon" do
    output = "[[\"Character\",\"&UnderBar\"]]"
    input = "&UnderBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UnderBar; with a semi-colon" do
    output = "[[\"Character\",\"_\"]]"
    input = "&UnderBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UnderBrace without a semi-colon" do
    output = "[[\"Character\",\"&UnderBrace\"]]"
    input = "&UnderBrace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UnderBrace; with a semi-colon" do
    output = "[[\"Character\",\"⏟\"]]"
    input = "&UnderBrace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UnderBracket without a semi-colon" do
    output = "[[\"Character\",\"&UnderBracket\"]]"
    input = "&UnderBracket"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UnderBracket; with a semi-colon" do
    output = "[[\"Character\",\"⎵\"]]"
    input = "&UnderBracket;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UnderParenthesis without a semi-colon" do
    output = "[[\"Character\",\"&UnderParenthesis\"]]"
    input = "&UnderParenthesis"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UnderParenthesis; with a semi-colon" do
    output = "[[\"Character\",\"⏝\"]]"
    input = "&UnderParenthesis;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Union without a semi-colon" do
    output = "[[\"Character\",\"&Union\"]]"
    input = "&Union"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Union; with a semi-colon" do
    output = "[[\"Character\",\"⋃\"]]"
    input = "&Union;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UnionPlus without a semi-colon" do
    output = "[[\"Character\",\"&UnionPlus\"]]"
    input = "&UnionPlus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UnionPlus; with a semi-colon" do
    output = "[[\"Character\",\"⊎\"]]"
    input = "&UnionPlus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Uogon without a semi-colon" do
    output = "[[\"Character\",\"&Uogon\"]]"
    input = "&Uogon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uogon; with a semi-colon" do
    output = "[[\"Character\",\"Ų\"]]"
    input = "&Uogon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Uopf without a semi-colon" do
    output = "[[\"Character\",\"&Uopf\"]]"
    input = "&Uopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕌\"]]"
    input = "&Uopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UpArrow without a semi-colon" do
    output = "[[\"Character\",\"&UpArrow\"]]"
    input = "&UpArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UpArrow; with a semi-colon" do
    output = "[[\"Character\",\"↑\"]]"
    input = "&UpArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UpArrowBar without a semi-colon" do
    output = "[[\"Character\",\"&UpArrowBar\"]]"
    input = "&UpArrowBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UpArrowBar; with a semi-colon" do
    output = "[[\"Character\",\"⤒\"]]"
    input = "&UpArrowBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UpArrowDownArrow without a semi-colon" do
    output = "[[\"Character\",\"&UpArrowDownArrow\"]]"
    input = "&UpArrowDownArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UpArrowDownArrow; with a semi-colon" do
    output = "[[\"Character\",\"⇅\"]]"
    input = "&UpArrowDownArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UpDownArrow without a semi-colon" do
    output = "[[\"Character\",\"&UpDownArrow\"]]"
    input = "&UpDownArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UpDownArrow; with a semi-colon" do
    output = "[[\"Character\",\"↕\"]]"
    input = "&UpDownArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UpEquilibrium without a semi-colon" do
    output = "[[\"Character\",\"&UpEquilibrium\"]]"
    input = "&UpEquilibrium"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UpEquilibrium; with a semi-colon" do
    output = "[[\"Character\",\"⥮\"]]"
    input = "&UpEquilibrium;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UpTee without a semi-colon" do
    output = "[[\"Character\",\"&UpTee\"]]"
    input = "&UpTee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UpTee; with a semi-colon" do
    output = "[[\"Character\",\"⊥\"]]"
    input = "&UpTee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UpTeeArrow without a semi-colon" do
    output = "[[\"Character\",\"&UpTeeArrow\"]]"
    input = "&UpTeeArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UpTeeArrow; with a semi-colon" do
    output = "[[\"Character\",\"↥\"]]"
    input = "&UpTeeArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Uparrow without a semi-colon" do
    output = "[[\"Character\",\"&Uparrow\"]]"
    input = "&Uparrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uparrow; with a semi-colon" do
    output = "[[\"Character\",\"⇑\"]]"
    input = "&Uparrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Updownarrow without a semi-colon" do
    output = "[[\"Character\",\"&Updownarrow\"]]"
    input = "&Updownarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Updownarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇕\"]]"
    input = "&Updownarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UpperLeftArrow without a semi-colon" do
    output = "[[\"Character\",\"&UpperLeftArrow\"]]"
    input = "&UpperLeftArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UpperLeftArrow; with a semi-colon" do
    output = "[[\"Character\",\"↖\"]]"
    input = "&UpperLeftArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: UpperRightArrow without a semi-colon" do
    output = "[[\"Character\",\"&UpperRightArrow\"]]"
    input = "&UpperRightArrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: UpperRightArrow; with a semi-colon" do
    output = "[[\"Character\",\"↗\"]]"
    input = "&UpperRightArrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Upsi without a semi-colon" do
    output = "[[\"Character\",\"&Upsi\"]]"
    input = "&Upsi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Upsi; with a semi-colon" do
    output = "[[\"Character\",\"ϒ\"]]"
    input = "&Upsi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Upsilon without a semi-colon" do
    output = "[[\"Character\",\"&Upsilon\"]]"
    input = "&Upsilon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Upsilon; with a semi-colon" do
    output = "[[\"Character\",\"Υ\"]]"
    input = "&Upsilon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Uring without a semi-colon" do
    output = "[[\"Character\",\"&Uring\"]]"
    input = "&Uring"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uring; with a semi-colon" do
    output = "[[\"Character\",\"Ů\"]]"
    input = "&Uring;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Uscr without a semi-colon" do
    output = "[[\"Character\",\"&Uscr\"]]"
    input = "&Uscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒰\"]]"
    input = "&Uscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Utilde without a semi-colon" do
    output = "[[\"Character\",\"&Utilde\"]]"
    input = "&Utilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Utilde; with a semi-colon" do
    output = "[[\"Character\",\"Ũ\"]]"
    input = "&Utilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uuml without a semi-colon" do
    output = "[[\"Character\",\"Ü\"]]"
    input = "&Uuml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Uuml; with a semi-colon" do
    output = "[[\"Character\",\"Ü\"]]"
    input = "&Uuml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: VDash without a semi-colon" do
    output = "[[\"Character\",\"&VDash\"]]"
    input = "&VDash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: VDash; with a semi-colon" do
    output = "[[\"Character\",\"⊫\"]]"
    input = "&VDash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vbar without a semi-colon" do
    output = "[[\"Character\",\"&Vbar\"]]"
    input = "&Vbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vbar; with a semi-colon" do
    output = "[[\"Character\",\"⫫\"]]"
    input = "&Vbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vcy without a semi-colon" do
    output = "[[\"Character\",\"&Vcy\"]]"
    input = "&Vcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vcy; with a semi-colon" do
    output = "[[\"Character\",\"В\"]]"
    input = "&Vcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vdash without a semi-colon" do
    output = "[[\"Character\",\"&Vdash\"]]"
    input = "&Vdash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vdash; with a semi-colon" do
    output = "[[\"Character\",\"⊩\"]]"
    input = "&Vdash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vdashl without a semi-colon" do
    output = "[[\"Character\",\"&Vdashl\"]]"
    input = "&Vdashl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vdashl; with a semi-colon" do
    output = "[[\"Character\",\"⫦\"]]"
    input = "&Vdashl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vee without a semi-colon" do
    output = "[[\"Character\",\"&Vee\"]]"
    input = "&Vee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vee; with a semi-colon" do
    output = "[[\"Character\",\"⋁\"]]"
    input = "&Vee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Verbar without a semi-colon" do
    output = "[[\"Character\",\"&Verbar\"]]"
    input = "&Verbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Verbar; with a semi-colon" do
    output = "[[\"Character\",\"‖\"]]"
    input = "&Verbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vert without a semi-colon" do
    output = "[[\"Character\",\"&Vert\"]]"
    input = "&Vert"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vert; with a semi-colon" do
    output = "[[\"Character\",\"‖\"]]"
    input = "&Vert;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: VerticalBar without a semi-colon" do
    output = "[[\"Character\",\"&VerticalBar\"]]"
    input = "&VerticalBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: VerticalBar; with a semi-colon" do
    output = "[[\"Character\",\"∣\"]]"
    input = "&VerticalBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: VerticalLine without a semi-colon" do
    output = "[[\"Character\",\"&VerticalLine\"]]"
    input = "&VerticalLine"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: VerticalLine; with a semi-colon" do
    output = "[[\"Character\",\"|\"]]"
    input = "&VerticalLine;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: VerticalSeparator without a semi-colon" do
    output = "[[\"Character\",\"&VerticalSeparator\"]]"
    input = "&VerticalSeparator"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: VerticalSeparator; with a semi-colon" do
    output = "[[\"Character\",\"❘\"]]"
    input = "&VerticalSeparator;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: VerticalTilde without a semi-colon" do
    output = "[[\"Character\",\"&VerticalTilde\"]]"
    input = "&VerticalTilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: VerticalTilde; with a semi-colon" do
    output = "[[\"Character\",\"≀\"]]"
    input = "&VerticalTilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: VeryThinSpace without a semi-colon" do
    output = "[[\"Character\",\"&VeryThinSpace\"]]"
    input = "&VeryThinSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: VeryThinSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u200A\"]]"
    input = "&VeryThinSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vfr without a semi-colon" do
    output = "[[\"Character\",\"&Vfr\"]]"
    input = "&Vfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔙\"]]"
    input = "&Vfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vopf without a semi-colon" do
    output = "[[\"Character\",\"&Vopf\"]]"
    input = "&Vopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕍\"]]"
    input = "&Vopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vscr without a semi-colon" do
    output = "[[\"Character\",\"&Vscr\"]]"
    input = "&Vscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒱\"]]"
    input = "&Vscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Vvdash without a semi-colon" do
    output = "[[\"Character\",\"&Vvdash\"]]"
    input = "&Vvdash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Vvdash; with a semi-colon" do
    output = "[[\"Character\",\"⊪\"]]"
    input = "&Vvdash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Wcirc without a semi-colon" do
    output = "[[\"Character\",\"&Wcirc\"]]"
    input = "&Wcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Wcirc; with a semi-colon" do
    output = "[[\"Character\",\"Ŵ\"]]"
    input = "&Wcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Wedge without a semi-colon" do
    output = "[[\"Character\",\"&Wedge\"]]"
    input = "&Wedge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Wedge; with a semi-colon" do
    output = "[[\"Character\",\"⋀\"]]"
    input = "&Wedge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Wfr without a semi-colon" do
    output = "[[\"Character\",\"&Wfr\"]]"
    input = "&Wfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Wfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔚\"]]"
    input = "&Wfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Wopf without a semi-colon" do
    output = "[[\"Character\",\"&Wopf\"]]"
    input = "&Wopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Wopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕎\"]]"
    input = "&Wopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Wscr without a semi-colon" do
    output = "[[\"Character\",\"&Wscr\"]]"
    input = "&Wscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Wscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒲\"]]"
    input = "&Wscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Xfr without a semi-colon" do
    output = "[[\"Character\",\"&Xfr\"]]"
    input = "&Xfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Xfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔛\"]]"
    input = "&Xfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Xi without a semi-colon" do
    output = "[[\"Character\",\"&Xi\"]]"
    input = "&Xi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Xi; with a semi-colon" do
    output = "[[\"Character\",\"Ξ\"]]"
    input = "&Xi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Xopf without a semi-colon" do
    output = "[[\"Character\",\"&Xopf\"]]"
    input = "&Xopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Xopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕏\"]]"
    input = "&Xopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Xscr without a semi-colon" do
    output = "[[\"Character\",\"&Xscr\"]]"
    input = "&Xscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Xscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒳\"]]"
    input = "&Xscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: YAcy without a semi-colon" do
    output = "[[\"Character\",\"&YAcy\"]]"
    input = "&YAcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: YAcy; with a semi-colon" do
    output = "[[\"Character\",\"Я\"]]"
    input = "&YAcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: YIcy without a semi-colon" do
    output = "[[\"Character\",\"&YIcy\"]]"
    input = "&YIcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: YIcy; with a semi-colon" do
    output = "[[\"Character\",\"Ї\"]]"
    input = "&YIcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: YUcy without a semi-colon" do
    output = "[[\"Character\",\"&YUcy\"]]"
    input = "&YUcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: YUcy; with a semi-colon" do
    output = "[[\"Character\",\"Ю\"]]"
    input = "&YUcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Yacute without a semi-colon" do
    output = "[[\"Character\",\"Ý\"]]"
    input = "&Yacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Yacute; with a semi-colon" do
    output = "[[\"Character\",\"Ý\"]]"
    input = "&Yacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ycirc without a semi-colon" do
    output = "[[\"Character\",\"&Ycirc\"]]"
    input = "&Ycirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ycirc; with a semi-colon" do
    output = "[[\"Character\",\"Ŷ\"]]"
    input = "&Ycirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Ycy without a semi-colon" do
    output = "[[\"Character\",\"&Ycy\"]]"
    input = "&Ycy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Ycy; with a semi-colon" do
    output = "[[\"Character\",\"Ы\"]]"
    input = "&Ycy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Yfr without a semi-colon" do
    output = "[[\"Character\",\"&Yfr\"]]"
    input = "&Yfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Yfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔜\"]]"
    input = "&Yfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Yopf without a semi-colon" do
    output = "[[\"Character\",\"&Yopf\"]]"
    input = "&Yopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Yopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕐\"]]"
    input = "&Yopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Yscr without a semi-colon" do
    output = "[[\"Character\",\"&Yscr\"]]"
    input = "&Yscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Yscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒴\"]]"
    input = "&Yscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Yuml without a semi-colon" do
    output = "[[\"Character\",\"&Yuml\"]]"
    input = "&Yuml"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Yuml; with a semi-colon" do
    output = "[[\"Character\",\"Ÿ\"]]"
    input = "&Yuml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ZHcy without a semi-colon" do
    output = "[[\"Character\",\"&ZHcy\"]]"
    input = "&ZHcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ZHcy; with a semi-colon" do
    output = "[[\"Character\",\"Ж\"]]"
    input = "&ZHcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Zacute without a semi-colon" do
    output = "[[\"Character\",\"&Zacute\"]]"
    input = "&Zacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Zacute; with a semi-colon" do
    output = "[[\"Character\",\"Ź\"]]"
    input = "&Zacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Zcaron without a semi-colon" do
    output = "[[\"Character\",\"&Zcaron\"]]"
    input = "&Zcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Zcaron; with a semi-colon" do
    output = "[[\"Character\",\"Ž\"]]"
    input = "&Zcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Zcy without a semi-colon" do
    output = "[[\"Character\",\"&Zcy\"]]"
    input = "&Zcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Zcy; with a semi-colon" do
    output = "[[\"Character\",\"З\"]]"
    input = "&Zcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Zdot without a semi-colon" do
    output = "[[\"Character\",\"&Zdot\"]]"
    input = "&Zdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Zdot; with a semi-colon" do
    output = "[[\"Character\",\"Ż\"]]"
    input = "&Zdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ZeroWidthSpace without a semi-colon" do
    output = "[[\"Character\",\"&ZeroWidthSpace\"]]"
    input = "&ZeroWidthSpace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ZeroWidthSpace; with a semi-colon" do
    output = "[[\"Character\",\"\u200B\"]]"
    input = "&ZeroWidthSpace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Zeta without a semi-colon" do
    output = "[[\"Character\",\"&Zeta\"]]"
    input = "&Zeta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Zeta; with a semi-colon" do
    output = "[[\"Character\",\"Ζ\"]]"
    input = "&Zeta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Zfr without a semi-colon" do
    output = "[[\"Character\",\"&Zfr\"]]"
    input = "&Zfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Zfr; with a semi-colon" do
    output = "[[\"Character\",\"ℨ\"]]"
    input = "&Zfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Zopf without a semi-colon" do
    output = "[[\"Character\",\"&Zopf\"]]"
    input = "&Zopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Zopf; with a semi-colon" do
    output = "[[\"Character\",\"ℤ\"]]"
    input = "&Zopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: Zscr without a semi-colon" do
    output = "[[\"Character\",\"&Zscr\"]]"
    input = "&Zscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: Zscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒵\"]]"
    input = "&Zscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: aacute without a semi-colon" do
    output = "[[\"Character\",\"á\"]]"
    input = "&aacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: aacute; with a semi-colon" do
    output = "[[\"Character\",\"á\"]]"
    input = "&aacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: abreve without a semi-colon" do
    output = "[[\"Character\",\"&abreve\"]]"
    input = "&abreve"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: abreve; with a semi-colon" do
    output = "[[\"Character\",\"ă\"]]"
    input = "&abreve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ac without a semi-colon" do
    output = "[[\"Character\",\"&ac\"]]"
    input = "&ac"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ac; with a semi-colon" do
    output = "[[\"Character\",\"∾\"]]"
    input = "&ac;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: acE without a semi-colon" do
    output = "[[\"Character\",\"&acE\"]]"
    input = "&acE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: acE; with a semi-colon" do
    output = "[[\"Character\",\"∾̳\"]]"
    input = "&acE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: acd without a semi-colon" do
    output = "[[\"Character\",\"&acd\"]]"
    input = "&acd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: acd; with a semi-colon" do
    output = "[[\"Character\",\"∿\"]]"
    input = "&acd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: acirc without a semi-colon" do
    output = "[[\"Character\",\"â\"]]"
    input = "&acirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: acirc; with a semi-colon" do
    output = "[[\"Character\",\"â\"]]"
    input = "&acirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: acute without a semi-colon" do
    output = "[[\"Character\",\"´\"]]"
    input = "&acute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: acute; with a semi-colon" do
    output = "[[\"Character\",\"´\"]]"
    input = "&acute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: acy without a semi-colon" do
    output = "[[\"Character\",\"&acy\"]]"
    input = "&acy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: acy; with a semi-colon" do
    output = "[[\"Character\",\"а\"]]"
    input = "&acy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: aelig without a semi-colon" do
    output = "[[\"Character\",\"æ\"]]"
    input = "&aelig"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: aelig; with a semi-colon" do
    output = "[[\"Character\",\"æ\"]]"
    input = "&aelig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: af without a semi-colon" do
    output = "[[\"Character\",\"&af\"]]"
    input = "&af"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: af; with a semi-colon" do
    output = "[[\"Character\",\"\u2061\"]]"
    input = "&af;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: afr without a semi-colon" do
    output = "[[\"Character\",\"&afr\"]]"
    input = "&afr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: afr; with a semi-colon" do
    output = "[[\"Character\",\"𝔞\"]]"
    input = "&afr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: agrave without a semi-colon" do
    output = "[[\"Character\",\"à\"]]"
    input = "&agrave"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: agrave; with a semi-colon" do
    output = "[[\"Character\",\"à\"]]"
    input = "&agrave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: alefsym without a semi-colon" do
    output = "[[\"Character\",\"&alefsym\"]]"
    input = "&alefsym"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: alefsym; with a semi-colon" do
    output = "[[\"Character\",\"ℵ\"]]"
    input = "&alefsym;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: aleph without a semi-colon" do
    output = "[[\"Character\",\"&aleph\"]]"
    input = "&aleph"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: aleph; with a semi-colon" do
    output = "[[\"Character\",\"ℵ\"]]"
    input = "&aleph;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: alpha without a semi-colon" do
    output = "[[\"Character\",\"&alpha\"]]"
    input = "&alpha"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: alpha; with a semi-colon" do
    output = "[[\"Character\",\"α\"]]"
    input = "&alpha;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: amacr without a semi-colon" do
    output = "[[\"Character\",\"&amacr\"]]"
    input = "&amacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: amacr; with a semi-colon" do
    output = "[[\"Character\",\"ā\"]]"
    input = "&amacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: amalg without a semi-colon" do
    output = "[[\"Character\",\"&amalg\"]]"
    input = "&amalg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: amalg; with a semi-colon" do
    output = "[[\"Character\",\"⨿\"]]"
    input = "&amalg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: amp without a semi-colon" do
    output = "[[\"Character\",\"&\"]]"
    input = "&amp"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: amp; with a semi-colon" do
    output = "[[\"Character\",\"&\"]]"
    input = "&amp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: and without a semi-colon" do
    output = "[[\"Character\",\"&and\"]]"
    input = "&and"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: and; with a semi-colon" do
    output = "[[\"Character\",\"∧\"]]"
    input = "&and;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: andand without a semi-colon" do
    output = "[[\"Character\",\"&andand\"]]"
    input = "&andand"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: andand; with a semi-colon" do
    output = "[[\"Character\",\"⩕\"]]"
    input = "&andand;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: andd without a semi-colon" do
    output = "[[\"Character\",\"&andd\"]]"
    input = "&andd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: andd; with a semi-colon" do
    output = "[[\"Character\",\"⩜\"]]"
    input = "&andd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: andslope without a semi-colon" do
    output = "[[\"Character\",\"&andslope\"]]"
    input = "&andslope"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: andslope; with a semi-colon" do
    output = "[[\"Character\",\"⩘\"]]"
    input = "&andslope;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: andv without a semi-colon" do
    output = "[[\"Character\",\"&andv\"]]"
    input = "&andv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: andv; with a semi-colon" do
    output = "[[\"Character\",\"⩚\"]]"
    input = "&andv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ang without a semi-colon" do
    output = "[[\"Character\",\"&ang\"]]"
    input = "&ang"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ang; with a semi-colon" do
    output = "[[\"Character\",\"∠\"]]"
    input = "&ang;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ange without a semi-colon" do
    output = "[[\"Character\",\"&ange\"]]"
    input = "&ange"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ange; with a semi-colon" do
    output = "[[\"Character\",\"⦤\"]]"
    input = "&ange;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angle without a semi-colon" do
    output = "[[\"Character\",\"&angle\"]]"
    input = "&angle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angle; with a semi-colon" do
    output = "[[\"Character\",\"∠\"]]"
    input = "&angle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angmsd without a semi-colon" do
    output = "[[\"Character\",\"&angmsd\"]]"
    input = "&angmsd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angmsd; with a semi-colon" do
    output = "[[\"Character\",\"∡\"]]"
    input = "&angmsd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angmsdaa without a semi-colon" do
    output = "[[\"Character\",\"&angmsdaa\"]]"
    input = "&angmsdaa"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angmsdaa; with a semi-colon" do
    output = "[[\"Character\",\"⦨\"]]"
    input = "&angmsdaa;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angmsdab without a semi-colon" do
    output = "[[\"Character\",\"&angmsdab\"]]"
    input = "&angmsdab"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angmsdab; with a semi-colon" do
    output = "[[\"Character\",\"⦩\"]]"
    input = "&angmsdab;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angmsdac without a semi-colon" do
    output = "[[\"Character\",\"&angmsdac\"]]"
    input = "&angmsdac"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angmsdac; with a semi-colon" do
    output = "[[\"Character\",\"⦪\"]]"
    input = "&angmsdac;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angmsdad without a semi-colon" do
    output = "[[\"Character\",\"&angmsdad\"]]"
    input = "&angmsdad"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angmsdad; with a semi-colon" do
    output = "[[\"Character\",\"⦫\"]]"
    input = "&angmsdad;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angmsdae without a semi-colon" do
    output = "[[\"Character\",\"&angmsdae\"]]"
    input = "&angmsdae"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angmsdae; with a semi-colon" do
    output = "[[\"Character\",\"⦬\"]]"
    input = "&angmsdae;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angmsdaf without a semi-colon" do
    output = "[[\"Character\",\"&angmsdaf\"]]"
    input = "&angmsdaf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angmsdaf; with a semi-colon" do
    output = "[[\"Character\",\"⦭\"]]"
    input = "&angmsdaf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angmsdag without a semi-colon" do
    output = "[[\"Character\",\"&angmsdag\"]]"
    input = "&angmsdag"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angmsdag; with a semi-colon" do
    output = "[[\"Character\",\"⦮\"]]"
    input = "&angmsdag;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angmsdah without a semi-colon" do
    output = "[[\"Character\",\"&angmsdah\"]]"
    input = "&angmsdah"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angmsdah; with a semi-colon" do
    output = "[[\"Character\",\"⦯\"]]"
    input = "&angmsdah;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angrt without a semi-colon" do
    output = "[[\"Character\",\"&angrt\"]]"
    input = "&angrt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angrt; with a semi-colon" do
    output = "[[\"Character\",\"∟\"]]"
    input = "&angrt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angrtvb without a semi-colon" do
    output = "[[\"Character\",\"&angrtvb\"]]"
    input = "&angrtvb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angrtvb; with a semi-colon" do
    output = "[[\"Character\",\"⊾\"]]"
    input = "&angrtvb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angrtvbd without a semi-colon" do
    output = "[[\"Character\",\"&angrtvbd\"]]"
    input = "&angrtvbd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angrtvbd; with a semi-colon" do
    output = "[[\"Character\",\"⦝\"]]"
    input = "&angrtvbd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angsph without a semi-colon" do
    output = "[[\"Character\",\"&angsph\"]]"
    input = "&angsph"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angsph; with a semi-colon" do
    output = "[[\"Character\",\"∢\"]]"
    input = "&angsph;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angst without a semi-colon" do
    output = "[[\"Character\",\"&angst\"]]"
    input = "&angst"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angst; with a semi-colon" do
    output = "[[\"Character\",\"Å\"]]"
    input = "&angst;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: angzarr without a semi-colon" do
    output = "[[\"Character\",\"&angzarr\"]]"
    input = "&angzarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: angzarr; with a semi-colon" do
    output = "[[\"Character\",\"⍼\"]]"
    input = "&angzarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: aogon without a semi-colon" do
    output = "[[\"Character\",\"&aogon\"]]"
    input = "&aogon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: aogon; with a semi-colon" do
    output = "[[\"Character\",\"ą\"]]"
    input = "&aogon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: aopf without a semi-colon" do
    output = "[[\"Character\",\"&aopf\"]]"
    input = "&aopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: aopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕒\"]]"
    input = "&aopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ap without a semi-colon" do
    output = "[[\"Character\",\"&ap\"]]"
    input = "&ap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ap; with a semi-colon" do
    output = "[[\"Character\",\"≈\"]]"
    input = "&ap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: apE without a semi-colon" do
    output = "[[\"Character\",\"&apE\"]]"
    input = "&apE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: apE; with a semi-colon" do
    output = "[[\"Character\",\"⩰\"]]"
    input = "&apE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: apacir without a semi-colon" do
    output = "[[\"Character\",\"&apacir\"]]"
    input = "&apacir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: apacir; with a semi-colon" do
    output = "[[\"Character\",\"⩯\"]]"
    input = "&apacir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ape without a semi-colon" do
    output = "[[\"Character\",\"&ape\"]]"
    input = "&ape"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ape; with a semi-colon" do
    output = "[[\"Character\",\"≊\"]]"
    input = "&ape;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: apid without a semi-colon" do
    output = "[[\"Character\",\"&apid\"]]"
    input = "&apid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: apid; with a semi-colon" do
    output = "[[\"Character\",\"≋\"]]"
    input = "&apid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: apos without a semi-colon" do
    output = "[[\"Character\",\"&apos\"]]"
    input = "&apos"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: apos; with a semi-colon" do
    output = "[[\"Character\",\"'\"]]"
    input = "&apos;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: approx without a semi-colon" do
    output = "[[\"Character\",\"&approx\"]]"
    input = "&approx"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: approx; with a semi-colon" do
    output = "[[\"Character\",\"≈\"]]"
    input = "&approx;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: approxeq without a semi-colon" do
    output = "[[\"Character\",\"&approxeq\"]]"
    input = "&approxeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: approxeq; with a semi-colon" do
    output = "[[\"Character\",\"≊\"]]"
    input = "&approxeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: aring without a semi-colon" do
    output = "[[\"Character\",\"å\"]]"
    input = "&aring"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: aring; with a semi-colon" do
    output = "[[\"Character\",\"å\"]]"
    input = "&aring;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ascr without a semi-colon" do
    output = "[[\"Character\",\"&ascr\"]]"
    input = "&ascr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ascr; with a semi-colon" do
    output = "[[\"Character\",\"𝒶\"]]"
    input = "&ascr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ast without a semi-colon" do
    output = "[[\"Character\",\"&ast\"]]"
    input = "&ast"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ast; with a semi-colon" do
    output = "[[\"Character\",\"*\"]]"
    input = "&ast;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: asymp without a semi-colon" do
    output = "[[\"Character\",\"&asymp\"]]"
    input = "&asymp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: asymp; with a semi-colon" do
    output = "[[\"Character\",\"≈\"]]"
    input = "&asymp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: asympeq without a semi-colon" do
    output = "[[\"Character\",\"&asympeq\"]]"
    input = "&asympeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: asympeq; with a semi-colon" do
    output = "[[\"Character\",\"≍\"]]"
    input = "&asympeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: atilde without a semi-colon" do
    output = "[[\"Character\",\"ã\"]]"
    input = "&atilde"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: atilde; with a semi-colon" do
    output = "[[\"Character\",\"ã\"]]"
    input = "&atilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: auml without a semi-colon" do
    output = "[[\"Character\",\"ä\"]]"
    input = "&auml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: auml; with a semi-colon" do
    output = "[[\"Character\",\"ä\"]]"
    input = "&auml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: awconint without a semi-colon" do
    output = "[[\"Character\",\"&awconint\"]]"
    input = "&awconint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: awconint; with a semi-colon" do
    output = "[[\"Character\",\"∳\"]]"
    input = "&awconint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: awint without a semi-colon" do
    output = "[[\"Character\",\"&awint\"]]"
    input = "&awint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: awint; with a semi-colon" do
    output = "[[\"Character\",\"⨑\"]]"
    input = "&awint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bNot without a semi-colon" do
    output = "[[\"Character\",\"&bNot\"]]"
    input = "&bNot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bNot; with a semi-colon" do
    output = "[[\"Character\",\"⫭\"]]"
    input = "&bNot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: backcong without a semi-colon" do
    output = "[[\"Character\",\"&backcong\"]]"
    input = "&backcong"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: backcong; with a semi-colon" do
    output = "[[\"Character\",\"≌\"]]"
    input = "&backcong;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: backepsilon without a semi-colon" do
    output = "[[\"Character\",\"&backepsilon\"]]"
    input = "&backepsilon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: backepsilon; with a semi-colon" do
    output = "[[\"Character\",\"϶\"]]"
    input = "&backepsilon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: backprime without a semi-colon" do
    output = "[[\"Character\",\"&backprime\"]]"
    input = "&backprime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: backprime; with a semi-colon" do
    output = "[[\"Character\",\"‵\"]]"
    input = "&backprime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: backsim without a semi-colon" do
    output = "[[\"Character\",\"&backsim\"]]"
    input = "&backsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: backsim; with a semi-colon" do
    output = "[[\"Character\",\"∽\"]]"
    input = "&backsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: backsimeq without a semi-colon" do
    output = "[[\"Character\",\"&backsimeq\"]]"
    input = "&backsimeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: backsimeq; with a semi-colon" do
    output = "[[\"Character\",\"⋍\"]]"
    input = "&backsimeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: barvee without a semi-colon" do
    output = "[[\"Character\",\"&barvee\"]]"
    input = "&barvee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: barvee; with a semi-colon" do
    output = "[[\"Character\",\"⊽\"]]"
    input = "&barvee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: barwed without a semi-colon" do
    output = "[[\"Character\",\"&barwed\"]]"
    input = "&barwed"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: barwed; with a semi-colon" do
    output = "[[\"Character\",\"⌅\"]]"
    input = "&barwed;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: barwedge without a semi-colon" do
    output = "[[\"Character\",\"&barwedge\"]]"
    input = "&barwedge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: barwedge; with a semi-colon" do
    output = "[[\"Character\",\"⌅\"]]"
    input = "&barwedge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bbrk without a semi-colon" do
    output = "[[\"Character\",\"&bbrk\"]]"
    input = "&bbrk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bbrk; with a semi-colon" do
    output = "[[\"Character\",\"⎵\"]]"
    input = "&bbrk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bbrktbrk without a semi-colon" do
    output = "[[\"Character\",\"&bbrktbrk\"]]"
    input = "&bbrktbrk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bbrktbrk; with a semi-colon" do
    output = "[[\"Character\",\"⎶\"]]"
    input = "&bbrktbrk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bcong without a semi-colon" do
    output = "[[\"Character\",\"&bcong\"]]"
    input = "&bcong"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bcong; with a semi-colon" do
    output = "[[\"Character\",\"≌\"]]"
    input = "&bcong;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bcy without a semi-colon" do
    output = "[[\"Character\",\"&bcy\"]]"
    input = "&bcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bcy; with a semi-colon" do
    output = "[[\"Character\",\"б\"]]"
    input = "&bcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bdquo without a semi-colon" do
    output = "[[\"Character\",\"&bdquo\"]]"
    input = "&bdquo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bdquo; with a semi-colon" do
    output = "[[\"Character\",\"„\"]]"
    input = "&bdquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: becaus without a semi-colon" do
    output = "[[\"Character\",\"&becaus\"]]"
    input = "&becaus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: becaus; with a semi-colon" do
    output = "[[\"Character\",\"∵\"]]"
    input = "&becaus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: because without a semi-colon" do
    output = "[[\"Character\",\"&because\"]]"
    input = "&because"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: because; with a semi-colon" do
    output = "[[\"Character\",\"∵\"]]"
    input = "&because;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bemptyv without a semi-colon" do
    output = "[[\"Character\",\"&bemptyv\"]]"
    input = "&bemptyv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bemptyv; with a semi-colon" do
    output = "[[\"Character\",\"⦰\"]]"
    input = "&bemptyv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bepsi without a semi-colon" do
    output = "[[\"Character\",\"&bepsi\"]]"
    input = "&bepsi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bepsi; with a semi-colon" do
    output = "[[\"Character\",\"϶\"]]"
    input = "&bepsi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bernou without a semi-colon" do
    output = "[[\"Character\",\"&bernou\"]]"
    input = "&bernou"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bernou; with a semi-colon" do
    output = "[[\"Character\",\"ℬ\"]]"
    input = "&bernou;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: beta without a semi-colon" do
    output = "[[\"Character\",\"&beta\"]]"
    input = "&beta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: beta; with a semi-colon" do
    output = "[[\"Character\",\"β\"]]"
    input = "&beta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: beth without a semi-colon" do
    output = "[[\"Character\",\"&beth\"]]"
    input = "&beth"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: beth; with a semi-colon" do
    output = "[[\"Character\",\"ℶ\"]]"
    input = "&beth;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: between without a semi-colon" do
    output = "[[\"Character\",\"&between\"]]"
    input = "&between"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: between; with a semi-colon" do
    output = "[[\"Character\",\"≬\"]]"
    input = "&between;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bfr without a semi-colon" do
    output = "[[\"Character\",\"&bfr\"]]"
    input = "&bfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔟\"]]"
    input = "&bfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigcap without a semi-colon" do
    output = "[[\"Character\",\"&bigcap\"]]"
    input = "&bigcap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigcap; with a semi-colon" do
    output = "[[\"Character\",\"⋂\"]]"
    input = "&bigcap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigcirc without a semi-colon" do
    output = "[[\"Character\",\"&bigcirc\"]]"
    input = "&bigcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigcirc; with a semi-colon" do
    output = "[[\"Character\",\"◯\"]]"
    input = "&bigcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigcup without a semi-colon" do
    output = "[[\"Character\",\"&bigcup\"]]"
    input = "&bigcup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigcup; with a semi-colon" do
    output = "[[\"Character\",\"⋃\"]]"
    input = "&bigcup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigodot without a semi-colon" do
    output = "[[\"Character\",\"&bigodot\"]]"
    input = "&bigodot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigodot; with a semi-colon" do
    output = "[[\"Character\",\"⨀\"]]"
    input = "&bigodot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigoplus without a semi-colon" do
    output = "[[\"Character\",\"&bigoplus\"]]"
    input = "&bigoplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigoplus; with a semi-colon" do
    output = "[[\"Character\",\"⨁\"]]"
    input = "&bigoplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigotimes without a semi-colon" do
    output = "[[\"Character\",\"&bigotimes\"]]"
    input = "&bigotimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigotimes; with a semi-colon" do
    output = "[[\"Character\",\"⨂\"]]"
    input = "&bigotimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigsqcup without a semi-colon" do
    output = "[[\"Character\",\"&bigsqcup\"]]"
    input = "&bigsqcup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigsqcup; with a semi-colon" do
    output = "[[\"Character\",\"⨆\"]]"
    input = "&bigsqcup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigstar without a semi-colon" do
    output = "[[\"Character\",\"&bigstar\"]]"
    input = "&bigstar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigstar; with a semi-colon" do
    output = "[[\"Character\",\"★\"]]"
    input = "&bigstar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigtriangledown without a semi-colon" do
    output = "[[\"Character\",\"&bigtriangledown\"]]"
    input = "&bigtriangledown"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigtriangledown; with a semi-colon" do
    output = "[[\"Character\",\"▽\"]]"
    input = "&bigtriangledown;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigtriangleup without a semi-colon" do
    output = "[[\"Character\",\"&bigtriangleup\"]]"
    input = "&bigtriangleup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigtriangleup; with a semi-colon" do
    output = "[[\"Character\",\"△\"]]"
    input = "&bigtriangleup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: biguplus without a semi-colon" do
    output = "[[\"Character\",\"&biguplus\"]]"
    input = "&biguplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: biguplus; with a semi-colon" do
    output = "[[\"Character\",\"⨄\"]]"
    input = "&biguplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigvee without a semi-colon" do
    output = "[[\"Character\",\"&bigvee\"]]"
    input = "&bigvee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigvee; with a semi-colon" do
    output = "[[\"Character\",\"⋁\"]]"
    input = "&bigvee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bigwedge without a semi-colon" do
    output = "[[\"Character\",\"&bigwedge\"]]"
    input = "&bigwedge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bigwedge; with a semi-colon" do
    output = "[[\"Character\",\"⋀\"]]"
    input = "&bigwedge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bkarow without a semi-colon" do
    output = "[[\"Character\",\"&bkarow\"]]"
    input = "&bkarow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bkarow; with a semi-colon" do
    output = "[[\"Character\",\"⤍\"]]"
    input = "&bkarow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blacklozenge without a semi-colon" do
    output = "[[\"Character\",\"&blacklozenge\"]]"
    input = "&blacklozenge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blacklozenge; with a semi-colon" do
    output = "[[\"Character\",\"⧫\"]]"
    input = "&blacklozenge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blacksquare without a semi-colon" do
    output = "[[\"Character\",\"&blacksquare\"]]"
    input = "&blacksquare"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blacksquare; with a semi-colon" do
    output = "[[\"Character\",\"▪\"]]"
    input = "&blacksquare;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blacktriangle without a semi-colon" do
    output = "[[\"Character\",\"&blacktriangle\"]]"
    input = "&blacktriangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blacktriangle; with a semi-colon" do
    output = "[[\"Character\",\"▴\"]]"
    input = "&blacktriangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blacktriangledown without a semi-colon" do
    output = "[[\"Character\",\"&blacktriangledown\"]]"
    input = "&blacktriangledown"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blacktriangledown; with a semi-colon" do
    output = "[[\"Character\",\"▾\"]]"
    input = "&blacktriangledown;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blacktriangleleft without a semi-colon" do
    output = "[[\"Character\",\"&blacktriangleleft\"]]"
    input = "&blacktriangleleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blacktriangleleft; with a semi-colon" do
    output = "[[\"Character\",\"◂\"]]"
    input = "&blacktriangleleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blacktriangleright without a semi-colon" do
    output = "[[\"Character\",\"&blacktriangleright\"]]"
    input = "&blacktriangleright"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blacktriangleright; with a semi-colon" do
    output = "[[\"Character\",\"▸\"]]"
    input = "&blacktriangleright;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blank without a semi-colon" do
    output = "[[\"Character\",\"&blank\"]]"
    input = "&blank"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blank; with a semi-colon" do
    output = "[[\"Character\",\"␣\"]]"
    input = "&blank;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blk12 without a semi-colon" do
    output = "[[\"Character\",\"&blk12\"]]"
    input = "&blk12"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blk12; with a semi-colon" do
    output = "[[\"Character\",\"▒\"]]"
    input = "&blk12;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blk14 without a semi-colon" do
    output = "[[\"Character\",\"&blk14\"]]"
    input = "&blk14"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blk14; with a semi-colon" do
    output = "[[\"Character\",\"░\"]]"
    input = "&blk14;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: blk34 without a semi-colon" do
    output = "[[\"Character\",\"&blk34\"]]"
    input = "&blk34"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: blk34; with a semi-colon" do
    output = "[[\"Character\",\"▓\"]]"
    input = "&blk34;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: block without a semi-colon" do
    output = "[[\"Character\",\"&block\"]]"
    input = "&block"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: block; with a semi-colon" do
    output = "[[\"Character\",\"█\"]]"
    input = "&block;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bne without a semi-colon" do
    output = "[[\"Character\",\"&bne\"]]"
    input = "&bne"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bne; with a semi-colon" do
    output = "[[\"Character\",\"=⃥\"]]"
    input = "&bne;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bnequiv without a semi-colon" do
    output = "[[\"Character\",\"&bnequiv\"]]"
    input = "&bnequiv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bnequiv; with a semi-colon" do
    output = "[[\"Character\",\"≡⃥\"]]"
    input = "&bnequiv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bnot without a semi-colon" do
    output = "[[\"Character\",\"&bnot\"]]"
    input = "&bnot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bnot; with a semi-colon" do
    output = "[[\"Character\",\"⌐\"]]"
    input = "&bnot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bopf without a semi-colon" do
    output = "[[\"Character\",\"&bopf\"]]"
    input = "&bopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕓\"]]"
    input = "&bopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bot without a semi-colon" do
    output = "[[\"Character\",\"&bot\"]]"
    input = "&bot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bot; with a semi-colon" do
    output = "[[\"Character\",\"⊥\"]]"
    input = "&bot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bottom without a semi-colon" do
    output = "[[\"Character\",\"&bottom\"]]"
    input = "&bottom"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bottom; with a semi-colon" do
    output = "[[\"Character\",\"⊥\"]]"
    input = "&bottom;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bowtie without a semi-colon" do
    output = "[[\"Character\",\"&bowtie\"]]"
    input = "&bowtie"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bowtie; with a semi-colon" do
    output = "[[\"Character\",\"⋈\"]]"
    input = "&bowtie;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxDL without a semi-colon" do
    output = "[[\"Character\",\"&boxDL\"]]"
    input = "&boxDL"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxDL; with a semi-colon" do
    output = "[[\"Character\",\"╗\"]]"
    input = "&boxDL;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxDR without a semi-colon" do
    output = "[[\"Character\",\"&boxDR\"]]"
    input = "&boxDR"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxDR; with a semi-colon" do
    output = "[[\"Character\",\"╔\"]]"
    input = "&boxDR;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxDl without a semi-colon" do
    output = "[[\"Character\",\"&boxDl\"]]"
    input = "&boxDl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxDl; with a semi-colon" do
    output = "[[\"Character\",\"╖\"]]"
    input = "&boxDl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxDr without a semi-colon" do
    output = "[[\"Character\",\"&boxDr\"]]"
    input = "&boxDr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxDr; with a semi-colon" do
    output = "[[\"Character\",\"╓\"]]"
    input = "&boxDr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxH without a semi-colon" do
    output = "[[\"Character\",\"&boxH\"]]"
    input = "&boxH"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxH; with a semi-colon" do
    output = "[[\"Character\",\"═\"]]"
    input = "&boxH;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxHD without a semi-colon" do
    output = "[[\"Character\",\"&boxHD\"]]"
    input = "&boxHD"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxHD; with a semi-colon" do
    output = "[[\"Character\",\"╦\"]]"
    input = "&boxHD;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxHU without a semi-colon" do
    output = "[[\"Character\",\"&boxHU\"]]"
    input = "&boxHU"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxHU; with a semi-colon" do
    output = "[[\"Character\",\"╩\"]]"
    input = "&boxHU;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxHd without a semi-colon" do
    output = "[[\"Character\",\"&boxHd\"]]"
    input = "&boxHd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxHd; with a semi-colon" do
    output = "[[\"Character\",\"╤\"]]"
    input = "&boxHd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxHu without a semi-colon" do
    output = "[[\"Character\",\"&boxHu\"]]"
    input = "&boxHu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxHu; with a semi-colon" do
    output = "[[\"Character\",\"╧\"]]"
    input = "&boxHu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxUL without a semi-colon" do
    output = "[[\"Character\",\"&boxUL\"]]"
    input = "&boxUL"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxUL; with a semi-colon" do
    output = "[[\"Character\",\"╝\"]]"
    input = "&boxUL;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxUR without a semi-colon" do
    output = "[[\"Character\",\"&boxUR\"]]"
    input = "&boxUR"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxUR; with a semi-colon" do
    output = "[[\"Character\",\"╚\"]]"
    input = "&boxUR;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxUl without a semi-colon" do
    output = "[[\"Character\",\"&boxUl\"]]"
    input = "&boxUl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxUl; with a semi-colon" do
    output = "[[\"Character\",\"╜\"]]"
    input = "&boxUl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxUr without a semi-colon" do
    output = "[[\"Character\",\"&boxUr\"]]"
    input = "&boxUr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxUr; with a semi-colon" do
    output = "[[\"Character\",\"╙\"]]"
    input = "&boxUr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxV without a semi-colon" do
    output = "[[\"Character\",\"&boxV\"]]"
    input = "&boxV"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxV; with a semi-colon" do
    output = "[[\"Character\",\"║\"]]"
    input = "&boxV;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxVH without a semi-colon" do
    output = "[[\"Character\",\"&boxVH\"]]"
    input = "&boxVH"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxVH; with a semi-colon" do
    output = "[[\"Character\",\"╬\"]]"
    input = "&boxVH;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxVL without a semi-colon" do
    output = "[[\"Character\",\"&boxVL\"]]"
    input = "&boxVL"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxVL; with a semi-colon" do
    output = "[[\"Character\",\"╣\"]]"
    input = "&boxVL;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxVR without a semi-colon" do
    output = "[[\"Character\",\"&boxVR\"]]"
    input = "&boxVR"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxVR; with a semi-colon" do
    output = "[[\"Character\",\"╠\"]]"
    input = "&boxVR;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxVh without a semi-colon" do
    output = "[[\"Character\",\"&boxVh\"]]"
    input = "&boxVh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxVh; with a semi-colon" do
    output = "[[\"Character\",\"╫\"]]"
    input = "&boxVh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxVl without a semi-colon" do
    output = "[[\"Character\",\"&boxVl\"]]"
    input = "&boxVl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxVl; with a semi-colon" do
    output = "[[\"Character\",\"╢\"]]"
    input = "&boxVl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxVr without a semi-colon" do
    output = "[[\"Character\",\"&boxVr\"]]"
    input = "&boxVr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxVr; with a semi-colon" do
    output = "[[\"Character\",\"╟\"]]"
    input = "&boxVr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxbox without a semi-colon" do
    output = "[[\"Character\",\"&boxbox\"]]"
    input = "&boxbox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxbox; with a semi-colon" do
    output = "[[\"Character\",\"⧉\"]]"
    input = "&boxbox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxdL without a semi-colon" do
    output = "[[\"Character\",\"&boxdL\"]]"
    input = "&boxdL"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxdL; with a semi-colon" do
    output = "[[\"Character\",\"╕\"]]"
    input = "&boxdL;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxdR without a semi-colon" do
    output = "[[\"Character\",\"&boxdR\"]]"
    input = "&boxdR"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxdR; with a semi-colon" do
    output = "[[\"Character\",\"╒\"]]"
    input = "&boxdR;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxdl without a semi-colon" do
    output = "[[\"Character\",\"&boxdl\"]]"
    input = "&boxdl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxdl; with a semi-colon" do
    output = "[[\"Character\",\"┐\"]]"
    input = "&boxdl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxdr without a semi-colon" do
    output = "[[\"Character\",\"&boxdr\"]]"
    input = "&boxdr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxdr; with a semi-colon" do
    output = "[[\"Character\",\"┌\"]]"
    input = "&boxdr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxh without a semi-colon" do
    output = "[[\"Character\",\"&boxh\"]]"
    input = "&boxh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxh; with a semi-colon" do
    output = "[[\"Character\",\"─\"]]"
    input = "&boxh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxhD without a semi-colon" do
    output = "[[\"Character\",\"&boxhD\"]]"
    input = "&boxhD"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxhD; with a semi-colon" do
    output = "[[\"Character\",\"╥\"]]"
    input = "&boxhD;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxhU without a semi-colon" do
    output = "[[\"Character\",\"&boxhU\"]]"
    input = "&boxhU"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxhU; with a semi-colon" do
    output = "[[\"Character\",\"╨\"]]"
    input = "&boxhU;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxhd without a semi-colon" do
    output = "[[\"Character\",\"&boxhd\"]]"
    input = "&boxhd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxhd; with a semi-colon" do
    output = "[[\"Character\",\"┬\"]]"
    input = "&boxhd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxhu without a semi-colon" do
    output = "[[\"Character\",\"&boxhu\"]]"
    input = "&boxhu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxhu; with a semi-colon" do
    output = "[[\"Character\",\"┴\"]]"
    input = "&boxhu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxminus without a semi-colon" do
    output = "[[\"Character\",\"&boxminus\"]]"
    input = "&boxminus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxminus; with a semi-colon" do
    output = "[[\"Character\",\"⊟\"]]"
    input = "&boxminus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxplus without a semi-colon" do
    output = "[[\"Character\",\"&boxplus\"]]"
    input = "&boxplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxplus; with a semi-colon" do
    output = "[[\"Character\",\"⊞\"]]"
    input = "&boxplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxtimes without a semi-colon" do
    output = "[[\"Character\",\"&boxtimes\"]]"
    input = "&boxtimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxtimes; with a semi-colon" do
    output = "[[\"Character\",\"⊠\"]]"
    input = "&boxtimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxuL without a semi-colon" do
    output = "[[\"Character\",\"&boxuL\"]]"
    input = "&boxuL"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxuL; with a semi-colon" do
    output = "[[\"Character\",\"╛\"]]"
    input = "&boxuL;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxuR without a semi-colon" do
    output = "[[\"Character\",\"&boxuR\"]]"
    input = "&boxuR"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxuR; with a semi-colon" do
    output = "[[\"Character\",\"╘\"]]"
    input = "&boxuR;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxul without a semi-colon" do
    output = "[[\"Character\",\"&boxul\"]]"
    input = "&boxul"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxul; with a semi-colon" do
    output = "[[\"Character\",\"┘\"]]"
    input = "&boxul;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxur without a semi-colon" do
    output = "[[\"Character\",\"&boxur\"]]"
    input = "&boxur"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxur; with a semi-colon" do
    output = "[[\"Character\",\"└\"]]"
    input = "&boxur;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxv without a semi-colon" do
    output = "[[\"Character\",\"&boxv\"]]"
    input = "&boxv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxv; with a semi-colon" do
    output = "[[\"Character\",\"│\"]]"
    input = "&boxv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxvH without a semi-colon" do
    output = "[[\"Character\",\"&boxvH\"]]"
    input = "&boxvH"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxvH; with a semi-colon" do
    output = "[[\"Character\",\"╪\"]]"
    input = "&boxvH;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxvL without a semi-colon" do
    output = "[[\"Character\",\"&boxvL\"]]"
    input = "&boxvL"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxvL; with a semi-colon" do
    output = "[[\"Character\",\"╡\"]]"
    input = "&boxvL;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxvR without a semi-colon" do
    output = "[[\"Character\",\"&boxvR\"]]"
    input = "&boxvR"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxvR; with a semi-colon" do
    output = "[[\"Character\",\"╞\"]]"
    input = "&boxvR;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxvh without a semi-colon" do
    output = "[[\"Character\",\"&boxvh\"]]"
    input = "&boxvh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxvh; with a semi-colon" do
    output = "[[\"Character\",\"┼\"]]"
    input = "&boxvh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxvl without a semi-colon" do
    output = "[[\"Character\",\"&boxvl\"]]"
    input = "&boxvl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxvl; with a semi-colon" do
    output = "[[\"Character\",\"┤\"]]"
    input = "&boxvl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: boxvr without a semi-colon" do
    output = "[[\"Character\",\"&boxvr\"]]"
    input = "&boxvr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: boxvr; with a semi-colon" do
    output = "[[\"Character\",\"├\"]]"
    input = "&boxvr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bprime without a semi-colon" do
    output = "[[\"Character\",\"&bprime\"]]"
    input = "&bprime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bprime; with a semi-colon" do
    output = "[[\"Character\",\"‵\"]]"
    input = "&bprime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: breve without a semi-colon" do
    output = "[[\"Character\",\"&breve\"]]"
    input = "&breve"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: breve; with a semi-colon" do
    output = "[[\"Character\",\"˘\"]]"
    input = "&breve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: brvbar without a semi-colon" do
    output = "[[\"Character\",\"¦\"]]"
    input = "&brvbar"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: brvbar; with a semi-colon" do
    output = "[[\"Character\",\"¦\"]]"
    input = "&brvbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bscr without a semi-colon" do
    output = "[[\"Character\",\"&bscr\"]]"
    input = "&bscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒷\"]]"
    input = "&bscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bsemi without a semi-colon" do
    output = "[[\"Character\",\"&bsemi\"]]"
    input = "&bsemi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bsemi; with a semi-colon" do
    output = "[[\"Character\",\"⁏\"]]"
    input = "&bsemi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bsim without a semi-colon" do
    output = "[[\"Character\",\"&bsim\"]]"
    input = "&bsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bsim; with a semi-colon" do
    output = "[[\"Character\",\"∽\"]]"
    input = "&bsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bsime without a semi-colon" do
    output = "[[\"Character\",\"&bsime\"]]"
    input = "&bsime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bsime; with a semi-colon" do
    output = "[[\"Character\",\"⋍\"]]"
    input = "&bsime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bsol without a semi-colon" do
    output = "[[\"Character\",\"&bsol\"]]"
    input = "&bsol"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bsol; with a semi-colon" do
    output = "[[\"Character\",\"\\\\\"]]"
    input = "&bsol;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bsolb without a semi-colon" do
    output = "[[\"Character\",\"&bsolb\"]]"
    input = "&bsolb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bsolb; with a semi-colon" do
    output = "[[\"Character\",\"⧅\"]]"
    input = "&bsolb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bsolhsub without a semi-colon" do
    output = "[[\"Character\",\"&bsolhsub\"]]"
    input = "&bsolhsub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bsolhsub; with a semi-colon" do
    output = "[[\"Character\",\"⟈\"]]"
    input = "&bsolhsub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bull without a semi-colon" do
    output = "[[\"Character\",\"&bull\"]]"
    input = "&bull"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bull; with a semi-colon" do
    output = "[[\"Character\",\"•\"]]"
    input = "&bull;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bullet without a semi-colon" do
    output = "[[\"Character\",\"&bullet\"]]"
    input = "&bullet"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bullet; with a semi-colon" do
    output = "[[\"Character\",\"•\"]]"
    input = "&bullet;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bump without a semi-colon" do
    output = "[[\"Character\",\"&bump\"]]"
    input = "&bump"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bump; with a semi-colon" do
    output = "[[\"Character\",\"≎\"]]"
    input = "&bump;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bumpE without a semi-colon" do
    output = "[[\"Character\",\"&bumpE\"]]"
    input = "&bumpE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bumpE; with a semi-colon" do
    output = "[[\"Character\",\"⪮\"]]"
    input = "&bumpE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bumpe without a semi-colon" do
    output = "[[\"Character\",\"&bumpe\"]]"
    input = "&bumpe"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bumpe; with a semi-colon" do
    output = "[[\"Character\",\"≏\"]]"
    input = "&bumpe;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: bumpeq without a semi-colon" do
    output = "[[\"Character\",\"&bumpeq\"]]"
    input = "&bumpeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: bumpeq; with a semi-colon" do
    output = "[[\"Character\",\"≏\"]]"
    input = "&bumpeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cacute without a semi-colon" do
    output = "[[\"Character\",\"&cacute\"]]"
    input = "&cacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cacute; with a semi-colon" do
    output = "[[\"Character\",\"ć\"]]"
    input = "&cacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cap without a semi-colon" do
    output = "[[\"Character\",\"&cap\"]]"
    input = "&cap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cap; with a semi-colon" do
    output = "[[\"Character\",\"∩\"]]"
    input = "&cap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: capand without a semi-colon" do
    output = "[[\"Character\",\"&capand\"]]"
    input = "&capand"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: capand; with a semi-colon" do
    output = "[[\"Character\",\"⩄\"]]"
    input = "&capand;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: capbrcup without a semi-colon" do
    output = "[[\"Character\",\"&capbrcup\"]]"
    input = "&capbrcup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: capbrcup; with a semi-colon" do
    output = "[[\"Character\",\"⩉\"]]"
    input = "&capbrcup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: capcap without a semi-colon" do
    output = "[[\"Character\",\"&capcap\"]]"
    input = "&capcap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: capcap; with a semi-colon" do
    output = "[[\"Character\",\"⩋\"]]"
    input = "&capcap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: capcup without a semi-colon" do
    output = "[[\"Character\",\"&capcup\"]]"
    input = "&capcup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: capcup; with a semi-colon" do
    output = "[[\"Character\",\"⩇\"]]"
    input = "&capcup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: capdot without a semi-colon" do
    output = "[[\"Character\",\"&capdot\"]]"
    input = "&capdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: capdot; with a semi-colon" do
    output = "[[\"Character\",\"⩀\"]]"
    input = "&capdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: caps without a semi-colon" do
    output = "[[\"Character\",\"&caps\"]]"
    input = "&caps"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: caps; with a semi-colon" do
    output = "[[\"Character\",\"∩︀\"]]"
    input = "&caps;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: caret without a semi-colon" do
    output = "[[\"Character\",\"&caret\"]]"
    input = "&caret"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: caret; with a semi-colon" do
    output = "[[\"Character\",\"⁁\"]]"
    input = "&caret;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: caron without a semi-colon" do
    output = "[[\"Character\",\"&caron\"]]"
    input = "&caron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: caron; with a semi-colon" do
    output = "[[\"Character\",\"ˇ\"]]"
    input = "&caron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ccaps without a semi-colon" do
    output = "[[\"Character\",\"&ccaps\"]]"
    input = "&ccaps"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ccaps; with a semi-colon" do
    output = "[[\"Character\",\"⩍\"]]"
    input = "&ccaps;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ccaron without a semi-colon" do
    output = "[[\"Character\",\"&ccaron\"]]"
    input = "&ccaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ccaron; with a semi-colon" do
    output = "[[\"Character\",\"č\"]]"
    input = "&ccaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ccedil without a semi-colon" do
    output = "[[\"Character\",\"ç\"]]"
    input = "&ccedil"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ccedil; with a semi-colon" do
    output = "[[\"Character\",\"ç\"]]"
    input = "&ccedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ccirc without a semi-colon" do
    output = "[[\"Character\",\"&ccirc\"]]"
    input = "&ccirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ccirc; with a semi-colon" do
    output = "[[\"Character\",\"ĉ\"]]"
    input = "&ccirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ccups without a semi-colon" do
    output = "[[\"Character\",\"&ccups\"]]"
    input = "&ccups"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ccups; with a semi-colon" do
    output = "[[\"Character\",\"⩌\"]]"
    input = "&ccups;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ccupssm without a semi-colon" do
    output = "[[\"Character\",\"&ccupssm\"]]"
    input = "&ccupssm"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ccupssm; with a semi-colon" do
    output = "[[\"Character\",\"⩐\"]]"
    input = "&ccupssm;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cdot without a semi-colon" do
    output = "[[\"Character\",\"&cdot\"]]"
    input = "&cdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cdot; with a semi-colon" do
    output = "[[\"Character\",\"ċ\"]]"
    input = "&cdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cedil without a semi-colon" do
    output = "[[\"Character\",\"¸\"]]"
    input = "&cedil"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cedil; with a semi-colon" do
    output = "[[\"Character\",\"¸\"]]"
    input = "&cedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cemptyv without a semi-colon" do
    output = "[[\"Character\",\"&cemptyv\"]]"
    input = "&cemptyv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cemptyv; with a semi-colon" do
    output = "[[\"Character\",\"⦲\"]]"
    input = "&cemptyv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cent without a semi-colon" do
    output = "[[\"Character\",\"¢\"]]"
    input = "&cent"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cent; with a semi-colon" do
    output = "[[\"Character\",\"¢\"]]"
    input = "&cent;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: centerdot; with a semi-colon" do
    output = "[[\"Character\",\"·\"]]"
    input = "&centerdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cfr without a semi-colon" do
    output = "[[\"Character\",\"&cfr\"]]"
    input = "&cfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔠\"]]"
    input = "&cfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: chcy without a semi-colon" do
    output = "[[\"Character\",\"&chcy\"]]"
    input = "&chcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: chcy; with a semi-colon" do
    output = "[[\"Character\",\"ч\"]]"
    input = "&chcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: check without a semi-colon" do
    output = "[[\"Character\",\"&check\"]]"
    input = "&check"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: check; with a semi-colon" do
    output = "[[\"Character\",\"✓\"]]"
    input = "&check;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: checkmark without a semi-colon" do
    output = "[[\"Character\",\"&checkmark\"]]"
    input = "&checkmark"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: checkmark; with a semi-colon" do
    output = "[[\"Character\",\"✓\"]]"
    input = "&checkmark;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: chi without a semi-colon" do
    output = "[[\"Character\",\"&chi\"]]"
    input = "&chi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: chi; with a semi-colon" do
    output = "[[\"Character\",\"χ\"]]"
    input = "&chi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cir without a semi-colon" do
    output = "[[\"Character\",\"&cir\"]]"
    input = "&cir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cir; with a semi-colon" do
    output = "[[\"Character\",\"○\"]]"
    input = "&cir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cirE without a semi-colon" do
    output = "[[\"Character\",\"&cirE\"]]"
    input = "&cirE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cirE; with a semi-colon" do
    output = "[[\"Character\",\"⧃\"]]"
    input = "&cirE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: circ without a semi-colon" do
    output = "[[\"Character\",\"&circ\"]]"
    input = "&circ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: circ; with a semi-colon" do
    output = "[[\"Character\",\"ˆ\"]]"
    input = "&circ;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: circeq without a semi-colon" do
    output = "[[\"Character\",\"&circeq\"]]"
    input = "&circeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: circeq; with a semi-colon" do
    output = "[[\"Character\",\"≗\"]]"
    input = "&circeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: circlearrowleft without a semi-colon" do
    output = "[[\"Character\",\"&circlearrowleft\"]]"
    input = "&circlearrowleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: circlearrowleft; with a semi-colon" do
    output = "[[\"Character\",\"↺\"]]"
    input = "&circlearrowleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: circlearrowright without a semi-colon" do
    output = "[[\"Character\",\"&circlearrowright\"]]"
    input = "&circlearrowright"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: circlearrowright; with a semi-colon" do
    output = "[[\"Character\",\"↻\"]]"
    input = "&circlearrowright;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: circledR without a semi-colon" do
    output = "[[\"Character\",\"&circledR\"]]"
    input = "&circledR"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: circledR; with a semi-colon" do
    output = "[[\"Character\",\"®\"]]"
    input = "&circledR;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: circledS without a semi-colon" do
    output = "[[\"Character\",\"&circledS\"]]"
    input = "&circledS"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: circledS; with a semi-colon" do
    output = "[[\"Character\",\"Ⓢ\"]]"
    input = "&circledS;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: circledast without a semi-colon" do
    output = "[[\"Character\",\"&circledast\"]]"
    input = "&circledast"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: circledast; with a semi-colon" do
    output = "[[\"Character\",\"⊛\"]]"
    input = "&circledast;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: circledcirc without a semi-colon" do
    output = "[[\"Character\",\"&circledcirc\"]]"
    input = "&circledcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: circledcirc; with a semi-colon" do
    output = "[[\"Character\",\"⊚\"]]"
    input = "&circledcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: circleddash without a semi-colon" do
    output = "[[\"Character\",\"&circleddash\"]]"
    input = "&circleddash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: circleddash; with a semi-colon" do
    output = "[[\"Character\",\"⊝\"]]"
    input = "&circleddash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cire without a semi-colon" do
    output = "[[\"Character\",\"&cire\"]]"
    input = "&cire"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cire; with a semi-colon" do
    output = "[[\"Character\",\"≗\"]]"
    input = "&cire;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cirfnint without a semi-colon" do
    output = "[[\"Character\",\"&cirfnint\"]]"
    input = "&cirfnint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cirfnint; with a semi-colon" do
    output = "[[\"Character\",\"⨐\"]]"
    input = "&cirfnint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cirmid without a semi-colon" do
    output = "[[\"Character\",\"&cirmid\"]]"
    input = "&cirmid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cirmid; with a semi-colon" do
    output = "[[\"Character\",\"⫯\"]]"
    input = "&cirmid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cirscir without a semi-colon" do
    output = "[[\"Character\",\"&cirscir\"]]"
    input = "&cirscir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cirscir; with a semi-colon" do
    output = "[[\"Character\",\"⧂\"]]"
    input = "&cirscir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: clubs without a semi-colon" do
    output = "[[\"Character\",\"&clubs\"]]"
    input = "&clubs"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: clubs; with a semi-colon" do
    output = "[[\"Character\",\"♣\"]]"
    input = "&clubs;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: clubsuit without a semi-colon" do
    output = "[[\"Character\",\"&clubsuit\"]]"
    input = "&clubsuit"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: clubsuit; with a semi-colon" do
    output = "[[\"Character\",\"♣\"]]"
    input = "&clubsuit;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: colon without a semi-colon" do
    output = "[[\"Character\",\"&colon\"]]"
    input = "&colon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: colon; with a semi-colon" do
    output = "[[\"Character\",\":\"]]"
    input = "&colon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: colone without a semi-colon" do
    output = "[[\"Character\",\"&colone\"]]"
    input = "&colone"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: colone; with a semi-colon" do
    output = "[[\"Character\",\"≔\"]]"
    input = "&colone;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: coloneq without a semi-colon" do
    output = "[[\"Character\",\"&coloneq\"]]"
    input = "&coloneq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: coloneq; with a semi-colon" do
    output = "[[\"Character\",\"≔\"]]"
    input = "&coloneq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: comma without a semi-colon" do
    output = "[[\"Character\",\"&comma\"]]"
    input = "&comma"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: comma; with a semi-colon" do
    output = "[[\"Character\",\",\"]]"
    input = "&comma;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: commat without a semi-colon" do
    output = "[[\"Character\",\"&commat\"]]"
    input = "&commat"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: commat; with a semi-colon" do
    output = "[[\"Character\",\"@\"]]"
    input = "&commat;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: comp without a semi-colon" do
    output = "[[\"Character\",\"&comp\"]]"
    input = "&comp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: comp; with a semi-colon" do
    output = "[[\"Character\",\"∁\"]]"
    input = "&comp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: compfn without a semi-colon" do
    output = "[[\"Character\",\"&compfn\"]]"
    input = "&compfn"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: compfn; with a semi-colon" do
    output = "[[\"Character\",\"∘\"]]"
    input = "&compfn;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: complement without a semi-colon" do
    output = "[[\"Character\",\"&complement\"]]"
    input = "&complement"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: complement; with a semi-colon" do
    output = "[[\"Character\",\"∁\"]]"
    input = "&complement;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: complexes without a semi-colon" do
    output = "[[\"Character\",\"&complexes\"]]"
    input = "&complexes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: complexes; with a semi-colon" do
    output = "[[\"Character\",\"ℂ\"]]"
    input = "&complexes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cong without a semi-colon" do
    output = "[[\"Character\",\"&cong\"]]"
    input = "&cong"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cong; with a semi-colon" do
    output = "[[\"Character\",\"≅\"]]"
    input = "&cong;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: congdot without a semi-colon" do
    output = "[[\"Character\",\"&congdot\"]]"
    input = "&congdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: congdot; with a semi-colon" do
    output = "[[\"Character\",\"⩭\"]]"
    input = "&congdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: conint without a semi-colon" do
    output = "[[\"Character\",\"&conint\"]]"
    input = "&conint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: conint; with a semi-colon" do
    output = "[[\"Character\",\"∮\"]]"
    input = "&conint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: copf without a semi-colon" do
    output = "[[\"Character\",\"&copf\"]]"
    input = "&copf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: copf; with a semi-colon" do
    output = "[[\"Character\",\"𝕔\"]]"
    input = "&copf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: coprod without a semi-colon" do
    output = "[[\"Character\",\"&coprod\"]]"
    input = "&coprod"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: coprod; with a semi-colon" do
    output = "[[\"Character\",\"∐\"]]"
    input = "&coprod;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: copy without a semi-colon" do
    output = "[[\"Character\",\"©\"]]"
    input = "&copy"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: copy; with a semi-colon" do
    output = "[[\"Character\",\"©\"]]"
    input = "&copy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: copysr; with a semi-colon" do
    output = "[[\"Character\",\"℗\"]]"
    input = "&copysr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: crarr without a semi-colon" do
    output = "[[\"Character\",\"&crarr\"]]"
    input = "&crarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: crarr; with a semi-colon" do
    output = "[[\"Character\",\"↵\"]]"
    input = "&crarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cross without a semi-colon" do
    output = "[[\"Character\",\"&cross\"]]"
    input = "&cross"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cross; with a semi-colon" do
    output = "[[\"Character\",\"✗\"]]"
    input = "&cross;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cscr without a semi-colon" do
    output = "[[\"Character\",\"&cscr\"]]"
    input = "&cscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒸\"]]"
    input = "&cscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: csub without a semi-colon" do
    output = "[[\"Character\",\"&csub\"]]"
    input = "&csub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: csub; with a semi-colon" do
    output = "[[\"Character\",\"⫏\"]]"
    input = "&csub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: csube without a semi-colon" do
    output = "[[\"Character\",\"&csube\"]]"
    input = "&csube"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: csube; with a semi-colon" do
    output = "[[\"Character\",\"⫑\"]]"
    input = "&csube;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: csup without a semi-colon" do
    output = "[[\"Character\",\"&csup\"]]"
    input = "&csup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: csup; with a semi-colon" do
    output = "[[\"Character\",\"⫐\"]]"
    input = "&csup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: csupe without a semi-colon" do
    output = "[[\"Character\",\"&csupe\"]]"
    input = "&csupe"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: csupe; with a semi-colon" do
    output = "[[\"Character\",\"⫒\"]]"
    input = "&csupe;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ctdot without a semi-colon" do
    output = "[[\"Character\",\"&ctdot\"]]"
    input = "&ctdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ctdot; with a semi-colon" do
    output = "[[\"Character\",\"⋯\"]]"
    input = "&ctdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cudarrl without a semi-colon" do
    output = "[[\"Character\",\"&cudarrl\"]]"
    input = "&cudarrl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cudarrl; with a semi-colon" do
    output = "[[\"Character\",\"⤸\"]]"
    input = "&cudarrl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cudarrr without a semi-colon" do
    output = "[[\"Character\",\"&cudarrr\"]]"
    input = "&cudarrr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cudarrr; with a semi-colon" do
    output = "[[\"Character\",\"⤵\"]]"
    input = "&cudarrr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cuepr without a semi-colon" do
    output = "[[\"Character\",\"&cuepr\"]]"
    input = "&cuepr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cuepr; with a semi-colon" do
    output = "[[\"Character\",\"⋞\"]]"
    input = "&cuepr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cuesc without a semi-colon" do
    output = "[[\"Character\",\"&cuesc\"]]"
    input = "&cuesc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cuesc; with a semi-colon" do
    output = "[[\"Character\",\"⋟\"]]"
    input = "&cuesc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cularr without a semi-colon" do
    output = "[[\"Character\",\"&cularr\"]]"
    input = "&cularr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cularr; with a semi-colon" do
    output = "[[\"Character\",\"↶\"]]"
    input = "&cularr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cularrp without a semi-colon" do
    output = "[[\"Character\",\"&cularrp\"]]"
    input = "&cularrp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cularrp; with a semi-colon" do
    output = "[[\"Character\",\"⤽\"]]"
    input = "&cularrp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cup without a semi-colon" do
    output = "[[\"Character\",\"&cup\"]]"
    input = "&cup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cup; with a semi-colon" do
    output = "[[\"Character\",\"∪\"]]"
    input = "&cup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cupbrcap without a semi-colon" do
    output = "[[\"Character\",\"&cupbrcap\"]]"
    input = "&cupbrcap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cupbrcap; with a semi-colon" do
    output = "[[\"Character\",\"⩈\"]]"
    input = "&cupbrcap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cupcap without a semi-colon" do
    output = "[[\"Character\",\"&cupcap\"]]"
    input = "&cupcap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cupcap; with a semi-colon" do
    output = "[[\"Character\",\"⩆\"]]"
    input = "&cupcap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cupcup without a semi-colon" do
    output = "[[\"Character\",\"&cupcup\"]]"
    input = "&cupcup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cupcup; with a semi-colon" do
    output = "[[\"Character\",\"⩊\"]]"
    input = "&cupcup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cupdot without a semi-colon" do
    output = "[[\"Character\",\"&cupdot\"]]"
    input = "&cupdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cupdot; with a semi-colon" do
    output = "[[\"Character\",\"⊍\"]]"
    input = "&cupdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cupor without a semi-colon" do
    output = "[[\"Character\",\"&cupor\"]]"
    input = "&cupor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cupor; with a semi-colon" do
    output = "[[\"Character\",\"⩅\"]]"
    input = "&cupor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cups without a semi-colon" do
    output = "[[\"Character\",\"&cups\"]]"
    input = "&cups"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cups; with a semi-colon" do
    output = "[[\"Character\",\"∪︀\"]]"
    input = "&cups;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: curarr without a semi-colon" do
    output = "[[\"Character\",\"&curarr\"]]"
    input = "&curarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curarr; with a semi-colon" do
    output = "[[\"Character\",\"↷\"]]"
    input = "&curarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: curarrm without a semi-colon" do
    output = "[[\"Character\",\"&curarrm\"]]"
    input = "&curarrm"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curarrm; with a semi-colon" do
    output = "[[\"Character\",\"⤼\"]]"
    input = "&curarrm;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: curlyeqprec without a semi-colon" do
    output = "[[\"Character\",\"&curlyeqprec\"]]"
    input = "&curlyeqprec"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curlyeqprec; with a semi-colon" do
    output = "[[\"Character\",\"⋞\"]]"
    input = "&curlyeqprec;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: curlyeqsucc without a semi-colon" do
    output = "[[\"Character\",\"&curlyeqsucc\"]]"
    input = "&curlyeqsucc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curlyeqsucc; with a semi-colon" do
    output = "[[\"Character\",\"⋟\"]]"
    input = "&curlyeqsucc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: curlyvee without a semi-colon" do
    output = "[[\"Character\",\"&curlyvee\"]]"
    input = "&curlyvee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curlyvee; with a semi-colon" do
    output = "[[\"Character\",\"⋎\"]]"
    input = "&curlyvee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: curlywedge without a semi-colon" do
    output = "[[\"Character\",\"&curlywedge\"]]"
    input = "&curlywedge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curlywedge; with a semi-colon" do
    output = "[[\"Character\",\"⋏\"]]"
    input = "&curlywedge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curren without a semi-colon" do
    output = "[[\"Character\",\"¤\"]]"
    input = "&curren"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curren; with a semi-colon" do
    output = "[[\"Character\",\"¤\"]]"
    input = "&curren;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: curvearrowleft without a semi-colon" do
    output = "[[\"Character\",\"&curvearrowleft\"]]"
    input = "&curvearrowleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curvearrowleft; with a semi-colon" do
    output = "[[\"Character\",\"↶\"]]"
    input = "&curvearrowleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: curvearrowright without a semi-colon" do
    output = "[[\"Character\",\"&curvearrowright\"]]"
    input = "&curvearrowright"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: curvearrowright; with a semi-colon" do
    output = "[[\"Character\",\"↷\"]]"
    input = "&curvearrowright;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cuvee without a semi-colon" do
    output = "[[\"Character\",\"&cuvee\"]]"
    input = "&cuvee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cuvee; with a semi-colon" do
    output = "[[\"Character\",\"⋎\"]]"
    input = "&cuvee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cuwed without a semi-colon" do
    output = "[[\"Character\",\"&cuwed\"]]"
    input = "&cuwed"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cuwed; with a semi-colon" do
    output = "[[\"Character\",\"⋏\"]]"
    input = "&cuwed;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cwconint without a semi-colon" do
    output = "[[\"Character\",\"&cwconint\"]]"
    input = "&cwconint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cwconint; with a semi-colon" do
    output = "[[\"Character\",\"∲\"]]"
    input = "&cwconint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cwint without a semi-colon" do
    output = "[[\"Character\",\"&cwint\"]]"
    input = "&cwint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cwint; with a semi-colon" do
    output = "[[\"Character\",\"∱\"]]"
    input = "&cwint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: cylcty without a semi-colon" do
    output = "[[\"Character\",\"&cylcty\"]]"
    input = "&cylcty"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: cylcty; with a semi-colon" do
    output = "[[\"Character\",\"⌭\"]]"
    input = "&cylcty;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dArr without a semi-colon" do
    output = "[[\"Character\",\"&dArr\"]]"
    input = "&dArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dArr; with a semi-colon" do
    output = "[[\"Character\",\"⇓\"]]"
    input = "&dArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dHar without a semi-colon" do
    output = "[[\"Character\",\"&dHar\"]]"
    input = "&dHar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dHar; with a semi-colon" do
    output = "[[\"Character\",\"⥥\"]]"
    input = "&dHar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dagger without a semi-colon" do
    output = "[[\"Character\",\"&dagger\"]]"
    input = "&dagger"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dagger; with a semi-colon" do
    output = "[[\"Character\",\"†\"]]"
    input = "&dagger;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: daleth without a semi-colon" do
    output = "[[\"Character\",\"&daleth\"]]"
    input = "&daleth"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: daleth; with a semi-colon" do
    output = "[[\"Character\",\"ℸ\"]]"
    input = "&daleth;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: darr without a semi-colon" do
    output = "[[\"Character\",\"&darr\"]]"
    input = "&darr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: darr; with a semi-colon" do
    output = "[[\"Character\",\"↓\"]]"
    input = "&darr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dash without a semi-colon" do
    output = "[[\"Character\",\"&dash\"]]"
    input = "&dash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dash; with a semi-colon" do
    output = "[[\"Character\",\"‐\"]]"
    input = "&dash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dashv without a semi-colon" do
    output = "[[\"Character\",\"&dashv\"]]"
    input = "&dashv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dashv; with a semi-colon" do
    output = "[[\"Character\",\"⊣\"]]"
    input = "&dashv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dbkarow without a semi-colon" do
    output = "[[\"Character\",\"&dbkarow\"]]"
    input = "&dbkarow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dbkarow; with a semi-colon" do
    output = "[[\"Character\",\"⤏\"]]"
    input = "&dbkarow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dblac without a semi-colon" do
    output = "[[\"Character\",\"&dblac\"]]"
    input = "&dblac"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dblac; with a semi-colon" do
    output = "[[\"Character\",\"˝\"]]"
    input = "&dblac;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dcaron without a semi-colon" do
    output = "[[\"Character\",\"&dcaron\"]]"
    input = "&dcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dcaron; with a semi-colon" do
    output = "[[\"Character\",\"ď\"]]"
    input = "&dcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dcy without a semi-colon" do
    output = "[[\"Character\",\"&dcy\"]]"
    input = "&dcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dcy; with a semi-colon" do
    output = "[[\"Character\",\"д\"]]"
    input = "&dcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dd without a semi-colon" do
    output = "[[\"Character\",\"&dd\"]]"
    input = "&dd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dd; with a semi-colon" do
    output = "[[\"Character\",\"ⅆ\"]]"
    input = "&dd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ddagger without a semi-colon" do
    output = "[[\"Character\",\"&ddagger\"]]"
    input = "&ddagger"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ddagger; with a semi-colon" do
    output = "[[\"Character\",\"‡\"]]"
    input = "&ddagger;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ddarr without a semi-colon" do
    output = "[[\"Character\",\"&ddarr\"]]"
    input = "&ddarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ddarr; with a semi-colon" do
    output = "[[\"Character\",\"⇊\"]]"
    input = "&ddarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ddotseq without a semi-colon" do
    output = "[[\"Character\",\"&ddotseq\"]]"
    input = "&ddotseq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ddotseq; with a semi-colon" do
    output = "[[\"Character\",\"⩷\"]]"
    input = "&ddotseq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: deg without a semi-colon" do
    output = "[[\"Character\",\"°\"]]"
    input = "&deg"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: deg; with a semi-colon" do
    output = "[[\"Character\",\"°\"]]"
    input = "&deg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: delta without a semi-colon" do
    output = "[[\"Character\",\"&delta\"]]"
    input = "&delta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: delta; with a semi-colon" do
    output = "[[\"Character\",\"δ\"]]"
    input = "&delta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: demptyv without a semi-colon" do
    output = "[[\"Character\",\"&demptyv\"]]"
    input = "&demptyv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: demptyv; with a semi-colon" do
    output = "[[\"Character\",\"⦱\"]]"
    input = "&demptyv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dfisht without a semi-colon" do
    output = "[[\"Character\",\"&dfisht\"]]"
    input = "&dfisht"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dfisht; with a semi-colon" do
    output = "[[\"Character\",\"⥿\"]]"
    input = "&dfisht;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dfr without a semi-colon" do
    output = "[[\"Character\",\"&dfr\"]]"
    input = "&dfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔡\"]]"
    input = "&dfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dharl without a semi-colon" do
    output = "[[\"Character\",\"&dharl\"]]"
    input = "&dharl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dharl; with a semi-colon" do
    output = "[[\"Character\",\"⇃\"]]"
    input = "&dharl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dharr without a semi-colon" do
    output = "[[\"Character\",\"&dharr\"]]"
    input = "&dharr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dharr; with a semi-colon" do
    output = "[[\"Character\",\"⇂\"]]"
    input = "&dharr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: diam without a semi-colon" do
    output = "[[\"Character\",\"&diam\"]]"
    input = "&diam"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: diam; with a semi-colon" do
    output = "[[\"Character\",\"⋄\"]]"
    input = "&diam;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: diamond without a semi-colon" do
    output = "[[\"Character\",\"&diamond\"]]"
    input = "&diamond"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: diamond; with a semi-colon" do
    output = "[[\"Character\",\"⋄\"]]"
    input = "&diamond;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: diamondsuit without a semi-colon" do
    output = "[[\"Character\",\"&diamondsuit\"]]"
    input = "&diamondsuit"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: diamondsuit; with a semi-colon" do
    output = "[[\"Character\",\"♦\"]]"
    input = "&diamondsuit;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: diams without a semi-colon" do
    output = "[[\"Character\",\"&diams\"]]"
    input = "&diams"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: diams; with a semi-colon" do
    output = "[[\"Character\",\"♦\"]]"
    input = "&diams;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: die without a semi-colon" do
    output = "[[\"Character\",\"&die\"]]"
    input = "&die"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: die; with a semi-colon" do
    output = "[[\"Character\",\"¨\"]]"
    input = "&die;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: digamma without a semi-colon" do
    output = "[[\"Character\",\"&digamma\"]]"
    input = "&digamma"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: digamma; with a semi-colon" do
    output = "[[\"Character\",\"ϝ\"]]"
    input = "&digamma;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: disin without a semi-colon" do
    output = "[[\"Character\",\"&disin\"]]"
    input = "&disin"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: disin; with a semi-colon" do
    output = "[[\"Character\",\"⋲\"]]"
    input = "&disin;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: div without a semi-colon" do
    output = "[[\"Character\",\"&div\"]]"
    input = "&div"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: div; with a semi-colon" do
    output = "[[\"Character\",\"÷\"]]"
    input = "&div;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: divide without a semi-colon" do
    output = "[[\"Character\",\"÷\"]]"
    input = "&divide"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: divide; with a semi-colon" do
    output = "[[\"Character\",\"÷\"]]"
    input = "&divide;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: divideontimes; with a semi-colon" do
    output = "[[\"Character\",\"⋇\"]]"
    input = "&divideontimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: divonx without a semi-colon" do
    output = "[[\"Character\",\"&divonx\"]]"
    input = "&divonx"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: divonx; with a semi-colon" do
    output = "[[\"Character\",\"⋇\"]]"
    input = "&divonx;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: djcy without a semi-colon" do
    output = "[[\"Character\",\"&djcy\"]]"
    input = "&djcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: djcy; with a semi-colon" do
    output = "[[\"Character\",\"ђ\"]]"
    input = "&djcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dlcorn without a semi-colon" do
    output = "[[\"Character\",\"&dlcorn\"]]"
    input = "&dlcorn"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dlcorn; with a semi-colon" do
    output = "[[\"Character\",\"⌞\"]]"
    input = "&dlcorn;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dlcrop without a semi-colon" do
    output = "[[\"Character\",\"&dlcrop\"]]"
    input = "&dlcrop"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dlcrop; with a semi-colon" do
    output = "[[\"Character\",\"⌍\"]]"
    input = "&dlcrop;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dollar without a semi-colon" do
    output = "[[\"Character\",\"&dollar\"]]"
    input = "&dollar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dollar; with a semi-colon" do
    output = "[[\"Character\",\"$\"]]"
    input = "&dollar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dopf without a semi-colon" do
    output = "[[\"Character\",\"&dopf\"]]"
    input = "&dopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕕\"]]"
    input = "&dopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dot without a semi-colon" do
    output = "[[\"Character\",\"&dot\"]]"
    input = "&dot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dot; with a semi-colon" do
    output = "[[\"Character\",\"˙\"]]"
    input = "&dot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: doteq without a semi-colon" do
    output = "[[\"Character\",\"&doteq\"]]"
    input = "&doteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: doteq; with a semi-colon" do
    output = "[[\"Character\",\"≐\"]]"
    input = "&doteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: doteqdot without a semi-colon" do
    output = "[[\"Character\",\"&doteqdot\"]]"
    input = "&doteqdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: doteqdot; with a semi-colon" do
    output = "[[\"Character\",\"≑\"]]"
    input = "&doteqdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dotminus without a semi-colon" do
    output = "[[\"Character\",\"&dotminus\"]]"
    input = "&dotminus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dotminus; with a semi-colon" do
    output = "[[\"Character\",\"∸\"]]"
    input = "&dotminus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dotplus without a semi-colon" do
    output = "[[\"Character\",\"&dotplus\"]]"
    input = "&dotplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dotplus; with a semi-colon" do
    output = "[[\"Character\",\"∔\"]]"
    input = "&dotplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dotsquare without a semi-colon" do
    output = "[[\"Character\",\"&dotsquare\"]]"
    input = "&dotsquare"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dotsquare; with a semi-colon" do
    output = "[[\"Character\",\"⊡\"]]"
    input = "&dotsquare;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: doublebarwedge without a semi-colon" do
    output = "[[\"Character\",\"&doublebarwedge\"]]"
    input = "&doublebarwedge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: doublebarwedge; with a semi-colon" do
    output = "[[\"Character\",\"⌆\"]]"
    input = "&doublebarwedge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: downarrow without a semi-colon" do
    output = "[[\"Character\",\"&downarrow\"]]"
    input = "&downarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: downarrow; with a semi-colon" do
    output = "[[\"Character\",\"↓\"]]"
    input = "&downarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: downdownarrows without a semi-colon" do
    output = "[[\"Character\",\"&downdownarrows\"]]"
    input = "&downdownarrows"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: downdownarrows; with a semi-colon" do
    output = "[[\"Character\",\"⇊\"]]"
    input = "&downdownarrows;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: downharpoonleft without a semi-colon" do
    output = "[[\"Character\",\"&downharpoonleft\"]]"
    input = "&downharpoonleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: downharpoonleft; with a semi-colon" do
    output = "[[\"Character\",\"⇃\"]]"
    input = "&downharpoonleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: downharpoonright without a semi-colon" do
    output = "[[\"Character\",\"&downharpoonright\"]]"
    input = "&downharpoonright"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: downharpoonright; with a semi-colon" do
    output = "[[\"Character\",\"⇂\"]]"
    input = "&downharpoonright;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: drbkarow without a semi-colon" do
    output = "[[\"Character\",\"&drbkarow\"]]"
    input = "&drbkarow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: drbkarow; with a semi-colon" do
    output = "[[\"Character\",\"⤐\"]]"
    input = "&drbkarow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: drcorn without a semi-colon" do
    output = "[[\"Character\",\"&drcorn\"]]"
    input = "&drcorn"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: drcorn; with a semi-colon" do
    output = "[[\"Character\",\"⌟\"]]"
    input = "&drcorn;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: drcrop without a semi-colon" do
    output = "[[\"Character\",\"&drcrop\"]]"
    input = "&drcrop"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: drcrop; with a semi-colon" do
    output = "[[\"Character\",\"⌌\"]]"
    input = "&drcrop;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dscr without a semi-colon" do
    output = "[[\"Character\",\"&dscr\"]]"
    input = "&dscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒹\"]]"
    input = "&dscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dscy without a semi-colon" do
    output = "[[\"Character\",\"&dscy\"]]"
    input = "&dscy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dscy; with a semi-colon" do
    output = "[[\"Character\",\"ѕ\"]]"
    input = "&dscy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dsol without a semi-colon" do
    output = "[[\"Character\",\"&dsol\"]]"
    input = "&dsol"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dsol; with a semi-colon" do
    output = "[[\"Character\",\"⧶\"]]"
    input = "&dsol;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dstrok without a semi-colon" do
    output = "[[\"Character\",\"&dstrok\"]]"
    input = "&dstrok"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dstrok; with a semi-colon" do
    output = "[[\"Character\",\"đ\"]]"
    input = "&dstrok;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dtdot without a semi-colon" do
    output = "[[\"Character\",\"&dtdot\"]]"
    input = "&dtdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dtdot; with a semi-colon" do
    output = "[[\"Character\",\"⋱\"]]"
    input = "&dtdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dtri without a semi-colon" do
    output = "[[\"Character\",\"&dtri\"]]"
    input = "&dtri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dtri; with a semi-colon" do
    output = "[[\"Character\",\"▿\"]]"
    input = "&dtri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dtrif without a semi-colon" do
    output = "[[\"Character\",\"&dtrif\"]]"
    input = "&dtrif"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dtrif; with a semi-colon" do
    output = "[[\"Character\",\"▾\"]]"
    input = "&dtrif;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: duarr without a semi-colon" do
    output = "[[\"Character\",\"&duarr\"]]"
    input = "&duarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: duarr; with a semi-colon" do
    output = "[[\"Character\",\"⇵\"]]"
    input = "&duarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: duhar without a semi-colon" do
    output = "[[\"Character\",\"&duhar\"]]"
    input = "&duhar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: duhar; with a semi-colon" do
    output = "[[\"Character\",\"⥯\"]]"
    input = "&duhar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dwangle without a semi-colon" do
    output = "[[\"Character\",\"&dwangle\"]]"
    input = "&dwangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dwangle; with a semi-colon" do
    output = "[[\"Character\",\"⦦\"]]"
    input = "&dwangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dzcy without a semi-colon" do
    output = "[[\"Character\",\"&dzcy\"]]"
    input = "&dzcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dzcy; with a semi-colon" do
    output = "[[\"Character\",\"џ\"]]"
    input = "&dzcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: dzigrarr without a semi-colon" do
    output = "[[\"Character\",\"&dzigrarr\"]]"
    input = "&dzigrarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: dzigrarr; with a semi-colon" do
    output = "[[\"Character\",\"⟿\"]]"
    input = "&dzigrarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eDDot without a semi-colon" do
    output = "[[\"Character\",\"&eDDot\"]]"
    input = "&eDDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eDDot; with a semi-colon" do
    output = "[[\"Character\",\"⩷\"]]"
    input = "&eDDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eDot without a semi-colon" do
    output = "[[\"Character\",\"&eDot\"]]"
    input = "&eDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eDot; with a semi-colon" do
    output = "[[\"Character\",\"≑\"]]"
    input = "&eDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eacute without a semi-colon" do
    output = "[[\"Character\",\"é\"]]"
    input = "&eacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eacute; with a semi-colon" do
    output = "[[\"Character\",\"é\"]]"
    input = "&eacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: easter without a semi-colon" do
    output = "[[\"Character\",\"&easter\"]]"
    input = "&easter"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: easter; with a semi-colon" do
    output = "[[\"Character\",\"⩮\"]]"
    input = "&easter;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ecaron without a semi-colon" do
    output = "[[\"Character\",\"&ecaron\"]]"
    input = "&ecaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ecaron; with a semi-colon" do
    output = "[[\"Character\",\"ě\"]]"
    input = "&ecaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ecir without a semi-colon" do
    output = "[[\"Character\",\"&ecir\"]]"
    input = "&ecir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ecir; with a semi-colon" do
    output = "[[\"Character\",\"≖\"]]"
    input = "&ecir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ecirc without a semi-colon" do
    output = "[[\"Character\",\"ê\"]]"
    input = "&ecirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ecirc; with a semi-colon" do
    output = "[[\"Character\",\"ê\"]]"
    input = "&ecirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ecolon without a semi-colon" do
    output = "[[\"Character\",\"&ecolon\"]]"
    input = "&ecolon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ecolon; with a semi-colon" do
    output = "[[\"Character\",\"≕\"]]"
    input = "&ecolon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ecy without a semi-colon" do
    output = "[[\"Character\",\"&ecy\"]]"
    input = "&ecy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ecy; with a semi-colon" do
    output = "[[\"Character\",\"э\"]]"
    input = "&ecy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: edot without a semi-colon" do
    output = "[[\"Character\",\"&edot\"]]"
    input = "&edot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: edot; with a semi-colon" do
    output = "[[\"Character\",\"ė\"]]"
    input = "&edot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ee without a semi-colon" do
    output = "[[\"Character\",\"&ee\"]]"
    input = "&ee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ee; with a semi-colon" do
    output = "[[\"Character\",\"ⅇ\"]]"
    input = "&ee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: efDot without a semi-colon" do
    output = "[[\"Character\",\"&efDot\"]]"
    input = "&efDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: efDot; with a semi-colon" do
    output = "[[\"Character\",\"≒\"]]"
    input = "&efDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: efr without a semi-colon" do
    output = "[[\"Character\",\"&efr\"]]"
    input = "&efr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: efr; with a semi-colon" do
    output = "[[\"Character\",\"𝔢\"]]"
    input = "&efr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eg without a semi-colon" do
    output = "[[\"Character\",\"&eg\"]]"
    input = "&eg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eg; with a semi-colon" do
    output = "[[\"Character\",\"⪚\"]]"
    input = "&eg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: egrave without a semi-colon" do
    output = "[[\"Character\",\"è\"]]"
    input = "&egrave"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: egrave; with a semi-colon" do
    output = "[[\"Character\",\"è\"]]"
    input = "&egrave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: egs without a semi-colon" do
    output = "[[\"Character\",\"&egs\"]]"
    input = "&egs"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: egs; with a semi-colon" do
    output = "[[\"Character\",\"⪖\"]]"
    input = "&egs;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: egsdot without a semi-colon" do
    output = "[[\"Character\",\"&egsdot\"]]"
    input = "&egsdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: egsdot; with a semi-colon" do
    output = "[[\"Character\",\"⪘\"]]"
    input = "&egsdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: el without a semi-colon" do
    output = "[[\"Character\",\"&el\"]]"
    input = "&el"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: el; with a semi-colon" do
    output = "[[\"Character\",\"⪙\"]]"
    input = "&el;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: elinters without a semi-colon" do
    output = "[[\"Character\",\"&elinters\"]]"
    input = "&elinters"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: elinters; with a semi-colon" do
    output = "[[\"Character\",\"⏧\"]]"
    input = "&elinters;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ell without a semi-colon" do
    output = "[[\"Character\",\"&ell\"]]"
    input = "&ell"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ell; with a semi-colon" do
    output = "[[\"Character\",\"ℓ\"]]"
    input = "&ell;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: els without a semi-colon" do
    output = "[[\"Character\",\"&els\"]]"
    input = "&els"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: els; with a semi-colon" do
    output = "[[\"Character\",\"⪕\"]]"
    input = "&els;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: elsdot without a semi-colon" do
    output = "[[\"Character\",\"&elsdot\"]]"
    input = "&elsdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: elsdot; with a semi-colon" do
    output = "[[\"Character\",\"⪗\"]]"
    input = "&elsdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: emacr without a semi-colon" do
    output = "[[\"Character\",\"&emacr\"]]"
    input = "&emacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: emacr; with a semi-colon" do
    output = "[[\"Character\",\"ē\"]]"
    input = "&emacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: empty without a semi-colon" do
    output = "[[\"Character\",\"&empty\"]]"
    input = "&empty"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: empty; with a semi-colon" do
    output = "[[\"Character\",\"∅\"]]"
    input = "&empty;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: emptyset without a semi-colon" do
    output = "[[\"Character\",\"&emptyset\"]]"
    input = "&emptyset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: emptyset; with a semi-colon" do
    output = "[[\"Character\",\"∅\"]]"
    input = "&emptyset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: emptyv without a semi-colon" do
    output = "[[\"Character\",\"&emptyv\"]]"
    input = "&emptyv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: emptyv; with a semi-colon" do
    output = "[[\"Character\",\"∅\"]]"
    input = "&emptyv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: emsp without a semi-colon" do
    output = "[[\"Character\",\"&emsp\"]]"
    input = "&emsp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: emsp13 without a semi-colon" do
    output = "[[\"Character\",\"&emsp13\"]]"
    input = "&emsp13"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: emsp13; with a semi-colon" do
    output = "[[\"Character\",\"\u2004\"]]"
    input = "&emsp13;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: emsp14 without a semi-colon" do
    output = "[[\"Character\",\"&emsp14\"]]"
    input = "&emsp14"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: emsp14; with a semi-colon" do
    output = "[[\"Character\",\"\u2005\"]]"
    input = "&emsp14;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: emsp; with a semi-colon" do
    output = "[[\"Character\",\"\u2003\"]]"
    input = "&emsp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eng without a semi-colon" do
    output = "[[\"Character\",\"&eng\"]]"
    input = "&eng"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eng; with a semi-colon" do
    output = "[[\"Character\",\"ŋ\"]]"
    input = "&eng;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ensp without a semi-colon" do
    output = "[[\"Character\",\"&ensp\"]]"
    input = "&ensp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ensp; with a semi-colon" do
    output = "[[\"Character\",\"\u2002\"]]"
    input = "&ensp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eogon without a semi-colon" do
    output = "[[\"Character\",\"&eogon\"]]"
    input = "&eogon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eogon; with a semi-colon" do
    output = "[[\"Character\",\"ę\"]]"
    input = "&eogon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eopf without a semi-colon" do
    output = "[[\"Character\",\"&eopf\"]]"
    input = "&eopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕖\"]]"
    input = "&eopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: epar without a semi-colon" do
    output = "[[\"Character\",\"&epar\"]]"
    input = "&epar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: epar; with a semi-colon" do
    output = "[[\"Character\",\"⋕\"]]"
    input = "&epar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eparsl without a semi-colon" do
    output = "[[\"Character\",\"&eparsl\"]]"
    input = "&eparsl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eparsl; with a semi-colon" do
    output = "[[\"Character\",\"⧣\"]]"
    input = "&eparsl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eplus without a semi-colon" do
    output = "[[\"Character\",\"&eplus\"]]"
    input = "&eplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eplus; with a semi-colon" do
    output = "[[\"Character\",\"⩱\"]]"
    input = "&eplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: epsi without a semi-colon" do
    output = "[[\"Character\",\"&epsi\"]]"
    input = "&epsi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: epsi; with a semi-colon" do
    output = "[[\"Character\",\"ε\"]]"
    input = "&epsi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: epsilon without a semi-colon" do
    output = "[[\"Character\",\"&epsilon\"]]"
    input = "&epsilon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: epsilon; with a semi-colon" do
    output = "[[\"Character\",\"ε\"]]"
    input = "&epsilon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: epsiv without a semi-colon" do
    output = "[[\"Character\",\"&epsiv\"]]"
    input = "&epsiv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: epsiv; with a semi-colon" do
    output = "[[\"Character\",\"ϵ\"]]"
    input = "&epsiv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eqcirc without a semi-colon" do
    output = "[[\"Character\",\"&eqcirc\"]]"
    input = "&eqcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eqcirc; with a semi-colon" do
    output = "[[\"Character\",\"≖\"]]"
    input = "&eqcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eqcolon without a semi-colon" do
    output = "[[\"Character\",\"&eqcolon\"]]"
    input = "&eqcolon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eqcolon; with a semi-colon" do
    output = "[[\"Character\",\"≕\"]]"
    input = "&eqcolon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eqsim without a semi-colon" do
    output = "[[\"Character\",\"&eqsim\"]]"
    input = "&eqsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eqsim; with a semi-colon" do
    output = "[[\"Character\",\"≂\"]]"
    input = "&eqsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eqslantgtr without a semi-colon" do
    output = "[[\"Character\",\"&eqslantgtr\"]]"
    input = "&eqslantgtr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eqslantgtr; with a semi-colon" do
    output = "[[\"Character\",\"⪖\"]]"
    input = "&eqslantgtr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eqslantless without a semi-colon" do
    output = "[[\"Character\",\"&eqslantless\"]]"
    input = "&eqslantless"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eqslantless; with a semi-colon" do
    output = "[[\"Character\",\"⪕\"]]"
    input = "&eqslantless;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: equals without a semi-colon" do
    output = "[[\"Character\",\"&equals\"]]"
    input = "&equals"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: equals; with a semi-colon" do
    output = "[[\"Character\",\"=\"]]"
    input = "&equals;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: equest without a semi-colon" do
    output = "[[\"Character\",\"&equest\"]]"
    input = "&equest"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: equest; with a semi-colon" do
    output = "[[\"Character\",\"≟\"]]"
    input = "&equest;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: equiv without a semi-colon" do
    output = "[[\"Character\",\"&equiv\"]]"
    input = "&equiv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: equiv; with a semi-colon" do
    output = "[[\"Character\",\"≡\"]]"
    input = "&equiv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: equivDD without a semi-colon" do
    output = "[[\"Character\",\"&equivDD\"]]"
    input = "&equivDD"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: equivDD; with a semi-colon" do
    output = "[[\"Character\",\"⩸\"]]"
    input = "&equivDD;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eqvparsl without a semi-colon" do
    output = "[[\"Character\",\"&eqvparsl\"]]"
    input = "&eqvparsl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eqvparsl; with a semi-colon" do
    output = "[[\"Character\",\"⧥\"]]"
    input = "&eqvparsl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: erDot without a semi-colon" do
    output = "[[\"Character\",\"&erDot\"]]"
    input = "&erDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: erDot; with a semi-colon" do
    output = "[[\"Character\",\"≓\"]]"
    input = "&erDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: erarr without a semi-colon" do
    output = "[[\"Character\",\"&erarr\"]]"
    input = "&erarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: erarr; with a semi-colon" do
    output = "[[\"Character\",\"⥱\"]]"
    input = "&erarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: escr without a semi-colon" do
    output = "[[\"Character\",\"&escr\"]]"
    input = "&escr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: escr; with a semi-colon" do
    output = "[[\"Character\",\"ℯ\"]]"
    input = "&escr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: esdot without a semi-colon" do
    output = "[[\"Character\",\"&esdot\"]]"
    input = "&esdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: esdot; with a semi-colon" do
    output = "[[\"Character\",\"≐\"]]"
    input = "&esdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: esim without a semi-colon" do
    output = "[[\"Character\",\"&esim\"]]"
    input = "&esim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: esim; with a semi-colon" do
    output = "[[\"Character\",\"≂\"]]"
    input = "&esim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: eta without a semi-colon" do
    output = "[[\"Character\",\"&eta\"]]"
    input = "&eta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eta; with a semi-colon" do
    output = "[[\"Character\",\"η\"]]"
    input = "&eta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eth without a semi-colon" do
    output = "[[\"Character\",\"ð\"]]"
    input = "&eth"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: eth; with a semi-colon" do
    output = "[[\"Character\",\"ð\"]]"
    input = "&eth;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: euml without a semi-colon" do
    output = "[[\"Character\",\"ë\"]]"
    input = "&euml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: euml; with a semi-colon" do
    output = "[[\"Character\",\"ë\"]]"
    input = "&euml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: euro without a semi-colon" do
    output = "[[\"Character\",\"&euro\"]]"
    input = "&euro"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: euro; with a semi-colon" do
    output = "[[\"Character\",\"€\"]]"
    input = "&euro;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: excl without a semi-colon" do
    output = "[[\"Character\",\"&excl\"]]"
    input = "&excl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: excl; with a semi-colon" do
    output = "[[\"Character\",\"!\"]]"
    input = "&excl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: exist without a semi-colon" do
    output = "[[\"Character\",\"&exist\"]]"
    input = "&exist"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: exist; with a semi-colon" do
    output = "[[\"Character\",\"∃\"]]"
    input = "&exist;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: expectation without a semi-colon" do
    output = "[[\"Character\",\"&expectation\"]]"
    input = "&expectation"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: expectation; with a semi-colon" do
    output = "[[\"Character\",\"ℰ\"]]"
    input = "&expectation;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: exponentiale without a semi-colon" do
    output = "[[\"Character\",\"&exponentiale\"]]"
    input = "&exponentiale"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: exponentiale; with a semi-colon" do
    output = "[[\"Character\",\"ⅇ\"]]"
    input = "&exponentiale;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fallingdotseq without a semi-colon" do
    output = "[[\"Character\",\"&fallingdotseq\"]]"
    input = "&fallingdotseq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fallingdotseq; with a semi-colon" do
    output = "[[\"Character\",\"≒\"]]"
    input = "&fallingdotseq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fcy without a semi-colon" do
    output = "[[\"Character\",\"&fcy\"]]"
    input = "&fcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fcy; with a semi-colon" do
    output = "[[\"Character\",\"ф\"]]"
    input = "&fcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: female without a semi-colon" do
    output = "[[\"Character\",\"&female\"]]"
    input = "&female"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: female; with a semi-colon" do
    output = "[[\"Character\",\"♀\"]]"
    input = "&female;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ffilig without a semi-colon" do
    output = "[[\"Character\",\"&ffilig\"]]"
    input = "&ffilig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ffilig; with a semi-colon" do
    output = "[[\"Character\",\"ﬃ\"]]"
    input = "&ffilig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fflig without a semi-colon" do
    output = "[[\"Character\",\"&fflig\"]]"
    input = "&fflig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fflig; with a semi-colon" do
    output = "[[\"Character\",\"ﬀ\"]]"
    input = "&fflig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ffllig without a semi-colon" do
    output = "[[\"Character\",\"&ffllig\"]]"
    input = "&ffllig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ffllig; with a semi-colon" do
    output = "[[\"Character\",\"ﬄ\"]]"
    input = "&ffllig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ffr without a semi-colon" do
    output = "[[\"Character\",\"&ffr\"]]"
    input = "&ffr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ffr; with a semi-colon" do
    output = "[[\"Character\",\"𝔣\"]]"
    input = "&ffr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: filig without a semi-colon" do
    output = "[[\"Character\",\"&filig\"]]"
    input = "&filig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: filig; with a semi-colon" do
    output = "[[\"Character\",\"ﬁ\"]]"
    input = "&filig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fjlig without a semi-colon" do
    output = "[[\"Character\",\"&fjlig\"]]"
    input = "&fjlig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fjlig; with a semi-colon" do
    output = "[[\"Character\",\"fj\"]]"
    input = "&fjlig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: flat without a semi-colon" do
    output = "[[\"Character\",\"&flat\"]]"
    input = "&flat"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: flat; with a semi-colon" do
    output = "[[\"Character\",\"♭\"]]"
    input = "&flat;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fllig without a semi-colon" do
    output = "[[\"Character\",\"&fllig\"]]"
    input = "&fllig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fllig; with a semi-colon" do
    output = "[[\"Character\",\"ﬂ\"]]"
    input = "&fllig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fltns without a semi-colon" do
    output = "[[\"Character\",\"&fltns\"]]"
    input = "&fltns"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fltns; with a semi-colon" do
    output = "[[\"Character\",\"▱\"]]"
    input = "&fltns;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fnof without a semi-colon" do
    output = "[[\"Character\",\"&fnof\"]]"
    input = "&fnof"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fnof; with a semi-colon" do
    output = "[[\"Character\",\"ƒ\"]]"
    input = "&fnof;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fopf without a semi-colon" do
    output = "[[\"Character\",\"&fopf\"]]"
    input = "&fopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕗\"]]"
    input = "&fopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: forall without a semi-colon" do
    output = "[[\"Character\",\"&forall\"]]"
    input = "&forall"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: forall; with a semi-colon" do
    output = "[[\"Character\",\"∀\"]]"
    input = "&forall;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fork without a semi-colon" do
    output = "[[\"Character\",\"&fork\"]]"
    input = "&fork"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fork; with a semi-colon" do
    output = "[[\"Character\",\"⋔\"]]"
    input = "&fork;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: forkv without a semi-colon" do
    output = "[[\"Character\",\"&forkv\"]]"
    input = "&forkv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: forkv; with a semi-colon" do
    output = "[[\"Character\",\"⫙\"]]"
    input = "&forkv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fpartint without a semi-colon" do
    output = "[[\"Character\",\"&fpartint\"]]"
    input = "&fpartint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fpartint; with a semi-colon" do
    output = "[[\"Character\",\"⨍\"]]"
    input = "&fpartint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac12 without a semi-colon" do
    output = "[[\"Character\",\"½\"]]"
    input = "&frac12"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac12; with a semi-colon" do
    output = "[[\"Character\",\"½\"]]"
    input = "&frac12;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac13 without a semi-colon" do
    output = "[[\"Character\",\"&frac13\"]]"
    input = "&frac13"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac13; with a semi-colon" do
    output = "[[\"Character\",\"⅓\"]]"
    input = "&frac13;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac14 without a semi-colon" do
    output = "[[\"Character\",\"¼\"]]"
    input = "&frac14"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac14; with a semi-colon" do
    output = "[[\"Character\",\"¼\"]]"
    input = "&frac14;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac15 without a semi-colon" do
    output = "[[\"Character\",\"&frac15\"]]"
    input = "&frac15"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac15; with a semi-colon" do
    output = "[[\"Character\",\"⅕\"]]"
    input = "&frac15;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac16 without a semi-colon" do
    output = "[[\"Character\",\"&frac16\"]]"
    input = "&frac16"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac16; with a semi-colon" do
    output = "[[\"Character\",\"⅙\"]]"
    input = "&frac16;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac18 without a semi-colon" do
    output = "[[\"Character\",\"&frac18\"]]"
    input = "&frac18"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac18; with a semi-colon" do
    output = "[[\"Character\",\"⅛\"]]"
    input = "&frac18;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac23 without a semi-colon" do
    output = "[[\"Character\",\"&frac23\"]]"
    input = "&frac23"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac23; with a semi-colon" do
    output = "[[\"Character\",\"⅔\"]]"
    input = "&frac23;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac25 without a semi-colon" do
    output = "[[\"Character\",\"&frac25\"]]"
    input = "&frac25"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac25; with a semi-colon" do
    output = "[[\"Character\",\"⅖\"]]"
    input = "&frac25;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac34 without a semi-colon" do
    output = "[[\"Character\",\"¾\"]]"
    input = "&frac34"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac34; with a semi-colon" do
    output = "[[\"Character\",\"¾\"]]"
    input = "&frac34;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac35 without a semi-colon" do
    output = "[[\"Character\",\"&frac35\"]]"
    input = "&frac35"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac35; with a semi-colon" do
    output = "[[\"Character\",\"⅗\"]]"
    input = "&frac35;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac38 without a semi-colon" do
    output = "[[\"Character\",\"&frac38\"]]"
    input = "&frac38"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac38; with a semi-colon" do
    output = "[[\"Character\",\"⅜\"]]"
    input = "&frac38;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac45 without a semi-colon" do
    output = "[[\"Character\",\"&frac45\"]]"
    input = "&frac45"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac45; with a semi-colon" do
    output = "[[\"Character\",\"⅘\"]]"
    input = "&frac45;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac56 without a semi-colon" do
    output = "[[\"Character\",\"&frac56\"]]"
    input = "&frac56"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac56; with a semi-colon" do
    output = "[[\"Character\",\"⅚\"]]"
    input = "&frac56;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac58 without a semi-colon" do
    output = "[[\"Character\",\"&frac58\"]]"
    input = "&frac58"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac58; with a semi-colon" do
    output = "[[\"Character\",\"⅝\"]]"
    input = "&frac58;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frac78 without a semi-colon" do
    output = "[[\"Character\",\"&frac78\"]]"
    input = "&frac78"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frac78; with a semi-colon" do
    output = "[[\"Character\",\"⅞\"]]"
    input = "&frac78;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frasl without a semi-colon" do
    output = "[[\"Character\",\"&frasl\"]]"
    input = "&frasl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frasl; with a semi-colon" do
    output = "[[\"Character\",\"⁄\"]]"
    input = "&frasl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: frown without a semi-colon" do
    output = "[[\"Character\",\"&frown\"]]"
    input = "&frown"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: frown; with a semi-colon" do
    output = "[[\"Character\",\"⌢\"]]"
    input = "&frown;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: fscr without a semi-colon" do
    output = "[[\"Character\",\"&fscr\"]]"
    input = "&fscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: fscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒻\"]]"
    input = "&fscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gE without a semi-colon" do
    output = "[[\"Character\",\"&gE\"]]"
    input = "&gE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gE; with a semi-colon" do
    output = "[[\"Character\",\"≧\"]]"
    input = "&gE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gEl without a semi-colon" do
    output = "[[\"Character\",\"&gEl\"]]"
    input = "&gEl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gEl; with a semi-colon" do
    output = "[[\"Character\",\"⪌\"]]"
    input = "&gEl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gacute without a semi-colon" do
    output = "[[\"Character\",\"&gacute\"]]"
    input = "&gacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gacute; with a semi-colon" do
    output = "[[\"Character\",\"ǵ\"]]"
    input = "&gacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gamma without a semi-colon" do
    output = "[[\"Character\",\"&gamma\"]]"
    input = "&gamma"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gamma; with a semi-colon" do
    output = "[[\"Character\",\"γ\"]]"
    input = "&gamma;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gammad without a semi-colon" do
    output = "[[\"Character\",\"&gammad\"]]"
    input = "&gammad"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gammad; with a semi-colon" do
    output = "[[\"Character\",\"ϝ\"]]"
    input = "&gammad;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gap without a semi-colon" do
    output = "[[\"Character\",\"&gap\"]]"
    input = "&gap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gap; with a semi-colon" do
    output = "[[\"Character\",\"⪆\"]]"
    input = "&gap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gbreve without a semi-colon" do
    output = "[[\"Character\",\"&gbreve\"]]"
    input = "&gbreve"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gbreve; with a semi-colon" do
    output = "[[\"Character\",\"ğ\"]]"
    input = "&gbreve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gcirc without a semi-colon" do
    output = "[[\"Character\",\"&gcirc\"]]"
    input = "&gcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gcirc; with a semi-colon" do
    output = "[[\"Character\",\"ĝ\"]]"
    input = "&gcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gcy without a semi-colon" do
    output = "[[\"Character\",\"&gcy\"]]"
    input = "&gcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gcy; with a semi-colon" do
    output = "[[\"Character\",\"г\"]]"
    input = "&gcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gdot without a semi-colon" do
    output = "[[\"Character\",\"&gdot\"]]"
    input = "&gdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gdot; with a semi-colon" do
    output = "[[\"Character\",\"ġ\"]]"
    input = "&gdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ge without a semi-colon" do
    output = "[[\"Character\",\"&ge\"]]"
    input = "&ge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ge; with a semi-colon" do
    output = "[[\"Character\",\"≥\"]]"
    input = "&ge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gel without a semi-colon" do
    output = "[[\"Character\",\"&gel\"]]"
    input = "&gel"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gel; with a semi-colon" do
    output = "[[\"Character\",\"⋛\"]]"
    input = "&gel;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: geq without a semi-colon" do
    output = "[[\"Character\",\"&geq\"]]"
    input = "&geq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: geq; with a semi-colon" do
    output = "[[\"Character\",\"≥\"]]"
    input = "&geq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: geqq without a semi-colon" do
    output = "[[\"Character\",\"&geqq\"]]"
    input = "&geqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: geqq; with a semi-colon" do
    output = "[[\"Character\",\"≧\"]]"
    input = "&geqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: geqslant without a semi-colon" do
    output = "[[\"Character\",\"&geqslant\"]]"
    input = "&geqslant"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: geqslant; with a semi-colon" do
    output = "[[\"Character\",\"⩾\"]]"
    input = "&geqslant;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ges without a semi-colon" do
    output = "[[\"Character\",\"&ges\"]]"
    input = "&ges"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ges; with a semi-colon" do
    output = "[[\"Character\",\"⩾\"]]"
    input = "&ges;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gescc without a semi-colon" do
    output = "[[\"Character\",\"&gescc\"]]"
    input = "&gescc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gescc; with a semi-colon" do
    output = "[[\"Character\",\"⪩\"]]"
    input = "&gescc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gesdot without a semi-colon" do
    output = "[[\"Character\",\"&gesdot\"]]"
    input = "&gesdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gesdot; with a semi-colon" do
    output = "[[\"Character\",\"⪀\"]]"
    input = "&gesdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gesdoto without a semi-colon" do
    output = "[[\"Character\",\"&gesdoto\"]]"
    input = "&gesdoto"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gesdoto; with a semi-colon" do
    output = "[[\"Character\",\"⪂\"]]"
    input = "&gesdoto;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gesdotol without a semi-colon" do
    output = "[[\"Character\",\"&gesdotol\"]]"
    input = "&gesdotol"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gesdotol; with a semi-colon" do
    output = "[[\"Character\",\"⪄\"]]"
    input = "&gesdotol;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gesl without a semi-colon" do
    output = "[[\"Character\",\"&gesl\"]]"
    input = "&gesl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gesl; with a semi-colon" do
    output = "[[\"Character\",\"⋛︀\"]]"
    input = "&gesl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gesles without a semi-colon" do
    output = "[[\"Character\",\"&gesles\"]]"
    input = "&gesles"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gesles; with a semi-colon" do
    output = "[[\"Character\",\"⪔\"]]"
    input = "&gesles;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gfr without a semi-colon" do
    output = "[[\"Character\",\"&gfr\"]]"
    input = "&gfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔤\"]]"
    input = "&gfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gg without a semi-colon" do
    output = "[[\"Character\",\"&gg\"]]"
    input = "&gg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gg; with a semi-colon" do
    output = "[[\"Character\",\"≫\"]]"
    input = "&gg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ggg without a semi-colon" do
    output = "[[\"Character\",\"&ggg\"]]"
    input = "&ggg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ggg; with a semi-colon" do
    output = "[[\"Character\",\"⋙\"]]"
    input = "&ggg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gimel without a semi-colon" do
    output = "[[\"Character\",\"&gimel\"]]"
    input = "&gimel"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gimel; with a semi-colon" do
    output = "[[\"Character\",\"ℷ\"]]"
    input = "&gimel;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gjcy without a semi-colon" do
    output = "[[\"Character\",\"&gjcy\"]]"
    input = "&gjcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gjcy; with a semi-colon" do
    output = "[[\"Character\",\"ѓ\"]]"
    input = "&gjcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gl without a semi-colon" do
    output = "[[\"Character\",\"&gl\"]]"
    input = "&gl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gl; with a semi-colon" do
    output = "[[\"Character\",\"≷\"]]"
    input = "&gl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: glE without a semi-colon" do
    output = "[[\"Character\",\"&glE\"]]"
    input = "&glE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: glE; with a semi-colon" do
    output = "[[\"Character\",\"⪒\"]]"
    input = "&glE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gla without a semi-colon" do
    output = "[[\"Character\",\"&gla\"]]"
    input = "&gla"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gla; with a semi-colon" do
    output = "[[\"Character\",\"⪥\"]]"
    input = "&gla;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: glj without a semi-colon" do
    output = "[[\"Character\",\"&glj\"]]"
    input = "&glj"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: glj; with a semi-colon" do
    output = "[[\"Character\",\"⪤\"]]"
    input = "&glj;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gnE without a semi-colon" do
    output = "[[\"Character\",\"&gnE\"]]"
    input = "&gnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gnE; with a semi-colon" do
    output = "[[\"Character\",\"≩\"]]"
    input = "&gnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gnap without a semi-colon" do
    output = "[[\"Character\",\"&gnap\"]]"
    input = "&gnap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gnap; with a semi-colon" do
    output = "[[\"Character\",\"⪊\"]]"
    input = "&gnap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gnapprox without a semi-colon" do
    output = "[[\"Character\",\"&gnapprox\"]]"
    input = "&gnapprox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gnapprox; with a semi-colon" do
    output = "[[\"Character\",\"⪊\"]]"
    input = "&gnapprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gne without a semi-colon" do
    output = "[[\"Character\",\"&gne\"]]"
    input = "&gne"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gne; with a semi-colon" do
    output = "[[\"Character\",\"⪈\"]]"
    input = "&gne;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gneq without a semi-colon" do
    output = "[[\"Character\",\"&gneq\"]]"
    input = "&gneq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gneq; with a semi-colon" do
    output = "[[\"Character\",\"⪈\"]]"
    input = "&gneq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gneqq without a semi-colon" do
    output = "[[\"Character\",\"&gneqq\"]]"
    input = "&gneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gneqq; with a semi-colon" do
    output = "[[\"Character\",\"≩\"]]"
    input = "&gneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gnsim without a semi-colon" do
    output = "[[\"Character\",\"&gnsim\"]]"
    input = "&gnsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gnsim; with a semi-colon" do
    output = "[[\"Character\",\"⋧\"]]"
    input = "&gnsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gopf without a semi-colon" do
    output = "[[\"Character\",\"&gopf\"]]"
    input = "&gopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕘\"]]"
    input = "&gopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: grave without a semi-colon" do
    output = "[[\"Character\",\"&grave\"]]"
    input = "&grave"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: grave; with a semi-colon" do
    output = "[[\"Character\",\"`\"]]"
    input = "&grave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gscr without a semi-colon" do
    output = "[[\"Character\",\"&gscr\"]]"
    input = "&gscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gscr; with a semi-colon" do
    output = "[[\"Character\",\"ℊ\"]]"
    input = "&gscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gsim without a semi-colon" do
    output = "[[\"Character\",\"&gsim\"]]"
    input = "&gsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gsim; with a semi-colon" do
    output = "[[\"Character\",\"≳\"]]"
    input = "&gsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gsime without a semi-colon" do
    output = "[[\"Character\",\"&gsime\"]]"
    input = "&gsime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gsime; with a semi-colon" do
    output = "[[\"Character\",\"⪎\"]]"
    input = "&gsime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gsiml without a semi-colon" do
    output = "[[\"Character\",\"&gsiml\"]]"
    input = "&gsiml"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gsiml; with a semi-colon" do
    output = "[[\"Character\",\"⪐\"]]"
    input = "&gsiml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gt without a semi-colon" do
    output = "[[\"Character\",\">\"]]"
    input = "&gt"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gt; with a semi-colon" do
    output = "[[\"Character\",\">\"]]"
    input = "&gt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtcc; with a semi-colon" do
    output = "[[\"Character\",\"⪧\"]]"
    input = "&gtcc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtcir; with a semi-colon" do
    output = "[[\"Character\",\"⩺\"]]"
    input = "&gtcir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtdot; with a semi-colon" do
    output = "[[\"Character\",\"⋗\"]]"
    input = "&gtdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtlPar; with a semi-colon" do
    output = "[[\"Character\",\"⦕\"]]"
    input = "&gtlPar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtquest; with a semi-colon" do
    output = "[[\"Character\",\"⩼\"]]"
    input = "&gtquest;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtrapprox; with a semi-colon" do
    output = "[[\"Character\",\"⪆\"]]"
    input = "&gtrapprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtrarr; with a semi-colon" do
    output = "[[\"Character\",\"⥸\"]]"
    input = "&gtrarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtrdot; with a semi-colon" do
    output = "[[\"Character\",\"⋗\"]]"
    input = "&gtrdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtreqless; with a semi-colon" do
    output = "[[\"Character\",\"⋛\"]]"
    input = "&gtreqless;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtreqqless; with a semi-colon" do
    output = "[[\"Character\",\"⪌\"]]"
    input = "&gtreqqless;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtrless; with a semi-colon" do
    output = "[[\"Character\",\"≷\"]]"
    input = "&gtrless;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gtrsim; with a semi-colon" do
    output = "[[\"Character\",\"≳\"]]"
    input = "&gtrsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gvertneqq without a semi-colon" do
    output = "[[\"Character\",\"&gvertneqq\"]]"
    input = "&gvertneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gvertneqq; with a semi-colon" do
    output = "[[\"Character\",\"≩︀\"]]"
    input = "&gvertneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: gvnE without a semi-colon" do
    output = "[[\"Character\",\"&gvnE\"]]"
    input = "&gvnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: gvnE; with a semi-colon" do
    output = "[[\"Character\",\"≩︀\"]]"
    input = "&gvnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hArr without a semi-colon" do
    output = "[[\"Character\",\"&hArr\"]]"
    input = "&hArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hArr; with a semi-colon" do
    output = "[[\"Character\",\"⇔\"]]"
    input = "&hArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hairsp without a semi-colon" do
    output = "[[\"Character\",\"&hairsp\"]]"
    input = "&hairsp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hairsp; with a semi-colon" do
    output = "[[\"Character\",\"\u200A\"]]"
    input = "&hairsp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: half without a semi-colon" do
    output = "[[\"Character\",\"&half\"]]"
    input = "&half"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: half; with a semi-colon" do
    output = "[[\"Character\",\"½\"]]"
    input = "&half;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hamilt without a semi-colon" do
    output = "[[\"Character\",\"&hamilt\"]]"
    input = "&hamilt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hamilt; with a semi-colon" do
    output = "[[\"Character\",\"ℋ\"]]"
    input = "&hamilt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hardcy without a semi-colon" do
    output = "[[\"Character\",\"&hardcy\"]]"
    input = "&hardcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hardcy; with a semi-colon" do
    output = "[[\"Character\",\"ъ\"]]"
    input = "&hardcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: harr without a semi-colon" do
    output = "[[\"Character\",\"&harr\"]]"
    input = "&harr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: harr; with a semi-colon" do
    output = "[[\"Character\",\"↔\"]]"
    input = "&harr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: harrcir without a semi-colon" do
    output = "[[\"Character\",\"&harrcir\"]]"
    input = "&harrcir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: harrcir; with a semi-colon" do
    output = "[[\"Character\",\"⥈\"]]"
    input = "&harrcir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: harrw without a semi-colon" do
    output = "[[\"Character\",\"&harrw\"]]"
    input = "&harrw"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: harrw; with a semi-colon" do
    output = "[[\"Character\",\"↭\"]]"
    input = "&harrw;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hbar without a semi-colon" do
    output = "[[\"Character\",\"&hbar\"]]"
    input = "&hbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hbar; with a semi-colon" do
    output = "[[\"Character\",\"ℏ\"]]"
    input = "&hbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hcirc without a semi-colon" do
    output = "[[\"Character\",\"&hcirc\"]]"
    input = "&hcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hcirc; with a semi-colon" do
    output = "[[\"Character\",\"ĥ\"]]"
    input = "&hcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hearts without a semi-colon" do
    output = "[[\"Character\",\"&hearts\"]]"
    input = "&hearts"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hearts; with a semi-colon" do
    output = "[[\"Character\",\"♥\"]]"
    input = "&hearts;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: heartsuit without a semi-colon" do
    output = "[[\"Character\",\"&heartsuit\"]]"
    input = "&heartsuit"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: heartsuit; with a semi-colon" do
    output = "[[\"Character\",\"♥\"]]"
    input = "&heartsuit;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hellip without a semi-colon" do
    output = "[[\"Character\",\"&hellip\"]]"
    input = "&hellip"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hellip; with a semi-colon" do
    output = "[[\"Character\",\"…\"]]"
    input = "&hellip;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hercon without a semi-colon" do
    output = "[[\"Character\",\"&hercon\"]]"
    input = "&hercon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hercon; with a semi-colon" do
    output = "[[\"Character\",\"⊹\"]]"
    input = "&hercon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hfr without a semi-colon" do
    output = "[[\"Character\",\"&hfr\"]]"
    input = "&hfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔥\"]]"
    input = "&hfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hksearow without a semi-colon" do
    output = "[[\"Character\",\"&hksearow\"]]"
    input = "&hksearow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hksearow; with a semi-colon" do
    output = "[[\"Character\",\"⤥\"]]"
    input = "&hksearow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hkswarow without a semi-colon" do
    output = "[[\"Character\",\"&hkswarow\"]]"
    input = "&hkswarow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hkswarow; with a semi-colon" do
    output = "[[\"Character\",\"⤦\"]]"
    input = "&hkswarow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hoarr without a semi-colon" do
    output = "[[\"Character\",\"&hoarr\"]]"
    input = "&hoarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hoarr; with a semi-colon" do
    output = "[[\"Character\",\"⇿\"]]"
    input = "&hoarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: homtht without a semi-colon" do
    output = "[[\"Character\",\"&homtht\"]]"
    input = "&homtht"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: homtht; with a semi-colon" do
    output = "[[\"Character\",\"∻\"]]"
    input = "&homtht;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hookleftarrow without a semi-colon" do
    output = "[[\"Character\",\"&hookleftarrow\"]]"
    input = "&hookleftarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hookleftarrow; with a semi-colon" do
    output = "[[\"Character\",\"↩\"]]"
    input = "&hookleftarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hookrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&hookrightarrow\"]]"
    input = "&hookrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hookrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"↪\"]]"
    input = "&hookrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hopf without a semi-colon" do
    output = "[[\"Character\",\"&hopf\"]]"
    input = "&hopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕙\"]]"
    input = "&hopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: horbar without a semi-colon" do
    output = "[[\"Character\",\"&horbar\"]]"
    input = "&horbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: horbar; with a semi-colon" do
    output = "[[\"Character\",\"―\"]]"
    input = "&horbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hscr without a semi-colon" do
    output = "[[\"Character\",\"&hscr\"]]"
    input = "&hscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒽\"]]"
    input = "&hscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hslash without a semi-colon" do
    output = "[[\"Character\",\"&hslash\"]]"
    input = "&hslash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hslash; with a semi-colon" do
    output = "[[\"Character\",\"ℏ\"]]"
    input = "&hslash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hstrok without a semi-colon" do
    output = "[[\"Character\",\"&hstrok\"]]"
    input = "&hstrok"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hstrok; with a semi-colon" do
    output = "[[\"Character\",\"ħ\"]]"
    input = "&hstrok;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hybull without a semi-colon" do
    output = "[[\"Character\",\"&hybull\"]]"
    input = "&hybull"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hybull; with a semi-colon" do
    output = "[[\"Character\",\"⁃\"]]"
    input = "&hybull;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: hyphen without a semi-colon" do
    output = "[[\"Character\",\"&hyphen\"]]"
    input = "&hyphen"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: hyphen; with a semi-colon" do
    output = "[[\"Character\",\"‐\"]]"
    input = "&hyphen;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iacute without a semi-colon" do
    output = "[[\"Character\",\"í\"]]"
    input = "&iacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iacute; with a semi-colon" do
    output = "[[\"Character\",\"í\"]]"
    input = "&iacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ic without a semi-colon" do
    output = "[[\"Character\",\"&ic\"]]"
    input = "&ic"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ic; with a semi-colon" do
    output = "[[\"Character\",\"\u2063\"]]"
    input = "&ic;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: icirc without a semi-colon" do
    output = "[[\"Character\",\"î\"]]"
    input = "&icirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: icirc; with a semi-colon" do
    output = "[[\"Character\",\"î\"]]"
    input = "&icirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: icy without a semi-colon" do
    output = "[[\"Character\",\"&icy\"]]"
    input = "&icy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: icy; with a semi-colon" do
    output = "[[\"Character\",\"и\"]]"
    input = "&icy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iecy without a semi-colon" do
    output = "[[\"Character\",\"&iecy\"]]"
    input = "&iecy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iecy; with a semi-colon" do
    output = "[[\"Character\",\"е\"]]"
    input = "&iecy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iexcl without a semi-colon" do
    output = "[[\"Character\",\"¡\"]]"
    input = "&iexcl"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iexcl; with a semi-colon" do
    output = "[[\"Character\",\"¡\"]]"
    input = "&iexcl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iff without a semi-colon" do
    output = "[[\"Character\",\"&iff\"]]"
    input = "&iff"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iff; with a semi-colon" do
    output = "[[\"Character\",\"⇔\"]]"
    input = "&iff;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ifr without a semi-colon" do
    output = "[[\"Character\",\"&ifr\"]]"
    input = "&ifr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ifr; with a semi-colon" do
    output = "[[\"Character\",\"𝔦\"]]"
    input = "&ifr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: igrave without a semi-colon" do
    output = "[[\"Character\",\"ì\"]]"
    input = "&igrave"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: igrave; with a semi-colon" do
    output = "[[\"Character\",\"ì\"]]"
    input = "&igrave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ii without a semi-colon" do
    output = "[[\"Character\",\"&ii\"]]"
    input = "&ii"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ii; with a semi-colon" do
    output = "[[\"Character\",\"ⅈ\"]]"
    input = "&ii;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iiiint without a semi-colon" do
    output = "[[\"Character\",\"&iiiint\"]]"
    input = "&iiiint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iiiint; with a semi-colon" do
    output = "[[\"Character\",\"⨌\"]]"
    input = "&iiiint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iiint without a semi-colon" do
    output = "[[\"Character\",\"&iiint\"]]"
    input = "&iiint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iiint; with a semi-colon" do
    output = "[[\"Character\",\"∭\"]]"
    input = "&iiint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iinfin without a semi-colon" do
    output = "[[\"Character\",\"&iinfin\"]]"
    input = "&iinfin"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iinfin; with a semi-colon" do
    output = "[[\"Character\",\"⧜\"]]"
    input = "&iinfin;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iiota without a semi-colon" do
    output = "[[\"Character\",\"&iiota\"]]"
    input = "&iiota"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iiota; with a semi-colon" do
    output = "[[\"Character\",\"℩\"]]"
    input = "&iiota;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ijlig without a semi-colon" do
    output = "[[\"Character\",\"&ijlig\"]]"
    input = "&ijlig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ijlig; with a semi-colon" do
    output = "[[\"Character\",\"ĳ\"]]"
    input = "&ijlig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: imacr without a semi-colon" do
    output = "[[\"Character\",\"&imacr\"]]"
    input = "&imacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: imacr; with a semi-colon" do
    output = "[[\"Character\",\"ī\"]]"
    input = "&imacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: image without a semi-colon" do
    output = "[[\"Character\",\"&image\"]]"
    input = "&image"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: image; with a semi-colon" do
    output = "[[\"Character\",\"ℑ\"]]"
    input = "&image;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: imagline without a semi-colon" do
    output = "[[\"Character\",\"&imagline\"]]"
    input = "&imagline"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: imagline; with a semi-colon" do
    output = "[[\"Character\",\"ℐ\"]]"
    input = "&imagline;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: imagpart without a semi-colon" do
    output = "[[\"Character\",\"&imagpart\"]]"
    input = "&imagpart"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: imagpart; with a semi-colon" do
    output = "[[\"Character\",\"ℑ\"]]"
    input = "&imagpart;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: imath without a semi-colon" do
    output = "[[\"Character\",\"&imath\"]]"
    input = "&imath"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: imath; with a semi-colon" do
    output = "[[\"Character\",\"ı\"]]"
    input = "&imath;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: imof without a semi-colon" do
    output = "[[\"Character\",\"&imof\"]]"
    input = "&imof"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: imof; with a semi-colon" do
    output = "[[\"Character\",\"⊷\"]]"
    input = "&imof;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: imped without a semi-colon" do
    output = "[[\"Character\",\"&imped\"]]"
    input = "&imped"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: imped; with a semi-colon" do
    output = "[[\"Character\",\"Ƶ\"]]"
    input = "&imped;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: in without a semi-colon" do
    output = "[[\"Character\",\"&in\"]]"
    input = "&in"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: in; with a semi-colon" do
    output = "[[\"Character\",\"∈\"]]"
    input = "&in;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: incare without a semi-colon" do
    output = "[[\"Character\",\"&incare\"]]"
    input = "&incare"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: incare; with a semi-colon" do
    output = "[[\"Character\",\"℅\"]]"
    input = "&incare;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: infin without a semi-colon" do
    output = "[[\"Character\",\"&infin\"]]"
    input = "&infin"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: infin; with a semi-colon" do
    output = "[[\"Character\",\"∞\"]]"
    input = "&infin;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: infintie without a semi-colon" do
    output = "[[\"Character\",\"&infintie\"]]"
    input = "&infintie"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: infintie; with a semi-colon" do
    output = "[[\"Character\",\"⧝\"]]"
    input = "&infintie;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: inodot without a semi-colon" do
    output = "[[\"Character\",\"&inodot\"]]"
    input = "&inodot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: inodot; with a semi-colon" do
    output = "[[\"Character\",\"ı\"]]"
    input = "&inodot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: int without a semi-colon" do
    output = "[[\"Character\",\"&int\"]]"
    input = "&int"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: int; with a semi-colon" do
    output = "[[\"Character\",\"∫\"]]"
    input = "&int;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: intcal without a semi-colon" do
    output = "[[\"Character\",\"&intcal\"]]"
    input = "&intcal"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: intcal; with a semi-colon" do
    output = "[[\"Character\",\"⊺\"]]"
    input = "&intcal;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: integers without a semi-colon" do
    output = "[[\"Character\",\"&integers\"]]"
    input = "&integers"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: integers; with a semi-colon" do
    output = "[[\"Character\",\"ℤ\"]]"
    input = "&integers;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: intercal without a semi-colon" do
    output = "[[\"Character\",\"&intercal\"]]"
    input = "&intercal"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: intercal; with a semi-colon" do
    output = "[[\"Character\",\"⊺\"]]"
    input = "&intercal;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: intlarhk without a semi-colon" do
    output = "[[\"Character\",\"&intlarhk\"]]"
    input = "&intlarhk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: intlarhk; with a semi-colon" do
    output = "[[\"Character\",\"⨗\"]]"
    input = "&intlarhk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: intprod without a semi-colon" do
    output = "[[\"Character\",\"&intprod\"]]"
    input = "&intprod"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: intprod; with a semi-colon" do
    output = "[[\"Character\",\"⨼\"]]"
    input = "&intprod;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iocy without a semi-colon" do
    output = "[[\"Character\",\"&iocy\"]]"
    input = "&iocy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iocy; with a semi-colon" do
    output = "[[\"Character\",\"ё\"]]"
    input = "&iocy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iogon without a semi-colon" do
    output = "[[\"Character\",\"&iogon\"]]"
    input = "&iogon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iogon; with a semi-colon" do
    output = "[[\"Character\",\"į\"]]"
    input = "&iogon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iopf without a semi-colon" do
    output = "[[\"Character\",\"&iopf\"]]"
    input = "&iopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕚\"]]"
    input = "&iopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iota without a semi-colon" do
    output = "[[\"Character\",\"&iota\"]]"
    input = "&iota"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iota; with a semi-colon" do
    output = "[[\"Character\",\"ι\"]]"
    input = "&iota;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iprod without a semi-colon" do
    output = "[[\"Character\",\"&iprod\"]]"
    input = "&iprod"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iprod; with a semi-colon" do
    output = "[[\"Character\",\"⨼\"]]"
    input = "&iprod;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iquest without a semi-colon" do
    output = "[[\"Character\",\"¿\"]]"
    input = "&iquest"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iquest; with a semi-colon" do
    output = "[[\"Character\",\"¿\"]]"
    input = "&iquest;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iscr without a semi-colon" do
    output = "[[\"Character\",\"&iscr\"]]"
    input = "&iscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒾\"]]"
    input = "&iscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: isin without a semi-colon" do
    output = "[[\"Character\",\"&isin\"]]"
    input = "&isin"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: isin; with a semi-colon" do
    output = "[[\"Character\",\"∈\"]]"
    input = "&isin;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: isinE without a semi-colon" do
    output = "[[\"Character\",\"&isinE\"]]"
    input = "&isinE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: isinE; with a semi-colon" do
    output = "[[\"Character\",\"⋹\"]]"
    input = "&isinE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: isindot without a semi-colon" do
    output = "[[\"Character\",\"&isindot\"]]"
    input = "&isindot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: isindot; with a semi-colon" do
    output = "[[\"Character\",\"⋵\"]]"
    input = "&isindot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: isins without a semi-colon" do
    output = "[[\"Character\",\"&isins\"]]"
    input = "&isins"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: isins; with a semi-colon" do
    output = "[[\"Character\",\"⋴\"]]"
    input = "&isins;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: isinsv without a semi-colon" do
    output = "[[\"Character\",\"&isinsv\"]]"
    input = "&isinsv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: isinsv; with a semi-colon" do
    output = "[[\"Character\",\"⋳\"]]"
    input = "&isinsv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: isinv without a semi-colon" do
    output = "[[\"Character\",\"&isinv\"]]"
    input = "&isinv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: isinv; with a semi-colon" do
    output = "[[\"Character\",\"∈\"]]"
    input = "&isinv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: it without a semi-colon" do
    output = "[[\"Character\",\"&it\"]]"
    input = "&it"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: it; with a semi-colon" do
    output = "[[\"Character\",\"\u2062\"]]"
    input = "&it;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: itilde without a semi-colon" do
    output = "[[\"Character\",\"&itilde\"]]"
    input = "&itilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: itilde; with a semi-colon" do
    output = "[[\"Character\",\"ĩ\"]]"
    input = "&itilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: iukcy without a semi-colon" do
    output = "[[\"Character\",\"&iukcy\"]]"
    input = "&iukcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iukcy; with a semi-colon" do
    output = "[[\"Character\",\"і\"]]"
    input = "&iukcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iuml without a semi-colon" do
    output = "[[\"Character\",\"ï\"]]"
    input = "&iuml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: iuml; with a semi-colon" do
    output = "[[\"Character\",\"ï\"]]"
    input = "&iuml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: jcirc without a semi-colon" do
    output = "[[\"Character\",\"&jcirc\"]]"
    input = "&jcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: jcirc; with a semi-colon" do
    output = "[[\"Character\",\"ĵ\"]]"
    input = "&jcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: jcy without a semi-colon" do
    output = "[[\"Character\",\"&jcy\"]]"
    input = "&jcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: jcy; with a semi-colon" do
    output = "[[\"Character\",\"й\"]]"
    input = "&jcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: jfr without a semi-colon" do
    output = "[[\"Character\",\"&jfr\"]]"
    input = "&jfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: jfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔧\"]]"
    input = "&jfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: jmath without a semi-colon" do
    output = "[[\"Character\",\"&jmath\"]]"
    input = "&jmath"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: jmath; with a semi-colon" do
    output = "[[\"Character\",\"ȷ\"]]"
    input = "&jmath;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: jopf without a semi-colon" do
    output = "[[\"Character\",\"&jopf\"]]"
    input = "&jopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: jopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕛\"]]"
    input = "&jopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: jscr without a semi-colon" do
    output = "[[\"Character\",\"&jscr\"]]"
    input = "&jscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: jscr; with a semi-colon" do
    output = "[[\"Character\",\"𝒿\"]]"
    input = "&jscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: jsercy without a semi-colon" do
    output = "[[\"Character\",\"&jsercy\"]]"
    input = "&jsercy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: jsercy; with a semi-colon" do
    output = "[[\"Character\",\"ј\"]]"
    input = "&jsercy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: jukcy without a semi-colon" do
    output = "[[\"Character\",\"&jukcy\"]]"
    input = "&jukcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: jukcy; with a semi-colon" do
    output = "[[\"Character\",\"є\"]]"
    input = "&jukcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: kappa without a semi-colon" do
    output = "[[\"Character\",\"&kappa\"]]"
    input = "&kappa"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: kappa; with a semi-colon" do
    output = "[[\"Character\",\"κ\"]]"
    input = "&kappa;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: kappav without a semi-colon" do
    output = "[[\"Character\",\"&kappav\"]]"
    input = "&kappav"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: kappav; with a semi-colon" do
    output = "[[\"Character\",\"ϰ\"]]"
    input = "&kappav;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: kcedil without a semi-colon" do
    output = "[[\"Character\",\"&kcedil\"]]"
    input = "&kcedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: kcedil; with a semi-colon" do
    output = "[[\"Character\",\"ķ\"]]"
    input = "&kcedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: kcy without a semi-colon" do
    output = "[[\"Character\",\"&kcy\"]]"
    input = "&kcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: kcy; with a semi-colon" do
    output = "[[\"Character\",\"к\"]]"
    input = "&kcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: kfr without a semi-colon" do
    output = "[[\"Character\",\"&kfr\"]]"
    input = "&kfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: kfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔨\"]]"
    input = "&kfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: kgreen without a semi-colon" do
    output = "[[\"Character\",\"&kgreen\"]]"
    input = "&kgreen"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: kgreen; with a semi-colon" do
    output = "[[\"Character\",\"ĸ\"]]"
    input = "&kgreen;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: khcy without a semi-colon" do
    output = "[[\"Character\",\"&khcy\"]]"
    input = "&khcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: khcy; with a semi-colon" do
    output = "[[\"Character\",\"х\"]]"
    input = "&khcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: kjcy without a semi-colon" do
    output = "[[\"Character\",\"&kjcy\"]]"
    input = "&kjcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: kjcy; with a semi-colon" do
    output = "[[\"Character\",\"ќ\"]]"
    input = "&kjcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: kopf without a semi-colon" do
    output = "[[\"Character\",\"&kopf\"]]"
    input = "&kopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: kopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕜\"]]"
    input = "&kopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: kscr without a semi-colon" do
    output = "[[\"Character\",\"&kscr\"]]"
    input = "&kscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: kscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓀\"]]"
    input = "&kscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lAarr without a semi-colon" do
    output = "[[\"Character\",\"&lAarr\"]]"
    input = "&lAarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lAarr; with a semi-colon" do
    output = "[[\"Character\",\"⇚\"]]"
    input = "&lAarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lArr without a semi-colon" do
    output = "[[\"Character\",\"&lArr\"]]"
    input = "&lArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lArr; with a semi-colon" do
    output = "[[\"Character\",\"⇐\"]]"
    input = "&lArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lAtail without a semi-colon" do
    output = "[[\"Character\",\"&lAtail\"]]"
    input = "&lAtail"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lAtail; with a semi-colon" do
    output = "[[\"Character\",\"⤛\"]]"
    input = "&lAtail;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lBarr without a semi-colon" do
    output = "[[\"Character\",\"&lBarr\"]]"
    input = "&lBarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lBarr; with a semi-colon" do
    output = "[[\"Character\",\"⤎\"]]"
    input = "&lBarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lE without a semi-colon" do
    output = "[[\"Character\",\"&lE\"]]"
    input = "&lE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lE; with a semi-colon" do
    output = "[[\"Character\",\"≦\"]]"
    input = "&lE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lEg without a semi-colon" do
    output = "[[\"Character\",\"&lEg\"]]"
    input = "&lEg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lEg; with a semi-colon" do
    output = "[[\"Character\",\"⪋\"]]"
    input = "&lEg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lHar without a semi-colon" do
    output = "[[\"Character\",\"&lHar\"]]"
    input = "&lHar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lHar; with a semi-colon" do
    output = "[[\"Character\",\"⥢\"]]"
    input = "&lHar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lacute without a semi-colon" do
    output = "[[\"Character\",\"&lacute\"]]"
    input = "&lacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lacute; with a semi-colon" do
    output = "[[\"Character\",\"ĺ\"]]"
    input = "&lacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: laemptyv without a semi-colon" do
    output = "[[\"Character\",\"&laemptyv\"]]"
    input = "&laemptyv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: laemptyv; with a semi-colon" do
    output = "[[\"Character\",\"⦴\"]]"
    input = "&laemptyv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lagran without a semi-colon" do
    output = "[[\"Character\",\"&lagran\"]]"
    input = "&lagran"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lagran; with a semi-colon" do
    output = "[[\"Character\",\"ℒ\"]]"
    input = "&lagran;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lambda without a semi-colon" do
    output = "[[\"Character\",\"&lambda\"]]"
    input = "&lambda"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lambda; with a semi-colon" do
    output = "[[\"Character\",\"λ\"]]"
    input = "&lambda;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lang without a semi-colon" do
    output = "[[\"Character\",\"&lang\"]]"
    input = "&lang"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lang; with a semi-colon" do
    output = "[[\"Character\",\"⟨\"]]"
    input = "&lang;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: langd without a semi-colon" do
    output = "[[\"Character\",\"&langd\"]]"
    input = "&langd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: langd; with a semi-colon" do
    output = "[[\"Character\",\"⦑\"]]"
    input = "&langd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: langle without a semi-colon" do
    output = "[[\"Character\",\"&langle\"]]"
    input = "&langle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: langle; with a semi-colon" do
    output = "[[\"Character\",\"⟨\"]]"
    input = "&langle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lap without a semi-colon" do
    output = "[[\"Character\",\"&lap\"]]"
    input = "&lap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lap; with a semi-colon" do
    output = "[[\"Character\",\"⪅\"]]"
    input = "&lap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: laquo without a semi-colon" do
    output = "[[\"Character\",\"«\"]]"
    input = "&laquo"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: laquo; with a semi-colon" do
    output = "[[\"Character\",\"«\"]]"
    input = "&laquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: larr without a semi-colon" do
    output = "[[\"Character\",\"&larr\"]]"
    input = "&larr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: larr; with a semi-colon" do
    output = "[[\"Character\",\"←\"]]"
    input = "&larr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: larrb without a semi-colon" do
    output = "[[\"Character\",\"&larrb\"]]"
    input = "&larrb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: larrb; with a semi-colon" do
    output = "[[\"Character\",\"⇤\"]]"
    input = "&larrb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: larrbfs without a semi-colon" do
    output = "[[\"Character\",\"&larrbfs\"]]"
    input = "&larrbfs"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: larrbfs; with a semi-colon" do
    output = "[[\"Character\",\"⤟\"]]"
    input = "&larrbfs;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: larrfs without a semi-colon" do
    output = "[[\"Character\",\"&larrfs\"]]"
    input = "&larrfs"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: larrfs; with a semi-colon" do
    output = "[[\"Character\",\"⤝\"]]"
    input = "&larrfs;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: larrhk without a semi-colon" do
    output = "[[\"Character\",\"&larrhk\"]]"
    input = "&larrhk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: larrhk; with a semi-colon" do
    output = "[[\"Character\",\"↩\"]]"
    input = "&larrhk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: larrlp without a semi-colon" do
    output = "[[\"Character\",\"&larrlp\"]]"
    input = "&larrlp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: larrlp; with a semi-colon" do
    output = "[[\"Character\",\"↫\"]]"
    input = "&larrlp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: larrpl without a semi-colon" do
    output = "[[\"Character\",\"&larrpl\"]]"
    input = "&larrpl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: larrpl; with a semi-colon" do
    output = "[[\"Character\",\"⤹\"]]"
    input = "&larrpl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: larrsim without a semi-colon" do
    output = "[[\"Character\",\"&larrsim\"]]"
    input = "&larrsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: larrsim; with a semi-colon" do
    output = "[[\"Character\",\"⥳\"]]"
    input = "&larrsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: larrtl without a semi-colon" do
    output = "[[\"Character\",\"&larrtl\"]]"
    input = "&larrtl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: larrtl; with a semi-colon" do
    output = "[[\"Character\",\"↢\"]]"
    input = "&larrtl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lat without a semi-colon" do
    output = "[[\"Character\",\"&lat\"]]"
    input = "&lat"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lat; with a semi-colon" do
    output = "[[\"Character\",\"⪫\"]]"
    input = "&lat;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: latail without a semi-colon" do
    output = "[[\"Character\",\"&latail\"]]"
    input = "&latail"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: latail; with a semi-colon" do
    output = "[[\"Character\",\"⤙\"]]"
    input = "&latail;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: late without a semi-colon" do
    output = "[[\"Character\",\"&late\"]]"
    input = "&late"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: late; with a semi-colon" do
    output = "[[\"Character\",\"⪭\"]]"
    input = "&late;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lates without a semi-colon" do
    output = "[[\"Character\",\"&lates\"]]"
    input = "&lates"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lates; with a semi-colon" do
    output = "[[\"Character\",\"⪭︀\"]]"
    input = "&lates;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lbarr without a semi-colon" do
    output = "[[\"Character\",\"&lbarr\"]]"
    input = "&lbarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lbarr; with a semi-colon" do
    output = "[[\"Character\",\"⤌\"]]"
    input = "&lbarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lbbrk without a semi-colon" do
    output = "[[\"Character\",\"&lbbrk\"]]"
    input = "&lbbrk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lbbrk; with a semi-colon" do
    output = "[[\"Character\",\"❲\"]]"
    input = "&lbbrk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lbrace without a semi-colon" do
    output = "[[\"Character\",\"&lbrace\"]]"
    input = "&lbrace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lbrace; with a semi-colon" do
    output = "[[\"Character\",\"{\"]]"
    input = "&lbrace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lbrack without a semi-colon" do
    output = "[[\"Character\",\"&lbrack\"]]"
    input = "&lbrack"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lbrack; with a semi-colon" do
    output = "[[\"Character\",\"[\"]]"
    input = "&lbrack;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lbrke without a semi-colon" do
    output = "[[\"Character\",\"&lbrke\"]]"
    input = "&lbrke"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lbrke; with a semi-colon" do
    output = "[[\"Character\",\"⦋\"]]"
    input = "&lbrke;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lbrksld without a semi-colon" do
    output = "[[\"Character\",\"&lbrksld\"]]"
    input = "&lbrksld"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lbrksld; with a semi-colon" do
    output = "[[\"Character\",\"⦏\"]]"
    input = "&lbrksld;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lbrkslu without a semi-colon" do
    output = "[[\"Character\",\"&lbrkslu\"]]"
    input = "&lbrkslu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lbrkslu; with a semi-colon" do
    output = "[[\"Character\",\"⦍\"]]"
    input = "&lbrkslu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lcaron without a semi-colon" do
    output = "[[\"Character\",\"&lcaron\"]]"
    input = "&lcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lcaron; with a semi-colon" do
    output = "[[\"Character\",\"ľ\"]]"
    input = "&lcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lcedil without a semi-colon" do
    output = "[[\"Character\",\"&lcedil\"]]"
    input = "&lcedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lcedil; with a semi-colon" do
    output = "[[\"Character\",\"ļ\"]]"
    input = "&lcedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lceil without a semi-colon" do
    output = "[[\"Character\",\"&lceil\"]]"
    input = "&lceil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lceil; with a semi-colon" do
    output = "[[\"Character\",\"⌈\"]]"
    input = "&lceil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lcub without a semi-colon" do
    output = "[[\"Character\",\"&lcub\"]]"
    input = "&lcub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lcub; with a semi-colon" do
    output = "[[\"Character\",\"{\"]]"
    input = "&lcub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lcy without a semi-colon" do
    output = "[[\"Character\",\"&lcy\"]]"
    input = "&lcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lcy; with a semi-colon" do
    output = "[[\"Character\",\"л\"]]"
    input = "&lcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ldca without a semi-colon" do
    output = "[[\"Character\",\"&ldca\"]]"
    input = "&ldca"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ldca; with a semi-colon" do
    output = "[[\"Character\",\"⤶\"]]"
    input = "&ldca;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ldquo without a semi-colon" do
    output = "[[\"Character\",\"&ldquo\"]]"
    input = "&ldquo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ldquo; with a semi-colon" do
    output = "[[\"Character\",\"“\"]]"
    input = "&ldquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ldquor without a semi-colon" do
    output = "[[\"Character\",\"&ldquor\"]]"
    input = "&ldquor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ldquor; with a semi-colon" do
    output = "[[\"Character\",\"„\"]]"
    input = "&ldquor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ldrdhar without a semi-colon" do
    output = "[[\"Character\",\"&ldrdhar\"]]"
    input = "&ldrdhar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ldrdhar; with a semi-colon" do
    output = "[[\"Character\",\"⥧\"]]"
    input = "&ldrdhar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ldrushar without a semi-colon" do
    output = "[[\"Character\",\"&ldrushar\"]]"
    input = "&ldrushar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ldrushar; with a semi-colon" do
    output = "[[\"Character\",\"⥋\"]]"
    input = "&ldrushar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ldsh without a semi-colon" do
    output = "[[\"Character\",\"&ldsh\"]]"
    input = "&ldsh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ldsh; with a semi-colon" do
    output = "[[\"Character\",\"↲\"]]"
    input = "&ldsh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: le without a semi-colon" do
    output = "[[\"Character\",\"&le\"]]"
    input = "&le"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: le; with a semi-colon" do
    output = "[[\"Character\",\"≤\"]]"
    input = "&le;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftarrow without a semi-colon" do
    output = "[[\"Character\",\"&leftarrow\"]]"
    input = "&leftarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftarrow; with a semi-colon" do
    output = "[[\"Character\",\"←\"]]"
    input = "&leftarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftarrowtail without a semi-colon" do
    output = "[[\"Character\",\"&leftarrowtail\"]]"
    input = "&leftarrowtail"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftarrowtail; with a semi-colon" do
    output = "[[\"Character\",\"↢\"]]"
    input = "&leftarrowtail;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftharpoondown without a semi-colon" do
    output = "[[\"Character\",\"&leftharpoondown\"]]"
    input = "&leftharpoondown"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftharpoondown; with a semi-colon" do
    output = "[[\"Character\",\"↽\"]]"
    input = "&leftharpoondown;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftharpoonup without a semi-colon" do
    output = "[[\"Character\",\"&leftharpoonup\"]]"
    input = "&leftharpoonup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftharpoonup; with a semi-colon" do
    output = "[[\"Character\",\"↼\"]]"
    input = "&leftharpoonup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftleftarrows without a semi-colon" do
    output = "[[\"Character\",\"&leftleftarrows\"]]"
    input = "&leftleftarrows"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftleftarrows; with a semi-colon" do
    output = "[[\"Character\",\"⇇\"]]"
    input = "&leftleftarrows;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&leftrightarrow\"]]"
    input = "&leftrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"↔\"]]"
    input = "&leftrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftrightarrows without a semi-colon" do
    output = "[[\"Character\",\"&leftrightarrows\"]]"
    input = "&leftrightarrows"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftrightarrows; with a semi-colon" do
    output = "[[\"Character\",\"⇆\"]]"
    input = "&leftrightarrows;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftrightharpoons without a semi-colon" do
    output = "[[\"Character\",\"&leftrightharpoons\"]]"
    input = "&leftrightharpoons"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftrightharpoons; with a semi-colon" do
    output = "[[\"Character\",\"⇋\"]]"
    input = "&leftrightharpoons;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftrightsquigarrow without a semi-colon" do
    output = "[[\"Character\",\"&leftrightsquigarrow\"]]"
    input = "&leftrightsquigarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftrightsquigarrow; with a semi-colon" do
    output = "[[\"Character\",\"↭\"]]"
    input = "&leftrightsquigarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leftthreetimes without a semi-colon" do
    output = "[[\"Character\",\"&leftthreetimes\"]]"
    input = "&leftthreetimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leftthreetimes; with a semi-colon" do
    output = "[[\"Character\",\"⋋\"]]"
    input = "&leftthreetimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leg without a semi-colon" do
    output = "[[\"Character\",\"&leg\"]]"
    input = "&leg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leg; with a semi-colon" do
    output = "[[\"Character\",\"⋚\"]]"
    input = "&leg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leq without a semi-colon" do
    output = "[[\"Character\",\"&leq\"]]"
    input = "&leq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leq; with a semi-colon" do
    output = "[[\"Character\",\"≤\"]]"
    input = "&leq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leqq without a semi-colon" do
    output = "[[\"Character\",\"&leqq\"]]"
    input = "&leqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leqq; with a semi-colon" do
    output = "[[\"Character\",\"≦\"]]"
    input = "&leqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: leqslant without a semi-colon" do
    output = "[[\"Character\",\"&leqslant\"]]"
    input = "&leqslant"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: leqslant; with a semi-colon" do
    output = "[[\"Character\",\"⩽\"]]"
    input = "&leqslant;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: les without a semi-colon" do
    output = "[[\"Character\",\"&les\"]]"
    input = "&les"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: les; with a semi-colon" do
    output = "[[\"Character\",\"⩽\"]]"
    input = "&les;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lescc without a semi-colon" do
    output = "[[\"Character\",\"&lescc\"]]"
    input = "&lescc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lescc; with a semi-colon" do
    output = "[[\"Character\",\"⪨\"]]"
    input = "&lescc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lesdot without a semi-colon" do
    output = "[[\"Character\",\"&lesdot\"]]"
    input = "&lesdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lesdot; with a semi-colon" do
    output = "[[\"Character\",\"⩿\"]]"
    input = "&lesdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lesdoto without a semi-colon" do
    output = "[[\"Character\",\"&lesdoto\"]]"
    input = "&lesdoto"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lesdoto; with a semi-colon" do
    output = "[[\"Character\",\"⪁\"]]"
    input = "&lesdoto;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lesdotor without a semi-colon" do
    output = "[[\"Character\",\"&lesdotor\"]]"
    input = "&lesdotor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lesdotor; with a semi-colon" do
    output = "[[\"Character\",\"⪃\"]]"
    input = "&lesdotor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lesg without a semi-colon" do
    output = "[[\"Character\",\"&lesg\"]]"
    input = "&lesg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lesg; with a semi-colon" do
    output = "[[\"Character\",\"⋚︀\"]]"
    input = "&lesg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lesges without a semi-colon" do
    output = "[[\"Character\",\"&lesges\"]]"
    input = "&lesges"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lesges; with a semi-colon" do
    output = "[[\"Character\",\"⪓\"]]"
    input = "&lesges;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lessapprox without a semi-colon" do
    output = "[[\"Character\",\"&lessapprox\"]]"
    input = "&lessapprox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lessapprox; with a semi-colon" do
    output = "[[\"Character\",\"⪅\"]]"
    input = "&lessapprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lessdot without a semi-colon" do
    output = "[[\"Character\",\"&lessdot\"]]"
    input = "&lessdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lessdot; with a semi-colon" do
    output = "[[\"Character\",\"⋖\"]]"
    input = "&lessdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lesseqgtr without a semi-colon" do
    output = "[[\"Character\",\"&lesseqgtr\"]]"
    input = "&lesseqgtr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lesseqgtr; with a semi-colon" do
    output = "[[\"Character\",\"⋚\"]]"
    input = "&lesseqgtr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lesseqqgtr without a semi-colon" do
    output = "[[\"Character\",\"&lesseqqgtr\"]]"
    input = "&lesseqqgtr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lesseqqgtr; with a semi-colon" do
    output = "[[\"Character\",\"⪋\"]]"
    input = "&lesseqqgtr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lessgtr without a semi-colon" do
    output = "[[\"Character\",\"&lessgtr\"]]"
    input = "&lessgtr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lessgtr; with a semi-colon" do
    output = "[[\"Character\",\"≶\"]]"
    input = "&lessgtr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lesssim without a semi-colon" do
    output = "[[\"Character\",\"&lesssim\"]]"
    input = "&lesssim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lesssim; with a semi-colon" do
    output = "[[\"Character\",\"≲\"]]"
    input = "&lesssim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lfisht without a semi-colon" do
    output = "[[\"Character\",\"&lfisht\"]]"
    input = "&lfisht"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lfisht; with a semi-colon" do
    output = "[[\"Character\",\"⥼\"]]"
    input = "&lfisht;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lfloor without a semi-colon" do
    output = "[[\"Character\",\"&lfloor\"]]"
    input = "&lfloor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lfloor; with a semi-colon" do
    output = "[[\"Character\",\"⌊\"]]"
    input = "&lfloor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lfr without a semi-colon" do
    output = "[[\"Character\",\"&lfr\"]]"
    input = "&lfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔩\"]]"
    input = "&lfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lg without a semi-colon" do
    output = "[[\"Character\",\"&lg\"]]"
    input = "&lg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lg; with a semi-colon" do
    output = "[[\"Character\",\"≶\"]]"
    input = "&lg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lgE without a semi-colon" do
    output = "[[\"Character\",\"&lgE\"]]"
    input = "&lgE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lgE; with a semi-colon" do
    output = "[[\"Character\",\"⪑\"]]"
    input = "&lgE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lhard without a semi-colon" do
    output = "[[\"Character\",\"&lhard\"]]"
    input = "&lhard"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lhard; with a semi-colon" do
    output = "[[\"Character\",\"↽\"]]"
    input = "&lhard;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lharu without a semi-colon" do
    output = "[[\"Character\",\"&lharu\"]]"
    input = "&lharu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lharu; with a semi-colon" do
    output = "[[\"Character\",\"↼\"]]"
    input = "&lharu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lharul without a semi-colon" do
    output = "[[\"Character\",\"&lharul\"]]"
    input = "&lharul"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lharul; with a semi-colon" do
    output = "[[\"Character\",\"⥪\"]]"
    input = "&lharul;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lhblk without a semi-colon" do
    output = "[[\"Character\",\"&lhblk\"]]"
    input = "&lhblk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lhblk; with a semi-colon" do
    output = "[[\"Character\",\"▄\"]]"
    input = "&lhblk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ljcy without a semi-colon" do
    output = "[[\"Character\",\"&ljcy\"]]"
    input = "&ljcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ljcy; with a semi-colon" do
    output = "[[\"Character\",\"љ\"]]"
    input = "&ljcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ll without a semi-colon" do
    output = "[[\"Character\",\"&ll\"]]"
    input = "&ll"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ll; with a semi-colon" do
    output = "[[\"Character\",\"≪\"]]"
    input = "&ll;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: llarr without a semi-colon" do
    output = "[[\"Character\",\"&llarr\"]]"
    input = "&llarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: llarr; with a semi-colon" do
    output = "[[\"Character\",\"⇇\"]]"
    input = "&llarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: llcorner without a semi-colon" do
    output = "[[\"Character\",\"&llcorner\"]]"
    input = "&llcorner"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: llcorner; with a semi-colon" do
    output = "[[\"Character\",\"⌞\"]]"
    input = "&llcorner;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: llhard without a semi-colon" do
    output = "[[\"Character\",\"&llhard\"]]"
    input = "&llhard"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: llhard; with a semi-colon" do
    output = "[[\"Character\",\"⥫\"]]"
    input = "&llhard;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lltri without a semi-colon" do
    output = "[[\"Character\",\"&lltri\"]]"
    input = "&lltri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lltri; with a semi-colon" do
    output = "[[\"Character\",\"◺\"]]"
    input = "&lltri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lmidot without a semi-colon" do
    output = "[[\"Character\",\"&lmidot\"]]"
    input = "&lmidot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lmidot; with a semi-colon" do
    output = "[[\"Character\",\"ŀ\"]]"
    input = "&lmidot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lmoust without a semi-colon" do
    output = "[[\"Character\",\"&lmoust\"]]"
    input = "&lmoust"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lmoust; with a semi-colon" do
    output = "[[\"Character\",\"⎰\"]]"
    input = "&lmoust;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lmoustache without a semi-colon" do
    output = "[[\"Character\",\"&lmoustache\"]]"
    input = "&lmoustache"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lmoustache; with a semi-colon" do
    output = "[[\"Character\",\"⎰\"]]"
    input = "&lmoustache;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lnE without a semi-colon" do
    output = "[[\"Character\",\"&lnE\"]]"
    input = "&lnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lnE; with a semi-colon" do
    output = "[[\"Character\",\"≨\"]]"
    input = "&lnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lnap without a semi-colon" do
    output = "[[\"Character\",\"&lnap\"]]"
    input = "&lnap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lnap; with a semi-colon" do
    output = "[[\"Character\",\"⪉\"]]"
    input = "&lnap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lnapprox without a semi-colon" do
    output = "[[\"Character\",\"&lnapprox\"]]"
    input = "&lnapprox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lnapprox; with a semi-colon" do
    output = "[[\"Character\",\"⪉\"]]"
    input = "&lnapprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lne without a semi-colon" do
    output = "[[\"Character\",\"&lne\"]]"
    input = "&lne"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lne; with a semi-colon" do
    output = "[[\"Character\",\"⪇\"]]"
    input = "&lne;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lneq without a semi-colon" do
    output = "[[\"Character\",\"&lneq\"]]"
    input = "&lneq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lneq; with a semi-colon" do
    output = "[[\"Character\",\"⪇\"]]"
    input = "&lneq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lneqq without a semi-colon" do
    output = "[[\"Character\",\"&lneqq\"]]"
    input = "&lneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lneqq; with a semi-colon" do
    output = "[[\"Character\",\"≨\"]]"
    input = "&lneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lnsim without a semi-colon" do
    output = "[[\"Character\",\"&lnsim\"]]"
    input = "&lnsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lnsim; with a semi-colon" do
    output = "[[\"Character\",\"⋦\"]]"
    input = "&lnsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: loang without a semi-colon" do
    output = "[[\"Character\",\"&loang\"]]"
    input = "&loang"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: loang; with a semi-colon" do
    output = "[[\"Character\",\"⟬\"]]"
    input = "&loang;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: loarr without a semi-colon" do
    output = "[[\"Character\",\"&loarr\"]]"
    input = "&loarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: loarr; with a semi-colon" do
    output = "[[\"Character\",\"⇽\"]]"
    input = "&loarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lobrk without a semi-colon" do
    output = "[[\"Character\",\"&lobrk\"]]"
    input = "&lobrk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lobrk; with a semi-colon" do
    output = "[[\"Character\",\"⟦\"]]"
    input = "&lobrk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: longleftarrow without a semi-colon" do
    output = "[[\"Character\",\"&longleftarrow\"]]"
    input = "&longleftarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: longleftarrow; with a semi-colon" do
    output = "[[\"Character\",\"⟵\"]]"
    input = "&longleftarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: longleftrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&longleftrightarrow\"]]"
    input = "&longleftrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: longleftrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"⟷\"]]"
    input = "&longleftrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: longmapsto without a semi-colon" do
    output = "[[\"Character\",\"&longmapsto\"]]"
    input = "&longmapsto"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: longmapsto; with a semi-colon" do
    output = "[[\"Character\",\"⟼\"]]"
    input = "&longmapsto;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: longrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&longrightarrow\"]]"
    input = "&longrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: longrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"⟶\"]]"
    input = "&longrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: looparrowleft without a semi-colon" do
    output = "[[\"Character\",\"&looparrowleft\"]]"
    input = "&looparrowleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: looparrowleft; with a semi-colon" do
    output = "[[\"Character\",\"↫\"]]"
    input = "&looparrowleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: looparrowright without a semi-colon" do
    output = "[[\"Character\",\"&looparrowright\"]]"
    input = "&looparrowright"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: looparrowright; with a semi-colon" do
    output = "[[\"Character\",\"↬\"]]"
    input = "&looparrowright;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lopar without a semi-colon" do
    output = "[[\"Character\",\"&lopar\"]]"
    input = "&lopar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lopar; with a semi-colon" do
    output = "[[\"Character\",\"⦅\"]]"
    input = "&lopar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lopf without a semi-colon" do
    output = "[[\"Character\",\"&lopf\"]]"
    input = "&lopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕝\"]]"
    input = "&lopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: loplus without a semi-colon" do
    output = "[[\"Character\",\"&loplus\"]]"
    input = "&loplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: loplus; with a semi-colon" do
    output = "[[\"Character\",\"⨭\"]]"
    input = "&loplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lotimes without a semi-colon" do
    output = "[[\"Character\",\"&lotimes\"]]"
    input = "&lotimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lotimes; with a semi-colon" do
    output = "[[\"Character\",\"⨴\"]]"
    input = "&lotimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lowast without a semi-colon" do
    output = "[[\"Character\",\"&lowast\"]]"
    input = "&lowast"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lowast; with a semi-colon" do
    output = "[[\"Character\",\"∗\"]]"
    input = "&lowast;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lowbar without a semi-colon" do
    output = "[[\"Character\",\"&lowbar\"]]"
    input = "&lowbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lowbar; with a semi-colon" do
    output = "[[\"Character\",\"_\"]]"
    input = "&lowbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: loz without a semi-colon" do
    output = "[[\"Character\",\"&loz\"]]"
    input = "&loz"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: loz; with a semi-colon" do
    output = "[[\"Character\",\"◊\"]]"
    input = "&loz;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lozenge without a semi-colon" do
    output = "[[\"Character\",\"&lozenge\"]]"
    input = "&lozenge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lozenge; with a semi-colon" do
    output = "[[\"Character\",\"◊\"]]"
    input = "&lozenge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lozf without a semi-colon" do
    output = "[[\"Character\",\"&lozf\"]]"
    input = "&lozf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lozf; with a semi-colon" do
    output = "[[\"Character\",\"⧫\"]]"
    input = "&lozf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lpar without a semi-colon" do
    output = "[[\"Character\",\"&lpar\"]]"
    input = "&lpar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lpar; with a semi-colon" do
    output = "[[\"Character\",\"(\"]]"
    input = "&lpar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lparlt without a semi-colon" do
    output = "[[\"Character\",\"&lparlt\"]]"
    input = "&lparlt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lparlt; with a semi-colon" do
    output = "[[\"Character\",\"⦓\"]]"
    input = "&lparlt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lrarr without a semi-colon" do
    output = "[[\"Character\",\"&lrarr\"]]"
    input = "&lrarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lrarr; with a semi-colon" do
    output = "[[\"Character\",\"⇆\"]]"
    input = "&lrarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lrcorner without a semi-colon" do
    output = "[[\"Character\",\"&lrcorner\"]]"
    input = "&lrcorner"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lrcorner; with a semi-colon" do
    output = "[[\"Character\",\"⌟\"]]"
    input = "&lrcorner;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lrhar without a semi-colon" do
    output = "[[\"Character\",\"&lrhar\"]]"
    input = "&lrhar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lrhar; with a semi-colon" do
    output = "[[\"Character\",\"⇋\"]]"
    input = "&lrhar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lrhard without a semi-colon" do
    output = "[[\"Character\",\"&lrhard\"]]"
    input = "&lrhard"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lrhard; with a semi-colon" do
    output = "[[\"Character\",\"⥭\"]]"
    input = "&lrhard;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lrm without a semi-colon" do
    output = "[[\"Character\",\"&lrm\"]]"
    input = "&lrm"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lrm; with a semi-colon" do
    output = "[[\"Character\",\"\u200E\"]]"
    input = "&lrm;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lrtri without a semi-colon" do
    output = "[[\"Character\",\"&lrtri\"]]"
    input = "&lrtri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lrtri; with a semi-colon" do
    output = "[[\"Character\",\"⊿\"]]"
    input = "&lrtri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lsaquo without a semi-colon" do
    output = "[[\"Character\",\"&lsaquo\"]]"
    input = "&lsaquo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lsaquo; with a semi-colon" do
    output = "[[\"Character\",\"‹\"]]"
    input = "&lsaquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lscr without a semi-colon" do
    output = "[[\"Character\",\"&lscr\"]]"
    input = "&lscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓁\"]]"
    input = "&lscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lsh without a semi-colon" do
    output = "[[\"Character\",\"&lsh\"]]"
    input = "&lsh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lsh; with a semi-colon" do
    output = "[[\"Character\",\"↰\"]]"
    input = "&lsh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lsim without a semi-colon" do
    output = "[[\"Character\",\"&lsim\"]]"
    input = "&lsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lsim; with a semi-colon" do
    output = "[[\"Character\",\"≲\"]]"
    input = "&lsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lsime without a semi-colon" do
    output = "[[\"Character\",\"&lsime\"]]"
    input = "&lsime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lsime; with a semi-colon" do
    output = "[[\"Character\",\"⪍\"]]"
    input = "&lsime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lsimg without a semi-colon" do
    output = "[[\"Character\",\"&lsimg\"]]"
    input = "&lsimg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lsimg; with a semi-colon" do
    output = "[[\"Character\",\"⪏\"]]"
    input = "&lsimg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lsqb without a semi-colon" do
    output = "[[\"Character\",\"&lsqb\"]]"
    input = "&lsqb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lsqb; with a semi-colon" do
    output = "[[\"Character\",\"[\"]]"
    input = "&lsqb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lsquo without a semi-colon" do
    output = "[[\"Character\",\"&lsquo\"]]"
    input = "&lsquo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lsquo; with a semi-colon" do
    output = "[[\"Character\",\"‘\"]]"
    input = "&lsquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lsquor without a semi-colon" do
    output = "[[\"Character\",\"&lsquor\"]]"
    input = "&lsquor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lsquor; with a semi-colon" do
    output = "[[\"Character\",\"‚\"]]"
    input = "&lsquor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lstrok without a semi-colon" do
    output = "[[\"Character\",\"&lstrok\"]]"
    input = "&lstrok"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lstrok; with a semi-colon" do
    output = "[[\"Character\",\"ł\"]]"
    input = "&lstrok;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lt without a semi-colon" do
    output = "[[\"Character\",\"<\"]]"
    input = "&lt"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 4}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lt; with a semi-colon" do
    output = "[[\"Character\",\"<\"]]"
    input = "&lt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltcc; with a semi-colon" do
    output = "[[\"Character\",\"⪦\"]]"
    input = "&ltcc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltcir; with a semi-colon" do
    output = "[[\"Character\",\"⩹\"]]"
    input = "&ltcir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltdot; with a semi-colon" do
    output = "[[\"Character\",\"⋖\"]]"
    input = "&ltdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lthree; with a semi-colon" do
    output = "[[\"Character\",\"⋋\"]]"
    input = "&lthree;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltimes; with a semi-colon" do
    output = "[[\"Character\",\"⋉\"]]"
    input = "&ltimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltlarr; with a semi-colon" do
    output = "[[\"Character\",\"⥶\"]]"
    input = "&ltlarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltquest; with a semi-colon" do
    output = "[[\"Character\",\"⩻\"]]"
    input = "&ltquest;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltrPar; with a semi-colon" do
    output = "[[\"Character\",\"⦖\"]]"
    input = "&ltrPar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltri; with a semi-colon" do
    output = "[[\"Character\",\"◃\"]]"
    input = "&ltri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltrie; with a semi-colon" do
    output = "[[\"Character\",\"⊴\"]]"
    input = "&ltrie;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ltrif; with a semi-colon" do
    output = "[[\"Character\",\"◂\"]]"
    input = "&ltrif;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lurdshar without a semi-colon" do
    output = "[[\"Character\",\"&lurdshar\"]]"
    input = "&lurdshar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lurdshar; with a semi-colon" do
    output = "[[\"Character\",\"⥊\"]]"
    input = "&lurdshar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: luruhar without a semi-colon" do
    output = "[[\"Character\",\"&luruhar\"]]"
    input = "&luruhar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: luruhar; with a semi-colon" do
    output = "[[\"Character\",\"⥦\"]]"
    input = "&luruhar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lvertneqq without a semi-colon" do
    output = "[[\"Character\",\"&lvertneqq\"]]"
    input = "&lvertneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lvertneqq; with a semi-colon" do
    output = "[[\"Character\",\"≨︀\"]]"
    input = "&lvertneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: lvnE without a semi-colon" do
    output = "[[\"Character\",\"&lvnE\"]]"
    input = "&lvnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: lvnE; with a semi-colon" do
    output = "[[\"Character\",\"≨︀\"]]"
    input = "&lvnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mDDot without a semi-colon" do
    output = "[[\"Character\",\"&mDDot\"]]"
    input = "&mDDot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mDDot; with a semi-colon" do
    output = "[[\"Character\",\"∺\"]]"
    input = "&mDDot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: macr without a semi-colon" do
    output = "[[\"Character\",\"¯\"]]"
    input = "&macr"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: macr; with a semi-colon" do
    output = "[[\"Character\",\"¯\"]]"
    input = "&macr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: male without a semi-colon" do
    output = "[[\"Character\",\"&male\"]]"
    input = "&male"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: male; with a semi-colon" do
    output = "[[\"Character\",\"♂\"]]"
    input = "&male;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: malt without a semi-colon" do
    output = "[[\"Character\",\"&malt\"]]"
    input = "&malt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: malt; with a semi-colon" do
    output = "[[\"Character\",\"✠\"]]"
    input = "&malt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: maltese without a semi-colon" do
    output = "[[\"Character\",\"&maltese\"]]"
    input = "&maltese"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: maltese; with a semi-colon" do
    output = "[[\"Character\",\"✠\"]]"
    input = "&maltese;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: map without a semi-colon" do
    output = "[[\"Character\",\"&map\"]]"
    input = "&map"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: map; with a semi-colon" do
    output = "[[\"Character\",\"↦\"]]"
    input = "&map;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mapsto without a semi-colon" do
    output = "[[\"Character\",\"&mapsto\"]]"
    input = "&mapsto"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mapsto; with a semi-colon" do
    output = "[[\"Character\",\"↦\"]]"
    input = "&mapsto;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mapstodown without a semi-colon" do
    output = "[[\"Character\",\"&mapstodown\"]]"
    input = "&mapstodown"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mapstodown; with a semi-colon" do
    output = "[[\"Character\",\"↧\"]]"
    input = "&mapstodown;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mapstoleft without a semi-colon" do
    output = "[[\"Character\",\"&mapstoleft\"]]"
    input = "&mapstoleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mapstoleft; with a semi-colon" do
    output = "[[\"Character\",\"↤\"]]"
    input = "&mapstoleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mapstoup without a semi-colon" do
    output = "[[\"Character\",\"&mapstoup\"]]"
    input = "&mapstoup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mapstoup; with a semi-colon" do
    output = "[[\"Character\",\"↥\"]]"
    input = "&mapstoup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: marker without a semi-colon" do
    output = "[[\"Character\",\"&marker\"]]"
    input = "&marker"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: marker; with a semi-colon" do
    output = "[[\"Character\",\"▮\"]]"
    input = "&marker;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mcomma without a semi-colon" do
    output = "[[\"Character\",\"&mcomma\"]]"
    input = "&mcomma"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mcomma; with a semi-colon" do
    output = "[[\"Character\",\"⨩\"]]"
    input = "&mcomma;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mcy without a semi-colon" do
    output = "[[\"Character\",\"&mcy\"]]"
    input = "&mcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mcy; with a semi-colon" do
    output = "[[\"Character\",\"м\"]]"
    input = "&mcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mdash without a semi-colon" do
    output = "[[\"Character\",\"&mdash\"]]"
    input = "&mdash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mdash; with a semi-colon" do
    output = "[[\"Character\",\"—\"]]"
    input = "&mdash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: measuredangle without a semi-colon" do
    output = "[[\"Character\",\"&measuredangle\"]]"
    input = "&measuredangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: measuredangle; with a semi-colon" do
    output = "[[\"Character\",\"∡\"]]"
    input = "&measuredangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mfr without a semi-colon" do
    output = "[[\"Character\",\"&mfr\"]]"
    input = "&mfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔪\"]]"
    input = "&mfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mho without a semi-colon" do
    output = "[[\"Character\",\"&mho\"]]"
    input = "&mho"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mho; with a semi-colon" do
    output = "[[\"Character\",\"℧\"]]"
    input = "&mho;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: micro without a semi-colon" do
    output = "[[\"Character\",\"µ\"]]"
    input = "&micro"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: micro; with a semi-colon" do
    output = "[[\"Character\",\"µ\"]]"
    input = "&micro;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mid without a semi-colon" do
    output = "[[\"Character\",\"&mid\"]]"
    input = "&mid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mid; with a semi-colon" do
    output = "[[\"Character\",\"∣\"]]"
    input = "&mid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: midast without a semi-colon" do
    output = "[[\"Character\",\"&midast\"]]"
    input = "&midast"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: midast; with a semi-colon" do
    output = "[[\"Character\",\"*\"]]"
    input = "&midast;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: midcir without a semi-colon" do
    output = "[[\"Character\",\"&midcir\"]]"
    input = "&midcir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: midcir; with a semi-colon" do
    output = "[[\"Character\",\"⫰\"]]"
    input = "&midcir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: middot without a semi-colon" do
    output = "[[\"Character\",\"·\"]]"
    input = "&middot"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: middot; with a semi-colon" do
    output = "[[\"Character\",\"·\"]]"
    input = "&middot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: minus without a semi-colon" do
    output = "[[\"Character\",\"&minus\"]]"
    input = "&minus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: minus; with a semi-colon" do
    output = "[[\"Character\",\"−\"]]"
    input = "&minus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: minusb without a semi-colon" do
    output = "[[\"Character\",\"&minusb\"]]"
    input = "&minusb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: minusb; with a semi-colon" do
    output = "[[\"Character\",\"⊟\"]]"
    input = "&minusb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: minusd without a semi-colon" do
    output = "[[\"Character\",\"&minusd\"]]"
    input = "&minusd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: minusd; with a semi-colon" do
    output = "[[\"Character\",\"∸\"]]"
    input = "&minusd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: minusdu without a semi-colon" do
    output = "[[\"Character\",\"&minusdu\"]]"
    input = "&minusdu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: minusdu; with a semi-colon" do
    output = "[[\"Character\",\"⨪\"]]"
    input = "&minusdu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mlcp without a semi-colon" do
    output = "[[\"Character\",\"&mlcp\"]]"
    input = "&mlcp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mlcp; with a semi-colon" do
    output = "[[\"Character\",\"⫛\"]]"
    input = "&mlcp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mldr without a semi-colon" do
    output = "[[\"Character\",\"&mldr\"]]"
    input = "&mldr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mldr; with a semi-colon" do
    output = "[[\"Character\",\"…\"]]"
    input = "&mldr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mnplus without a semi-colon" do
    output = "[[\"Character\",\"&mnplus\"]]"
    input = "&mnplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mnplus; with a semi-colon" do
    output = "[[\"Character\",\"∓\"]]"
    input = "&mnplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: models without a semi-colon" do
    output = "[[\"Character\",\"&models\"]]"
    input = "&models"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: models; with a semi-colon" do
    output = "[[\"Character\",\"⊧\"]]"
    input = "&models;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mopf without a semi-colon" do
    output = "[[\"Character\",\"&mopf\"]]"
    input = "&mopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕞\"]]"
    input = "&mopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mp without a semi-colon" do
    output = "[[\"Character\",\"&mp\"]]"
    input = "&mp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mp; with a semi-colon" do
    output = "[[\"Character\",\"∓\"]]"
    input = "&mp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mscr without a semi-colon" do
    output = "[[\"Character\",\"&mscr\"]]"
    input = "&mscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓂\"]]"
    input = "&mscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mstpos without a semi-colon" do
    output = "[[\"Character\",\"&mstpos\"]]"
    input = "&mstpos"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mstpos; with a semi-colon" do
    output = "[[\"Character\",\"∾\"]]"
    input = "&mstpos;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mu without a semi-colon" do
    output = "[[\"Character\",\"&mu\"]]"
    input = "&mu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mu; with a semi-colon" do
    output = "[[\"Character\",\"μ\"]]"
    input = "&mu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: multimap without a semi-colon" do
    output = "[[\"Character\",\"&multimap\"]]"
    input = "&multimap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: multimap; with a semi-colon" do
    output = "[[\"Character\",\"⊸\"]]"
    input = "&multimap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: mumap without a semi-colon" do
    output = "[[\"Character\",\"&mumap\"]]"
    input = "&mumap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: mumap; with a semi-colon" do
    output = "[[\"Character\",\"⊸\"]]"
    input = "&mumap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nGg without a semi-colon" do
    output = "[[\"Character\",\"&nGg\"]]"
    input = "&nGg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nGg; with a semi-colon" do
    output = "[[\"Character\",\"⋙̸\"]]"
    input = "&nGg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nGt without a semi-colon" do
    output = "[[\"Character\",\"&nGt\"]]"
    input = "&nGt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nGt; with a semi-colon" do
    output = "[[\"Character\",\"≫⃒\"]]"
    input = "&nGt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nGtv without a semi-colon" do
    output = "[[\"Character\",\"&nGtv\"]]"
    input = "&nGtv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nGtv; with a semi-colon" do
    output = "[[\"Character\",\"≫̸\"]]"
    input = "&nGtv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nLeftarrow without a semi-colon" do
    output = "[[\"Character\",\"&nLeftarrow\"]]"
    input = "&nLeftarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nLeftarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇍\"]]"
    input = "&nLeftarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nLeftrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&nLeftrightarrow\"]]"
    input = "&nLeftrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nLeftrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇎\"]]"
    input = "&nLeftrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nLl without a semi-colon" do
    output = "[[\"Character\",\"&nLl\"]]"
    input = "&nLl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nLl; with a semi-colon" do
    output = "[[\"Character\",\"⋘̸\"]]"
    input = "&nLl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nLt without a semi-colon" do
    output = "[[\"Character\",\"&nLt\"]]"
    input = "&nLt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nLt; with a semi-colon" do
    output = "[[\"Character\",\"≪⃒\"]]"
    input = "&nLt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nLtv without a semi-colon" do
    output = "[[\"Character\",\"&nLtv\"]]"
    input = "&nLtv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nLtv; with a semi-colon" do
    output = "[[\"Character\",\"≪̸\"]]"
    input = "&nLtv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nRightarrow without a semi-colon" do
    output = "[[\"Character\",\"&nRightarrow\"]]"
    input = "&nRightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nRightarrow; with a semi-colon" do
    output = "[[\"Character\",\"⇏\"]]"
    input = "&nRightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nVDash without a semi-colon" do
    output = "[[\"Character\",\"&nVDash\"]]"
    input = "&nVDash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nVDash; with a semi-colon" do
    output = "[[\"Character\",\"⊯\"]]"
    input = "&nVDash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nVdash without a semi-colon" do
    output = "[[\"Character\",\"&nVdash\"]]"
    input = "&nVdash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nVdash; with a semi-colon" do
    output = "[[\"Character\",\"⊮\"]]"
    input = "&nVdash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nabla without a semi-colon" do
    output = "[[\"Character\",\"&nabla\"]]"
    input = "&nabla"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nabla; with a semi-colon" do
    output = "[[\"Character\",\"∇\"]]"
    input = "&nabla;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nacute without a semi-colon" do
    output = "[[\"Character\",\"&nacute\"]]"
    input = "&nacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nacute; with a semi-colon" do
    output = "[[\"Character\",\"ń\"]]"
    input = "&nacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nang without a semi-colon" do
    output = "[[\"Character\",\"&nang\"]]"
    input = "&nang"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nang; with a semi-colon" do
    output = "[[\"Character\",\"∠⃒\"]]"
    input = "&nang;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nap without a semi-colon" do
    output = "[[\"Character\",\"&nap\"]]"
    input = "&nap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nap; with a semi-colon" do
    output = "[[\"Character\",\"≉\"]]"
    input = "&nap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: napE without a semi-colon" do
    output = "[[\"Character\",\"&napE\"]]"
    input = "&napE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: napE; with a semi-colon" do
    output = "[[\"Character\",\"⩰̸\"]]"
    input = "&napE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: napid without a semi-colon" do
    output = "[[\"Character\",\"&napid\"]]"
    input = "&napid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: napid; with a semi-colon" do
    output = "[[\"Character\",\"≋̸\"]]"
    input = "&napid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: napos without a semi-colon" do
    output = "[[\"Character\",\"&napos\"]]"
    input = "&napos"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: napos; with a semi-colon" do
    output = "[[\"Character\",\"ŉ\"]]"
    input = "&napos;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: napprox without a semi-colon" do
    output = "[[\"Character\",\"&napprox\"]]"
    input = "&napprox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: napprox; with a semi-colon" do
    output = "[[\"Character\",\"≉\"]]"
    input = "&napprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: natur without a semi-colon" do
    output = "[[\"Character\",\"&natur\"]]"
    input = "&natur"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: natur; with a semi-colon" do
    output = "[[\"Character\",\"♮\"]]"
    input = "&natur;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: natural without a semi-colon" do
    output = "[[\"Character\",\"&natural\"]]"
    input = "&natural"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: natural; with a semi-colon" do
    output = "[[\"Character\",\"♮\"]]"
    input = "&natural;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: naturals without a semi-colon" do
    output = "[[\"Character\",\"&naturals\"]]"
    input = "&naturals"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: naturals; with a semi-colon" do
    output = "[[\"Character\",\"ℕ\"]]"
    input = "&naturals;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nbsp without a semi-colon" do
    output = "[[\"Character\",\"\u00A0\"]]"
    input = "&nbsp"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nbsp; with a semi-colon" do
    output = "[[\"Character\",\"\u00A0\"]]"
    input = "&nbsp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nbump without a semi-colon" do
    output = "[[\"Character\",\"&nbump\"]]"
    input = "&nbump"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nbump; with a semi-colon" do
    output = "[[\"Character\",\"≎̸\"]]"
    input = "&nbump;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nbumpe without a semi-colon" do
    output = "[[\"Character\",\"&nbumpe\"]]"
    input = "&nbumpe"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nbumpe; with a semi-colon" do
    output = "[[\"Character\",\"≏̸\"]]"
    input = "&nbumpe;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ncap without a semi-colon" do
    output = "[[\"Character\",\"&ncap\"]]"
    input = "&ncap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ncap; with a semi-colon" do
    output = "[[\"Character\",\"⩃\"]]"
    input = "&ncap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ncaron without a semi-colon" do
    output = "[[\"Character\",\"&ncaron\"]]"
    input = "&ncaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ncaron; with a semi-colon" do
    output = "[[\"Character\",\"ň\"]]"
    input = "&ncaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ncedil without a semi-colon" do
    output = "[[\"Character\",\"&ncedil\"]]"
    input = "&ncedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ncedil; with a semi-colon" do
    output = "[[\"Character\",\"ņ\"]]"
    input = "&ncedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ncong without a semi-colon" do
    output = "[[\"Character\",\"&ncong\"]]"
    input = "&ncong"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ncong; with a semi-colon" do
    output = "[[\"Character\",\"≇\"]]"
    input = "&ncong;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ncongdot without a semi-colon" do
    output = "[[\"Character\",\"&ncongdot\"]]"
    input = "&ncongdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ncongdot; with a semi-colon" do
    output = "[[\"Character\",\"⩭̸\"]]"
    input = "&ncongdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ncup without a semi-colon" do
    output = "[[\"Character\",\"&ncup\"]]"
    input = "&ncup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ncup; with a semi-colon" do
    output = "[[\"Character\",\"⩂\"]]"
    input = "&ncup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ncy without a semi-colon" do
    output = "[[\"Character\",\"&ncy\"]]"
    input = "&ncy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ncy; with a semi-colon" do
    output = "[[\"Character\",\"н\"]]"
    input = "&ncy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ndash without a semi-colon" do
    output = "[[\"Character\",\"&ndash\"]]"
    input = "&ndash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ndash; with a semi-colon" do
    output = "[[\"Character\",\"–\"]]"
    input = "&ndash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ne without a semi-colon" do
    output = "[[\"Character\",\"&ne\"]]"
    input = "&ne"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ne; with a semi-colon" do
    output = "[[\"Character\",\"≠\"]]"
    input = "&ne;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: neArr without a semi-colon" do
    output = "[[\"Character\",\"&neArr\"]]"
    input = "&neArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: neArr; with a semi-colon" do
    output = "[[\"Character\",\"⇗\"]]"
    input = "&neArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nearhk without a semi-colon" do
    output = "[[\"Character\",\"&nearhk\"]]"
    input = "&nearhk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nearhk; with a semi-colon" do
    output = "[[\"Character\",\"⤤\"]]"
    input = "&nearhk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nearr without a semi-colon" do
    output = "[[\"Character\",\"&nearr\"]]"
    input = "&nearr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nearr; with a semi-colon" do
    output = "[[\"Character\",\"↗\"]]"
    input = "&nearr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nearrow without a semi-colon" do
    output = "[[\"Character\",\"&nearrow\"]]"
    input = "&nearrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nearrow; with a semi-colon" do
    output = "[[\"Character\",\"↗\"]]"
    input = "&nearrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nedot without a semi-colon" do
    output = "[[\"Character\",\"&nedot\"]]"
    input = "&nedot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nedot; with a semi-colon" do
    output = "[[\"Character\",\"≐̸\"]]"
    input = "&nedot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nequiv without a semi-colon" do
    output = "[[\"Character\",\"&nequiv\"]]"
    input = "&nequiv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nequiv; with a semi-colon" do
    output = "[[\"Character\",\"≢\"]]"
    input = "&nequiv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nesear without a semi-colon" do
    output = "[[\"Character\",\"&nesear\"]]"
    input = "&nesear"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nesear; with a semi-colon" do
    output = "[[\"Character\",\"⤨\"]]"
    input = "&nesear;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nesim without a semi-colon" do
    output = "[[\"Character\",\"&nesim\"]]"
    input = "&nesim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nesim; with a semi-colon" do
    output = "[[\"Character\",\"≂̸\"]]"
    input = "&nesim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nexist without a semi-colon" do
    output = "[[\"Character\",\"&nexist\"]]"
    input = "&nexist"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nexist; with a semi-colon" do
    output = "[[\"Character\",\"∄\"]]"
    input = "&nexist;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nexists without a semi-colon" do
    output = "[[\"Character\",\"&nexists\"]]"
    input = "&nexists"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nexists; with a semi-colon" do
    output = "[[\"Character\",\"∄\"]]"
    input = "&nexists;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nfr without a semi-colon" do
    output = "[[\"Character\",\"&nfr\"]]"
    input = "&nfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔫\"]]"
    input = "&nfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ngE without a semi-colon" do
    output = "[[\"Character\",\"&ngE\"]]"
    input = "&ngE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ngE; with a semi-colon" do
    output = "[[\"Character\",\"≧̸\"]]"
    input = "&ngE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nge without a semi-colon" do
    output = "[[\"Character\",\"&nge\"]]"
    input = "&nge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nge; with a semi-colon" do
    output = "[[\"Character\",\"≱\"]]"
    input = "&nge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ngeq without a semi-colon" do
    output = "[[\"Character\",\"&ngeq\"]]"
    input = "&ngeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ngeq; with a semi-colon" do
    output = "[[\"Character\",\"≱\"]]"
    input = "&ngeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ngeqq without a semi-colon" do
    output = "[[\"Character\",\"&ngeqq\"]]"
    input = "&ngeqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ngeqq; with a semi-colon" do
    output = "[[\"Character\",\"≧̸\"]]"
    input = "&ngeqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ngeqslant without a semi-colon" do
    output = "[[\"Character\",\"&ngeqslant\"]]"
    input = "&ngeqslant"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ngeqslant; with a semi-colon" do
    output = "[[\"Character\",\"⩾̸\"]]"
    input = "&ngeqslant;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nges without a semi-colon" do
    output = "[[\"Character\",\"&nges\"]]"
    input = "&nges"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nges; with a semi-colon" do
    output = "[[\"Character\",\"⩾̸\"]]"
    input = "&nges;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ngsim without a semi-colon" do
    output = "[[\"Character\",\"&ngsim\"]]"
    input = "&ngsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ngsim; with a semi-colon" do
    output = "[[\"Character\",\"≵\"]]"
    input = "&ngsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ngt without a semi-colon" do
    output = "[[\"Character\",\"&ngt\"]]"
    input = "&ngt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ngt; with a semi-colon" do
    output = "[[\"Character\",\"≯\"]]"
    input = "&ngt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ngtr without a semi-colon" do
    output = "[[\"Character\",\"&ngtr\"]]"
    input = "&ngtr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ngtr; with a semi-colon" do
    output = "[[\"Character\",\"≯\"]]"
    input = "&ngtr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nhArr without a semi-colon" do
    output = "[[\"Character\",\"&nhArr\"]]"
    input = "&nhArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nhArr; with a semi-colon" do
    output = "[[\"Character\",\"⇎\"]]"
    input = "&nhArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nharr without a semi-colon" do
    output = "[[\"Character\",\"&nharr\"]]"
    input = "&nharr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nharr; with a semi-colon" do
    output = "[[\"Character\",\"↮\"]]"
    input = "&nharr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nhpar without a semi-colon" do
    output = "[[\"Character\",\"&nhpar\"]]"
    input = "&nhpar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nhpar; with a semi-colon" do
    output = "[[\"Character\",\"⫲\"]]"
    input = "&nhpar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ni without a semi-colon" do
    output = "[[\"Character\",\"&ni\"]]"
    input = "&ni"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ni; with a semi-colon" do
    output = "[[\"Character\",\"∋\"]]"
    input = "&ni;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nis without a semi-colon" do
    output = "[[\"Character\",\"&nis\"]]"
    input = "&nis"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nis; with a semi-colon" do
    output = "[[\"Character\",\"⋼\"]]"
    input = "&nis;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nisd without a semi-colon" do
    output = "[[\"Character\",\"&nisd\"]]"
    input = "&nisd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nisd; with a semi-colon" do
    output = "[[\"Character\",\"⋺\"]]"
    input = "&nisd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: niv without a semi-colon" do
    output = "[[\"Character\",\"&niv\"]]"
    input = "&niv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: niv; with a semi-colon" do
    output = "[[\"Character\",\"∋\"]]"
    input = "&niv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: njcy without a semi-colon" do
    output = "[[\"Character\",\"&njcy\"]]"
    input = "&njcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: njcy; with a semi-colon" do
    output = "[[\"Character\",\"њ\"]]"
    input = "&njcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nlArr without a semi-colon" do
    output = "[[\"Character\",\"&nlArr\"]]"
    input = "&nlArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nlArr; with a semi-colon" do
    output = "[[\"Character\",\"⇍\"]]"
    input = "&nlArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nlE without a semi-colon" do
    output = "[[\"Character\",\"&nlE\"]]"
    input = "&nlE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nlE; with a semi-colon" do
    output = "[[\"Character\",\"≦̸\"]]"
    input = "&nlE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nlarr without a semi-colon" do
    output = "[[\"Character\",\"&nlarr\"]]"
    input = "&nlarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nlarr; with a semi-colon" do
    output = "[[\"Character\",\"↚\"]]"
    input = "&nlarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nldr without a semi-colon" do
    output = "[[\"Character\",\"&nldr\"]]"
    input = "&nldr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nldr; with a semi-colon" do
    output = "[[\"Character\",\"‥\"]]"
    input = "&nldr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nle without a semi-colon" do
    output = "[[\"Character\",\"&nle\"]]"
    input = "&nle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nle; with a semi-colon" do
    output = "[[\"Character\",\"≰\"]]"
    input = "&nle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nleftarrow without a semi-colon" do
    output = "[[\"Character\",\"&nleftarrow\"]]"
    input = "&nleftarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nleftarrow; with a semi-colon" do
    output = "[[\"Character\",\"↚\"]]"
    input = "&nleftarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nleftrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&nleftrightarrow\"]]"
    input = "&nleftrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nleftrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"↮\"]]"
    input = "&nleftrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nleq without a semi-colon" do
    output = "[[\"Character\",\"&nleq\"]]"
    input = "&nleq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nleq; with a semi-colon" do
    output = "[[\"Character\",\"≰\"]]"
    input = "&nleq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nleqq without a semi-colon" do
    output = "[[\"Character\",\"&nleqq\"]]"
    input = "&nleqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nleqq; with a semi-colon" do
    output = "[[\"Character\",\"≦̸\"]]"
    input = "&nleqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nleqslant without a semi-colon" do
    output = "[[\"Character\",\"&nleqslant\"]]"
    input = "&nleqslant"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nleqslant; with a semi-colon" do
    output = "[[\"Character\",\"⩽̸\"]]"
    input = "&nleqslant;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nles without a semi-colon" do
    output = "[[\"Character\",\"&nles\"]]"
    input = "&nles"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nles; with a semi-colon" do
    output = "[[\"Character\",\"⩽̸\"]]"
    input = "&nles;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nless without a semi-colon" do
    output = "[[\"Character\",\"&nless\"]]"
    input = "&nless"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nless; with a semi-colon" do
    output = "[[\"Character\",\"≮\"]]"
    input = "&nless;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nlsim without a semi-colon" do
    output = "[[\"Character\",\"&nlsim\"]]"
    input = "&nlsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nlsim; with a semi-colon" do
    output = "[[\"Character\",\"≴\"]]"
    input = "&nlsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nlt without a semi-colon" do
    output = "[[\"Character\",\"&nlt\"]]"
    input = "&nlt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nlt; with a semi-colon" do
    output = "[[\"Character\",\"≮\"]]"
    input = "&nlt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nltri without a semi-colon" do
    output = "[[\"Character\",\"&nltri\"]]"
    input = "&nltri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nltri; with a semi-colon" do
    output = "[[\"Character\",\"⋪\"]]"
    input = "&nltri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nltrie without a semi-colon" do
    output = "[[\"Character\",\"&nltrie\"]]"
    input = "&nltrie"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nltrie; with a semi-colon" do
    output = "[[\"Character\",\"⋬\"]]"
    input = "&nltrie;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nmid without a semi-colon" do
    output = "[[\"Character\",\"&nmid\"]]"
    input = "&nmid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nmid; with a semi-colon" do
    output = "[[\"Character\",\"∤\"]]"
    input = "&nmid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nopf without a semi-colon" do
    output = "[[\"Character\",\"&nopf\"]]"
    input = "&nopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕟\"]]"
    input = "&nopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: not without a semi-colon" do
    output = "[[\"Character\",\"¬\"]]"
    input = "&not"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: not; with a semi-colon" do
    output = "[[\"Character\",\"¬\"]]"
    input = "&not;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notin; with a semi-colon" do
    output = "[[\"Character\",\"∉\"]]"
    input = "&notin;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notinE; with a semi-colon" do
    output = "[[\"Character\",\"⋹̸\"]]"
    input = "&notinE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notindot; with a semi-colon" do
    output = "[[\"Character\",\"⋵̸\"]]"
    input = "&notindot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notinva; with a semi-colon" do
    output = "[[\"Character\",\"∉\"]]"
    input = "&notinva;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notinvb; with a semi-colon" do
    output = "[[\"Character\",\"⋷\"]]"
    input = "&notinvb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notinvc; with a semi-colon" do
    output = "[[\"Character\",\"⋶\"]]"
    input = "&notinvc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notni; with a semi-colon" do
    output = "[[\"Character\",\"∌\"]]"
    input = "&notni;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notniva; with a semi-colon" do
    output = "[[\"Character\",\"∌\"]]"
    input = "&notniva;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notnivb; with a semi-colon" do
    output = "[[\"Character\",\"⋾\"]]"
    input = "&notnivb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: notnivc; with a semi-colon" do
    output = "[[\"Character\",\"⋽\"]]"
    input = "&notnivc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: npar without a semi-colon" do
    output = "[[\"Character\",\"&npar\"]]"
    input = "&npar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: npar; with a semi-colon" do
    output = "[[\"Character\",\"∦\"]]"
    input = "&npar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nparallel without a semi-colon" do
    output = "[[\"Character\",\"&nparallel\"]]"
    input = "&nparallel"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nparallel; with a semi-colon" do
    output = "[[\"Character\",\"∦\"]]"
    input = "&nparallel;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nparsl without a semi-colon" do
    output = "[[\"Character\",\"&nparsl\"]]"
    input = "&nparsl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nparsl; with a semi-colon" do
    output = "[[\"Character\",\"⫽⃥\"]]"
    input = "&nparsl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: npart without a semi-colon" do
    output = "[[\"Character\",\"&npart\"]]"
    input = "&npart"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: npart; with a semi-colon" do
    output = "[[\"Character\",\"∂̸\"]]"
    input = "&npart;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: npolint without a semi-colon" do
    output = "[[\"Character\",\"&npolint\"]]"
    input = "&npolint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: npolint; with a semi-colon" do
    output = "[[\"Character\",\"⨔\"]]"
    input = "&npolint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: npr without a semi-colon" do
    output = "[[\"Character\",\"&npr\"]]"
    input = "&npr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: npr; with a semi-colon" do
    output = "[[\"Character\",\"⊀\"]]"
    input = "&npr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nprcue without a semi-colon" do
    output = "[[\"Character\",\"&nprcue\"]]"
    input = "&nprcue"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nprcue; with a semi-colon" do
    output = "[[\"Character\",\"⋠\"]]"
    input = "&nprcue;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: npre without a semi-colon" do
    output = "[[\"Character\",\"&npre\"]]"
    input = "&npre"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: npre; with a semi-colon" do
    output = "[[\"Character\",\"⪯̸\"]]"
    input = "&npre;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nprec without a semi-colon" do
    output = "[[\"Character\",\"&nprec\"]]"
    input = "&nprec"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nprec; with a semi-colon" do
    output = "[[\"Character\",\"⊀\"]]"
    input = "&nprec;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: npreceq without a semi-colon" do
    output = "[[\"Character\",\"&npreceq\"]]"
    input = "&npreceq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: npreceq; with a semi-colon" do
    output = "[[\"Character\",\"⪯̸\"]]"
    input = "&npreceq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nrArr without a semi-colon" do
    output = "[[\"Character\",\"&nrArr\"]]"
    input = "&nrArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nrArr; with a semi-colon" do
    output = "[[\"Character\",\"⇏\"]]"
    input = "&nrArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nrarr without a semi-colon" do
    output = "[[\"Character\",\"&nrarr\"]]"
    input = "&nrarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nrarr; with a semi-colon" do
    output = "[[\"Character\",\"↛\"]]"
    input = "&nrarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nrarrc without a semi-colon" do
    output = "[[\"Character\",\"&nrarrc\"]]"
    input = "&nrarrc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nrarrc; with a semi-colon" do
    output = "[[\"Character\",\"⤳̸\"]]"
    input = "&nrarrc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nrarrw without a semi-colon" do
    output = "[[\"Character\",\"&nrarrw\"]]"
    input = "&nrarrw"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nrarrw; with a semi-colon" do
    output = "[[\"Character\",\"↝̸\"]]"
    input = "&nrarrw;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&nrightarrow\"]]"
    input = "&nrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"↛\"]]"
    input = "&nrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nrtri without a semi-colon" do
    output = "[[\"Character\",\"&nrtri\"]]"
    input = "&nrtri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nrtri; with a semi-colon" do
    output = "[[\"Character\",\"⋫\"]]"
    input = "&nrtri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nrtrie without a semi-colon" do
    output = "[[\"Character\",\"&nrtrie\"]]"
    input = "&nrtrie"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nrtrie; with a semi-colon" do
    output = "[[\"Character\",\"⋭\"]]"
    input = "&nrtrie;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsc without a semi-colon" do
    output = "[[\"Character\",\"&nsc\"]]"
    input = "&nsc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsc; with a semi-colon" do
    output = "[[\"Character\",\"⊁\"]]"
    input = "&nsc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsccue without a semi-colon" do
    output = "[[\"Character\",\"&nsccue\"]]"
    input = "&nsccue"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsccue; with a semi-colon" do
    output = "[[\"Character\",\"⋡\"]]"
    input = "&nsccue;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsce without a semi-colon" do
    output = "[[\"Character\",\"&nsce\"]]"
    input = "&nsce"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsce; with a semi-colon" do
    output = "[[\"Character\",\"⪰̸\"]]"
    input = "&nsce;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nscr without a semi-colon" do
    output = "[[\"Character\",\"&nscr\"]]"
    input = "&nscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓃\"]]"
    input = "&nscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nshortmid without a semi-colon" do
    output = "[[\"Character\",\"&nshortmid\"]]"
    input = "&nshortmid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nshortmid; with a semi-colon" do
    output = "[[\"Character\",\"∤\"]]"
    input = "&nshortmid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nshortparallel without a semi-colon" do
    output = "[[\"Character\",\"&nshortparallel\"]]"
    input = "&nshortparallel"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nshortparallel; with a semi-colon" do
    output = "[[\"Character\",\"∦\"]]"
    input = "&nshortparallel;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsim without a semi-colon" do
    output = "[[\"Character\",\"&nsim\"]]"
    input = "&nsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsim; with a semi-colon" do
    output = "[[\"Character\",\"≁\"]]"
    input = "&nsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsime without a semi-colon" do
    output = "[[\"Character\",\"&nsime\"]]"
    input = "&nsime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsime; with a semi-colon" do
    output = "[[\"Character\",\"≄\"]]"
    input = "&nsime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsimeq without a semi-colon" do
    output = "[[\"Character\",\"&nsimeq\"]]"
    input = "&nsimeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsimeq; with a semi-colon" do
    output = "[[\"Character\",\"≄\"]]"
    input = "&nsimeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsmid without a semi-colon" do
    output = "[[\"Character\",\"&nsmid\"]]"
    input = "&nsmid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsmid; with a semi-colon" do
    output = "[[\"Character\",\"∤\"]]"
    input = "&nsmid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nspar without a semi-colon" do
    output = "[[\"Character\",\"&nspar\"]]"
    input = "&nspar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nspar; with a semi-colon" do
    output = "[[\"Character\",\"∦\"]]"
    input = "&nspar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsqsube without a semi-colon" do
    output = "[[\"Character\",\"&nsqsube\"]]"
    input = "&nsqsube"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsqsube; with a semi-colon" do
    output = "[[\"Character\",\"⋢\"]]"
    input = "&nsqsube;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsqsupe without a semi-colon" do
    output = "[[\"Character\",\"&nsqsupe\"]]"
    input = "&nsqsupe"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsqsupe; with a semi-colon" do
    output = "[[\"Character\",\"⋣\"]]"
    input = "&nsqsupe;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsub without a semi-colon" do
    output = "[[\"Character\",\"&nsub\"]]"
    input = "&nsub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsub; with a semi-colon" do
    output = "[[\"Character\",\"⊄\"]]"
    input = "&nsub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsubE without a semi-colon" do
    output = "[[\"Character\",\"&nsubE\"]]"
    input = "&nsubE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsubE; with a semi-colon" do
    output = "[[\"Character\",\"⫅̸\"]]"
    input = "&nsubE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsube without a semi-colon" do
    output = "[[\"Character\",\"&nsube\"]]"
    input = "&nsube"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsube; with a semi-colon" do
    output = "[[\"Character\",\"⊈\"]]"
    input = "&nsube;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsubset without a semi-colon" do
    output = "[[\"Character\",\"&nsubset\"]]"
    input = "&nsubset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsubset; with a semi-colon" do
    output = "[[\"Character\",\"⊂⃒\"]]"
    input = "&nsubset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsubseteq without a semi-colon" do
    output = "[[\"Character\",\"&nsubseteq\"]]"
    input = "&nsubseteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsubseteq; with a semi-colon" do
    output = "[[\"Character\",\"⊈\"]]"
    input = "&nsubseteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsubseteqq without a semi-colon" do
    output = "[[\"Character\",\"&nsubseteqq\"]]"
    input = "&nsubseteqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsubseteqq; with a semi-colon" do
    output = "[[\"Character\",\"⫅̸\"]]"
    input = "&nsubseteqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsucc without a semi-colon" do
    output = "[[\"Character\",\"&nsucc\"]]"
    input = "&nsucc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsucc; with a semi-colon" do
    output = "[[\"Character\",\"⊁\"]]"
    input = "&nsucc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsucceq without a semi-colon" do
    output = "[[\"Character\",\"&nsucceq\"]]"
    input = "&nsucceq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsucceq; with a semi-colon" do
    output = "[[\"Character\",\"⪰̸\"]]"
    input = "&nsucceq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsup without a semi-colon" do
    output = "[[\"Character\",\"&nsup\"]]"
    input = "&nsup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsup; with a semi-colon" do
    output = "[[\"Character\",\"⊅\"]]"
    input = "&nsup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsupE without a semi-colon" do
    output = "[[\"Character\",\"&nsupE\"]]"
    input = "&nsupE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsupE; with a semi-colon" do
    output = "[[\"Character\",\"⫆̸\"]]"
    input = "&nsupE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsupe without a semi-colon" do
    output = "[[\"Character\",\"&nsupe\"]]"
    input = "&nsupe"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsupe; with a semi-colon" do
    output = "[[\"Character\",\"⊉\"]]"
    input = "&nsupe;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsupset without a semi-colon" do
    output = "[[\"Character\",\"&nsupset\"]]"
    input = "&nsupset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsupset; with a semi-colon" do
    output = "[[\"Character\",\"⊃⃒\"]]"
    input = "&nsupset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsupseteq without a semi-colon" do
    output = "[[\"Character\",\"&nsupseteq\"]]"
    input = "&nsupseteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsupseteq; with a semi-colon" do
    output = "[[\"Character\",\"⊉\"]]"
    input = "&nsupseteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nsupseteqq without a semi-colon" do
    output = "[[\"Character\",\"&nsupseteqq\"]]"
    input = "&nsupseteqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nsupseteqq; with a semi-colon" do
    output = "[[\"Character\",\"⫆̸\"]]"
    input = "&nsupseteqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ntgl without a semi-colon" do
    output = "[[\"Character\",\"&ntgl\"]]"
    input = "&ntgl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ntgl; with a semi-colon" do
    output = "[[\"Character\",\"≹\"]]"
    input = "&ntgl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ntilde without a semi-colon" do
    output = "[[\"Character\",\"ñ\"]]"
    input = "&ntilde"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ntilde; with a semi-colon" do
    output = "[[\"Character\",\"ñ\"]]"
    input = "&ntilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ntlg without a semi-colon" do
    output = "[[\"Character\",\"&ntlg\"]]"
    input = "&ntlg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ntlg; with a semi-colon" do
    output = "[[\"Character\",\"≸\"]]"
    input = "&ntlg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ntriangleleft without a semi-colon" do
    output = "[[\"Character\",\"&ntriangleleft\"]]"
    input = "&ntriangleleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ntriangleleft; with a semi-colon" do
    output = "[[\"Character\",\"⋪\"]]"
    input = "&ntriangleleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ntrianglelefteq without a semi-colon" do
    output = "[[\"Character\",\"&ntrianglelefteq\"]]"
    input = "&ntrianglelefteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ntrianglelefteq; with a semi-colon" do
    output = "[[\"Character\",\"⋬\"]]"
    input = "&ntrianglelefteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ntriangleright without a semi-colon" do
    output = "[[\"Character\",\"&ntriangleright\"]]"
    input = "&ntriangleright"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ntriangleright; with a semi-colon" do
    output = "[[\"Character\",\"⋫\"]]"
    input = "&ntriangleright;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ntrianglerighteq without a semi-colon" do
    output = "[[\"Character\",\"&ntrianglerighteq\"]]"
    input = "&ntrianglerighteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ntrianglerighteq; with a semi-colon" do
    output = "[[\"Character\",\"⋭\"]]"
    input = "&ntrianglerighteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nu without a semi-colon" do
    output = "[[\"Character\",\"&nu\"]]"
    input = "&nu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nu; with a semi-colon" do
    output = "[[\"Character\",\"ν\"]]"
    input = "&nu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: num without a semi-colon" do
    output = "[[\"Character\",\"&num\"]]"
    input = "&num"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: num; with a semi-colon" do
    output = "[[\"Character\",\"#\"]]"
    input = "&num;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: numero without a semi-colon" do
    output = "[[\"Character\",\"&numero\"]]"
    input = "&numero"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: numero; with a semi-colon" do
    output = "[[\"Character\",\"№\"]]"
    input = "&numero;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: numsp without a semi-colon" do
    output = "[[\"Character\",\"&numsp\"]]"
    input = "&numsp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: numsp; with a semi-colon" do
    output = "[[\"Character\",\"\u2007\"]]"
    input = "&numsp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvDash without a semi-colon" do
    output = "[[\"Character\",\"&nvDash\"]]"
    input = "&nvDash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvDash; with a semi-colon" do
    output = "[[\"Character\",\"⊭\"]]"
    input = "&nvDash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvHarr without a semi-colon" do
    output = "[[\"Character\",\"&nvHarr\"]]"
    input = "&nvHarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvHarr; with a semi-colon" do
    output = "[[\"Character\",\"⤄\"]]"
    input = "&nvHarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvap without a semi-colon" do
    output = "[[\"Character\",\"&nvap\"]]"
    input = "&nvap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvap; with a semi-colon" do
    output = "[[\"Character\",\"≍⃒\"]]"
    input = "&nvap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvdash without a semi-colon" do
    output = "[[\"Character\",\"&nvdash\"]]"
    input = "&nvdash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvdash; with a semi-colon" do
    output = "[[\"Character\",\"⊬\"]]"
    input = "&nvdash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvge without a semi-colon" do
    output = "[[\"Character\",\"&nvge\"]]"
    input = "&nvge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvge; with a semi-colon" do
    output = "[[\"Character\",\"≥⃒\"]]"
    input = "&nvge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvgt without a semi-colon" do
    output = "[[\"Character\",\"&nvgt\"]]"
    input = "&nvgt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvgt; with a semi-colon" do
    output = "[[\"Character\",\">⃒\"]]"
    input = "&nvgt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvinfin without a semi-colon" do
    output = "[[\"Character\",\"&nvinfin\"]]"
    input = "&nvinfin"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvinfin; with a semi-colon" do
    output = "[[\"Character\",\"⧞\"]]"
    input = "&nvinfin;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvlArr without a semi-colon" do
    output = "[[\"Character\",\"&nvlArr\"]]"
    input = "&nvlArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvlArr; with a semi-colon" do
    output = "[[\"Character\",\"⤂\"]]"
    input = "&nvlArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvle without a semi-colon" do
    output = "[[\"Character\",\"&nvle\"]]"
    input = "&nvle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvle; with a semi-colon" do
    output = "[[\"Character\",\"≤⃒\"]]"
    input = "&nvle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvlt without a semi-colon" do
    output = "[[\"Character\",\"&nvlt\"]]"
    input = "&nvlt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvlt; with a semi-colon" do
    output = "[[\"Character\",\"<⃒\"]]"
    input = "&nvlt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvltrie without a semi-colon" do
    output = "[[\"Character\",\"&nvltrie\"]]"
    input = "&nvltrie"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvltrie; with a semi-colon" do
    output = "[[\"Character\",\"⊴⃒\"]]"
    input = "&nvltrie;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvrArr without a semi-colon" do
    output = "[[\"Character\",\"&nvrArr\"]]"
    input = "&nvrArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvrArr; with a semi-colon" do
    output = "[[\"Character\",\"⤃\"]]"
    input = "&nvrArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvrtrie without a semi-colon" do
    output = "[[\"Character\",\"&nvrtrie\"]]"
    input = "&nvrtrie"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvrtrie; with a semi-colon" do
    output = "[[\"Character\",\"⊵⃒\"]]"
    input = "&nvrtrie;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nvsim without a semi-colon" do
    output = "[[\"Character\",\"&nvsim\"]]"
    input = "&nvsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nvsim; with a semi-colon" do
    output = "[[\"Character\",\"∼⃒\"]]"
    input = "&nvsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nwArr without a semi-colon" do
    output = "[[\"Character\",\"&nwArr\"]]"
    input = "&nwArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nwArr; with a semi-colon" do
    output = "[[\"Character\",\"⇖\"]]"
    input = "&nwArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nwarhk without a semi-colon" do
    output = "[[\"Character\",\"&nwarhk\"]]"
    input = "&nwarhk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nwarhk; with a semi-colon" do
    output = "[[\"Character\",\"⤣\"]]"
    input = "&nwarhk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nwarr without a semi-colon" do
    output = "[[\"Character\",\"&nwarr\"]]"
    input = "&nwarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nwarr; with a semi-colon" do
    output = "[[\"Character\",\"↖\"]]"
    input = "&nwarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nwarrow without a semi-colon" do
    output = "[[\"Character\",\"&nwarrow\"]]"
    input = "&nwarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nwarrow; with a semi-colon" do
    output = "[[\"Character\",\"↖\"]]"
    input = "&nwarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: nwnear without a semi-colon" do
    output = "[[\"Character\",\"&nwnear\"]]"
    input = "&nwnear"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: nwnear; with a semi-colon" do
    output = "[[\"Character\",\"⤧\"]]"
    input = "&nwnear;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: oS without a semi-colon" do
    output = "[[\"Character\",\"&oS\"]]"
    input = "&oS"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oS; with a semi-colon" do
    output = "[[\"Character\",\"Ⓢ\"]]"
    input = "&oS;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oacute without a semi-colon" do
    output = "[[\"Character\",\"ó\"]]"
    input = "&oacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oacute; with a semi-colon" do
    output = "[[\"Character\",\"ó\"]]"
    input = "&oacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: oast without a semi-colon" do
    output = "[[\"Character\",\"&oast\"]]"
    input = "&oast"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oast; with a semi-colon" do
    output = "[[\"Character\",\"⊛\"]]"
    input = "&oast;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ocir without a semi-colon" do
    output = "[[\"Character\",\"&ocir\"]]"
    input = "&ocir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ocir; with a semi-colon" do
    output = "[[\"Character\",\"⊚\"]]"
    input = "&ocir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ocirc without a semi-colon" do
    output = "[[\"Character\",\"ô\"]]"
    input = "&ocirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ocirc; with a semi-colon" do
    output = "[[\"Character\",\"ô\"]]"
    input = "&ocirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ocy without a semi-colon" do
    output = "[[\"Character\",\"&ocy\"]]"
    input = "&ocy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ocy; with a semi-colon" do
    output = "[[\"Character\",\"о\"]]"
    input = "&ocy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: odash without a semi-colon" do
    output = "[[\"Character\",\"&odash\"]]"
    input = "&odash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: odash; with a semi-colon" do
    output = "[[\"Character\",\"⊝\"]]"
    input = "&odash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: odblac without a semi-colon" do
    output = "[[\"Character\",\"&odblac\"]]"
    input = "&odblac"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: odblac; with a semi-colon" do
    output = "[[\"Character\",\"ő\"]]"
    input = "&odblac;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: odiv without a semi-colon" do
    output = "[[\"Character\",\"&odiv\"]]"
    input = "&odiv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: odiv; with a semi-colon" do
    output = "[[\"Character\",\"⨸\"]]"
    input = "&odiv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: odot without a semi-colon" do
    output = "[[\"Character\",\"&odot\"]]"
    input = "&odot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: odot; with a semi-colon" do
    output = "[[\"Character\",\"⊙\"]]"
    input = "&odot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: odsold without a semi-colon" do
    output = "[[\"Character\",\"&odsold\"]]"
    input = "&odsold"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: odsold; with a semi-colon" do
    output = "[[\"Character\",\"⦼\"]]"
    input = "&odsold;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: oelig without a semi-colon" do
    output = "[[\"Character\",\"&oelig\"]]"
    input = "&oelig"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oelig; with a semi-colon" do
    output = "[[\"Character\",\"œ\"]]"
    input = "&oelig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ofcir without a semi-colon" do
    output = "[[\"Character\",\"&ofcir\"]]"
    input = "&ofcir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ofcir; with a semi-colon" do
    output = "[[\"Character\",\"⦿\"]]"
    input = "&ofcir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ofr without a semi-colon" do
    output = "[[\"Character\",\"&ofr\"]]"
    input = "&ofr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ofr; with a semi-colon" do
    output = "[[\"Character\",\"𝔬\"]]"
    input = "&ofr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ogon without a semi-colon" do
    output = "[[\"Character\",\"&ogon\"]]"
    input = "&ogon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ogon; with a semi-colon" do
    output = "[[\"Character\",\"˛\"]]"
    input = "&ogon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ograve without a semi-colon" do
    output = "[[\"Character\",\"ò\"]]"
    input = "&ograve"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ograve; with a semi-colon" do
    output = "[[\"Character\",\"ò\"]]"
    input = "&ograve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ogt without a semi-colon" do
    output = "[[\"Character\",\"&ogt\"]]"
    input = "&ogt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ogt; with a semi-colon" do
    output = "[[\"Character\",\"⧁\"]]"
    input = "&ogt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ohbar without a semi-colon" do
    output = "[[\"Character\",\"&ohbar\"]]"
    input = "&ohbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ohbar; with a semi-colon" do
    output = "[[\"Character\",\"⦵\"]]"
    input = "&ohbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ohm without a semi-colon" do
    output = "[[\"Character\",\"&ohm\"]]"
    input = "&ohm"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ohm; with a semi-colon" do
    output = "[[\"Character\",\"Ω\"]]"
    input = "&ohm;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: oint without a semi-colon" do
    output = "[[\"Character\",\"&oint\"]]"
    input = "&oint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oint; with a semi-colon" do
    output = "[[\"Character\",\"∮\"]]"
    input = "&oint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: olarr without a semi-colon" do
    output = "[[\"Character\",\"&olarr\"]]"
    input = "&olarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: olarr; with a semi-colon" do
    output = "[[\"Character\",\"↺\"]]"
    input = "&olarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: olcir without a semi-colon" do
    output = "[[\"Character\",\"&olcir\"]]"
    input = "&olcir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: olcir; with a semi-colon" do
    output = "[[\"Character\",\"⦾\"]]"
    input = "&olcir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: olcross without a semi-colon" do
    output = "[[\"Character\",\"&olcross\"]]"
    input = "&olcross"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: olcross; with a semi-colon" do
    output = "[[\"Character\",\"⦻\"]]"
    input = "&olcross;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: oline without a semi-colon" do
    output = "[[\"Character\",\"&oline\"]]"
    input = "&oline"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oline; with a semi-colon" do
    output = "[[\"Character\",\"‾\"]]"
    input = "&oline;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: olt without a semi-colon" do
    output = "[[\"Character\",\"&olt\"]]"
    input = "&olt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: olt; with a semi-colon" do
    output = "[[\"Character\",\"⧀\"]]"
    input = "&olt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: omacr without a semi-colon" do
    output = "[[\"Character\",\"&omacr\"]]"
    input = "&omacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: omacr; with a semi-colon" do
    output = "[[\"Character\",\"ō\"]]"
    input = "&omacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: omega without a semi-colon" do
    output = "[[\"Character\",\"&omega\"]]"
    input = "&omega"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: omega; with a semi-colon" do
    output = "[[\"Character\",\"ω\"]]"
    input = "&omega;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: omicron without a semi-colon" do
    output = "[[\"Character\",\"&omicron\"]]"
    input = "&omicron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: omicron; with a semi-colon" do
    output = "[[\"Character\",\"ο\"]]"
    input = "&omicron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: omid without a semi-colon" do
    output = "[[\"Character\",\"&omid\"]]"
    input = "&omid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: omid; with a semi-colon" do
    output = "[[\"Character\",\"⦶\"]]"
    input = "&omid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ominus without a semi-colon" do
    output = "[[\"Character\",\"&ominus\"]]"
    input = "&ominus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ominus; with a semi-colon" do
    output = "[[\"Character\",\"⊖\"]]"
    input = "&ominus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: oopf without a semi-colon" do
    output = "[[\"Character\",\"&oopf\"]]"
    input = "&oopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕠\"]]"
    input = "&oopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: opar without a semi-colon" do
    output = "[[\"Character\",\"&opar\"]]"
    input = "&opar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: opar; with a semi-colon" do
    output = "[[\"Character\",\"⦷\"]]"
    input = "&opar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: operp without a semi-colon" do
    output = "[[\"Character\",\"&operp\"]]"
    input = "&operp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: operp; with a semi-colon" do
    output = "[[\"Character\",\"⦹\"]]"
    input = "&operp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: oplus without a semi-colon" do
    output = "[[\"Character\",\"&oplus\"]]"
    input = "&oplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oplus; with a semi-colon" do
    output = "[[\"Character\",\"⊕\"]]"
    input = "&oplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: or without a semi-colon" do
    output = "[[\"Character\",\"&or\"]]"
    input = "&or"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: or; with a semi-colon" do
    output = "[[\"Character\",\"∨\"]]"
    input = "&or;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: orarr without a semi-colon" do
    output = "[[\"Character\",\"&orarr\"]]"
    input = "&orarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: orarr; with a semi-colon" do
    output = "[[\"Character\",\"↻\"]]"
    input = "&orarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ord without a semi-colon" do
    output = "[[\"Character\",\"&ord\"]]"
    input = "&ord"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ord; with a semi-colon" do
    output = "[[\"Character\",\"⩝\"]]"
    input = "&ord;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: order without a semi-colon" do
    output = "[[\"Character\",\"&order\"]]"
    input = "&order"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: order; with a semi-colon" do
    output = "[[\"Character\",\"ℴ\"]]"
    input = "&order;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: orderof without a semi-colon" do
    output = "[[\"Character\",\"&orderof\"]]"
    input = "&orderof"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: orderof; with a semi-colon" do
    output = "[[\"Character\",\"ℴ\"]]"
    input = "&orderof;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ordf without a semi-colon" do
    output = "[[\"Character\",\"ª\"]]"
    input = "&ordf"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ordf; with a semi-colon" do
    output = "[[\"Character\",\"ª\"]]"
    input = "&ordf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ordm without a semi-colon" do
    output = "[[\"Character\",\"º\"]]"
    input = "&ordm"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ordm; with a semi-colon" do
    output = "[[\"Character\",\"º\"]]"
    input = "&ordm;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: origof without a semi-colon" do
    output = "[[\"Character\",\"&origof\"]]"
    input = "&origof"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: origof; with a semi-colon" do
    output = "[[\"Character\",\"⊶\"]]"
    input = "&origof;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: oror without a semi-colon" do
    output = "[[\"Character\",\"&oror\"]]"
    input = "&oror"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oror; with a semi-colon" do
    output = "[[\"Character\",\"⩖\"]]"
    input = "&oror;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: orslope without a semi-colon" do
    output = "[[\"Character\",\"&orslope\"]]"
    input = "&orslope"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: orslope; with a semi-colon" do
    output = "[[\"Character\",\"⩗\"]]"
    input = "&orslope;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: orv without a semi-colon" do
    output = "[[\"Character\",\"&orv\"]]"
    input = "&orv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: orv; with a semi-colon" do
    output = "[[\"Character\",\"⩛\"]]"
    input = "&orv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: oscr without a semi-colon" do
    output = "[[\"Character\",\"&oscr\"]]"
    input = "&oscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oscr; with a semi-colon" do
    output = "[[\"Character\",\"ℴ\"]]"
    input = "&oscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oslash without a semi-colon" do
    output = "[[\"Character\",\"ø\"]]"
    input = "&oslash"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: oslash; with a semi-colon" do
    output = "[[\"Character\",\"ø\"]]"
    input = "&oslash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: osol without a semi-colon" do
    output = "[[\"Character\",\"&osol\"]]"
    input = "&osol"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: osol; with a semi-colon" do
    output = "[[\"Character\",\"⊘\"]]"
    input = "&osol;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: otilde without a semi-colon" do
    output = "[[\"Character\",\"õ\"]]"
    input = "&otilde"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: otilde; with a semi-colon" do
    output = "[[\"Character\",\"õ\"]]"
    input = "&otilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: otimes without a semi-colon" do
    output = "[[\"Character\",\"&otimes\"]]"
    input = "&otimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: otimes; with a semi-colon" do
    output = "[[\"Character\",\"⊗\"]]"
    input = "&otimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: otimesas without a semi-colon" do
    output = "[[\"Character\",\"&otimesas\"]]"
    input = "&otimesas"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: otimesas; with a semi-colon" do
    output = "[[\"Character\",\"⨶\"]]"
    input = "&otimesas;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ouml without a semi-colon" do
    output = "[[\"Character\",\"ö\"]]"
    input = "&ouml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ouml; with a semi-colon" do
    output = "[[\"Character\",\"ö\"]]"
    input = "&ouml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ovbar without a semi-colon" do
    output = "[[\"Character\",\"&ovbar\"]]"
    input = "&ovbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ovbar; with a semi-colon" do
    output = "[[\"Character\",\"⌽\"]]"
    input = "&ovbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: par without a semi-colon" do
    output = "[[\"Character\",\"&par\"]]"
    input = "&par"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: par; with a semi-colon" do
    output = "[[\"Character\",\"∥\"]]"
    input = "&par;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: para without a semi-colon" do
    output = "[[\"Character\",\"¶\"]]"
    input = "&para"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: para; with a semi-colon" do
    output = "[[\"Character\",\"¶\"]]"
    input = "&para;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: parallel; with a semi-colon" do
    output = "[[\"Character\",\"∥\"]]"
    input = "&parallel;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: parsim without a semi-colon" do
    output = "[[\"Character\",\"&parsim\"]]"
    input = "&parsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: parsim; with a semi-colon" do
    output = "[[\"Character\",\"⫳\"]]"
    input = "&parsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: parsl without a semi-colon" do
    output = "[[\"Character\",\"&parsl\"]]"
    input = "&parsl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: parsl; with a semi-colon" do
    output = "[[\"Character\",\"⫽\"]]"
    input = "&parsl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: part without a semi-colon" do
    output = "[[\"Character\",\"&part\"]]"
    input = "&part"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: part; with a semi-colon" do
    output = "[[\"Character\",\"∂\"]]"
    input = "&part;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pcy without a semi-colon" do
    output = "[[\"Character\",\"&pcy\"]]"
    input = "&pcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pcy; with a semi-colon" do
    output = "[[\"Character\",\"п\"]]"
    input = "&pcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: percnt without a semi-colon" do
    output = "[[\"Character\",\"&percnt\"]]"
    input = "&percnt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: percnt; with a semi-colon" do
    output = "[[\"Character\",\"%\"]]"
    input = "&percnt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: period without a semi-colon" do
    output = "[[\"Character\",\"&period\"]]"
    input = "&period"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: period; with a semi-colon" do
    output = "[[\"Character\",\".\"]]"
    input = "&period;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: permil without a semi-colon" do
    output = "[[\"Character\",\"&permil\"]]"
    input = "&permil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: permil; with a semi-colon" do
    output = "[[\"Character\",\"‰\"]]"
    input = "&permil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: perp without a semi-colon" do
    output = "[[\"Character\",\"&perp\"]]"
    input = "&perp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: perp; with a semi-colon" do
    output = "[[\"Character\",\"⊥\"]]"
    input = "&perp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pertenk without a semi-colon" do
    output = "[[\"Character\",\"&pertenk\"]]"
    input = "&pertenk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pertenk; with a semi-colon" do
    output = "[[\"Character\",\"‱\"]]"
    input = "&pertenk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pfr without a semi-colon" do
    output = "[[\"Character\",\"&pfr\"]]"
    input = "&pfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔭\"]]"
    input = "&pfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: phi without a semi-colon" do
    output = "[[\"Character\",\"&phi\"]]"
    input = "&phi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: phi; with a semi-colon" do
    output = "[[\"Character\",\"φ\"]]"
    input = "&phi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: phiv without a semi-colon" do
    output = "[[\"Character\",\"&phiv\"]]"
    input = "&phiv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: phiv; with a semi-colon" do
    output = "[[\"Character\",\"ϕ\"]]"
    input = "&phiv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: phmmat without a semi-colon" do
    output = "[[\"Character\",\"&phmmat\"]]"
    input = "&phmmat"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: phmmat; with a semi-colon" do
    output = "[[\"Character\",\"ℳ\"]]"
    input = "&phmmat;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: phone without a semi-colon" do
    output = "[[\"Character\",\"&phone\"]]"
    input = "&phone"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: phone; with a semi-colon" do
    output = "[[\"Character\",\"☎\"]]"
    input = "&phone;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pi without a semi-colon" do
    output = "[[\"Character\",\"&pi\"]]"
    input = "&pi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pi; with a semi-colon" do
    output = "[[\"Character\",\"π\"]]"
    input = "&pi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pitchfork without a semi-colon" do
    output = "[[\"Character\",\"&pitchfork\"]]"
    input = "&pitchfork"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pitchfork; with a semi-colon" do
    output = "[[\"Character\",\"⋔\"]]"
    input = "&pitchfork;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: piv without a semi-colon" do
    output = "[[\"Character\",\"&piv\"]]"
    input = "&piv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: piv; with a semi-colon" do
    output = "[[\"Character\",\"ϖ\"]]"
    input = "&piv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: planck without a semi-colon" do
    output = "[[\"Character\",\"&planck\"]]"
    input = "&planck"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: planck; with a semi-colon" do
    output = "[[\"Character\",\"ℏ\"]]"
    input = "&planck;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: planckh without a semi-colon" do
    output = "[[\"Character\",\"&planckh\"]]"
    input = "&planckh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: planckh; with a semi-colon" do
    output = "[[\"Character\",\"ℎ\"]]"
    input = "&planckh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: plankv without a semi-colon" do
    output = "[[\"Character\",\"&plankv\"]]"
    input = "&plankv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plankv; with a semi-colon" do
    output = "[[\"Character\",\"ℏ\"]]"
    input = "&plankv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: plus without a semi-colon" do
    output = "[[\"Character\",\"&plus\"]]"
    input = "&plus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plus; with a semi-colon" do
    output = "[[\"Character\",\"+\"]]"
    input = "&plus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: plusacir without a semi-colon" do
    output = "[[\"Character\",\"&plusacir\"]]"
    input = "&plusacir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plusacir; with a semi-colon" do
    output = "[[\"Character\",\"⨣\"]]"
    input = "&plusacir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: plusb without a semi-colon" do
    output = "[[\"Character\",\"&plusb\"]]"
    input = "&plusb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plusb; with a semi-colon" do
    output = "[[\"Character\",\"⊞\"]]"
    input = "&plusb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pluscir without a semi-colon" do
    output = "[[\"Character\",\"&pluscir\"]]"
    input = "&pluscir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pluscir; with a semi-colon" do
    output = "[[\"Character\",\"⨢\"]]"
    input = "&pluscir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: plusdo without a semi-colon" do
    output = "[[\"Character\",\"&plusdo\"]]"
    input = "&plusdo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plusdo; with a semi-colon" do
    output = "[[\"Character\",\"∔\"]]"
    input = "&plusdo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: plusdu without a semi-colon" do
    output = "[[\"Character\",\"&plusdu\"]]"
    input = "&plusdu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plusdu; with a semi-colon" do
    output = "[[\"Character\",\"⨥\"]]"
    input = "&plusdu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pluse without a semi-colon" do
    output = "[[\"Character\",\"&pluse\"]]"
    input = "&pluse"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pluse; with a semi-colon" do
    output = "[[\"Character\",\"⩲\"]]"
    input = "&pluse;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plusmn without a semi-colon" do
    output = "[[\"Character\",\"±\"]]"
    input = "&plusmn"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plusmn; with a semi-colon" do
    output = "[[\"Character\",\"±\"]]"
    input = "&plusmn;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: plussim without a semi-colon" do
    output = "[[\"Character\",\"&plussim\"]]"
    input = "&plussim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plussim; with a semi-colon" do
    output = "[[\"Character\",\"⨦\"]]"
    input = "&plussim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: plustwo without a semi-colon" do
    output = "[[\"Character\",\"&plustwo\"]]"
    input = "&plustwo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: plustwo; with a semi-colon" do
    output = "[[\"Character\",\"⨧\"]]"
    input = "&plustwo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pm without a semi-colon" do
    output = "[[\"Character\",\"&pm\"]]"
    input = "&pm"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pm; with a semi-colon" do
    output = "[[\"Character\",\"±\"]]"
    input = "&pm;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pointint without a semi-colon" do
    output = "[[\"Character\",\"&pointint\"]]"
    input = "&pointint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pointint; with a semi-colon" do
    output = "[[\"Character\",\"⨕\"]]"
    input = "&pointint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: popf without a semi-colon" do
    output = "[[\"Character\",\"&popf\"]]"
    input = "&popf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: popf; with a semi-colon" do
    output = "[[\"Character\",\"𝕡\"]]"
    input = "&popf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pound without a semi-colon" do
    output = "[[\"Character\",\"£\"]]"
    input = "&pound"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pound; with a semi-colon" do
    output = "[[\"Character\",\"£\"]]"
    input = "&pound;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pr without a semi-colon" do
    output = "[[\"Character\",\"&pr\"]]"
    input = "&pr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pr; with a semi-colon" do
    output = "[[\"Character\",\"≺\"]]"
    input = "&pr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prE without a semi-colon" do
    output = "[[\"Character\",\"&prE\"]]"
    input = "&prE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prE; with a semi-colon" do
    output = "[[\"Character\",\"⪳\"]]"
    input = "&prE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prap without a semi-colon" do
    output = "[[\"Character\",\"&prap\"]]"
    input = "&prap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prap; with a semi-colon" do
    output = "[[\"Character\",\"⪷\"]]"
    input = "&prap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prcue without a semi-colon" do
    output = "[[\"Character\",\"&prcue\"]]"
    input = "&prcue"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prcue; with a semi-colon" do
    output = "[[\"Character\",\"≼\"]]"
    input = "&prcue;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pre without a semi-colon" do
    output = "[[\"Character\",\"&pre\"]]"
    input = "&pre"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pre; with a semi-colon" do
    output = "[[\"Character\",\"⪯\"]]"
    input = "&pre;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prec without a semi-colon" do
    output = "[[\"Character\",\"&prec\"]]"
    input = "&prec"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prec; with a semi-colon" do
    output = "[[\"Character\",\"≺\"]]"
    input = "&prec;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: precapprox without a semi-colon" do
    output = "[[\"Character\",\"&precapprox\"]]"
    input = "&precapprox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: precapprox; with a semi-colon" do
    output = "[[\"Character\",\"⪷\"]]"
    input = "&precapprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: preccurlyeq without a semi-colon" do
    output = "[[\"Character\",\"&preccurlyeq\"]]"
    input = "&preccurlyeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: preccurlyeq; with a semi-colon" do
    output = "[[\"Character\",\"≼\"]]"
    input = "&preccurlyeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: preceq without a semi-colon" do
    output = "[[\"Character\",\"&preceq\"]]"
    input = "&preceq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: preceq; with a semi-colon" do
    output = "[[\"Character\",\"⪯\"]]"
    input = "&preceq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: precnapprox without a semi-colon" do
    output = "[[\"Character\",\"&precnapprox\"]]"
    input = "&precnapprox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: precnapprox; with a semi-colon" do
    output = "[[\"Character\",\"⪹\"]]"
    input = "&precnapprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: precneqq without a semi-colon" do
    output = "[[\"Character\",\"&precneqq\"]]"
    input = "&precneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: precneqq; with a semi-colon" do
    output = "[[\"Character\",\"⪵\"]]"
    input = "&precneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: precnsim without a semi-colon" do
    output = "[[\"Character\",\"&precnsim\"]]"
    input = "&precnsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: precnsim; with a semi-colon" do
    output = "[[\"Character\",\"⋨\"]]"
    input = "&precnsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: precsim without a semi-colon" do
    output = "[[\"Character\",\"&precsim\"]]"
    input = "&precsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: precsim; with a semi-colon" do
    output = "[[\"Character\",\"≾\"]]"
    input = "&precsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prime without a semi-colon" do
    output = "[[\"Character\",\"&prime\"]]"
    input = "&prime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prime; with a semi-colon" do
    output = "[[\"Character\",\"′\"]]"
    input = "&prime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: primes without a semi-colon" do
    output = "[[\"Character\",\"&primes\"]]"
    input = "&primes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: primes; with a semi-colon" do
    output = "[[\"Character\",\"ℙ\"]]"
    input = "&primes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prnE without a semi-colon" do
    output = "[[\"Character\",\"&prnE\"]]"
    input = "&prnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prnE; with a semi-colon" do
    output = "[[\"Character\",\"⪵\"]]"
    input = "&prnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prnap without a semi-colon" do
    output = "[[\"Character\",\"&prnap\"]]"
    input = "&prnap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prnap; with a semi-colon" do
    output = "[[\"Character\",\"⪹\"]]"
    input = "&prnap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prnsim without a semi-colon" do
    output = "[[\"Character\",\"&prnsim\"]]"
    input = "&prnsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prnsim; with a semi-colon" do
    output = "[[\"Character\",\"⋨\"]]"
    input = "&prnsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prod without a semi-colon" do
    output = "[[\"Character\",\"&prod\"]]"
    input = "&prod"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prod; with a semi-colon" do
    output = "[[\"Character\",\"∏\"]]"
    input = "&prod;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: profalar without a semi-colon" do
    output = "[[\"Character\",\"&profalar\"]]"
    input = "&profalar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: profalar; with a semi-colon" do
    output = "[[\"Character\",\"⌮\"]]"
    input = "&profalar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: profline without a semi-colon" do
    output = "[[\"Character\",\"&profline\"]]"
    input = "&profline"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: profline; with a semi-colon" do
    output = "[[\"Character\",\"⌒\"]]"
    input = "&profline;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: profsurf without a semi-colon" do
    output = "[[\"Character\",\"&profsurf\"]]"
    input = "&profsurf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: profsurf; with a semi-colon" do
    output = "[[\"Character\",\"⌓\"]]"
    input = "&profsurf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prop without a semi-colon" do
    output = "[[\"Character\",\"&prop\"]]"
    input = "&prop"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prop; with a semi-colon" do
    output = "[[\"Character\",\"∝\"]]"
    input = "&prop;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: propto without a semi-colon" do
    output = "[[\"Character\",\"&propto\"]]"
    input = "&propto"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: propto; with a semi-colon" do
    output = "[[\"Character\",\"∝\"]]"
    input = "&propto;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prsim without a semi-colon" do
    output = "[[\"Character\",\"&prsim\"]]"
    input = "&prsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prsim; with a semi-colon" do
    output = "[[\"Character\",\"≾\"]]"
    input = "&prsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: prurel without a semi-colon" do
    output = "[[\"Character\",\"&prurel\"]]"
    input = "&prurel"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: prurel; with a semi-colon" do
    output = "[[\"Character\",\"⊰\"]]"
    input = "&prurel;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: pscr without a semi-colon" do
    output = "[[\"Character\",\"&pscr\"]]"
    input = "&pscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: pscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓅\"]]"
    input = "&pscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: psi without a semi-colon" do
    output = "[[\"Character\",\"&psi\"]]"
    input = "&psi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: psi; with a semi-colon" do
    output = "[[\"Character\",\"ψ\"]]"
    input = "&psi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: puncsp without a semi-colon" do
    output = "[[\"Character\",\"&puncsp\"]]"
    input = "&puncsp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: puncsp; with a semi-colon" do
    output = "[[\"Character\",\"\u2008\"]]"
    input = "&puncsp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: qfr without a semi-colon" do
    output = "[[\"Character\",\"&qfr\"]]"
    input = "&qfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: qfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔮\"]]"
    input = "&qfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: qint without a semi-colon" do
    output = "[[\"Character\",\"&qint\"]]"
    input = "&qint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: qint; with a semi-colon" do
    output = "[[\"Character\",\"⨌\"]]"
    input = "&qint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: qopf without a semi-colon" do
    output = "[[\"Character\",\"&qopf\"]]"
    input = "&qopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: qopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕢\"]]"
    input = "&qopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: qprime without a semi-colon" do
    output = "[[\"Character\",\"&qprime\"]]"
    input = "&qprime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: qprime; with a semi-colon" do
    output = "[[\"Character\",\"⁗\"]]"
    input = "&qprime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: qscr without a semi-colon" do
    output = "[[\"Character\",\"&qscr\"]]"
    input = "&qscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: qscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓆\"]]"
    input = "&qscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: quaternions without a semi-colon" do
    output = "[[\"Character\",\"&quaternions\"]]"
    input = "&quaternions"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: quaternions; with a semi-colon" do
    output = "[[\"Character\",\"ℍ\"]]"
    input = "&quaternions;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: quatint without a semi-colon" do
    output = "[[\"Character\",\"&quatint\"]]"
    input = "&quatint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: quatint; with a semi-colon" do
    output = "[[\"Character\",\"⨖\"]]"
    input = "&quatint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: quest without a semi-colon" do
    output = "[[\"Character\",\"&quest\"]]"
    input = "&quest"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: quest; with a semi-colon" do
    output = "[[\"Character\",\"?\"]]"
    input = "&quest;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: questeq without a semi-colon" do
    output = "[[\"Character\",\"&questeq\"]]"
    input = "&questeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: questeq; with a semi-colon" do
    output = "[[\"Character\",\"≟\"]]"
    input = "&questeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: quot without a semi-colon" do
    output = "[[\"Character\",\"\\\"\"]]"
    input = "&quot"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: quot; with a semi-colon" do
    output = "[[\"Character\",\"\\\"\"]]"
    input = "&quot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rAarr without a semi-colon" do
    output = "[[\"Character\",\"&rAarr\"]]"
    input = "&rAarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rAarr; with a semi-colon" do
    output = "[[\"Character\",\"⇛\"]]"
    input = "&rAarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rArr without a semi-colon" do
    output = "[[\"Character\",\"&rArr\"]]"
    input = "&rArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rArr; with a semi-colon" do
    output = "[[\"Character\",\"⇒\"]]"
    input = "&rArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rAtail without a semi-colon" do
    output = "[[\"Character\",\"&rAtail\"]]"
    input = "&rAtail"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rAtail; with a semi-colon" do
    output = "[[\"Character\",\"⤜\"]]"
    input = "&rAtail;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rBarr without a semi-colon" do
    output = "[[\"Character\",\"&rBarr\"]]"
    input = "&rBarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rBarr; with a semi-colon" do
    output = "[[\"Character\",\"⤏\"]]"
    input = "&rBarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rHar without a semi-colon" do
    output = "[[\"Character\",\"&rHar\"]]"
    input = "&rHar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rHar; with a semi-colon" do
    output = "[[\"Character\",\"⥤\"]]"
    input = "&rHar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: race without a semi-colon" do
    output = "[[\"Character\",\"&race\"]]"
    input = "&race"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: race; with a semi-colon" do
    output = "[[\"Character\",\"∽̱\"]]"
    input = "&race;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: racute without a semi-colon" do
    output = "[[\"Character\",\"&racute\"]]"
    input = "&racute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: racute; with a semi-colon" do
    output = "[[\"Character\",\"ŕ\"]]"
    input = "&racute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: radic without a semi-colon" do
    output = "[[\"Character\",\"&radic\"]]"
    input = "&radic"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: radic; with a semi-colon" do
    output = "[[\"Character\",\"√\"]]"
    input = "&radic;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: raemptyv without a semi-colon" do
    output = "[[\"Character\",\"&raemptyv\"]]"
    input = "&raemptyv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: raemptyv; with a semi-colon" do
    output = "[[\"Character\",\"⦳\"]]"
    input = "&raemptyv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rang without a semi-colon" do
    output = "[[\"Character\",\"&rang\"]]"
    input = "&rang"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rang; with a semi-colon" do
    output = "[[\"Character\",\"⟩\"]]"
    input = "&rang;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rangd without a semi-colon" do
    output = "[[\"Character\",\"&rangd\"]]"
    input = "&rangd"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rangd; with a semi-colon" do
    output = "[[\"Character\",\"⦒\"]]"
    input = "&rangd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: range without a semi-colon" do
    output = "[[\"Character\",\"&range\"]]"
    input = "&range"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: range; with a semi-colon" do
    output = "[[\"Character\",\"⦥\"]]"
    input = "&range;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rangle without a semi-colon" do
    output = "[[\"Character\",\"&rangle\"]]"
    input = "&rangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rangle; with a semi-colon" do
    output = "[[\"Character\",\"⟩\"]]"
    input = "&rangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: raquo without a semi-colon" do
    output = "[[\"Character\",\"»\"]]"
    input = "&raquo"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: raquo; with a semi-colon" do
    output = "[[\"Character\",\"»\"]]"
    input = "&raquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarr without a semi-colon" do
    output = "[[\"Character\",\"&rarr\"]]"
    input = "&rarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarr; with a semi-colon" do
    output = "[[\"Character\",\"→\"]]"
    input = "&rarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrap without a semi-colon" do
    output = "[[\"Character\",\"&rarrap\"]]"
    input = "&rarrap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrap; with a semi-colon" do
    output = "[[\"Character\",\"⥵\"]]"
    input = "&rarrap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrb without a semi-colon" do
    output = "[[\"Character\",\"&rarrb\"]]"
    input = "&rarrb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrb; with a semi-colon" do
    output = "[[\"Character\",\"⇥\"]]"
    input = "&rarrb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrbfs without a semi-colon" do
    output = "[[\"Character\",\"&rarrbfs\"]]"
    input = "&rarrbfs"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrbfs; with a semi-colon" do
    output = "[[\"Character\",\"⤠\"]]"
    input = "&rarrbfs;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrc without a semi-colon" do
    output = "[[\"Character\",\"&rarrc\"]]"
    input = "&rarrc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrc; with a semi-colon" do
    output = "[[\"Character\",\"⤳\"]]"
    input = "&rarrc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrfs without a semi-colon" do
    output = "[[\"Character\",\"&rarrfs\"]]"
    input = "&rarrfs"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrfs; with a semi-colon" do
    output = "[[\"Character\",\"⤞\"]]"
    input = "&rarrfs;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrhk without a semi-colon" do
    output = "[[\"Character\",\"&rarrhk\"]]"
    input = "&rarrhk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrhk; with a semi-colon" do
    output = "[[\"Character\",\"↪\"]]"
    input = "&rarrhk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrlp without a semi-colon" do
    output = "[[\"Character\",\"&rarrlp\"]]"
    input = "&rarrlp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrlp; with a semi-colon" do
    output = "[[\"Character\",\"↬\"]]"
    input = "&rarrlp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrpl without a semi-colon" do
    output = "[[\"Character\",\"&rarrpl\"]]"
    input = "&rarrpl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrpl; with a semi-colon" do
    output = "[[\"Character\",\"⥅\"]]"
    input = "&rarrpl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrsim without a semi-colon" do
    output = "[[\"Character\",\"&rarrsim\"]]"
    input = "&rarrsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrsim; with a semi-colon" do
    output = "[[\"Character\",\"⥴\"]]"
    input = "&rarrsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrtl without a semi-colon" do
    output = "[[\"Character\",\"&rarrtl\"]]"
    input = "&rarrtl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrtl; with a semi-colon" do
    output = "[[\"Character\",\"↣\"]]"
    input = "&rarrtl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rarrw without a semi-colon" do
    output = "[[\"Character\",\"&rarrw\"]]"
    input = "&rarrw"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rarrw; with a semi-colon" do
    output = "[[\"Character\",\"↝\"]]"
    input = "&rarrw;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ratail without a semi-colon" do
    output = "[[\"Character\",\"&ratail\"]]"
    input = "&ratail"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ratail; with a semi-colon" do
    output = "[[\"Character\",\"⤚\"]]"
    input = "&ratail;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ratio without a semi-colon" do
    output = "[[\"Character\",\"&ratio\"]]"
    input = "&ratio"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ratio; with a semi-colon" do
    output = "[[\"Character\",\"∶\"]]"
    input = "&ratio;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rationals without a semi-colon" do
    output = "[[\"Character\",\"&rationals\"]]"
    input = "&rationals"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rationals; with a semi-colon" do
    output = "[[\"Character\",\"ℚ\"]]"
    input = "&rationals;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rbarr without a semi-colon" do
    output = "[[\"Character\",\"&rbarr\"]]"
    input = "&rbarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rbarr; with a semi-colon" do
    output = "[[\"Character\",\"⤍\"]]"
    input = "&rbarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rbbrk without a semi-colon" do
    output = "[[\"Character\",\"&rbbrk\"]]"
    input = "&rbbrk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rbbrk; with a semi-colon" do
    output = "[[\"Character\",\"❳\"]]"
    input = "&rbbrk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rbrace without a semi-colon" do
    output = "[[\"Character\",\"&rbrace\"]]"
    input = "&rbrace"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rbrace; with a semi-colon" do
    output = "[[\"Character\",\"}\"]]"
    input = "&rbrace;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rbrack without a semi-colon" do
    output = "[[\"Character\",\"&rbrack\"]]"
    input = "&rbrack"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rbrack; with a semi-colon" do
    output = "[[\"Character\",\"]\"]]"
    input = "&rbrack;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rbrke without a semi-colon" do
    output = "[[\"Character\",\"&rbrke\"]]"
    input = "&rbrke"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rbrke; with a semi-colon" do
    output = "[[\"Character\",\"⦌\"]]"
    input = "&rbrke;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rbrksld without a semi-colon" do
    output = "[[\"Character\",\"&rbrksld\"]]"
    input = "&rbrksld"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rbrksld; with a semi-colon" do
    output = "[[\"Character\",\"⦎\"]]"
    input = "&rbrksld;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rbrkslu without a semi-colon" do
    output = "[[\"Character\",\"&rbrkslu\"]]"
    input = "&rbrkslu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rbrkslu; with a semi-colon" do
    output = "[[\"Character\",\"⦐\"]]"
    input = "&rbrkslu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rcaron without a semi-colon" do
    output = "[[\"Character\",\"&rcaron\"]]"
    input = "&rcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rcaron; with a semi-colon" do
    output = "[[\"Character\",\"ř\"]]"
    input = "&rcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rcedil without a semi-colon" do
    output = "[[\"Character\",\"&rcedil\"]]"
    input = "&rcedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rcedil; with a semi-colon" do
    output = "[[\"Character\",\"ŗ\"]]"
    input = "&rcedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rceil without a semi-colon" do
    output = "[[\"Character\",\"&rceil\"]]"
    input = "&rceil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rceil; with a semi-colon" do
    output = "[[\"Character\",\"⌉\"]]"
    input = "&rceil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rcub without a semi-colon" do
    output = "[[\"Character\",\"&rcub\"]]"
    input = "&rcub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rcub; with a semi-colon" do
    output = "[[\"Character\",\"}\"]]"
    input = "&rcub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rcy without a semi-colon" do
    output = "[[\"Character\",\"&rcy\"]]"
    input = "&rcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rcy; with a semi-colon" do
    output = "[[\"Character\",\"р\"]]"
    input = "&rcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rdca without a semi-colon" do
    output = "[[\"Character\",\"&rdca\"]]"
    input = "&rdca"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rdca; with a semi-colon" do
    output = "[[\"Character\",\"⤷\"]]"
    input = "&rdca;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rdldhar without a semi-colon" do
    output = "[[\"Character\",\"&rdldhar\"]]"
    input = "&rdldhar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rdldhar; with a semi-colon" do
    output = "[[\"Character\",\"⥩\"]]"
    input = "&rdldhar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rdquo without a semi-colon" do
    output = "[[\"Character\",\"&rdquo\"]]"
    input = "&rdquo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rdquo; with a semi-colon" do
    output = "[[\"Character\",\"”\"]]"
    input = "&rdquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rdquor without a semi-colon" do
    output = "[[\"Character\",\"&rdquor\"]]"
    input = "&rdquor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rdquor; with a semi-colon" do
    output = "[[\"Character\",\"”\"]]"
    input = "&rdquor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rdsh without a semi-colon" do
    output = "[[\"Character\",\"&rdsh\"]]"
    input = "&rdsh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rdsh; with a semi-colon" do
    output = "[[\"Character\",\"↳\"]]"
    input = "&rdsh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: real without a semi-colon" do
    output = "[[\"Character\",\"&real\"]]"
    input = "&real"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: real; with a semi-colon" do
    output = "[[\"Character\",\"ℜ\"]]"
    input = "&real;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: realine without a semi-colon" do
    output = "[[\"Character\",\"&realine\"]]"
    input = "&realine"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: realine; with a semi-colon" do
    output = "[[\"Character\",\"ℛ\"]]"
    input = "&realine;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: realpart without a semi-colon" do
    output = "[[\"Character\",\"&realpart\"]]"
    input = "&realpart"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: realpart; with a semi-colon" do
    output = "[[\"Character\",\"ℜ\"]]"
    input = "&realpart;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: reals without a semi-colon" do
    output = "[[\"Character\",\"&reals\"]]"
    input = "&reals"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: reals; with a semi-colon" do
    output = "[[\"Character\",\"ℝ\"]]"
    input = "&reals;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rect without a semi-colon" do
    output = "[[\"Character\",\"&rect\"]]"
    input = "&rect"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rect; with a semi-colon" do
    output = "[[\"Character\",\"▭\"]]"
    input = "&rect;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: reg without a semi-colon" do
    output = "[[\"Character\",\"®\"]]"
    input = "&reg"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: reg; with a semi-colon" do
    output = "[[\"Character\",\"®\"]]"
    input = "&reg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rfisht without a semi-colon" do
    output = "[[\"Character\",\"&rfisht\"]]"
    input = "&rfisht"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rfisht; with a semi-colon" do
    output = "[[\"Character\",\"⥽\"]]"
    input = "&rfisht;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rfloor without a semi-colon" do
    output = "[[\"Character\",\"&rfloor\"]]"
    input = "&rfloor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rfloor; with a semi-colon" do
    output = "[[\"Character\",\"⌋\"]]"
    input = "&rfloor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rfr without a semi-colon" do
    output = "[[\"Character\",\"&rfr\"]]"
    input = "&rfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔯\"]]"
    input = "&rfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rhard without a semi-colon" do
    output = "[[\"Character\",\"&rhard\"]]"
    input = "&rhard"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rhard; with a semi-colon" do
    output = "[[\"Character\",\"⇁\"]]"
    input = "&rhard;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rharu without a semi-colon" do
    output = "[[\"Character\",\"&rharu\"]]"
    input = "&rharu"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rharu; with a semi-colon" do
    output = "[[\"Character\",\"⇀\"]]"
    input = "&rharu;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rharul without a semi-colon" do
    output = "[[\"Character\",\"&rharul\"]]"
    input = "&rharul"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rharul; with a semi-colon" do
    output = "[[\"Character\",\"⥬\"]]"
    input = "&rharul;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rho without a semi-colon" do
    output = "[[\"Character\",\"&rho\"]]"
    input = "&rho"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rho; with a semi-colon" do
    output = "[[\"Character\",\"ρ\"]]"
    input = "&rho;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rhov without a semi-colon" do
    output = "[[\"Character\",\"&rhov\"]]"
    input = "&rhov"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rhov; with a semi-colon" do
    output = "[[\"Character\",\"ϱ\"]]"
    input = "&rhov;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rightarrow without a semi-colon" do
    output = "[[\"Character\",\"&rightarrow\"]]"
    input = "&rightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rightarrow; with a semi-colon" do
    output = "[[\"Character\",\"→\"]]"
    input = "&rightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rightarrowtail without a semi-colon" do
    output = "[[\"Character\",\"&rightarrowtail\"]]"
    input = "&rightarrowtail"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rightarrowtail; with a semi-colon" do
    output = "[[\"Character\",\"↣\"]]"
    input = "&rightarrowtail;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rightharpoondown without a semi-colon" do
    output = "[[\"Character\",\"&rightharpoondown\"]]"
    input = "&rightharpoondown"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rightharpoondown; with a semi-colon" do
    output = "[[\"Character\",\"⇁\"]]"
    input = "&rightharpoondown;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rightharpoonup without a semi-colon" do
    output = "[[\"Character\",\"&rightharpoonup\"]]"
    input = "&rightharpoonup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rightharpoonup; with a semi-colon" do
    output = "[[\"Character\",\"⇀\"]]"
    input = "&rightharpoonup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rightleftarrows without a semi-colon" do
    output = "[[\"Character\",\"&rightleftarrows\"]]"
    input = "&rightleftarrows"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rightleftarrows; with a semi-colon" do
    output = "[[\"Character\",\"⇄\"]]"
    input = "&rightleftarrows;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rightleftharpoons without a semi-colon" do
    output = "[[\"Character\",\"&rightleftharpoons\"]]"
    input = "&rightleftharpoons"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rightleftharpoons; with a semi-colon" do
    output = "[[\"Character\",\"⇌\"]]"
    input = "&rightleftharpoons;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rightrightarrows without a semi-colon" do
    output = "[[\"Character\",\"&rightrightarrows\"]]"
    input = "&rightrightarrows"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rightrightarrows; with a semi-colon" do
    output = "[[\"Character\",\"⇉\"]]"
    input = "&rightrightarrows;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rightsquigarrow without a semi-colon" do
    output = "[[\"Character\",\"&rightsquigarrow\"]]"
    input = "&rightsquigarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rightsquigarrow; with a semi-colon" do
    output = "[[\"Character\",\"↝\"]]"
    input = "&rightsquigarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rightthreetimes without a semi-colon" do
    output = "[[\"Character\",\"&rightthreetimes\"]]"
    input = "&rightthreetimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rightthreetimes; with a semi-colon" do
    output = "[[\"Character\",\"⋌\"]]"
    input = "&rightthreetimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ring without a semi-colon" do
    output = "[[\"Character\",\"&ring\"]]"
    input = "&ring"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ring; with a semi-colon" do
    output = "[[\"Character\",\"˚\"]]"
    input = "&ring;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: risingdotseq without a semi-colon" do
    output = "[[\"Character\",\"&risingdotseq\"]]"
    input = "&risingdotseq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: risingdotseq; with a semi-colon" do
    output = "[[\"Character\",\"≓\"]]"
    input = "&risingdotseq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rlarr without a semi-colon" do
    output = "[[\"Character\",\"&rlarr\"]]"
    input = "&rlarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rlarr; with a semi-colon" do
    output = "[[\"Character\",\"⇄\"]]"
    input = "&rlarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rlhar without a semi-colon" do
    output = "[[\"Character\",\"&rlhar\"]]"
    input = "&rlhar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rlhar; with a semi-colon" do
    output = "[[\"Character\",\"⇌\"]]"
    input = "&rlhar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rlm without a semi-colon" do
    output = "[[\"Character\",\"&rlm\"]]"
    input = "&rlm"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rlm; with a semi-colon" do
    output = "[[\"Character\",\"\u200F\"]]"
    input = "&rlm;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rmoust without a semi-colon" do
    output = "[[\"Character\",\"&rmoust\"]]"
    input = "&rmoust"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rmoust; with a semi-colon" do
    output = "[[\"Character\",\"⎱\"]]"
    input = "&rmoust;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rmoustache without a semi-colon" do
    output = "[[\"Character\",\"&rmoustache\"]]"
    input = "&rmoustache"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rmoustache; with a semi-colon" do
    output = "[[\"Character\",\"⎱\"]]"
    input = "&rmoustache;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rnmid without a semi-colon" do
    output = "[[\"Character\",\"&rnmid\"]]"
    input = "&rnmid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rnmid; with a semi-colon" do
    output = "[[\"Character\",\"⫮\"]]"
    input = "&rnmid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: roang without a semi-colon" do
    output = "[[\"Character\",\"&roang\"]]"
    input = "&roang"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: roang; with a semi-colon" do
    output = "[[\"Character\",\"⟭\"]]"
    input = "&roang;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: roarr without a semi-colon" do
    output = "[[\"Character\",\"&roarr\"]]"
    input = "&roarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: roarr; with a semi-colon" do
    output = "[[\"Character\",\"⇾\"]]"
    input = "&roarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: robrk without a semi-colon" do
    output = "[[\"Character\",\"&robrk\"]]"
    input = "&robrk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: robrk; with a semi-colon" do
    output = "[[\"Character\",\"⟧\"]]"
    input = "&robrk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ropar without a semi-colon" do
    output = "[[\"Character\",\"&ropar\"]]"
    input = "&ropar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ropar; with a semi-colon" do
    output = "[[\"Character\",\"⦆\"]]"
    input = "&ropar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ropf without a semi-colon" do
    output = "[[\"Character\",\"&ropf\"]]"
    input = "&ropf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ropf; with a semi-colon" do
    output = "[[\"Character\",\"𝕣\"]]"
    input = "&ropf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: roplus without a semi-colon" do
    output = "[[\"Character\",\"&roplus\"]]"
    input = "&roplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: roplus; with a semi-colon" do
    output = "[[\"Character\",\"⨮\"]]"
    input = "&roplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rotimes without a semi-colon" do
    output = "[[\"Character\",\"&rotimes\"]]"
    input = "&rotimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rotimes; with a semi-colon" do
    output = "[[\"Character\",\"⨵\"]]"
    input = "&rotimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rpar without a semi-colon" do
    output = "[[\"Character\",\"&rpar\"]]"
    input = "&rpar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rpar; with a semi-colon" do
    output = "[[\"Character\",\")\"]]"
    input = "&rpar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rpargt without a semi-colon" do
    output = "[[\"Character\",\"&rpargt\"]]"
    input = "&rpargt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rpargt; with a semi-colon" do
    output = "[[\"Character\",\"⦔\"]]"
    input = "&rpargt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rppolint without a semi-colon" do
    output = "[[\"Character\",\"&rppolint\"]]"
    input = "&rppolint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rppolint; with a semi-colon" do
    output = "[[\"Character\",\"⨒\"]]"
    input = "&rppolint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rrarr without a semi-colon" do
    output = "[[\"Character\",\"&rrarr\"]]"
    input = "&rrarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rrarr; with a semi-colon" do
    output = "[[\"Character\",\"⇉\"]]"
    input = "&rrarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rsaquo without a semi-colon" do
    output = "[[\"Character\",\"&rsaquo\"]]"
    input = "&rsaquo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rsaquo; with a semi-colon" do
    output = "[[\"Character\",\"›\"]]"
    input = "&rsaquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rscr without a semi-colon" do
    output = "[[\"Character\",\"&rscr\"]]"
    input = "&rscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓇\"]]"
    input = "&rscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rsh without a semi-colon" do
    output = "[[\"Character\",\"&rsh\"]]"
    input = "&rsh"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rsh; with a semi-colon" do
    output = "[[\"Character\",\"↱\"]]"
    input = "&rsh;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rsqb without a semi-colon" do
    output = "[[\"Character\",\"&rsqb\"]]"
    input = "&rsqb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rsqb; with a semi-colon" do
    output = "[[\"Character\",\"]\"]]"
    input = "&rsqb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rsquo without a semi-colon" do
    output = "[[\"Character\",\"&rsquo\"]]"
    input = "&rsquo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rsquo; with a semi-colon" do
    output = "[[\"Character\",\"’\"]]"
    input = "&rsquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rsquor without a semi-colon" do
    output = "[[\"Character\",\"&rsquor\"]]"
    input = "&rsquor"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rsquor; with a semi-colon" do
    output = "[[\"Character\",\"’\"]]"
    input = "&rsquor;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rthree without a semi-colon" do
    output = "[[\"Character\",\"&rthree\"]]"
    input = "&rthree"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rthree; with a semi-colon" do
    output = "[[\"Character\",\"⋌\"]]"
    input = "&rthree;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rtimes without a semi-colon" do
    output = "[[\"Character\",\"&rtimes\"]]"
    input = "&rtimes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rtimes; with a semi-colon" do
    output = "[[\"Character\",\"⋊\"]]"
    input = "&rtimes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rtri without a semi-colon" do
    output = "[[\"Character\",\"&rtri\"]]"
    input = "&rtri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rtri; with a semi-colon" do
    output = "[[\"Character\",\"▹\"]]"
    input = "&rtri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rtrie without a semi-colon" do
    output = "[[\"Character\",\"&rtrie\"]]"
    input = "&rtrie"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rtrie; with a semi-colon" do
    output = "[[\"Character\",\"⊵\"]]"
    input = "&rtrie;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rtrif without a semi-colon" do
    output = "[[\"Character\",\"&rtrif\"]]"
    input = "&rtrif"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rtrif; with a semi-colon" do
    output = "[[\"Character\",\"▸\"]]"
    input = "&rtrif;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rtriltri without a semi-colon" do
    output = "[[\"Character\",\"&rtriltri\"]]"
    input = "&rtriltri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rtriltri; with a semi-colon" do
    output = "[[\"Character\",\"⧎\"]]"
    input = "&rtriltri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ruluhar without a semi-colon" do
    output = "[[\"Character\",\"&ruluhar\"]]"
    input = "&ruluhar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ruluhar; with a semi-colon" do
    output = "[[\"Character\",\"⥨\"]]"
    input = "&ruluhar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: rx without a semi-colon" do
    output = "[[\"Character\",\"&rx\"]]"
    input = "&rx"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: rx; with a semi-colon" do
    output = "[[\"Character\",\"℞\"]]"
    input = "&rx;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sacute without a semi-colon" do
    output = "[[\"Character\",\"&sacute\"]]"
    input = "&sacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sacute; with a semi-colon" do
    output = "[[\"Character\",\"ś\"]]"
    input = "&sacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sbquo without a semi-colon" do
    output = "[[\"Character\",\"&sbquo\"]]"
    input = "&sbquo"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sbquo; with a semi-colon" do
    output = "[[\"Character\",\"‚\"]]"
    input = "&sbquo;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sc without a semi-colon" do
    output = "[[\"Character\",\"&sc\"]]"
    input = "&sc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sc; with a semi-colon" do
    output = "[[\"Character\",\"≻\"]]"
    input = "&sc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scE without a semi-colon" do
    output = "[[\"Character\",\"&scE\"]]"
    input = "&scE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scE; with a semi-colon" do
    output = "[[\"Character\",\"⪴\"]]"
    input = "&scE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scap without a semi-colon" do
    output = "[[\"Character\",\"&scap\"]]"
    input = "&scap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scap; with a semi-colon" do
    output = "[[\"Character\",\"⪸\"]]"
    input = "&scap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scaron without a semi-colon" do
    output = "[[\"Character\",\"&scaron\"]]"
    input = "&scaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scaron; with a semi-colon" do
    output = "[[\"Character\",\"š\"]]"
    input = "&scaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sccue without a semi-colon" do
    output = "[[\"Character\",\"&sccue\"]]"
    input = "&sccue"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sccue; with a semi-colon" do
    output = "[[\"Character\",\"≽\"]]"
    input = "&sccue;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sce without a semi-colon" do
    output = "[[\"Character\",\"&sce\"]]"
    input = "&sce"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sce; with a semi-colon" do
    output = "[[\"Character\",\"⪰\"]]"
    input = "&sce;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scedil without a semi-colon" do
    output = "[[\"Character\",\"&scedil\"]]"
    input = "&scedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scedil; with a semi-colon" do
    output = "[[\"Character\",\"ş\"]]"
    input = "&scedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scirc without a semi-colon" do
    output = "[[\"Character\",\"&scirc\"]]"
    input = "&scirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scirc; with a semi-colon" do
    output = "[[\"Character\",\"ŝ\"]]"
    input = "&scirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scnE without a semi-colon" do
    output = "[[\"Character\",\"&scnE\"]]"
    input = "&scnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scnE; with a semi-colon" do
    output = "[[\"Character\",\"⪶\"]]"
    input = "&scnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scnap without a semi-colon" do
    output = "[[\"Character\",\"&scnap\"]]"
    input = "&scnap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scnap; with a semi-colon" do
    output = "[[\"Character\",\"⪺\"]]"
    input = "&scnap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scnsim without a semi-colon" do
    output = "[[\"Character\",\"&scnsim\"]]"
    input = "&scnsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scnsim; with a semi-colon" do
    output = "[[\"Character\",\"⋩\"]]"
    input = "&scnsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scpolint without a semi-colon" do
    output = "[[\"Character\",\"&scpolint\"]]"
    input = "&scpolint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scpolint; with a semi-colon" do
    output = "[[\"Character\",\"⨓\"]]"
    input = "&scpolint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scsim without a semi-colon" do
    output = "[[\"Character\",\"&scsim\"]]"
    input = "&scsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scsim; with a semi-colon" do
    output = "[[\"Character\",\"≿\"]]"
    input = "&scsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: scy without a semi-colon" do
    output = "[[\"Character\",\"&scy\"]]"
    input = "&scy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: scy; with a semi-colon" do
    output = "[[\"Character\",\"с\"]]"
    input = "&scy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sdot without a semi-colon" do
    output = "[[\"Character\",\"&sdot\"]]"
    input = "&sdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sdot; with a semi-colon" do
    output = "[[\"Character\",\"⋅\"]]"
    input = "&sdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sdotb without a semi-colon" do
    output = "[[\"Character\",\"&sdotb\"]]"
    input = "&sdotb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sdotb; with a semi-colon" do
    output = "[[\"Character\",\"⊡\"]]"
    input = "&sdotb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sdote without a semi-colon" do
    output = "[[\"Character\",\"&sdote\"]]"
    input = "&sdote"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sdote; with a semi-colon" do
    output = "[[\"Character\",\"⩦\"]]"
    input = "&sdote;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: seArr without a semi-colon" do
    output = "[[\"Character\",\"&seArr\"]]"
    input = "&seArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: seArr; with a semi-colon" do
    output = "[[\"Character\",\"⇘\"]]"
    input = "&seArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: searhk without a semi-colon" do
    output = "[[\"Character\",\"&searhk\"]]"
    input = "&searhk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: searhk; with a semi-colon" do
    output = "[[\"Character\",\"⤥\"]]"
    input = "&searhk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: searr without a semi-colon" do
    output = "[[\"Character\",\"&searr\"]]"
    input = "&searr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: searr; with a semi-colon" do
    output = "[[\"Character\",\"↘\"]]"
    input = "&searr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: searrow without a semi-colon" do
    output = "[[\"Character\",\"&searrow\"]]"
    input = "&searrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: searrow; with a semi-colon" do
    output = "[[\"Character\",\"↘\"]]"
    input = "&searrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sect without a semi-colon" do
    output = "[[\"Character\",\"§\"]]"
    input = "&sect"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sect; with a semi-colon" do
    output = "[[\"Character\",\"§\"]]"
    input = "&sect;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: semi without a semi-colon" do
    output = "[[\"Character\",\"&semi\"]]"
    input = "&semi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: semi; with a semi-colon" do
    output = "[[\"Character\",\";\"]]"
    input = "&semi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: seswar without a semi-colon" do
    output = "[[\"Character\",\"&seswar\"]]"
    input = "&seswar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: seswar; with a semi-colon" do
    output = "[[\"Character\",\"⤩\"]]"
    input = "&seswar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: setminus without a semi-colon" do
    output = "[[\"Character\",\"&setminus\"]]"
    input = "&setminus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: setminus; with a semi-colon" do
    output = "[[\"Character\",\"∖\"]]"
    input = "&setminus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: setmn without a semi-colon" do
    output = "[[\"Character\",\"&setmn\"]]"
    input = "&setmn"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: setmn; with a semi-colon" do
    output = "[[\"Character\",\"∖\"]]"
    input = "&setmn;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sext without a semi-colon" do
    output = "[[\"Character\",\"&sext\"]]"
    input = "&sext"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sext; with a semi-colon" do
    output = "[[\"Character\",\"✶\"]]"
    input = "&sext;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sfr without a semi-colon" do
    output = "[[\"Character\",\"&sfr\"]]"
    input = "&sfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔰\"]]"
    input = "&sfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sfrown without a semi-colon" do
    output = "[[\"Character\",\"&sfrown\"]]"
    input = "&sfrown"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sfrown; with a semi-colon" do
    output = "[[\"Character\",\"⌢\"]]"
    input = "&sfrown;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sharp without a semi-colon" do
    output = "[[\"Character\",\"&sharp\"]]"
    input = "&sharp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sharp; with a semi-colon" do
    output = "[[\"Character\",\"♯\"]]"
    input = "&sharp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: shchcy without a semi-colon" do
    output = "[[\"Character\",\"&shchcy\"]]"
    input = "&shchcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: shchcy; with a semi-colon" do
    output = "[[\"Character\",\"щ\"]]"
    input = "&shchcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: shcy without a semi-colon" do
    output = "[[\"Character\",\"&shcy\"]]"
    input = "&shcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: shcy; with a semi-colon" do
    output = "[[\"Character\",\"ш\"]]"
    input = "&shcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: shortmid without a semi-colon" do
    output = "[[\"Character\",\"&shortmid\"]]"
    input = "&shortmid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: shortmid; with a semi-colon" do
    output = "[[\"Character\",\"∣\"]]"
    input = "&shortmid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: shortparallel without a semi-colon" do
    output = "[[\"Character\",\"&shortparallel\"]]"
    input = "&shortparallel"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: shortparallel; with a semi-colon" do
    output = "[[\"Character\",\"∥\"]]"
    input = "&shortparallel;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: shy without a semi-colon" do
    output = "[[\"Character\",\"\u00AD\"]]"
    input = "&shy"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: shy; with a semi-colon" do
    output = "[[\"Character\",\"\u00AD\"]]"
    input = "&shy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sigma without a semi-colon" do
    output = "[[\"Character\",\"&sigma\"]]"
    input = "&sigma"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sigma; with a semi-colon" do
    output = "[[\"Character\",\"σ\"]]"
    input = "&sigma;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sigmaf without a semi-colon" do
    output = "[[\"Character\",\"&sigmaf\"]]"
    input = "&sigmaf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sigmaf; with a semi-colon" do
    output = "[[\"Character\",\"ς\"]]"
    input = "&sigmaf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sigmav without a semi-colon" do
    output = "[[\"Character\",\"&sigmav\"]]"
    input = "&sigmav"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sigmav; with a semi-colon" do
    output = "[[\"Character\",\"ς\"]]"
    input = "&sigmav;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sim without a semi-colon" do
    output = "[[\"Character\",\"&sim\"]]"
    input = "&sim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sim; with a semi-colon" do
    output = "[[\"Character\",\"∼\"]]"
    input = "&sim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: simdot without a semi-colon" do
    output = "[[\"Character\",\"&simdot\"]]"
    input = "&simdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: simdot; with a semi-colon" do
    output = "[[\"Character\",\"⩪\"]]"
    input = "&simdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sime without a semi-colon" do
    output = "[[\"Character\",\"&sime\"]]"
    input = "&sime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sime; with a semi-colon" do
    output = "[[\"Character\",\"≃\"]]"
    input = "&sime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: simeq without a semi-colon" do
    output = "[[\"Character\",\"&simeq\"]]"
    input = "&simeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: simeq; with a semi-colon" do
    output = "[[\"Character\",\"≃\"]]"
    input = "&simeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: simg without a semi-colon" do
    output = "[[\"Character\",\"&simg\"]]"
    input = "&simg"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: simg; with a semi-colon" do
    output = "[[\"Character\",\"⪞\"]]"
    input = "&simg;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: simgE without a semi-colon" do
    output = "[[\"Character\",\"&simgE\"]]"
    input = "&simgE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: simgE; with a semi-colon" do
    output = "[[\"Character\",\"⪠\"]]"
    input = "&simgE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: siml without a semi-colon" do
    output = "[[\"Character\",\"&siml\"]]"
    input = "&siml"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: siml; with a semi-colon" do
    output = "[[\"Character\",\"⪝\"]]"
    input = "&siml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: simlE without a semi-colon" do
    output = "[[\"Character\",\"&simlE\"]]"
    input = "&simlE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: simlE; with a semi-colon" do
    output = "[[\"Character\",\"⪟\"]]"
    input = "&simlE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: simne without a semi-colon" do
    output = "[[\"Character\",\"&simne\"]]"
    input = "&simne"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: simne; with a semi-colon" do
    output = "[[\"Character\",\"≆\"]]"
    input = "&simne;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: simplus without a semi-colon" do
    output = "[[\"Character\",\"&simplus\"]]"
    input = "&simplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: simplus; with a semi-colon" do
    output = "[[\"Character\",\"⨤\"]]"
    input = "&simplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: simrarr without a semi-colon" do
    output = "[[\"Character\",\"&simrarr\"]]"
    input = "&simrarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: simrarr; with a semi-colon" do
    output = "[[\"Character\",\"⥲\"]]"
    input = "&simrarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: slarr without a semi-colon" do
    output = "[[\"Character\",\"&slarr\"]]"
    input = "&slarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: slarr; with a semi-colon" do
    output = "[[\"Character\",\"←\"]]"
    input = "&slarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: smallsetminus without a semi-colon" do
    output = "[[\"Character\",\"&smallsetminus\"]]"
    input = "&smallsetminus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: smallsetminus; with a semi-colon" do
    output = "[[\"Character\",\"∖\"]]"
    input = "&smallsetminus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: smashp without a semi-colon" do
    output = "[[\"Character\",\"&smashp\"]]"
    input = "&smashp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: smashp; with a semi-colon" do
    output = "[[\"Character\",\"⨳\"]]"
    input = "&smashp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: smeparsl without a semi-colon" do
    output = "[[\"Character\",\"&smeparsl\"]]"
    input = "&smeparsl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: smeparsl; with a semi-colon" do
    output = "[[\"Character\",\"⧤\"]]"
    input = "&smeparsl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: smid without a semi-colon" do
    output = "[[\"Character\",\"&smid\"]]"
    input = "&smid"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: smid; with a semi-colon" do
    output = "[[\"Character\",\"∣\"]]"
    input = "&smid;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: smile without a semi-colon" do
    output = "[[\"Character\",\"&smile\"]]"
    input = "&smile"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: smile; with a semi-colon" do
    output = "[[\"Character\",\"⌣\"]]"
    input = "&smile;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: smt without a semi-colon" do
    output = "[[\"Character\",\"&smt\"]]"
    input = "&smt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: smt; with a semi-colon" do
    output = "[[\"Character\",\"⪪\"]]"
    input = "&smt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: smte without a semi-colon" do
    output = "[[\"Character\",\"&smte\"]]"
    input = "&smte"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: smte; with a semi-colon" do
    output = "[[\"Character\",\"⪬\"]]"
    input = "&smte;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: smtes without a semi-colon" do
    output = "[[\"Character\",\"&smtes\"]]"
    input = "&smtes"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: smtes; with a semi-colon" do
    output = "[[\"Character\",\"⪬︀\"]]"
    input = "&smtes;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: softcy without a semi-colon" do
    output = "[[\"Character\",\"&softcy\"]]"
    input = "&softcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: softcy; with a semi-colon" do
    output = "[[\"Character\",\"ь\"]]"
    input = "&softcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sol without a semi-colon" do
    output = "[[\"Character\",\"&sol\"]]"
    input = "&sol"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sol; with a semi-colon" do
    output = "[[\"Character\",\"/\"]]"
    input = "&sol;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: solb without a semi-colon" do
    output = "[[\"Character\",\"&solb\"]]"
    input = "&solb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: solb; with a semi-colon" do
    output = "[[\"Character\",\"⧄\"]]"
    input = "&solb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: solbar without a semi-colon" do
    output = "[[\"Character\",\"&solbar\"]]"
    input = "&solbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: solbar; with a semi-colon" do
    output = "[[\"Character\",\"⌿\"]]"
    input = "&solbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sopf without a semi-colon" do
    output = "[[\"Character\",\"&sopf\"]]"
    input = "&sopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕤\"]]"
    input = "&sopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: spades without a semi-colon" do
    output = "[[\"Character\",\"&spades\"]]"
    input = "&spades"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: spades; with a semi-colon" do
    output = "[[\"Character\",\"♠\"]]"
    input = "&spades;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: spadesuit without a semi-colon" do
    output = "[[\"Character\",\"&spadesuit\"]]"
    input = "&spadesuit"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: spadesuit; with a semi-colon" do
    output = "[[\"Character\",\"♠\"]]"
    input = "&spadesuit;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: spar without a semi-colon" do
    output = "[[\"Character\",\"&spar\"]]"
    input = "&spar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: spar; with a semi-colon" do
    output = "[[\"Character\",\"∥\"]]"
    input = "&spar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqcap without a semi-colon" do
    output = "[[\"Character\",\"&sqcap\"]]"
    input = "&sqcap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqcap; with a semi-colon" do
    output = "[[\"Character\",\"⊓\"]]"
    input = "&sqcap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqcaps without a semi-colon" do
    output = "[[\"Character\",\"&sqcaps\"]]"
    input = "&sqcaps"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqcaps; with a semi-colon" do
    output = "[[\"Character\",\"⊓︀\"]]"
    input = "&sqcaps;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqcup without a semi-colon" do
    output = "[[\"Character\",\"&sqcup\"]]"
    input = "&sqcup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqcup; with a semi-colon" do
    output = "[[\"Character\",\"⊔\"]]"
    input = "&sqcup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqcups without a semi-colon" do
    output = "[[\"Character\",\"&sqcups\"]]"
    input = "&sqcups"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqcups; with a semi-colon" do
    output = "[[\"Character\",\"⊔︀\"]]"
    input = "&sqcups;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqsub without a semi-colon" do
    output = "[[\"Character\",\"&sqsub\"]]"
    input = "&sqsub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqsub; with a semi-colon" do
    output = "[[\"Character\",\"⊏\"]]"
    input = "&sqsub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqsube without a semi-colon" do
    output = "[[\"Character\",\"&sqsube\"]]"
    input = "&sqsube"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqsube; with a semi-colon" do
    output = "[[\"Character\",\"⊑\"]]"
    input = "&sqsube;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqsubset without a semi-colon" do
    output = "[[\"Character\",\"&sqsubset\"]]"
    input = "&sqsubset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqsubset; with a semi-colon" do
    output = "[[\"Character\",\"⊏\"]]"
    input = "&sqsubset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqsubseteq without a semi-colon" do
    output = "[[\"Character\",\"&sqsubseteq\"]]"
    input = "&sqsubseteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqsubseteq; with a semi-colon" do
    output = "[[\"Character\",\"⊑\"]]"
    input = "&sqsubseteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqsup without a semi-colon" do
    output = "[[\"Character\",\"&sqsup\"]]"
    input = "&sqsup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqsup; with a semi-colon" do
    output = "[[\"Character\",\"⊐\"]]"
    input = "&sqsup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqsupe without a semi-colon" do
    output = "[[\"Character\",\"&sqsupe\"]]"
    input = "&sqsupe"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqsupe; with a semi-colon" do
    output = "[[\"Character\",\"⊒\"]]"
    input = "&sqsupe;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqsupset without a semi-colon" do
    output = "[[\"Character\",\"&sqsupset\"]]"
    input = "&sqsupset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqsupset; with a semi-colon" do
    output = "[[\"Character\",\"⊐\"]]"
    input = "&sqsupset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sqsupseteq without a semi-colon" do
    output = "[[\"Character\",\"&sqsupseteq\"]]"
    input = "&sqsupseteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sqsupseteq; with a semi-colon" do
    output = "[[\"Character\",\"⊒\"]]"
    input = "&sqsupseteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: squ without a semi-colon" do
    output = "[[\"Character\",\"&squ\"]]"
    input = "&squ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: squ; with a semi-colon" do
    output = "[[\"Character\",\"□\"]]"
    input = "&squ;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: square without a semi-colon" do
    output = "[[\"Character\",\"&square\"]]"
    input = "&square"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: square; with a semi-colon" do
    output = "[[\"Character\",\"□\"]]"
    input = "&square;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: squarf without a semi-colon" do
    output = "[[\"Character\",\"&squarf\"]]"
    input = "&squarf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: squarf; with a semi-colon" do
    output = "[[\"Character\",\"▪\"]]"
    input = "&squarf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: squf without a semi-colon" do
    output = "[[\"Character\",\"&squf\"]]"
    input = "&squf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: squf; with a semi-colon" do
    output = "[[\"Character\",\"▪\"]]"
    input = "&squf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: srarr without a semi-colon" do
    output = "[[\"Character\",\"&srarr\"]]"
    input = "&srarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: srarr; with a semi-colon" do
    output = "[[\"Character\",\"→\"]]"
    input = "&srarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sscr without a semi-colon" do
    output = "[[\"Character\",\"&sscr\"]]"
    input = "&sscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓈\"]]"
    input = "&sscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ssetmn without a semi-colon" do
    output = "[[\"Character\",\"&ssetmn\"]]"
    input = "&ssetmn"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ssetmn; with a semi-colon" do
    output = "[[\"Character\",\"∖\"]]"
    input = "&ssetmn;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ssmile without a semi-colon" do
    output = "[[\"Character\",\"&ssmile\"]]"
    input = "&ssmile"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ssmile; with a semi-colon" do
    output = "[[\"Character\",\"⌣\"]]"
    input = "&ssmile;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sstarf without a semi-colon" do
    output = "[[\"Character\",\"&sstarf\"]]"
    input = "&sstarf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sstarf; with a semi-colon" do
    output = "[[\"Character\",\"⋆\"]]"
    input = "&sstarf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: star without a semi-colon" do
    output = "[[\"Character\",\"&star\"]]"
    input = "&star"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: star; with a semi-colon" do
    output = "[[\"Character\",\"☆\"]]"
    input = "&star;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: starf without a semi-colon" do
    output = "[[\"Character\",\"&starf\"]]"
    input = "&starf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: starf; with a semi-colon" do
    output = "[[\"Character\",\"★\"]]"
    input = "&starf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: straightepsilon without a semi-colon" do
    output = "[[\"Character\",\"&straightepsilon\"]]"
    input = "&straightepsilon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: straightepsilon; with a semi-colon" do
    output = "[[\"Character\",\"ϵ\"]]"
    input = "&straightepsilon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: straightphi without a semi-colon" do
    output = "[[\"Character\",\"&straightphi\"]]"
    input = "&straightphi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: straightphi; with a semi-colon" do
    output = "[[\"Character\",\"ϕ\"]]"
    input = "&straightphi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: strns without a semi-colon" do
    output = "[[\"Character\",\"&strns\"]]"
    input = "&strns"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: strns; with a semi-colon" do
    output = "[[\"Character\",\"¯\"]]"
    input = "&strns;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sub without a semi-colon" do
    output = "[[\"Character\",\"&sub\"]]"
    input = "&sub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sub; with a semi-colon" do
    output = "[[\"Character\",\"⊂\"]]"
    input = "&sub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subE without a semi-colon" do
    output = "[[\"Character\",\"&subE\"]]"
    input = "&subE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subE; with a semi-colon" do
    output = "[[\"Character\",\"⫅\"]]"
    input = "&subE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subdot without a semi-colon" do
    output = "[[\"Character\",\"&subdot\"]]"
    input = "&subdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subdot; with a semi-colon" do
    output = "[[\"Character\",\"⪽\"]]"
    input = "&subdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sube without a semi-colon" do
    output = "[[\"Character\",\"&sube\"]]"
    input = "&sube"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sube; with a semi-colon" do
    output = "[[\"Character\",\"⊆\"]]"
    input = "&sube;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subedot without a semi-colon" do
    output = "[[\"Character\",\"&subedot\"]]"
    input = "&subedot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subedot; with a semi-colon" do
    output = "[[\"Character\",\"⫃\"]]"
    input = "&subedot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: submult without a semi-colon" do
    output = "[[\"Character\",\"&submult\"]]"
    input = "&submult"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: submult; with a semi-colon" do
    output = "[[\"Character\",\"⫁\"]]"
    input = "&submult;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subnE without a semi-colon" do
    output = "[[\"Character\",\"&subnE\"]]"
    input = "&subnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subnE; with a semi-colon" do
    output = "[[\"Character\",\"⫋\"]]"
    input = "&subnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subne without a semi-colon" do
    output = "[[\"Character\",\"&subne\"]]"
    input = "&subne"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subne; with a semi-colon" do
    output = "[[\"Character\",\"⊊\"]]"
    input = "&subne;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subplus without a semi-colon" do
    output = "[[\"Character\",\"&subplus\"]]"
    input = "&subplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subplus; with a semi-colon" do
    output = "[[\"Character\",\"⪿\"]]"
    input = "&subplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subrarr without a semi-colon" do
    output = "[[\"Character\",\"&subrarr\"]]"
    input = "&subrarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subrarr; with a semi-colon" do
    output = "[[\"Character\",\"⥹\"]]"
    input = "&subrarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subset without a semi-colon" do
    output = "[[\"Character\",\"&subset\"]]"
    input = "&subset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subset; with a semi-colon" do
    output = "[[\"Character\",\"⊂\"]]"
    input = "&subset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subseteq without a semi-colon" do
    output = "[[\"Character\",\"&subseteq\"]]"
    input = "&subseteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subseteq; with a semi-colon" do
    output = "[[\"Character\",\"⊆\"]]"
    input = "&subseteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subseteqq without a semi-colon" do
    output = "[[\"Character\",\"&subseteqq\"]]"
    input = "&subseteqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subseteqq; with a semi-colon" do
    output = "[[\"Character\",\"⫅\"]]"
    input = "&subseteqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subsetneq without a semi-colon" do
    output = "[[\"Character\",\"&subsetneq\"]]"
    input = "&subsetneq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subsetneq; with a semi-colon" do
    output = "[[\"Character\",\"⊊\"]]"
    input = "&subsetneq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subsetneqq without a semi-colon" do
    output = "[[\"Character\",\"&subsetneqq\"]]"
    input = "&subsetneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subsetneqq; with a semi-colon" do
    output = "[[\"Character\",\"⫋\"]]"
    input = "&subsetneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subsim without a semi-colon" do
    output = "[[\"Character\",\"&subsim\"]]"
    input = "&subsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subsim; with a semi-colon" do
    output = "[[\"Character\",\"⫇\"]]"
    input = "&subsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subsub without a semi-colon" do
    output = "[[\"Character\",\"&subsub\"]]"
    input = "&subsub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subsub; with a semi-colon" do
    output = "[[\"Character\",\"⫕\"]]"
    input = "&subsub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: subsup without a semi-colon" do
    output = "[[\"Character\",\"&subsup\"]]"
    input = "&subsup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: subsup; with a semi-colon" do
    output = "[[\"Character\",\"⫓\"]]"
    input = "&subsup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: succ without a semi-colon" do
    output = "[[\"Character\",\"&succ\"]]"
    input = "&succ"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: succ; with a semi-colon" do
    output = "[[\"Character\",\"≻\"]]"
    input = "&succ;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: succapprox without a semi-colon" do
    output = "[[\"Character\",\"&succapprox\"]]"
    input = "&succapprox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: succapprox; with a semi-colon" do
    output = "[[\"Character\",\"⪸\"]]"
    input = "&succapprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: succcurlyeq without a semi-colon" do
    output = "[[\"Character\",\"&succcurlyeq\"]]"
    input = "&succcurlyeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: succcurlyeq; with a semi-colon" do
    output = "[[\"Character\",\"≽\"]]"
    input = "&succcurlyeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: succeq without a semi-colon" do
    output = "[[\"Character\",\"&succeq\"]]"
    input = "&succeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: succeq; with a semi-colon" do
    output = "[[\"Character\",\"⪰\"]]"
    input = "&succeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: succnapprox without a semi-colon" do
    output = "[[\"Character\",\"&succnapprox\"]]"
    input = "&succnapprox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: succnapprox; with a semi-colon" do
    output = "[[\"Character\",\"⪺\"]]"
    input = "&succnapprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: succneqq without a semi-colon" do
    output = "[[\"Character\",\"&succneqq\"]]"
    input = "&succneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: succneqq; with a semi-colon" do
    output = "[[\"Character\",\"⪶\"]]"
    input = "&succneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: succnsim without a semi-colon" do
    output = "[[\"Character\",\"&succnsim\"]]"
    input = "&succnsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: succnsim; with a semi-colon" do
    output = "[[\"Character\",\"⋩\"]]"
    input = "&succnsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: succsim without a semi-colon" do
    output = "[[\"Character\",\"&succsim\"]]"
    input = "&succsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: succsim; with a semi-colon" do
    output = "[[\"Character\",\"≿\"]]"
    input = "&succsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sum without a semi-colon" do
    output = "[[\"Character\",\"&sum\"]]"
    input = "&sum"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sum; with a semi-colon" do
    output = "[[\"Character\",\"∑\"]]"
    input = "&sum;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sung without a semi-colon" do
    output = "[[\"Character\",\"&sung\"]]"
    input = "&sung"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sung; with a semi-colon" do
    output = "[[\"Character\",\"♪\"]]"
    input = "&sung;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: sup without a semi-colon" do
    output = "[[\"Character\",\"&sup\"]]"
    input = "&sup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sup1 without a semi-colon" do
    output = "[[\"Character\",\"¹\"]]"
    input = "&sup1"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sup1; with a semi-colon" do
    output = "[[\"Character\",\"¹\"]]"
    input = "&sup1;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sup2 without a semi-colon" do
    output = "[[\"Character\",\"²\"]]"
    input = "&sup2"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sup2; with a semi-colon" do
    output = "[[\"Character\",\"²\"]]"
    input = "&sup2;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sup3 without a semi-colon" do
    output = "[[\"Character\",\"³\"]]"
    input = "&sup3"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sup3; with a semi-colon" do
    output = "[[\"Character\",\"³\"]]"
    input = "&sup3;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: sup; with a semi-colon" do
    output = "[[\"Character\",\"⊃\"]]"
    input = "&sup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supE without a semi-colon" do
    output = "[[\"Character\",\"&supE\"]]"
    input = "&supE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supE; with a semi-colon" do
    output = "[[\"Character\",\"⫆\"]]"
    input = "&supE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supdot without a semi-colon" do
    output = "[[\"Character\",\"&supdot\"]]"
    input = "&supdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supdot; with a semi-colon" do
    output = "[[\"Character\",\"⪾\"]]"
    input = "&supdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supdsub without a semi-colon" do
    output = "[[\"Character\",\"&supdsub\"]]"
    input = "&supdsub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supdsub; with a semi-colon" do
    output = "[[\"Character\",\"⫘\"]]"
    input = "&supdsub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supe without a semi-colon" do
    output = "[[\"Character\",\"&supe\"]]"
    input = "&supe"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supe; with a semi-colon" do
    output = "[[\"Character\",\"⊇\"]]"
    input = "&supe;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supedot without a semi-colon" do
    output = "[[\"Character\",\"&supedot\"]]"
    input = "&supedot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supedot; with a semi-colon" do
    output = "[[\"Character\",\"⫄\"]]"
    input = "&supedot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: suphsol without a semi-colon" do
    output = "[[\"Character\",\"&suphsol\"]]"
    input = "&suphsol"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: suphsol; with a semi-colon" do
    output = "[[\"Character\",\"⟉\"]]"
    input = "&suphsol;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: suphsub without a semi-colon" do
    output = "[[\"Character\",\"&suphsub\"]]"
    input = "&suphsub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: suphsub; with a semi-colon" do
    output = "[[\"Character\",\"⫗\"]]"
    input = "&suphsub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: suplarr without a semi-colon" do
    output = "[[\"Character\",\"&suplarr\"]]"
    input = "&suplarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: suplarr; with a semi-colon" do
    output = "[[\"Character\",\"⥻\"]]"
    input = "&suplarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supmult without a semi-colon" do
    output = "[[\"Character\",\"&supmult\"]]"
    input = "&supmult"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supmult; with a semi-colon" do
    output = "[[\"Character\",\"⫂\"]]"
    input = "&supmult;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supnE without a semi-colon" do
    output = "[[\"Character\",\"&supnE\"]]"
    input = "&supnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supnE; with a semi-colon" do
    output = "[[\"Character\",\"⫌\"]]"
    input = "&supnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supne without a semi-colon" do
    output = "[[\"Character\",\"&supne\"]]"
    input = "&supne"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supne; with a semi-colon" do
    output = "[[\"Character\",\"⊋\"]]"
    input = "&supne;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supplus without a semi-colon" do
    output = "[[\"Character\",\"&supplus\"]]"
    input = "&supplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supplus; with a semi-colon" do
    output = "[[\"Character\",\"⫀\"]]"
    input = "&supplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supset without a semi-colon" do
    output = "[[\"Character\",\"&supset\"]]"
    input = "&supset"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supset; with a semi-colon" do
    output = "[[\"Character\",\"⊃\"]]"
    input = "&supset;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supseteq without a semi-colon" do
    output = "[[\"Character\",\"&supseteq\"]]"
    input = "&supseteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supseteq; with a semi-colon" do
    output = "[[\"Character\",\"⊇\"]]"
    input = "&supseteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supseteqq without a semi-colon" do
    output = "[[\"Character\",\"&supseteqq\"]]"
    input = "&supseteqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supseteqq; with a semi-colon" do
    output = "[[\"Character\",\"⫆\"]]"
    input = "&supseteqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supsetneq without a semi-colon" do
    output = "[[\"Character\",\"&supsetneq\"]]"
    input = "&supsetneq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supsetneq; with a semi-colon" do
    output = "[[\"Character\",\"⊋\"]]"
    input = "&supsetneq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supsetneqq without a semi-colon" do
    output = "[[\"Character\",\"&supsetneqq\"]]"
    input = "&supsetneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supsetneqq; with a semi-colon" do
    output = "[[\"Character\",\"⫌\"]]"
    input = "&supsetneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supsim without a semi-colon" do
    output = "[[\"Character\",\"&supsim\"]]"
    input = "&supsim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supsim; with a semi-colon" do
    output = "[[\"Character\",\"⫈\"]]"
    input = "&supsim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supsub without a semi-colon" do
    output = "[[\"Character\",\"&supsub\"]]"
    input = "&supsub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supsub; with a semi-colon" do
    output = "[[\"Character\",\"⫔\"]]"
    input = "&supsub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: supsup without a semi-colon" do
    output = "[[\"Character\",\"&supsup\"]]"
    input = "&supsup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: supsup; with a semi-colon" do
    output = "[[\"Character\",\"⫖\"]]"
    input = "&supsup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: swArr without a semi-colon" do
    output = "[[\"Character\",\"&swArr\"]]"
    input = "&swArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: swArr; with a semi-colon" do
    output = "[[\"Character\",\"⇙\"]]"
    input = "&swArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: swarhk without a semi-colon" do
    output = "[[\"Character\",\"&swarhk\"]]"
    input = "&swarhk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: swarhk; with a semi-colon" do
    output = "[[\"Character\",\"⤦\"]]"
    input = "&swarhk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: swarr without a semi-colon" do
    output = "[[\"Character\",\"&swarr\"]]"
    input = "&swarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: swarr; with a semi-colon" do
    output = "[[\"Character\",\"↙\"]]"
    input = "&swarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: swarrow without a semi-colon" do
    output = "[[\"Character\",\"&swarrow\"]]"
    input = "&swarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: swarrow; with a semi-colon" do
    output = "[[\"Character\",\"↙\"]]"
    input = "&swarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: swnwar without a semi-colon" do
    output = "[[\"Character\",\"&swnwar\"]]"
    input = "&swnwar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: swnwar; with a semi-colon" do
    output = "[[\"Character\",\"⤪\"]]"
    input = "&swnwar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: szlig without a semi-colon" do
    output = "[[\"Character\",\"ß\"]]"
    input = "&szlig"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: szlig; with a semi-colon" do
    output = "[[\"Character\",\"ß\"]]"
    input = "&szlig;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: target without a semi-colon" do
    output = "[[\"Character\",\"&target\"]]"
    input = "&target"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: target; with a semi-colon" do
    output = "[[\"Character\",\"⌖\"]]"
    input = "&target;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tau without a semi-colon" do
    output = "[[\"Character\",\"&tau\"]]"
    input = "&tau"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tau; with a semi-colon" do
    output = "[[\"Character\",\"τ\"]]"
    input = "&tau;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tbrk without a semi-colon" do
    output = "[[\"Character\",\"&tbrk\"]]"
    input = "&tbrk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tbrk; with a semi-colon" do
    output = "[[\"Character\",\"⎴\"]]"
    input = "&tbrk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tcaron without a semi-colon" do
    output = "[[\"Character\",\"&tcaron\"]]"
    input = "&tcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tcaron; with a semi-colon" do
    output = "[[\"Character\",\"ť\"]]"
    input = "&tcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tcedil without a semi-colon" do
    output = "[[\"Character\",\"&tcedil\"]]"
    input = "&tcedil"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tcedil; with a semi-colon" do
    output = "[[\"Character\",\"ţ\"]]"
    input = "&tcedil;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tcy without a semi-colon" do
    output = "[[\"Character\",\"&tcy\"]]"
    input = "&tcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tcy; with a semi-colon" do
    output = "[[\"Character\",\"т\"]]"
    input = "&tcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tdot without a semi-colon" do
    output = "[[\"Character\",\"&tdot\"]]"
    input = "&tdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tdot; with a semi-colon" do
    output = "[[\"Character\",\"⃛\"]]"
    input = "&tdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: telrec without a semi-colon" do
    output = "[[\"Character\",\"&telrec\"]]"
    input = "&telrec"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: telrec; with a semi-colon" do
    output = "[[\"Character\",\"⌕\"]]"
    input = "&telrec;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tfr without a semi-colon" do
    output = "[[\"Character\",\"&tfr\"]]"
    input = "&tfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔱\"]]"
    input = "&tfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: there4 without a semi-colon" do
    output = "[[\"Character\",\"&there4\"]]"
    input = "&there4"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: there4; with a semi-colon" do
    output = "[[\"Character\",\"∴\"]]"
    input = "&there4;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: therefore without a semi-colon" do
    output = "[[\"Character\",\"&therefore\"]]"
    input = "&therefore"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: therefore; with a semi-colon" do
    output = "[[\"Character\",\"∴\"]]"
    input = "&therefore;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: theta without a semi-colon" do
    output = "[[\"Character\",\"&theta\"]]"
    input = "&theta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: theta; with a semi-colon" do
    output = "[[\"Character\",\"θ\"]]"
    input = "&theta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: thetasym without a semi-colon" do
    output = "[[\"Character\",\"&thetasym\"]]"
    input = "&thetasym"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: thetasym; with a semi-colon" do
    output = "[[\"Character\",\"ϑ\"]]"
    input = "&thetasym;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: thetav without a semi-colon" do
    output = "[[\"Character\",\"&thetav\"]]"
    input = "&thetav"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: thetav; with a semi-colon" do
    output = "[[\"Character\",\"ϑ\"]]"
    input = "&thetav;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: thickapprox without a semi-colon" do
    output = "[[\"Character\",\"&thickapprox\"]]"
    input = "&thickapprox"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: thickapprox; with a semi-colon" do
    output = "[[\"Character\",\"≈\"]]"
    input = "&thickapprox;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: thicksim without a semi-colon" do
    output = "[[\"Character\",\"&thicksim\"]]"
    input = "&thicksim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: thicksim; with a semi-colon" do
    output = "[[\"Character\",\"∼\"]]"
    input = "&thicksim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: thinsp without a semi-colon" do
    output = "[[\"Character\",\"&thinsp\"]]"
    input = "&thinsp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: thinsp; with a semi-colon" do
    output = "[[\"Character\",\"\u2009\"]]"
    input = "&thinsp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: thkap without a semi-colon" do
    output = "[[\"Character\",\"&thkap\"]]"
    input = "&thkap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: thkap; with a semi-colon" do
    output = "[[\"Character\",\"≈\"]]"
    input = "&thkap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: thksim without a semi-colon" do
    output = "[[\"Character\",\"&thksim\"]]"
    input = "&thksim"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: thksim; with a semi-colon" do
    output = "[[\"Character\",\"∼\"]]"
    input = "&thksim;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: thorn without a semi-colon" do
    output = "[[\"Character\",\"þ\"]]"
    input = "&thorn"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: thorn; with a semi-colon" do
    output = "[[\"Character\",\"þ\"]]"
    input = "&thorn;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tilde without a semi-colon" do
    output = "[[\"Character\",\"&tilde\"]]"
    input = "&tilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tilde; with a semi-colon" do
    output = "[[\"Character\",\"˜\"]]"
    input = "&tilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: times without a semi-colon" do
    output = "[[\"Character\",\"×\"]]"
    input = "&times"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: times; with a semi-colon" do
    output = "[[\"Character\",\"×\"]]"
    input = "&times;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: timesb; with a semi-colon" do
    output = "[[\"Character\",\"⊠\"]]"
    input = "&timesb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: timesbar; with a semi-colon" do
    output = "[[\"Character\",\"⨱\"]]"
    input = "&timesbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: timesd; with a semi-colon" do
    output = "[[\"Character\",\"⨰\"]]"
    input = "&timesd;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tint without a semi-colon" do
    output = "[[\"Character\",\"&tint\"]]"
    input = "&tint"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tint; with a semi-colon" do
    output = "[[\"Character\",\"∭\"]]"
    input = "&tint;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: toea without a semi-colon" do
    output = "[[\"Character\",\"&toea\"]]"
    input = "&toea"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: toea; with a semi-colon" do
    output = "[[\"Character\",\"⤨\"]]"
    input = "&toea;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: top without a semi-colon" do
    output = "[[\"Character\",\"&top\"]]"
    input = "&top"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: top; with a semi-colon" do
    output = "[[\"Character\",\"⊤\"]]"
    input = "&top;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: topbot without a semi-colon" do
    output = "[[\"Character\",\"&topbot\"]]"
    input = "&topbot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: topbot; with a semi-colon" do
    output = "[[\"Character\",\"⌶\"]]"
    input = "&topbot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: topcir without a semi-colon" do
    output = "[[\"Character\",\"&topcir\"]]"
    input = "&topcir"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: topcir; with a semi-colon" do
    output = "[[\"Character\",\"⫱\"]]"
    input = "&topcir;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: topf without a semi-colon" do
    output = "[[\"Character\",\"&topf\"]]"
    input = "&topf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: topf; with a semi-colon" do
    output = "[[\"Character\",\"𝕥\"]]"
    input = "&topf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: topfork without a semi-colon" do
    output = "[[\"Character\",\"&topfork\"]]"
    input = "&topfork"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: topfork; with a semi-colon" do
    output = "[[\"Character\",\"⫚\"]]"
    input = "&topfork;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tosa without a semi-colon" do
    output = "[[\"Character\",\"&tosa\"]]"
    input = "&tosa"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tosa; with a semi-colon" do
    output = "[[\"Character\",\"⤩\"]]"
    input = "&tosa;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tprime without a semi-colon" do
    output = "[[\"Character\",\"&tprime\"]]"
    input = "&tprime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tprime; with a semi-colon" do
    output = "[[\"Character\",\"‴\"]]"
    input = "&tprime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: trade without a semi-colon" do
    output = "[[\"Character\",\"&trade\"]]"
    input = "&trade"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: trade; with a semi-colon" do
    output = "[[\"Character\",\"™\"]]"
    input = "&trade;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: triangle without a semi-colon" do
    output = "[[\"Character\",\"&triangle\"]]"
    input = "&triangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: triangle; with a semi-colon" do
    output = "[[\"Character\",\"▵\"]]"
    input = "&triangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: triangledown without a semi-colon" do
    output = "[[\"Character\",\"&triangledown\"]]"
    input = "&triangledown"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: triangledown; with a semi-colon" do
    output = "[[\"Character\",\"▿\"]]"
    input = "&triangledown;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: triangleleft without a semi-colon" do
    output = "[[\"Character\",\"&triangleleft\"]]"
    input = "&triangleleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: triangleleft; with a semi-colon" do
    output = "[[\"Character\",\"◃\"]]"
    input = "&triangleleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: trianglelefteq without a semi-colon" do
    output = "[[\"Character\",\"&trianglelefteq\"]]"
    input = "&trianglelefteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: trianglelefteq; with a semi-colon" do
    output = "[[\"Character\",\"⊴\"]]"
    input = "&trianglelefteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: triangleq without a semi-colon" do
    output = "[[\"Character\",\"&triangleq\"]]"
    input = "&triangleq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: triangleq; with a semi-colon" do
    output = "[[\"Character\",\"≜\"]]"
    input = "&triangleq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: triangleright without a semi-colon" do
    output = "[[\"Character\",\"&triangleright\"]]"
    input = "&triangleright"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: triangleright; with a semi-colon" do
    output = "[[\"Character\",\"▹\"]]"
    input = "&triangleright;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: trianglerighteq without a semi-colon" do
    output = "[[\"Character\",\"&trianglerighteq\"]]"
    input = "&trianglerighteq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: trianglerighteq; with a semi-colon" do
    output = "[[\"Character\",\"⊵\"]]"
    input = "&trianglerighteq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tridot without a semi-colon" do
    output = "[[\"Character\",\"&tridot\"]]"
    input = "&tridot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tridot; with a semi-colon" do
    output = "[[\"Character\",\"◬\"]]"
    input = "&tridot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: trie without a semi-colon" do
    output = "[[\"Character\",\"&trie\"]]"
    input = "&trie"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: trie; with a semi-colon" do
    output = "[[\"Character\",\"≜\"]]"
    input = "&trie;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: triminus without a semi-colon" do
    output = "[[\"Character\",\"&triminus\"]]"
    input = "&triminus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: triminus; with a semi-colon" do
    output = "[[\"Character\",\"⨺\"]]"
    input = "&triminus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: triplus without a semi-colon" do
    output = "[[\"Character\",\"&triplus\"]]"
    input = "&triplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: triplus; with a semi-colon" do
    output = "[[\"Character\",\"⨹\"]]"
    input = "&triplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: trisb without a semi-colon" do
    output = "[[\"Character\",\"&trisb\"]]"
    input = "&trisb"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: trisb; with a semi-colon" do
    output = "[[\"Character\",\"⧍\"]]"
    input = "&trisb;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tritime without a semi-colon" do
    output = "[[\"Character\",\"&tritime\"]]"
    input = "&tritime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tritime; with a semi-colon" do
    output = "[[\"Character\",\"⨻\"]]"
    input = "&tritime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: trpezium without a semi-colon" do
    output = "[[\"Character\",\"&trpezium\"]]"
    input = "&trpezium"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: trpezium; with a semi-colon" do
    output = "[[\"Character\",\"⏢\"]]"
    input = "&trpezium;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tscr without a semi-colon" do
    output = "[[\"Character\",\"&tscr\"]]"
    input = "&tscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓉\"]]"
    input = "&tscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tscy without a semi-colon" do
    output = "[[\"Character\",\"&tscy\"]]"
    input = "&tscy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tscy; with a semi-colon" do
    output = "[[\"Character\",\"ц\"]]"
    input = "&tscy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tshcy without a semi-colon" do
    output = "[[\"Character\",\"&tshcy\"]]"
    input = "&tshcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tshcy; with a semi-colon" do
    output = "[[\"Character\",\"ћ\"]]"
    input = "&tshcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: tstrok without a semi-colon" do
    output = "[[\"Character\",\"&tstrok\"]]"
    input = "&tstrok"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: tstrok; with a semi-colon" do
    output = "[[\"Character\",\"ŧ\"]]"
    input = "&tstrok;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: twixt without a semi-colon" do
    output = "[[\"Character\",\"&twixt\"]]"
    input = "&twixt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: twixt; with a semi-colon" do
    output = "[[\"Character\",\"≬\"]]"
    input = "&twixt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: twoheadleftarrow without a semi-colon" do
    output = "[[\"Character\",\"&twoheadleftarrow\"]]"
    input = "&twoheadleftarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: twoheadleftarrow; with a semi-colon" do
    output = "[[\"Character\",\"↞\"]]"
    input = "&twoheadleftarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: twoheadrightarrow without a semi-colon" do
    output = "[[\"Character\",\"&twoheadrightarrow\"]]"
    input = "&twoheadrightarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: twoheadrightarrow; with a semi-colon" do
    output = "[[\"Character\",\"↠\"]]"
    input = "&twoheadrightarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uArr without a semi-colon" do
    output = "[[\"Character\",\"&uArr\"]]"
    input = "&uArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uArr; with a semi-colon" do
    output = "[[\"Character\",\"⇑\"]]"
    input = "&uArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uHar without a semi-colon" do
    output = "[[\"Character\",\"&uHar\"]]"
    input = "&uHar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uHar; with a semi-colon" do
    output = "[[\"Character\",\"⥣\"]]"
    input = "&uHar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uacute without a semi-colon" do
    output = "[[\"Character\",\"ú\"]]"
    input = "&uacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uacute; with a semi-colon" do
    output = "[[\"Character\",\"ú\"]]"
    input = "&uacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uarr without a semi-colon" do
    output = "[[\"Character\",\"&uarr\"]]"
    input = "&uarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uarr; with a semi-colon" do
    output = "[[\"Character\",\"↑\"]]"
    input = "&uarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ubrcy without a semi-colon" do
    output = "[[\"Character\",\"&ubrcy\"]]"
    input = "&ubrcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ubrcy; with a semi-colon" do
    output = "[[\"Character\",\"ў\"]]"
    input = "&ubrcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ubreve without a semi-colon" do
    output = "[[\"Character\",\"&ubreve\"]]"
    input = "&ubreve"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ubreve; with a semi-colon" do
    output = "[[\"Character\",\"ŭ\"]]"
    input = "&ubreve;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ucirc without a semi-colon" do
    output = "[[\"Character\",\"û\"]]"
    input = "&ucirc"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 7}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ucirc; with a semi-colon" do
    output = "[[\"Character\",\"û\"]]"
    input = "&ucirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ucy without a semi-colon" do
    output = "[[\"Character\",\"&ucy\"]]"
    input = "&ucy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ucy; with a semi-colon" do
    output = "[[\"Character\",\"у\"]]"
    input = "&ucy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: udarr without a semi-colon" do
    output = "[[\"Character\",\"&udarr\"]]"
    input = "&udarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: udarr; with a semi-colon" do
    output = "[[\"Character\",\"⇅\"]]"
    input = "&udarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: udblac without a semi-colon" do
    output = "[[\"Character\",\"&udblac\"]]"
    input = "&udblac"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: udblac; with a semi-colon" do
    output = "[[\"Character\",\"ű\"]]"
    input = "&udblac;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: udhar without a semi-colon" do
    output = "[[\"Character\",\"&udhar\"]]"
    input = "&udhar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: udhar; with a semi-colon" do
    output = "[[\"Character\",\"⥮\"]]"
    input = "&udhar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ufisht without a semi-colon" do
    output = "[[\"Character\",\"&ufisht\"]]"
    input = "&ufisht"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ufisht; with a semi-colon" do
    output = "[[\"Character\",\"⥾\"]]"
    input = "&ufisht;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ufr without a semi-colon" do
    output = "[[\"Character\",\"&ufr\"]]"
    input = "&ufr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ufr; with a semi-colon" do
    output = "[[\"Character\",\"𝔲\"]]"
    input = "&ufr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ugrave without a semi-colon" do
    output = "[[\"Character\",\"ù\"]]"
    input = "&ugrave"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ugrave; with a semi-colon" do
    output = "[[\"Character\",\"ù\"]]"
    input = "&ugrave;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uharl without a semi-colon" do
    output = "[[\"Character\",\"&uharl\"]]"
    input = "&uharl"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uharl; with a semi-colon" do
    output = "[[\"Character\",\"↿\"]]"
    input = "&uharl;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uharr without a semi-colon" do
    output = "[[\"Character\",\"&uharr\"]]"
    input = "&uharr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uharr; with a semi-colon" do
    output = "[[\"Character\",\"↾\"]]"
    input = "&uharr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uhblk without a semi-colon" do
    output = "[[\"Character\",\"&uhblk\"]]"
    input = "&uhblk"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uhblk; with a semi-colon" do
    output = "[[\"Character\",\"▀\"]]"
    input = "&uhblk;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ulcorn without a semi-colon" do
    output = "[[\"Character\",\"&ulcorn\"]]"
    input = "&ulcorn"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ulcorn; with a semi-colon" do
    output = "[[\"Character\",\"⌜\"]]"
    input = "&ulcorn;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ulcorner without a semi-colon" do
    output = "[[\"Character\",\"&ulcorner\"]]"
    input = "&ulcorner"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ulcorner; with a semi-colon" do
    output = "[[\"Character\",\"⌜\"]]"
    input = "&ulcorner;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ulcrop without a semi-colon" do
    output = "[[\"Character\",\"&ulcrop\"]]"
    input = "&ulcrop"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ulcrop; with a semi-colon" do
    output = "[[\"Character\",\"⌏\"]]"
    input = "&ulcrop;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ultri without a semi-colon" do
    output = "[[\"Character\",\"&ultri\"]]"
    input = "&ultri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ultri; with a semi-colon" do
    output = "[[\"Character\",\"◸\"]]"
    input = "&ultri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: umacr without a semi-colon" do
    output = "[[\"Character\",\"&umacr\"]]"
    input = "&umacr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: umacr; with a semi-colon" do
    output = "[[\"Character\",\"ū\"]]"
    input = "&umacr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uml without a semi-colon" do
    output = "[[\"Character\",\"¨\"]]"
    input = "&uml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uml; with a semi-colon" do
    output = "[[\"Character\",\"¨\"]]"
    input = "&uml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uogon without a semi-colon" do
    output = "[[\"Character\",\"&uogon\"]]"
    input = "&uogon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uogon; with a semi-colon" do
    output = "[[\"Character\",\"ų\"]]"
    input = "&uogon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uopf without a semi-colon" do
    output = "[[\"Character\",\"&uopf\"]]"
    input = "&uopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕦\"]]"
    input = "&uopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uparrow without a semi-colon" do
    output = "[[\"Character\",\"&uparrow\"]]"
    input = "&uparrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uparrow; with a semi-colon" do
    output = "[[\"Character\",\"↑\"]]"
    input = "&uparrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: updownarrow without a semi-colon" do
    output = "[[\"Character\",\"&updownarrow\"]]"
    input = "&updownarrow"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: updownarrow; with a semi-colon" do
    output = "[[\"Character\",\"↕\"]]"
    input = "&updownarrow;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: upharpoonleft without a semi-colon" do
    output = "[[\"Character\",\"&upharpoonleft\"]]"
    input = "&upharpoonleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: upharpoonleft; with a semi-colon" do
    output = "[[\"Character\",\"↿\"]]"
    input = "&upharpoonleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: upharpoonright without a semi-colon" do
    output = "[[\"Character\",\"&upharpoonright\"]]"
    input = "&upharpoonright"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: upharpoonright; with a semi-colon" do
    output = "[[\"Character\",\"↾\"]]"
    input = "&upharpoonright;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uplus without a semi-colon" do
    output = "[[\"Character\",\"&uplus\"]]"
    input = "&uplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uplus; with a semi-colon" do
    output = "[[\"Character\",\"⊎\"]]"
    input = "&uplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: upsi without a semi-colon" do
    output = "[[\"Character\",\"&upsi\"]]"
    input = "&upsi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: upsi; with a semi-colon" do
    output = "[[\"Character\",\"υ\"]]"
    input = "&upsi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: upsih without a semi-colon" do
    output = "[[\"Character\",\"&upsih\"]]"
    input = "&upsih"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: upsih; with a semi-colon" do
    output = "[[\"Character\",\"ϒ\"]]"
    input = "&upsih;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: upsilon without a semi-colon" do
    output = "[[\"Character\",\"&upsilon\"]]"
    input = "&upsilon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: upsilon; with a semi-colon" do
    output = "[[\"Character\",\"υ\"]]"
    input = "&upsilon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: upuparrows without a semi-colon" do
    output = "[[\"Character\",\"&upuparrows\"]]"
    input = "&upuparrows"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: upuparrows; with a semi-colon" do
    output = "[[\"Character\",\"⇈\"]]"
    input = "&upuparrows;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: urcorn without a semi-colon" do
    output = "[[\"Character\",\"&urcorn\"]]"
    input = "&urcorn"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: urcorn; with a semi-colon" do
    output = "[[\"Character\",\"⌝\"]]"
    input = "&urcorn;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: urcorner without a semi-colon" do
    output = "[[\"Character\",\"&urcorner\"]]"
    input = "&urcorner"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: urcorner; with a semi-colon" do
    output = "[[\"Character\",\"⌝\"]]"
    input = "&urcorner;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: urcrop without a semi-colon" do
    output = "[[\"Character\",\"&urcrop\"]]"
    input = "&urcrop"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: urcrop; with a semi-colon" do
    output = "[[\"Character\",\"⌎\"]]"
    input = "&urcrop;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uring without a semi-colon" do
    output = "[[\"Character\",\"&uring\"]]"
    input = "&uring"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uring; with a semi-colon" do
    output = "[[\"Character\",\"ů\"]]"
    input = "&uring;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: urtri without a semi-colon" do
    output = "[[\"Character\",\"&urtri\"]]"
    input = "&urtri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: urtri; with a semi-colon" do
    output = "[[\"Character\",\"◹\"]]"
    input = "&urtri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uscr without a semi-colon" do
    output = "[[\"Character\",\"&uscr\"]]"
    input = "&uscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓊\"]]"
    input = "&uscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: utdot without a semi-colon" do
    output = "[[\"Character\",\"&utdot\"]]"
    input = "&utdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: utdot; with a semi-colon" do
    output = "[[\"Character\",\"⋰\"]]"
    input = "&utdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: utilde without a semi-colon" do
    output = "[[\"Character\",\"&utilde\"]]"
    input = "&utilde"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: utilde; with a semi-colon" do
    output = "[[\"Character\",\"ũ\"]]"
    input = "&utilde;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: utri without a semi-colon" do
    output = "[[\"Character\",\"&utri\"]]"
    input = "&utri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: utri; with a semi-colon" do
    output = "[[\"Character\",\"▵\"]]"
    input = "&utri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: utrif without a semi-colon" do
    output = "[[\"Character\",\"&utrif\"]]"
    input = "&utrif"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: utrif; with a semi-colon" do
    output = "[[\"Character\",\"▴\"]]"
    input = "&utrif;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uuarr without a semi-colon" do
    output = "[[\"Character\",\"&uuarr\"]]"
    input = "&uuarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uuarr; with a semi-colon" do
    output = "[[\"Character\",\"⇈\"]]"
    input = "&uuarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uuml without a semi-colon" do
    output = "[[\"Character\",\"ü\"]]"
    input = "&uuml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uuml; with a semi-colon" do
    output = "[[\"Character\",\"ü\"]]"
    input = "&uuml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: uwangle without a semi-colon" do
    output = "[[\"Character\",\"&uwangle\"]]"
    input = "&uwangle"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: uwangle; with a semi-colon" do
    output = "[[\"Character\",\"⦧\"]]"
    input = "&uwangle;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vArr without a semi-colon" do
    output = "[[\"Character\",\"&vArr\"]]"
    input = "&vArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vArr; with a semi-colon" do
    output = "[[\"Character\",\"⇕\"]]"
    input = "&vArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vBar without a semi-colon" do
    output = "[[\"Character\",\"&vBar\"]]"
    input = "&vBar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vBar; with a semi-colon" do
    output = "[[\"Character\",\"⫨\"]]"
    input = "&vBar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vBarv without a semi-colon" do
    output = "[[\"Character\",\"&vBarv\"]]"
    input = "&vBarv"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vBarv; with a semi-colon" do
    output = "[[\"Character\",\"⫩\"]]"
    input = "&vBarv;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vDash without a semi-colon" do
    output = "[[\"Character\",\"&vDash\"]]"
    input = "&vDash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vDash; with a semi-colon" do
    output = "[[\"Character\",\"⊨\"]]"
    input = "&vDash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vangrt without a semi-colon" do
    output = "[[\"Character\",\"&vangrt\"]]"
    input = "&vangrt"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vangrt; with a semi-colon" do
    output = "[[\"Character\",\"⦜\"]]"
    input = "&vangrt;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varepsilon without a semi-colon" do
    output = "[[\"Character\",\"&varepsilon\"]]"
    input = "&varepsilon"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varepsilon; with a semi-colon" do
    output = "[[\"Character\",\"ϵ\"]]"
    input = "&varepsilon;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varkappa without a semi-colon" do
    output = "[[\"Character\",\"&varkappa\"]]"
    input = "&varkappa"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varkappa; with a semi-colon" do
    output = "[[\"Character\",\"ϰ\"]]"
    input = "&varkappa;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varnothing without a semi-colon" do
    output = "[[\"Character\",\"&varnothing\"]]"
    input = "&varnothing"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varnothing; with a semi-colon" do
    output = "[[\"Character\",\"∅\"]]"
    input = "&varnothing;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varphi without a semi-colon" do
    output = "[[\"Character\",\"&varphi\"]]"
    input = "&varphi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varphi; with a semi-colon" do
    output = "[[\"Character\",\"ϕ\"]]"
    input = "&varphi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varpi without a semi-colon" do
    output = "[[\"Character\",\"&varpi\"]]"
    input = "&varpi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varpi; with a semi-colon" do
    output = "[[\"Character\",\"ϖ\"]]"
    input = "&varpi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varpropto without a semi-colon" do
    output = "[[\"Character\",\"&varpropto\"]]"
    input = "&varpropto"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varpropto; with a semi-colon" do
    output = "[[\"Character\",\"∝\"]]"
    input = "&varpropto;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varr without a semi-colon" do
    output = "[[\"Character\",\"&varr\"]]"
    input = "&varr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varr; with a semi-colon" do
    output = "[[\"Character\",\"↕\"]]"
    input = "&varr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varrho without a semi-colon" do
    output = "[[\"Character\",\"&varrho\"]]"
    input = "&varrho"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varrho; with a semi-colon" do
    output = "[[\"Character\",\"ϱ\"]]"
    input = "&varrho;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varsigma without a semi-colon" do
    output = "[[\"Character\",\"&varsigma\"]]"
    input = "&varsigma"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varsigma; with a semi-colon" do
    output = "[[\"Character\",\"ς\"]]"
    input = "&varsigma;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varsubsetneq without a semi-colon" do
    output = "[[\"Character\",\"&varsubsetneq\"]]"
    input = "&varsubsetneq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varsubsetneq; with a semi-colon" do
    output = "[[\"Character\",\"⊊︀\"]]"
    input = "&varsubsetneq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varsubsetneqq without a semi-colon" do
    output = "[[\"Character\",\"&varsubsetneqq\"]]"
    input = "&varsubsetneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varsubsetneqq; with a semi-colon" do
    output = "[[\"Character\",\"⫋︀\"]]"
    input = "&varsubsetneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varsupsetneq without a semi-colon" do
    output = "[[\"Character\",\"&varsupsetneq\"]]"
    input = "&varsupsetneq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varsupsetneq; with a semi-colon" do
    output = "[[\"Character\",\"⊋︀\"]]"
    input = "&varsupsetneq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: varsupsetneqq without a semi-colon" do
    output = "[[\"Character\",\"&varsupsetneqq\"]]"
    input = "&varsupsetneqq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: varsupsetneqq; with a semi-colon" do
    output = "[[\"Character\",\"⫌︀\"]]"
    input = "&varsupsetneqq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vartheta without a semi-colon" do
    output = "[[\"Character\",\"&vartheta\"]]"
    input = "&vartheta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vartheta; with a semi-colon" do
    output = "[[\"Character\",\"ϑ\"]]"
    input = "&vartheta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vartriangleleft without a semi-colon" do
    output = "[[\"Character\",\"&vartriangleleft\"]]"
    input = "&vartriangleleft"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vartriangleleft; with a semi-colon" do
    output = "[[\"Character\",\"⊲\"]]"
    input = "&vartriangleleft;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vartriangleright without a semi-colon" do
    output = "[[\"Character\",\"&vartriangleright\"]]"
    input = "&vartriangleright"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vartriangleright; with a semi-colon" do
    output = "[[\"Character\",\"⊳\"]]"
    input = "&vartriangleright;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vcy without a semi-colon" do
    output = "[[\"Character\",\"&vcy\"]]"
    input = "&vcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vcy; with a semi-colon" do
    output = "[[\"Character\",\"в\"]]"
    input = "&vcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vdash without a semi-colon" do
    output = "[[\"Character\",\"&vdash\"]]"
    input = "&vdash"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vdash; with a semi-colon" do
    output = "[[\"Character\",\"⊢\"]]"
    input = "&vdash;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vee without a semi-colon" do
    output = "[[\"Character\",\"&vee\"]]"
    input = "&vee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vee; with a semi-colon" do
    output = "[[\"Character\",\"∨\"]]"
    input = "&vee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: veebar without a semi-colon" do
    output = "[[\"Character\",\"&veebar\"]]"
    input = "&veebar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: veebar; with a semi-colon" do
    output = "[[\"Character\",\"⊻\"]]"
    input = "&veebar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: veeeq without a semi-colon" do
    output = "[[\"Character\",\"&veeeq\"]]"
    input = "&veeeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: veeeq; with a semi-colon" do
    output = "[[\"Character\",\"≚\"]]"
    input = "&veeeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vellip without a semi-colon" do
    output = "[[\"Character\",\"&vellip\"]]"
    input = "&vellip"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vellip; with a semi-colon" do
    output = "[[\"Character\",\"⋮\"]]"
    input = "&vellip;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: verbar without a semi-colon" do
    output = "[[\"Character\",\"&verbar\"]]"
    input = "&verbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: verbar; with a semi-colon" do
    output = "[[\"Character\",\"|\"]]"
    input = "&verbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vert without a semi-colon" do
    output = "[[\"Character\",\"&vert\"]]"
    input = "&vert"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vert; with a semi-colon" do
    output = "[[\"Character\",\"|\"]]"
    input = "&vert;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vfr without a semi-colon" do
    output = "[[\"Character\",\"&vfr\"]]"
    input = "&vfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔳\"]]"
    input = "&vfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vltri without a semi-colon" do
    output = "[[\"Character\",\"&vltri\"]]"
    input = "&vltri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vltri; with a semi-colon" do
    output = "[[\"Character\",\"⊲\"]]"
    input = "&vltri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vnsub without a semi-colon" do
    output = "[[\"Character\",\"&vnsub\"]]"
    input = "&vnsub"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vnsub; with a semi-colon" do
    output = "[[\"Character\",\"⊂⃒\"]]"
    input = "&vnsub;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vnsup without a semi-colon" do
    output = "[[\"Character\",\"&vnsup\"]]"
    input = "&vnsup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vnsup; with a semi-colon" do
    output = "[[\"Character\",\"⊃⃒\"]]"
    input = "&vnsup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vopf without a semi-colon" do
    output = "[[\"Character\",\"&vopf\"]]"
    input = "&vopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕧\"]]"
    input = "&vopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vprop without a semi-colon" do
    output = "[[\"Character\",\"&vprop\"]]"
    input = "&vprop"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vprop; with a semi-colon" do
    output = "[[\"Character\",\"∝\"]]"
    input = "&vprop;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vrtri without a semi-colon" do
    output = "[[\"Character\",\"&vrtri\"]]"
    input = "&vrtri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vrtri; with a semi-colon" do
    output = "[[\"Character\",\"⊳\"]]"
    input = "&vrtri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vscr without a semi-colon" do
    output = "[[\"Character\",\"&vscr\"]]"
    input = "&vscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓋\"]]"
    input = "&vscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vsubnE without a semi-colon" do
    output = "[[\"Character\",\"&vsubnE\"]]"
    input = "&vsubnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vsubnE; with a semi-colon" do
    output = "[[\"Character\",\"⫋︀\"]]"
    input = "&vsubnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vsubne without a semi-colon" do
    output = "[[\"Character\",\"&vsubne\"]]"
    input = "&vsubne"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vsubne; with a semi-colon" do
    output = "[[\"Character\",\"⊊︀\"]]"
    input = "&vsubne;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vsupnE without a semi-colon" do
    output = "[[\"Character\",\"&vsupnE\"]]"
    input = "&vsupnE"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vsupnE; with a semi-colon" do
    output = "[[\"Character\",\"⫌︀\"]]"
    input = "&vsupnE;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vsupne without a semi-colon" do
    output = "[[\"Character\",\"&vsupne\"]]"
    input = "&vsupne"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vsupne; with a semi-colon" do
    output = "[[\"Character\",\"⊋︀\"]]"
    input = "&vsupne;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: vzigzag without a semi-colon" do
    output = "[[\"Character\",\"&vzigzag\"]]"
    input = "&vzigzag"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: vzigzag; with a semi-colon" do
    output = "[[\"Character\",\"⦚\"]]"
    input = "&vzigzag;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wcirc without a semi-colon" do
    output = "[[\"Character\",\"&wcirc\"]]"
    input = "&wcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wcirc; with a semi-colon" do
    output = "[[\"Character\",\"ŵ\"]]"
    input = "&wcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wedbar without a semi-colon" do
    output = "[[\"Character\",\"&wedbar\"]]"
    input = "&wedbar"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wedbar; with a semi-colon" do
    output = "[[\"Character\",\"⩟\"]]"
    input = "&wedbar;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wedge without a semi-colon" do
    output = "[[\"Character\",\"&wedge\"]]"
    input = "&wedge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wedge; with a semi-colon" do
    output = "[[\"Character\",\"∧\"]]"
    input = "&wedge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wedgeq without a semi-colon" do
    output = "[[\"Character\",\"&wedgeq\"]]"
    input = "&wedgeq"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wedgeq; with a semi-colon" do
    output = "[[\"Character\",\"≙\"]]"
    input = "&wedgeq;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: weierp without a semi-colon" do
    output = "[[\"Character\",\"&weierp\"]]"
    input = "&weierp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: weierp; with a semi-colon" do
    output = "[[\"Character\",\"℘\"]]"
    input = "&weierp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wfr without a semi-colon" do
    output = "[[\"Character\",\"&wfr\"]]"
    input = "&wfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔴\"]]"
    input = "&wfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wopf without a semi-colon" do
    output = "[[\"Character\",\"&wopf\"]]"
    input = "&wopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕨\"]]"
    input = "&wopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wp without a semi-colon" do
    output = "[[\"Character\",\"&wp\"]]"
    input = "&wp"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wp; with a semi-colon" do
    output = "[[\"Character\",\"℘\"]]"
    input = "&wp;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wr without a semi-colon" do
    output = "[[\"Character\",\"&wr\"]]"
    input = "&wr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wr; with a semi-colon" do
    output = "[[\"Character\",\"≀\"]]"
    input = "&wr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wreath without a semi-colon" do
    output = "[[\"Character\",\"&wreath\"]]"
    input = "&wreath"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wreath; with a semi-colon" do
    output = "[[\"Character\",\"≀\"]]"
    input = "&wreath;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: wscr without a semi-colon" do
    output = "[[\"Character\",\"&wscr\"]]"
    input = "&wscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: wscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓌\"]]"
    input = "&wscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xcap without a semi-colon" do
    output = "[[\"Character\",\"&xcap\"]]"
    input = "&xcap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xcap; with a semi-colon" do
    output = "[[\"Character\",\"⋂\"]]"
    input = "&xcap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xcirc without a semi-colon" do
    output = "[[\"Character\",\"&xcirc\"]]"
    input = "&xcirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xcirc; with a semi-colon" do
    output = "[[\"Character\",\"◯\"]]"
    input = "&xcirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xcup without a semi-colon" do
    output = "[[\"Character\",\"&xcup\"]]"
    input = "&xcup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xcup; with a semi-colon" do
    output = "[[\"Character\",\"⋃\"]]"
    input = "&xcup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xdtri without a semi-colon" do
    output = "[[\"Character\",\"&xdtri\"]]"
    input = "&xdtri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xdtri; with a semi-colon" do
    output = "[[\"Character\",\"▽\"]]"
    input = "&xdtri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xfr without a semi-colon" do
    output = "[[\"Character\",\"&xfr\"]]"
    input = "&xfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔵\"]]"
    input = "&xfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xhArr without a semi-colon" do
    output = "[[\"Character\",\"&xhArr\"]]"
    input = "&xhArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xhArr; with a semi-colon" do
    output = "[[\"Character\",\"⟺\"]]"
    input = "&xhArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xharr without a semi-colon" do
    output = "[[\"Character\",\"&xharr\"]]"
    input = "&xharr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xharr; with a semi-colon" do
    output = "[[\"Character\",\"⟷\"]]"
    input = "&xharr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xi without a semi-colon" do
    output = "[[\"Character\",\"&xi\"]]"
    input = "&xi"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xi; with a semi-colon" do
    output = "[[\"Character\",\"ξ\"]]"
    input = "&xi;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xlArr without a semi-colon" do
    output = "[[\"Character\",\"&xlArr\"]]"
    input = "&xlArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xlArr; with a semi-colon" do
    output = "[[\"Character\",\"⟸\"]]"
    input = "&xlArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xlarr without a semi-colon" do
    output = "[[\"Character\",\"&xlarr\"]]"
    input = "&xlarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xlarr; with a semi-colon" do
    output = "[[\"Character\",\"⟵\"]]"
    input = "&xlarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xmap without a semi-colon" do
    output = "[[\"Character\",\"&xmap\"]]"
    input = "&xmap"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xmap; with a semi-colon" do
    output = "[[\"Character\",\"⟼\"]]"
    input = "&xmap;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xnis without a semi-colon" do
    output = "[[\"Character\",\"&xnis\"]]"
    input = "&xnis"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xnis; with a semi-colon" do
    output = "[[\"Character\",\"⋻\"]]"
    input = "&xnis;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xodot without a semi-colon" do
    output = "[[\"Character\",\"&xodot\"]]"
    input = "&xodot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xodot; with a semi-colon" do
    output = "[[\"Character\",\"⨀\"]]"
    input = "&xodot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xopf without a semi-colon" do
    output = "[[\"Character\",\"&xopf\"]]"
    input = "&xopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕩\"]]"
    input = "&xopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xoplus without a semi-colon" do
    output = "[[\"Character\",\"&xoplus\"]]"
    input = "&xoplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xoplus; with a semi-colon" do
    output = "[[\"Character\",\"⨁\"]]"
    input = "&xoplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xotime without a semi-colon" do
    output = "[[\"Character\",\"&xotime\"]]"
    input = "&xotime"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xotime; with a semi-colon" do
    output = "[[\"Character\",\"⨂\"]]"
    input = "&xotime;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xrArr without a semi-colon" do
    output = "[[\"Character\",\"&xrArr\"]]"
    input = "&xrArr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xrArr; with a semi-colon" do
    output = "[[\"Character\",\"⟹\"]]"
    input = "&xrArr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xrarr without a semi-colon" do
    output = "[[\"Character\",\"&xrarr\"]]"
    input = "&xrarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xrarr; with a semi-colon" do
    output = "[[\"Character\",\"⟶\"]]"
    input = "&xrarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xscr without a semi-colon" do
    output = "[[\"Character\",\"&xscr\"]]"
    input = "&xscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓍\"]]"
    input = "&xscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xsqcup without a semi-colon" do
    output = "[[\"Character\",\"&xsqcup\"]]"
    input = "&xsqcup"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xsqcup; with a semi-colon" do
    output = "[[\"Character\",\"⨆\"]]"
    input = "&xsqcup;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xuplus without a semi-colon" do
    output = "[[\"Character\",\"&xuplus\"]]"
    input = "&xuplus"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xuplus; with a semi-colon" do
    output = "[[\"Character\",\"⨄\"]]"
    input = "&xuplus;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xutri without a semi-colon" do
    output = "[[\"Character\",\"&xutri\"]]"
    input = "&xutri"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xutri; with a semi-colon" do
    output = "[[\"Character\",\"△\"]]"
    input = "&xutri;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xvee without a semi-colon" do
    output = "[[\"Character\",\"&xvee\"]]"
    input = "&xvee"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xvee; with a semi-colon" do
    output = "[[\"Character\",\"⋁\"]]"
    input = "&xvee;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: xwedge without a semi-colon" do
    output = "[[\"Character\",\"&xwedge\"]]"
    input = "&xwedge"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: xwedge; with a semi-colon" do
    output = "[[\"Character\",\"⋀\"]]"
    input = "&xwedge;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yacute without a semi-colon" do
    output = "[[\"Character\",\"ý\"]]"
    input = "&yacute"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 8}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yacute; with a semi-colon" do
    output = "[[\"Character\",\"ý\"]]"
    input = "&yacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: yacy without a semi-colon" do
    output = "[[\"Character\",\"&yacy\"]]"
    input = "&yacy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yacy; with a semi-colon" do
    output = "[[\"Character\",\"я\"]]"
    input = "&yacy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ycirc without a semi-colon" do
    output = "[[\"Character\",\"&ycirc\"]]"
    input = "&ycirc"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ycirc; with a semi-colon" do
    output = "[[\"Character\",\"ŷ\"]]"
    input = "&ycirc;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: ycy without a semi-colon" do
    output = "[[\"Character\",\"&ycy\"]]"
    input = "&ycy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: ycy; with a semi-colon" do
    output = "[[\"Character\",\"ы\"]]"
    input = "&ycy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yen without a semi-colon" do
    output = "[[\"Character\",\"¥\"]]"
    input = "&yen"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 5}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yen; with a semi-colon" do
    output = "[[\"Character\",\"¥\"]]"
    input = "&yen;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: yfr without a semi-colon" do
    output = "[[\"Character\",\"&yfr\"]]"
    input = "&yfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔶\"]]"
    input = "&yfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: yicy without a semi-colon" do
    output = "[[\"Character\",\"&yicy\"]]"
    input = "&yicy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yicy; with a semi-colon" do
    output = "[[\"Character\",\"ї\"]]"
    input = "&yicy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: yopf without a semi-colon" do
    output = "[[\"Character\",\"&yopf\"]]"
    input = "&yopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕪\"]]"
    input = "&yopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: yscr without a semi-colon" do
    output = "[[\"Character\",\"&yscr\"]]"
    input = "&yscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓎\"]]"
    input = "&yscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: yucy without a semi-colon" do
    output = "[[\"Character\",\"&yucy\"]]"
    input = "&yucy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yucy; with a semi-colon" do
    output = "[[\"Character\",\"ю\"]]"
    input = "&yucy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yuml without a semi-colon" do
    output = "[[\"Character\",\"ÿ\"]]"
    input = "&yuml"
    assert_lexes input, output, [{"code" => "missing-semicolon-after-character-reference", "line" => 1, "col" => 6}], HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: yuml; with a semi-colon" do
    output = "[[\"Character\",\"ÿ\"]]"
    input = "&yuml;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zacute without a semi-colon" do
    output = "[[\"Character\",\"&zacute\"]]"
    input = "&zacute"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zacute; with a semi-colon" do
    output = "[[\"Character\",\"ź\"]]"
    input = "&zacute;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zcaron without a semi-colon" do
    output = "[[\"Character\",\"&zcaron\"]]"
    input = "&zcaron"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zcaron; with a semi-colon" do
    output = "[[\"Character\",\"ž\"]]"
    input = "&zcaron;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zcy without a semi-colon" do
    output = "[[\"Character\",\"&zcy\"]]"
    input = "&zcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zcy; with a semi-colon" do
    output = "[[\"Character\",\"з\"]]"
    input = "&zcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zdot without a semi-colon" do
    output = "[[\"Character\",\"&zdot\"]]"
    input = "&zdot"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zdot; with a semi-colon" do
    output = "[[\"Character\",\"ż\"]]"
    input = "&zdot;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zeetrf without a semi-colon" do
    output = "[[\"Character\",\"&zeetrf\"]]"
    input = "&zeetrf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zeetrf; with a semi-colon" do
    output = "[[\"Character\",\"ℨ\"]]"
    input = "&zeetrf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zeta without a semi-colon" do
    output = "[[\"Character\",\"&zeta\"]]"
    input = "&zeta"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zeta; with a semi-colon" do
    output = "[[\"Character\",\"ζ\"]]"
    input = "&zeta;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zfr without a semi-colon" do
    output = "[[\"Character\",\"&zfr\"]]"
    input = "&zfr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zfr; with a semi-colon" do
    output = "[[\"Character\",\"𝔷\"]]"
    input = "&zfr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zhcy without a semi-colon" do
    output = "[[\"Character\",\"&zhcy\"]]"
    input = "&zhcy"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zhcy; with a semi-colon" do
    output = "[[\"Character\",\"ж\"]]"
    input = "&zhcy;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zigrarr without a semi-colon" do
    output = "[[\"Character\",\"&zigrarr\"]]"
    input = "&zigrarr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zigrarr; with a semi-colon" do
    output = "[[\"Character\",\"⇝\"]]"
    input = "&zigrarr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zopf without a semi-colon" do
    output = "[[\"Character\",\"&zopf\"]]"
    input = "&zopf"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zopf; with a semi-colon" do
    output = "[[\"Character\",\"𝕫\"]]"
    input = "&zopf;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zscr without a semi-colon" do
    output = "[[\"Character\",\"&zscr\"]]"
    input = "&zscr"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zscr; with a semi-colon" do
    output = "[[\"Character\",\"𝓏\"]]"
    input = "&zscr;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zwj without a semi-colon" do
    output = "[[\"Character\",\"&zwj\"]]"
    input = "&zwj"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zwj; with a semi-colon" do
    output = "[[\"Character\",\"\u200D\"]]"
    input = "&zwj;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Bad named entity: zwnj without a semi-colon" do
    output = "[[\"Character\",\"&zwnj\"]]"
    input = "&zwnj"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
  it "Named entity: zwnj; with a semi-colon" do
    output = "[[\"Character\",\"\u200C\"]]"
    input = "&zwnj;"
    assert_lexes input, output, nil, HTML::Lexer::State::DATA, "", false
  end
end
