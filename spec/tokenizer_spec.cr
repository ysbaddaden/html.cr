require "./spec_helper"
describe "html5lib-tests/tokenizer/contentModelFlags.test" do
  it "contentModelFlags:PLAINTEXT content model flag" do
    skip
  end
  it "contentModelFlags:PLAINTEXT with seeming close tag" do
    skip
  end
  it "contentModelFlags:End tag closing RCDATA or RAWTEXT" do
    skip
  end
  it "contentModelFlags:End tag closing RCDATA or RAWTEXT (case-insensitivity)" do
    skip
  end
  it "contentModelFlags:End tag closing RCDATA or RAWTEXT (ending with space)" do
    skip
  end
  it "contentModelFlags:End tag closing RCDATA or RAWTEXT (ending with EOF)" do
    skip
  end
  it "contentModelFlags:End tag closing RCDATA or RAWTEXT (ending with slash)" do
    skip
  end
  it "contentModelFlags:End tag not closing RCDATA or RAWTEXT (ending with left-angle-bracket)" do
    skip
  end
  it "contentModelFlags:End tag with incorrect name in RCDATA or RAWTEXT" do
    skip
  end
  it "contentModelFlags:Partial end tags leading straight into partial end tags" do
    skip
  end
  it "contentModelFlags:End tag with incorrect name in RCDATA or RAWTEXT (starting like correct name)" do
    skip
  end
  it "contentModelFlags:End tag closing RCDATA or RAWTEXT, switching back to PCDATA" do
    skip
  end
  it "contentModelFlags:RAWTEXT w/ something looking like an entity" do
    skip
  end
  it "contentModelFlags:RCDATA w/ an entity" do
    skip
  end
end
describe "html5lib-tests/tokenizer/domjs.test" do
  it "domjs:CR in bogus comment state" do
    assert_lexes "<?\r", "[[\"Comment\",\"?\\n\"]]"
  end
  it "domjs:CRLF in bogus comment state" do
    assert_lexes "<?\r\n", "[[\"Comment\",\"?\\n\"]]"
  end
  it "domjs:CRLFLF in bogus comment state" do
    assert_lexes "<?\r\n\n", "[[\"Comment\",\"?\\n\\n\"]]"
  end
  it "domjs:Raw NUL replacement" do
    skip
  end
  it "domjs:NUL in CDATA section" do
    skip
  end
  it "domjs:NUL in script HTML comment" do
    skip
  end
  it "domjs:NUL in script HTML comment - double escaped" do
    skip
  end
  it "domjs:EOF in script HTML comment" do
    skip
  end
  it "domjs:EOF in script HTML comment after dash" do
    skip
  end
  it "domjs:EOF in script HTML comment after dash dash" do
    skip
  end
  it "domjs:EOF in script HTML comment double escaped after dash" do
    skip
  end
  it "domjs:EOF in script HTML comment double escaped after dash dash" do
    skip
  end
  it "domjs:EOF in script HTML comment - double escaped" do
    skip
  end
  it "domjs:Dash in script HTML comment" do
    skip
  end
  it "domjs:Dash less-than in script HTML comment" do
    skip
  end
  it "domjs:Dash at end of script HTML comment" do
    skip
  end
  it "domjs:</script> in script HTML comment" do
    skip
  end
  it "domjs:</script> in script HTML comment - double escaped" do
    skip
  end
  it "domjs:</script> in script HTML comment - double escaped with nested <script>" do
    skip
  end
  it "domjs:</script> in script HTML comment - double escaped with abrupt end" do
    skip
  end
  it "domjs:Incomplete start tag in script HTML comment double escaped" do
    skip
  end
  it "domjs:Unclosed start tag in script HTML comment double escaped" do
    skip
  end
  it "domjs:Incomplete end tag in script HTML comment double escaped" do
    skip
  end
  it "domjs:Unclosed end tag in script HTML comment double escaped" do
    skip
  end
  it "domjs:leading U+FEFF must pass through" do
    skip
  end
  it "domjs:Non BMP-charref in RCDATA" do
    skip
  end
  it "domjs:Bad charref in RCDATA" do
    skip
  end
  it "domjs:lowercase endtags" do
    skip
  end
  it "domjs:bad endtag (space before name)" do
    skip
  end
  it "domjs:bad endtag (not matching last start tag)" do
    skip
  end
  it "domjs:bad endtag (without close bracket)" do
    skip
  end
  it "domjs:bad endtag (trailing solidus)" do
    skip
  end
  it "domjs:Non BMP-charref in attribute" do
    assert_lexes "<p id=\"&NotEqualTilde;\">", "[[\"StartTag\",\"p\",{\"id\":\"≂̸\"}]]"
  end
  it "domjs:--!NUL in comment " do
    skip
  end
  it "domjs:space EOF after doctype " do
    assert_lexes "<!DOCTYPE html ", "[[\"DOCTYPE\",\"html\",null,null,false]]"
  end
  it "domjs:CDATA in HTML content" do
    assert_lexes "<![CDATA[foo]]>", "[[\"Comment\",\"[CDATA[foo]]\"]]"
  end
  it "domjs:CDATA content" do
    skip
  end
  it "domjs:CDATA followed by HTML content" do
    skip
  end
  it "domjs:CDATA with extra bracket" do
    skip
  end
  it "domjs:CDATA without end marker" do
    skip
  end
  it "domjs:CDATA with single bracket ending" do
    skip
  end
  it "domjs:CDATA with two brackets ending" do
    skip
  end
  it "domjs:HTML tag in script data" do
    skip
  end
end
describe "html5lib-tests/tokenizer/entities.test" do
  it "entities:Undefined named entity in a double-quoted attribute value ending in semicolon and whose name starts with a known entity name." do
    assert_lexes "<h a=\"&noti;\">", "[[\"StartTag\",\"h\",{\"a\":\"&noti;\"}]]"
  end
  it "entities:Entity name requiring semicolon instead followed by the equals sign in a double-quoted attribute value." do
    assert_lexes "<h a=\"&lang=\">", "[[\"StartTag\",\"h\",{\"a\":\"&lang=\"}]]"
  end
  it "entities:Valid entity name followed by the equals sign in a double-quoted attribute value." do
    assert_lexes "<h a=\"&not=\">", "[[\"StartTag\",\"h\",{\"a\":\"&not=\"}]]"
  end
  it "entities:Undefined named entity in a single-quoted attribute value ending in semicolon and whose name starts with a known entity name." do
    assert_lexes "<h a='&noti;'>", "[[\"StartTag\",\"h\",{\"a\":\"&noti;\"}]]"
  end
  it "entities:Entity name requiring semicolon instead followed by the equals sign in a single-quoted attribute value." do
    assert_lexes "<h a='&lang='>", "[[\"StartTag\",\"h\",{\"a\":\"&lang=\"}]]"
  end
  it "entities:Valid entity name followed by the equals sign in a single-quoted attribute value." do
    assert_lexes "<h a='&not='>", "[[\"StartTag\",\"h\",{\"a\":\"&not=\"}]]"
  end
  it "entities:Undefined named entity in an unquoted attribute value ending in semicolon and whose name starts with a known entity name." do
    assert_lexes "<h a=&noti;>", "[[\"StartTag\",\"h\",{\"a\":\"&noti;\"}]]"
  end
  it "entities:Entity name requiring semicolon instead followed by the equals sign in an unquoted attribute value." do
    assert_lexes "<h a=&lang=>", "[[\"StartTag\",\"h\",{\"a\":\"&lang=\"}]]"
  end
  it "entities:Valid entity name followed by the equals sign in an unquoted attribute value." do
    assert_lexes "<h a=&not=>", "[[\"StartTag\",\"h\",{\"a\":\"&not=\"}]]"
  end
  it "entities:Ambiguous ampersand." do
    assert_lexes "&rrrraannddom;", "[[\"Character\",\"&rrrraannddom;\"]]"
  end
  it "entities:Semicolonless named entity 'not' followed by 'i;' in body" do
    assert_lexes "&noti;", "[[\"Character\",\"¬i;\"]]"
  end
  it "entities:Very long undefined named entity in body" do
    assert_lexes "&ammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmp;", "[[\"Character\",\"&ammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmp;\"]]"
  end
  it "entities:CR as numeric entity" do
    assert_lexes "&#013;", "[[\"Character\",\"\\r\"]]"
  end
  it "entities:CR as hexadecimal numeric entity" do
    assert_lexes "&#x00D;", "[[\"Character\",\"\\r\"]]"
  end
  it "entities:Windows-1252 EURO SIGN numeric entity." do
    assert_lexes "&#0128;", "[[\"Character\",\"€\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR numeric entity." do
    assert_lexes "&#0129;", "[[\"Character\",\"\u0081\"]]"
  end
  it "entities:Windows-1252 SINGLE LOW-9 QUOTATION MARK numeric entity." do
    assert_lexes "&#0130;", "[[\"Character\",\"‚\"]]"
  end
  it "entities:Windows-1252 LATIN SMALL LETTER F WITH HOOK numeric entity." do
    assert_lexes "&#0131;", "[[\"Character\",\"ƒ\"]]"
  end
  it "entities:Windows-1252 DOUBLE LOW-9 QUOTATION MARK numeric entity." do
    assert_lexes "&#0132;", "[[\"Character\",\"„\"]]"
  end
  it "entities:Windows-1252 HORIZONTAL ELLIPSIS numeric entity." do
    assert_lexes "&#0133;", "[[\"Character\",\"…\"]]"
  end
  it "entities:Windows-1252 DAGGER numeric entity." do
    assert_lexes "&#0134;", "[[\"Character\",\"†\"]]"
  end
  it "entities:Windows-1252 DOUBLE DAGGER numeric entity." do
    assert_lexes "&#0135;", "[[\"Character\",\"‡\"]]"
  end
  it "entities:Windows-1252 MODIFIER LETTER CIRCUMFLEX ACCENT numeric entity." do
    assert_lexes "&#0136;", "[[\"Character\",\"ˆ\"]]"
  end
  it "entities:Windows-1252 PER MILLE SIGN numeric entity." do
    assert_lexes "&#0137;", "[[\"Character\",\"‰\"]]"
  end
  it "entities:Windows-1252 LATIN CAPITAL LETTER S WITH CARON numeric entity." do
    assert_lexes "&#0138;", "[[\"Character\",\"Š\"]]"
  end
  it "entities:Windows-1252 SINGLE LEFT-POINTING ANGLE QUOTATION MARK numeric entity." do
    assert_lexes "&#0139;", "[[\"Character\",\"‹\"]]"
  end
  it "entities:Windows-1252 LATIN CAPITAL LIGATURE OE numeric entity." do
    assert_lexes "&#0140;", "[[\"Character\",\"Œ\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR numeric entity." do
    assert_lexes "&#0141;", "[[\"Character\",\"\u008D\"]]"
  end
  it "entities:Windows-1252 LATIN CAPITAL LETTER Z WITH CARON numeric entity." do
    assert_lexes "&#0142;", "[[\"Character\",\"Ž\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR numeric entity." do
    assert_lexes "&#0143;", "[[\"Character\",\"\u008F\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR numeric entity." do
    assert_lexes "&#0144;", "[[\"Character\",\"\u0090\"]]"
  end
  it "entities:Windows-1252 LEFT SINGLE QUOTATION MARK numeric entity." do
    assert_lexes "&#0145;", "[[\"Character\",\"‘\"]]"
  end
  it "entities:Windows-1252 RIGHT SINGLE QUOTATION MARK numeric entity." do
    assert_lexes "&#0146;", "[[\"Character\",\"’\"]]"
  end
  it "entities:Windows-1252 LEFT DOUBLE QUOTATION MARK numeric entity." do
    assert_lexes "&#0147;", "[[\"Character\",\"“\"]]"
  end
  it "entities:Windows-1252 RIGHT DOUBLE QUOTATION MARK numeric entity." do
    assert_lexes "&#0148;", "[[\"Character\",\"”\"]]"
  end
  it "entities:Windows-1252 BULLET numeric entity." do
    assert_lexes "&#0149;", "[[\"Character\",\"•\"]]"
  end
  it "entities:Windows-1252 EN DASH numeric entity." do
    assert_lexes "&#0150;", "[[\"Character\",\"–\"]]"
  end
  it "entities:Windows-1252 EM DASH numeric entity." do
    assert_lexes "&#0151;", "[[\"Character\",\"—\"]]"
  end
  it "entities:Windows-1252 SMALL TILDE numeric entity." do
    assert_lexes "&#0152;", "[[\"Character\",\"˜\"]]"
  end
  it "entities:Windows-1252 TRADE MARK SIGN numeric entity." do
    assert_lexes "&#0153;", "[[\"Character\",\"™\"]]"
  end
  it "entities:Windows-1252 LATIN SMALL LETTER S WITH CARON numeric entity." do
    assert_lexes "&#0154;", "[[\"Character\",\"š\"]]"
  end
  it "entities:Windows-1252 SINGLE RIGHT-POINTING ANGLE QUOTATION MARK numeric entity." do
    assert_lexes "&#0155;", "[[\"Character\",\"›\"]]"
  end
  it "entities:Windows-1252 LATIN SMALL LIGATURE OE numeric entity." do
    assert_lexes "&#0156;", "[[\"Character\",\"œ\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR numeric entity." do
    assert_lexes "&#0157;", "[[\"Character\",\"\u009D\"]]"
  end
  it "entities:Windows-1252 EURO SIGN hexadecimal numeric entity." do
    assert_lexes "&#x080;", "[[\"Character\",\"€\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    assert_lexes "&#x081;", "[[\"Character\",\"\u0081\"]]"
  end
  it "entities:Windows-1252 SINGLE LOW-9 QUOTATION MARK hexadecimal numeric entity." do
    assert_lexes "&#x082;", "[[\"Character\",\"‚\"]]"
  end
  it "entities:Windows-1252 LATIN SMALL LETTER F WITH HOOK hexadecimal numeric entity." do
    assert_lexes "&#x083;", "[[\"Character\",\"ƒ\"]]"
  end
  it "entities:Windows-1252 DOUBLE LOW-9 QUOTATION MARK hexadecimal numeric entity." do
    assert_lexes "&#x084;", "[[\"Character\",\"„\"]]"
  end
  it "entities:Windows-1252 HORIZONTAL ELLIPSIS hexadecimal numeric entity." do
    assert_lexes "&#x085;", "[[\"Character\",\"…\"]]"
  end
  it "entities:Windows-1252 DAGGER hexadecimal numeric entity." do
    assert_lexes "&#x086;", "[[\"Character\",\"†\"]]"
  end
  it "entities:Windows-1252 DOUBLE DAGGER hexadecimal numeric entity." do
    assert_lexes "&#x087;", "[[\"Character\",\"‡\"]]"
  end
  it "entities:Windows-1252 MODIFIER LETTER CIRCUMFLEX ACCENT hexadecimal numeric entity." do
    assert_lexes "&#x088;", "[[\"Character\",\"ˆ\"]]"
  end
  it "entities:Windows-1252 PER MILLE SIGN hexadecimal numeric entity." do
    assert_lexes "&#x089;", "[[\"Character\",\"‰\"]]"
  end
  it "entities:Windows-1252 LATIN CAPITAL LETTER S WITH CARON hexadecimal numeric entity." do
    assert_lexes "&#x08A;", "[[\"Character\",\"Š\"]]"
  end
  it "entities:Windows-1252 SINGLE LEFT-POINTING ANGLE QUOTATION MARK hexadecimal numeric entity." do
    assert_lexes "&#x08B;", "[[\"Character\",\"‹\"]]"
  end
  it "entities:Windows-1252 LATIN CAPITAL LIGATURE OE hexadecimal numeric entity." do
    assert_lexes "&#x08C;", "[[\"Character\",\"Œ\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    assert_lexes "&#x08D;", "[[\"Character\",\"\u008D\"]]"
  end
  it "entities:Windows-1252 LATIN CAPITAL LETTER Z WITH CARON hexadecimal numeric entity." do
    assert_lexes "&#x08E;", "[[\"Character\",\"Ž\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    assert_lexes "&#x08F;", "[[\"Character\",\"\u008F\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    assert_lexes "&#x090;", "[[\"Character\",\"\u0090\"]]"
  end
  it "entities:Windows-1252 LEFT SINGLE QUOTATION MARK hexadecimal numeric entity." do
    assert_lexes "&#x091;", "[[\"Character\",\"‘\"]]"
  end
  it "entities:Windows-1252 RIGHT SINGLE QUOTATION MARK hexadecimal numeric entity." do
    assert_lexes "&#x092;", "[[\"Character\",\"’\"]]"
  end
  it "entities:Windows-1252 LEFT DOUBLE QUOTATION MARK hexadecimal numeric entity." do
    assert_lexes "&#x093;", "[[\"Character\",\"“\"]]"
  end
  it "entities:Windows-1252 RIGHT DOUBLE QUOTATION MARK hexadecimal numeric entity." do
    assert_lexes "&#x094;", "[[\"Character\",\"”\"]]"
  end
  it "entities:Windows-1252 BULLET hexadecimal numeric entity." do
    assert_lexes "&#x095;", "[[\"Character\",\"•\"]]"
  end
  it "entities:Windows-1252 EN DASH hexadecimal numeric entity." do
    assert_lexes "&#x096;", "[[\"Character\",\"–\"]]"
  end
  it "entities:Windows-1252 EM DASH hexadecimal numeric entity." do
    assert_lexes "&#x097;", "[[\"Character\",\"—\"]]"
  end
  it "entities:Windows-1252 SMALL TILDE hexadecimal numeric entity." do
    assert_lexes "&#x098;", "[[\"Character\",\"˜\"]]"
  end
  it "entities:Windows-1252 TRADE MARK SIGN hexadecimal numeric entity." do
    assert_lexes "&#x099;", "[[\"Character\",\"™\"]]"
  end
  it "entities:Windows-1252 LATIN SMALL LETTER S WITH CARON hexadecimal numeric entity." do
    assert_lexes "&#x09A;", "[[\"Character\",\"š\"]]"
  end
  it "entities:Windows-1252 SINGLE RIGHT-POINTING ANGLE QUOTATION MARK hexadecimal numeric entity." do
    assert_lexes "&#x09B;", "[[\"Character\",\"›\"]]"
  end
  it "entities:Windows-1252 LATIN SMALL LIGATURE OE hexadecimal numeric entity." do
    assert_lexes "&#x09C;", "[[\"Character\",\"œ\"]]"
  end
  it "entities:Windows-1252 REPLACEMENT CHAR hexadecimal numeric entity." do
    assert_lexes "&#x09D;", "[[\"Character\",\"\u009D\"]]"
  end
  it "entities:Windows-1252 LATIN SMALL LETTER Z WITH CARON hexadecimal numeric entity." do
    assert_lexes "&#x09E;", "[[\"Character\",\"ž\"]]"
  end
  it "entities:Windows-1252 LATIN CAPITAL LETTER Y WITH DIAERESIS hexadecimal numeric entity." do
    assert_lexes "&#x09F;", "[[\"Character\",\"Ÿ\"]]"
  end
  it "entities:Decimal numeric entity followed by hex character a." do
    assert_lexes "&#97a", "[[\"Character\",\"aa\"]]"
  end
  it "entities:Decimal numeric entity followed by hex character A." do
    assert_lexes "&#97A", "[[\"Character\",\"aA\"]]"
  end
  it "entities:Decimal numeric entity followed by hex character f." do
    assert_lexes "&#97f", "[[\"Character\",\"af\"]]"
  end
  it "entities:Decimal numeric entity followed by hex character A." do
    assert_lexes "&#97F", "[[\"Character\",\"aF\"]]"
  end
end
describe "html5lib-tests/tokenizer/escapeFlag.test" do
  it "escapeFlag:Commented close tag in RCDATA or RAWTEXT" do
    skip
  end
  it "escapeFlag:Bogus comment in RCDATA or RAWTEXT" do
    skip
  end
  it "escapeFlag:End tag surrounded by bogus comment in RCDATA or RAWTEXT" do
    skip
  end
  it "escapeFlag:Commented entities in RCDATA" do
    skip
  end
  it "escapeFlag:Incorrect comment ending sequences in RCDATA or RAWTEXT" do
    skip
  end
end
describe "html5lib-tests/tokenizer/namedEntities.test" do
  it "namedEntities:Named entity: AElig without a semi-colon" do
    assert_lexes "&AElig", "[[\"Character\",\"Æ\"]]"
  end
  it "namedEntities:Named entity: AElig; with a semi-colon" do
    assert_lexes "&AElig;", "[[\"Character\",\"Æ\"]]"
  end
  it "namedEntities:Named entity: AMP without a semi-colon" do
    assert_lexes "&AMP", "[[\"Character\",\"&\"]]"
  end
  it "namedEntities:Named entity: AMP; with a semi-colon" do
    assert_lexes "&AMP;", "[[\"Character\",\"&\"]]"
  end
  it "namedEntities:Named entity: Aacute without a semi-colon" do
    assert_lexes "&Aacute", "[[\"Character\",\"Á\"]]"
  end
  it "namedEntities:Named entity: Aacute; with a semi-colon" do
    assert_lexes "&Aacute;", "[[\"Character\",\"Á\"]]"
  end
  it "namedEntities:Bad named entity: Abreve without a semi-colon" do
    assert_lexes "&Abreve", "[[\"Character\",\"&Abreve\"]]"
  end
  it "namedEntities:Named entity: Abreve; with a semi-colon" do
    assert_lexes "&Abreve;", "[[\"Character\",\"Ă\"]]"
  end
  it "namedEntities:Named entity: Acirc without a semi-colon" do
    assert_lexes "&Acirc", "[[\"Character\",\"Â\"]]"
  end
  it "namedEntities:Named entity: Acirc; with a semi-colon" do
    assert_lexes "&Acirc;", "[[\"Character\",\"Â\"]]"
  end
  it "namedEntities:Bad named entity: Acy without a semi-colon" do
    assert_lexes "&Acy", "[[\"Character\",\"&Acy\"]]"
  end
  it "namedEntities:Named entity: Acy; with a semi-colon" do
    assert_lexes "&Acy;", "[[\"Character\",\"А\"]]"
  end
  it "namedEntities:Bad named entity: Afr without a semi-colon" do
    assert_lexes "&Afr", "[[\"Character\",\"&Afr\"]]"
  end
  it "namedEntities:Named entity: Afr; with a semi-colon" do
    assert_lexes "&Afr;", "[[\"Character\",\"𝔄\"]]"
  end
  it "namedEntities:Named entity: Agrave without a semi-colon" do
    assert_lexes "&Agrave", "[[\"Character\",\"À\"]]"
  end
  it "namedEntities:Named entity: Agrave; with a semi-colon" do
    assert_lexes "&Agrave;", "[[\"Character\",\"À\"]]"
  end
  it "namedEntities:Bad named entity: Alpha without a semi-colon" do
    assert_lexes "&Alpha", "[[\"Character\",\"&Alpha\"]]"
  end
  it "namedEntities:Named entity: Alpha; with a semi-colon" do
    assert_lexes "&Alpha;", "[[\"Character\",\"Α\"]]"
  end
  it "namedEntities:Bad named entity: Amacr without a semi-colon" do
    assert_lexes "&Amacr", "[[\"Character\",\"&Amacr\"]]"
  end
  it "namedEntities:Named entity: Amacr; with a semi-colon" do
    assert_lexes "&Amacr;", "[[\"Character\",\"Ā\"]]"
  end
  it "namedEntities:Bad named entity: And without a semi-colon" do
    assert_lexes "&And", "[[\"Character\",\"&And\"]]"
  end
  it "namedEntities:Named entity: And; with a semi-colon" do
    assert_lexes "&And;", "[[\"Character\",\"⩓\"]]"
  end
  it "namedEntities:Bad named entity: Aogon without a semi-colon" do
    assert_lexes "&Aogon", "[[\"Character\",\"&Aogon\"]]"
  end
  it "namedEntities:Named entity: Aogon; with a semi-colon" do
    assert_lexes "&Aogon;", "[[\"Character\",\"Ą\"]]"
  end
  it "namedEntities:Bad named entity: Aopf without a semi-colon" do
    assert_lexes "&Aopf", "[[\"Character\",\"&Aopf\"]]"
  end
  it "namedEntities:Named entity: Aopf; with a semi-colon" do
    assert_lexes "&Aopf;", "[[\"Character\",\"𝔸\"]]"
  end
  it "namedEntities:Bad named entity: ApplyFunction without a semi-colon" do
    assert_lexes "&ApplyFunction", "[[\"Character\",\"&ApplyFunction\"]]"
  end
  it "namedEntities:Named entity: ApplyFunction; with a semi-colon" do
    assert_lexes "&ApplyFunction;", "[[\"Character\",\"\u2061\"]]"
  end
  it "namedEntities:Named entity: Aring without a semi-colon" do
    assert_lexes "&Aring", "[[\"Character\",\"Å\"]]"
  end
  it "namedEntities:Named entity: Aring; with a semi-colon" do
    assert_lexes "&Aring;", "[[\"Character\",\"Å\"]]"
  end
  it "namedEntities:Bad named entity: Ascr without a semi-colon" do
    assert_lexes "&Ascr", "[[\"Character\",\"&Ascr\"]]"
  end
  it "namedEntities:Named entity: Ascr; with a semi-colon" do
    assert_lexes "&Ascr;", "[[\"Character\",\"𝒜\"]]"
  end
  it "namedEntities:Bad named entity: Assign without a semi-colon" do
    assert_lexes "&Assign", "[[\"Character\",\"&Assign\"]]"
  end
  it "namedEntities:Named entity: Assign; with a semi-colon" do
    assert_lexes "&Assign;", "[[\"Character\",\"≔\"]]"
  end
  it "namedEntities:Named entity: Atilde without a semi-colon" do
    assert_lexes "&Atilde", "[[\"Character\",\"Ã\"]]"
  end
  it "namedEntities:Named entity: Atilde; with a semi-colon" do
    assert_lexes "&Atilde;", "[[\"Character\",\"Ã\"]]"
  end
  it "namedEntities:Named entity: Auml without a semi-colon" do
    assert_lexes "&Auml", "[[\"Character\",\"Ä\"]]"
  end
  it "namedEntities:Named entity: Auml; with a semi-colon" do
    assert_lexes "&Auml;", "[[\"Character\",\"Ä\"]]"
  end
  it "namedEntities:Bad named entity: Backslash without a semi-colon" do
    assert_lexes "&Backslash", "[[\"Character\",\"&Backslash\"]]"
  end
  it "namedEntities:Named entity: Backslash; with a semi-colon" do
    assert_lexes "&Backslash;", "[[\"Character\",\"∖\"]]"
  end
  it "namedEntities:Bad named entity: Barv without a semi-colon" do
    assert_lexes "&Barv", "[[\"Character\",\"&Barv\"]]"
  end
  it "namedEntities:Named entity: Barv; with a semi-colon" do
    assert_lexes "&Barv;", "[[\"Character\",\"⫧\"]]"
  end
  it "namedEntities:Bad named entity: Barwed without a semi-colon" do
    assert_lexes "&Barwed", "[[\"Character\",\"&Barwed\"]]"
  end
  it "namedEntities:Named entity: Barwed; with a semi-colon" do
    assert_lexes "&Barwed;", "[[\"Character\",\"⌆\"]]"
  end
  it "namedEntities:Bad named entity: Bcy without a semi-colon" do
    assert_lexes "&Bcy", "[[\"Character\",\"&Bcy\"]]"
  end
  it "namedEntities:Named entity: Bcy; with a semi-colon" do
    assert_lexes "&Bcy;", "[[\"Character\",\"Б\"]]"
  end
  it "namedEntities:Bad named entity: Because without a semi-colon" do
    assert_lexes "&Because", "[[\"Character\",\"&Because\"]]"
  end
  it "namedEntities:Named entity: Because; with a semi-colon" do
    assert_lexes "&Because;", "[[\"Character\",\"∵\"]]"
  end
  it "namedEntities:Bad named entity: Bernoullis without a semi-colon" do
    assert_lexes "&Bernoullis", "[[\"Character\",\"&Bernoullis\"]]"
  end
  it "namedEntities:Named entity: Bernoullis; with a semi-colon" do
    assert_lexes "&Bernoullis;", "[[\"Character\",\"ℬ\"]]"
  end
  it "namedEntities:Bad named entity: Beta without a semi-colon" do
    assert_lexes "&Beta", "[[\"Character\",\"&Beta\"]]"
  end
  it "namedEntities:Named entity: Beta; with a semi-colon" do
    assert_lexes "&Beta;", "[[\"Character\",\"Β\"]]"
  end
  it "namedEntities:Bad named entity: Bfr without a semi-colon" do
    assert_lexes "&Bfr", "[[\"Character\",\"&Bfr\"]]"
  end
  it "namedEntities:Named entity: Bfr; with a semi-colon" do
    assert_lexes "&Bfr;", "[[\"Character\",\"𝔅\"]]"
  end
  it "namedEntities:Bad named entity: Bopf without a semi-colon" do
    assert_lexes "&Bopf", "[[\"Character\",\"&Bopf\"]]"
  end
  it "namedEntities:Named entity: Bopf; with a semi-colon" do
    assert_lexes "&Bopf;", "[[\"Character\",\"𝔹\"]]"
  end
  it "namedEntities:Bad named entity: Breve without a semi-colon" do
    assert_lexes "&Breve", "[[\"Character\",\"&Breve\"]]"
  end
  it "namedEntities:Named entity: Breve; with a semi-colon" do
    assert_lexes "&Breve;", "[[\"Character\",\"˘\"]]"
  end
  it "namedEntities:Bad named entity: Bscr without a semi-colon" do
    assert_lexes "&Bscr", "[[\"Character\",\"&Bscr\"]]"
  end
  it "namedEntities:Named entity: Bscr; with a semi-colon" do
    assert_lexes "&Bscr;", "[[\"Character\",\"ℬ\"]]"
  end
  it "namedEntities:Bad named entity: Bumpeq without a semi-colon" do
    assert_lexes "&Bumpeq", "[[\"Character\",\"&Bumpeq\"]]"
  end
  it "namedEntities:Named entity: Bumpeq; with a semi-colon" do
    assert_lexes "&Bumpeq;", "[[\"Character\",\"≎\"]]"
  end
  it "namedEntities:Bad named entity: CHcy without a semi-colon" do
    assert_lexes "&CHcy", "[[\"Character\",\"&CHcy\"]]"
  end
  it "namedEntities:Named entity: CHcy; with a semi-colon" do
    assert_lexes "&CHcy;", "[[\"Character\",\"Ч\"]]"
  end
  it "namedEntities:Named entity: COPY without a semi-colon" do
    assert_lexes "&COPY", "[[\"Character\",\"©\"]]"
  end
  it "namedEntities:Named entity: COPY; with a semi-colon" do
    assert_lexes "&COPY;", "[[\"Character\",\"©\"]]"
  end
  it "namedEntities:Bad named entity: Cacute without a semi-colon" do
    assert_lexes "&Cacute", "[[\"Character\",\"&Cacute\"]]"
  end
  it "namedEntities:Named entity: Cacute; with a semi-colon" do
    assert_lexes "&Cacute;", "[[\"Character\",\"Ć\"]]"
  end
  it "namedEntities:Bad named entity: Cap without a semi-colon" do
    assert_lexes "&Cap", "[[\"Character\",\"&Cap\"]]"
  end
  it "namedEntities:Named entity: Cap; with a semi-colon" do
    assert_lexes "&Cap;", "[[\"Character\",\"⋒\"]]"
  end
  it "namedEntities:Bad named entity: CapitalDifferentialD without a semi-colon" do
    assert_lexes "&CapitalDifferentialD", "[[\"Character\",\"&CapitalDifferentialD\"]]"
  end
  it "namedEntities:Named entity: CapitalDifferentialD; with a semi-colon" do
    assert_lexes "&CapitalDifferentialD;", "[[\"Character\",\"ⅅ\"]]"
  end
  it "namedEntities:Bad named entity: Cayleys without a semi-colon" do
    assert_lexes "&Cayleys", "[[\"Character\",\"&Cayleys\"]]"
  end
  it "namedEntities:Named entity: Cayleys; with a semi-colon" do
    assert_lexes "&Cayleys;", "[[\"Character\",\"ℭ\"]]"
  end
  it "namedEntities:Bad named entity: Ccaron without a semi-colon" do
    assert_lexes "&Ccaron", "[[\"Character\",\"&Ccaron\"]]"
  end
  it "namedEntities:Named entity: Ccaron; with a semi-colon" do
    assert_lexes "&Ccaron;", "[[\"Character\",\"Č\"]]"
  end
  it "namedEntities:Named entity: Ccedil without a semi-colon" do
    assert_lexes "&Ccedil", "[[\"Character\",\"Ç\"]]"
  end
  it "namedEntities:Named entity: Ccedil; with a semi-colon" do
    assert_lexes "&Ccedil;", "[[\"Character\",\"Ç\"]]"
  end
  it "namedEntities:Bad named entity: Ccirc without a semi-colon" do
    assert_lexes "&Ccirc", "[[\"Character\",\"&Ccirc\"]]"
  end
  it "namedEntities:Named entity: Ccirc; with a semi-colon" do
    assert_lexes "&Ccirc;", "[[\"Character\",\"Ĉ\"]]"
  end
  it "namedEntities:Bad named entity: Cconint without a semi-colon" do
    assert_lexes "&Cconint", "[[\"Character\",\"&Cconint\"]]"
  end
  it "namedEntities:Named entity: Cconint; with a semi-colon" do
    assert_lexes "&Cconint;", "[[\"Character\",\"∰\"]]"
  end
  it "namedEntities:Bad named entity: Cdot without a semi-colon" do
    assert_lexes "&Cdot", "[[\"Character\",\"&Cdot\"]]"
  end
  it "namedEntities:Named entity: Cdot; with a semi-colon" do
    assert_lexes "&Cdot;", "[[\"Character\",\"Ċ\"]]"
  end
  it "namedEntities:Bad named entity: Cedilla without a semi-colon" do
    assert_lexes "&Cedilla", "[[\"Character\",\"&Cedilla\"]]"
  end
  it "namedEntities:Named entity: Cedilla; with a semi-colon" do
    assert_lexes "&Cedilla;", "[[\"Character\",\"¸\"]]"
  end
  it "namedEntities:Bad named entity: CenterDot without a semi-colon" do
    assert_lexes "&CenterDot", "[[\"Character\",\"&CenterDot\"]]"
  end
  it "namedEntities:Named entity: CenterDot; with a semi-colon" do
    assert_lexes "&CenterDot;", "[[\"Character\",\"·\"]]"
  end
  it "namedEntities:Bad named entity: Cfr without a semi-colon" do
    assert_lexes "&Cfr", "[[\"Character\",\"&Cfr\"]]"
  end
  it "namedEntities:Named entity: Cfr; with a semi-colon" do
    assert_lexes "&Cfr;", "[[\"Character\",\"ℭ\"]]"
  end
  it "namedEntities:Bad named entity: Chi without a semi-colon" do
    assert_lexes "&Chi", "[[\"Character\",\"&Chi\"]]"
  end
  it "namedEntities:Named entity: Chi; with a semi-colon" do
    assert_lexes "&Chi;", "[[\"Character\",\"Χ\"]]"
  end
  it "namedEntities:Bad named entity: CircleDot without a semi-colon" do
    assert_lexes "&CircleDot", "[[\"Character\",\"&CircleDot\"]]"
  end
  it "namedEntities:Named entity: CircleDot; with a semi-colon" do
    assert_lexes "&CircleDot;", "[[\"Character\",\"⊙\"]]"
  end
  it "namedEntities:Bad named entity: CircleMinus without a semi-colon" do
    assert_lexes "&CircleMinus", "[[\"Character\",\"&CircleMinus\"]]"
  end
  it "namedEntities:Named entity: CircleMinus; with a semi-colon" do
    assert_lexes "&CircleMinus;", "[[\"Character\",\"⊖\"]]"
  end
  it "namedEntities:Bad named entity: CirclePlus without a semi-colon" do
    assert_lexes "&CirclePlus", "[[\"Character\",\"&CirclePlus\"]]"
  end
  it "namedEntities:Named entity: CirclePlus; with a semi-colon" do
    assert_lexes "&CirclePlus;", "[[\"Character\",\"⊕\"]]"
  end
  it "namedEntities:Bad named entity: CircleTimes without a semi-colon" do
    assert_lexes "&CircleTimes", "[[\"Character\",\"&CircleTimes\"]]"
  end
  it "namedEntities:Named entity: CircleTimes; with a semi-colon" do
    assert_lexes "&CircleTimes;", "[[\"Character\",\"⊗\"]]"
  end
  it "namedEntities:Bad named entity: ClockwiseContourIntegral without a semi-colon" do
    assert_lexes "&ClockwiseContourIntegral", "[[\"Character\",\"&ClockwiseContourIntegral\"]]"
  end
  it "namedEntities:Named entity: ClockwiseContourIntegral; with a semi-colon" do
    assert_lexes "&ClockwiseContourIntegral;", "[[\"Character\",\"∲\"]]"
  end
  it "namedEntities:Bad named entity: CloseCurlyDoubleQuote without a semi-colon" do
    assert_lexes "&CloseCurlyDoubleQuote", "[[\"Character\",\"&CloseCurlyDoubleQuote\"]]"
  end
  it "namedEntities:Named entity: CloseCurlyDoubleQuote; with a semi-colon" do
    assert_lexes "&CloseCurlyDoubleQuote;", "[[\"Character\",\"”\"]]"
  end
  it "namedEntities:Bad named entity: CloseCurlyQuote without a semi-colon" do
    assert_lexes "&CloseCurlyQuote", "[[\"Character\",\"&CloseCurlyQuote\"]]"
  end
  it "namedEntities:Named entity: CloseCurlyQuote; with a semi-colon" do
    assert_lexes "&CloseCurlyQuote;", "[[\"Character\",\"’\"]]"
  end
  it "namedEntities:Bad named entity: Colon without a semi-colon" do
    assert_lexes "&Colon", "[[\"Character\",\"&Colon\"]]"
  end
  it "namedEntities:Named entity: Colon; with a semi-colon" do
    assert_lexes "&Colon;", "[[\"Character\",\"∷\"]]"
  end
  it "namedEntities:Bad named entity: Colone without a semi-colon" do
    assert_lexes "&Colone", "[[\"Character\",\"&Colone\"]]"
  end
  it "namedEntities:Named entity: Colone; with a semi-colon" do
    assert_lexes "&Colone;", "[[\"Character\",\"⩴\"]]"
  end
  it "namedEntities:Bad named entity: Congruent without a semi-colon" do
    assert_lexes "&Congruent", "[[\"Character\",\"&Congruent\"]]"
  end
  it "namedEntities:Named entity: Congruent; with a semi-colon" do
    assert_lexes "&Congruent;", "[[\"Character\",\"≡\"]]"
  end
  it "namedEntities:Bad named entity: Conint without a semi-colon" do
    assert_lexes "&Conint", "[[\"Character\",\"&Conint\"]]"
  end
  it "namedEntities:Named entity: Conint; with a semi-colon" do
    assert_lexes "&Conint;", "[[\"Character\",\"∯\"]]"
  end
  it "namedEntities:Bad named entity: ContourIntegral without a semi-colon" do
    assert_lexes "&ContourIntegral", "[[\"Character\",\"&ContourIntegral\"]]"
  end
  it "namedEntities:Named entity: ContourIntegral; with a semi-colon" do
    assert_lexes "&ContourIntegral;", "[[\"Character\",\"∮\"]]"
  end
  it "namedEntities:Bad named entity: Copf without a semi-colon" do
    assert_lexes "&Copf", "[[\"Character\",\"&Copf\"]]"
  end
  it "namedEntities:Named entity: Copf; with a semi-colon" do
    assert_lexes "&Copf;", "[[\"Character\",\"ℂ\"]]"
  end
  it "namedEntities:Bad named entity: Coproduct without a semi-colon" do
    assert_lexes "&Coproduct", "[[\"Character\",\"&Coproduct\"]]"
  end
  it "namedEntities:Named entity: Coproduct; with a semi-colon" do
    assert_lexes "&Coproduct;", "[[\"Character\",\"∐\"]]"
  end
  it "namedEntities:Bad named entity: CounterClockwiseContourIntegral without a semi-colon" do
    assert_lexes "&CounterClockwiseContourIntegral", "[[\"Character\",\"&CounterClockwiseContourIntegral\"]]"
  end
  it "namedEntities:Named entity: CounterClockwiseContourIntegral; with a semi-colon" do
    assert_lexes "&CounterClockwiseContourIntegral;", "[[\"Character\",\"∳\"]]"
  end
  it "namedEntities:Bad named entity: Cross without a semi-colon" do
    assert_lexes "&Cross", "[[\"Character\",\"&Cross\"]]"
  end
  it "namedEntities:Named entity: Cross; with a semi-colon" do
    assert_lexes "&Cross;", "[[\"Character\",\"⨯\"]]"
  end
  it "namedEntities:Bad named entity: Cscr without a semi-colon" do
    assert_lexes "&Cscr", "[[\"Character\",\"&Cscr\"]]"
  end
  it "namedEntities:Named entity: Cscr; with a semi-colon" do
    assert_lexes "&Cscr;", "[[\"Character\",\"𝒞\"]]"
  end
  it "namedEntities:Bad named entity: Cup without a semi-colon" do
    assert_lexes "&Cup", "[[\"Character\",\"&Cup\"]]"
  end
  it "namedEntities:Named entity: Cup; with a semi-colon" do
    assert_lexes "&Cup;", "[[\"Character\",\"⋓\"]]"
  end
  it "namedEntities:Bad named entity: CupCap without a semi-colon" do
    assert_lexes "&CupCap", "[[\"Character\",\"&CupCap\"]]"
  end
  it "namedEntities:Named entity: CupCap; with a semi-colon" do
    assert_lexes "&CupCap;", "[[\"Character\",\"≍\"]]"
  end
  it "namedEntities:Bad named entity: DD without a semi-colon" do
    assert_lexes "&DD", "[[\"Character\",\"&DD\"]]"
  end
  it "namedEntities:Named entity: DD; with a semi-colon" do
    assert_lexes "&DD;", "[[\"Character\",\"ⅅ\"]]"
  end
  it "namedEntities:Bad named entity: DDotrahd without a semi-colon" do
    assert_lexes "&DDotrahd", "[[\"Character\",\"&DDotrahd\"]]"
  end
  it "namedEntities:Named entity: DDotrahd; with a semi-colon" do
    assert_lexes "&DDotrahd;", "[[\"Character\",\"⤑\"]]"
  end
  it "namedEntities:Bad named entity: DJcy without a semi-colon" do
    assert_lexes "&DJcy", "[[\"Character\",\"&DJcy\"]]"
  end
  it "namedEntities:Named entity: DJcy; with a semi-colon" do
    assert_lexes "&DJcy;", "[[\"Character\",\"Ђ\"]]"
  end
  it "namedEntities:Bad named entity: DScy without a semi-colon" do
    assert_lexes "&DScy", "[[\"Character\",\"&DScy\"]]"
  end
  it "namedEntities:Named entity: DScy; with a semi-colon" do
    assert_lexes "&DScy;", "[[\"Character\",\"Ѕ\"]]"
  end
  it "namedEntities:Bad named entity: DZcy without a semi-colon" do
    assert_lexes "&DZcy", "[[\"Character\",\"&DZcy\"]]"
  end
  it "namedEntities:Named entity: DZcy; with a semi-colon" do
    assert_lexes "&DZcy;", "[[\"Character\",\"Џ\"]]"
  end
  it "namedEntities:Bad named entity: Dagger without a semi-colon" do
    assert_lexes "&Dagger", "[[\"Character\",\"&Dagger\"]]"
  end
  it "namedEntities:Named entity: Dagger; with a semi-colon" do
    assert_lexes "&Dagger;", "[[\"Character\",\"‡\"]]"
  end
  it "namedEntities:Bad named entity: Darr without a semi-colon" do
    assert_lexes "&Darr", "[[\"Character\",\"&Darr\"]]"
  end
  it "namedEntities:Named entity: Darr; with a semi-colon" do
    assert_lexes "&Darr;", "[[\"Character\",\"↡\"]]"
  end
  it "namedEntities:Bad named entity: Dashv without a semi-colon" do
    assert_lexes "&Dashv", "[[\"Character\",\"&Dashv\"]]"
  end
  it "namedEntities:Named entity: Dashv; with a semi-colon" do
    assert_lexes "&Dashv;", "[[\"Character\",\"⫤\"]]"
  end
  it "namedEntities:Bad named entity: Dcaron without a semi-colon" do
    assert_lexes "&Dcaron", "[[\"Character\",\"&Dcaron\"]]"
  end
  it "namedEntities:Named entity: Dcaron; with a semi-colon" do
    assert_lexes "&Dcaron;", "[[\"Character\",\"Ď\"]]"
  end
  it "namedEntities:Bad named entity: Dcy without a semi-colon" do
    assert_lexes "&Dcy", "[[\"Character\",\"&Dcy\"]]"
  end
  it "namedEntities:Named entity: Dcy; with a semi-colon" do
    assert_lexes "&Dcy;", "[[\"Character\",\"Д\"]]"
  end
  it "namedEntities:Bad named entity: Del without a semi-colon" do
    assert_lexes "&Del", "[[\"Character\",\"&Del\"]]"
  end
  it "namedEntities:Named entity: Del; with a semi-colon" do
    assert_lexes "&Del;", "[[\"Character\",\"∇\"]]"
  end
  it "namedEntities:Bad named entity: Delta without a semi-colon" do
    assert_lexes "&Delta", "[[\"Character\",\"&Delta\"]]"
  end
  it "namedEntities:Named entity: Delta; with a semi-colon" do
    assert_lexes "&Delta;", "[[\"Character\",\"Δ\"]]"
  end
  it "namedEntities:Bad named entity: Dfr without a semi-colon" do
    assert_lexes "&Dfr", "[[\"Character\",\"&Dfr\"]]"
  end
  it "namedEntities:Named entity: Dfr; with a semi-colon" do
    assert_lexes "&Dfr;", "[[\"Character\",\"𝔇\"]]"
  end
  it "namedEntities:Bad named entity: DiacriticalAcute without a semi-colon" do
    assert_lexes "&DiacriticalAcute", "[[\"Character\",\"&DiacriticalAcute\"]]"
  end
  it "namedEntities:Named entity: DiacriticalAcute; with a semi-colon" do
    assert_lexes "&DiacriticalAcute;", "[[\"Character\",\"´\"]]"
  end
  it "namedEntities:Bad named entity: DiacriticalDot without a semi-colon" do
    assert_lexes "&DiacriticalDot", "[[\"Character\",\"&DiacriticalDot\"]]"
  end
  it "namedEntities:Named entity: DiacriticalDot; with a semi-colon" do
    assert_lexes "&DiacriticalDot;", "[[\"Character\",\"˙\"]]"
  end
  it "namedEntities:Bad named entity: DiacriticalDoubleAcute without a semi-colon" do
    assert_lexes "&DiacriticalDoubleAcute", "[[\"Character\",\"&DiacriticalDoubleAcute\"]]"
  end
  it "namedEntities:Named entity: DiacriticalDoubleAcute; with a semi-colon" do
    assert_lexes "&DiacriticalDoubleAcute;", "[[\"Character\",\"˝\"]]"
  end
  it "namedEntities:Bad named entity: DiacriticalGrave without a semi-colon" do
    assert_lexes "&DiacriticalGrave", "[[\"Character\",\"&DiacriticalGrave\"]]"
  end
  it "namedEntities:Named entity: DiacriticalGrave; with a semi-colon" do
    assert_lexes "&DiacriticalGrave;", "[[\"Character\",\"`\"]]"
  end
  it "namedEntities:Bad named entity: DiacriticalTilde without a semi-colon" do
    assert_lexes "&DiacriticalTilde", "[[\"Character\",\"&DiacriticalTilde\"]]"
  end
  it "namedEntities:Named entity: DiacriticalTilde; with a semi-colon" do
    assert_lexes "&DiacriticalTilde;", "[[\"Character\",\"˜\"]]"
  end
  it "namedEntities:Bad named entity: Diamond without a semi-colon" do
    assert_lexes "&Diamond", "[[\"Character\",\"&Diamond\"]]"
  end
  it "namedEntities:Named entity: Diamond; with a semi-colon" do
    assert_lexes "&Diamond;", "[[\"Character\",\"⋄\"]]"
  end
  it "namedEntities:Bad named entity: DifferentialD without a semi-colon" do
    assert_lexes "&DifferentialD", "[[\"Character\",\"&DifferentialD\"]]"
  end
  it "namedEntities:Named entity: DifferentialD; with a semi-colon" do
    assert_lexes "&DifferentialD;", "[[\"Character\",\"ⅆ\"]]"
  end
  it "namedEntities:Bad named entity: Dopf without a semi-colon" do
    assert_lexes "&Dopf", "[[\"Character\",\"&Dopf\"]]"
  end
  it "namedEntities:Named entity: Dopf; with a semi-colon" do
    assert_lexes "&Dopf;", "[[\"Character\",\"𝔻\"]]"
  end
  it "namedEntities:Bad named entity: Dot without a semi-colon" do
    assert_lexes "&Dot", "[[\"Character\",\"&Dot\"]]"
  end
  it "namedEntities:Named entity: Dot; with a semi-colon" do
    assert_lexes "&Dot;", "[[\"Character\",\"¨\"]]"
  end
  it "namedEntities:Bad named entity: DotDot without a semi-colon" do
    assert_lexes "&DotDot", "[[\"Character\",\"&DotDot\"]]"
  end
  it "namedEntities:Named entity: DotDot; with a semi-colon" do
    assert_lexes "&DotDot;", "[[\"Character\",\"⃜\"]]"
  end
  it "namedEntities:Bad named entity: DotEqual without a semi-colon" do
    assert_lexes "&DotEqual", "[[\"Character\",\"&DotEqual\"]]"
  end
  it "namedEntities:Named entity: DotEqual; with a semi-colon" do
    assert_lexes "&DotEqual;", "[[\"Character\",\"≐\"]]"
  end
  it "namedEntities:Bad named entity: DoubleContourIntegral without a semi-colon" do
    assert_lexes "&DoubleContourIntegral", "[[\"Character\",\"&DoubleContourIntegral\"]]"
  end
  it "namedEntities:Named entity: DoubleContourIntegral; with a semi-colon" do
    assert_lexes "&DoubleContourIntegral;", "[[\"Character\",\"∯\"]]"
  end
  it "namedEntities:Bad named entity: DoubleDot without a semi-colon" do
    assert_lexes "&DoubleDot", "[[\"Character\",\"&DoubleDot\"]]"
  end
  it "namedEntities:Named entity: DoubleDot; with a semi-colon" do
    assert_lexes "&DoubleDot;", "[[\"Character\",\"¨\"]]"
  end
  it "namedEntities:Bad named entity: DoubleDownArrow without a semi-colon" do
    assert_lexes "&DoubleDownArrow", "[[\"Character\",\"&DoubleDownArrow\"]]"
  end
  it "namedEntities:Named entity: DoubleDownArrow; with a semi-colon" do
    assert_lexes "&DoubleDownArrow;", "[[\"Character\",\"⇓\"]]"
  end
  it "namedEntities:Bad named entity: DoubleLeftArrow without a semi-colon" do
    assert_lexes "&DoubleLeftArrow", "[[\"Character\",\"&DoubleLeftArrow\"]]"
  end
  it "namedEntities:Named entity: DoubleLeftArrow; with a semi-colon" do
    assert_lexes "&DoubleLeftArrow;", "[[\"Character\",\"⇐\"]]"
  end
  it "namedEntities:Bad named entity: DoubleLeftRightArrow without a semi-colon" do
    assert_lexes "&DoubleLeftRightArrow", "[[\"Character\",\"&DoubleLeftRightArrow\"]]"
  end
  it "namedEntities:Named entity: DoubleLeftRightArrow; with a semi-colon" do
    assert_lexes "&DoubleLeftRightArrow;", "[[\"Character\",\"⇔\"]]"
  end
  it "namedEntities:Bad named entity: DoubleLeftTee without a semi-colon" do
    assert_lexes "&DoubleLeftTee", "[[\"Character\",\"&DoubleLeftTee\"]]"
  end
  it "namedEntities:Named entity: DoubleLeftTee; with a semi-colon" do
    assert_lexes "&DoubleLeftTee;", "[[\"Character\",\"⫤\"]]"
  end
  it "namedEntities:Bad named entity: DoubleLongLeftArrow without a semi-colon" do
    assert_lexes "&DoubleLongLeftArrow", "[[\"Character\",\"&DoubleLongLeftArrow\"]]"
  end
  it "namedEntities:Named entity: DoubleLongLeftArrow; with a semi-colon" do
    assert_lexes "&DoubleLongLeftArrow;", "[[\"Character\",\"⟸\"]]"
  end
  it "namedEntities:Bad named entity: DoubleLongLeftRightArrow without a semi-colon" do
    assert_lexes "&DoubleLongLeftRightArrow", "[[\"Character\",\"&DoubleLongLeftRightArrow\"]]"
  end
  it "namedEntities:Named entity: DoubleLongLeftRightArrow; with a semi-colon" do
    assert_lexes "&DoubleLongLeftRightArrow;", "[[\"Character\",\"⟺\"]]"
  end
  it "namedEntities:Bad named entity: DoubleLongRightArrow without a semi-colon" do
    assert_lexes "&DoubleLongRightArrow", "[[\"Character\",\"&DoubleLongRightArrow\"]]"
  end
  it "namedEntities:Named entity: DoubleLongRightArrow; with a semi-colon" do
    assert_lexes "&DoubleLongRightArrow;", "[[\"Character\",\"⟹\"]]"
  end
  it "namedEntities:Bad named entity: DoubleRightArrow without a semi-colon" do
    assert_lexes "&DoubleRightArrow", "[[\"Character\",\"&DoubleRightArrow\"]]"
  end
  it "namedEntities:Named entity: DoubleRightArrow; with a semi-colon" do
    assert_lexes "&DoubleRightArrow;", "[[\"Character\",\"⇒\"]]"
  end
  it "namedEntities:Bad named entity: DoubleRightTee without a semi-colon" do
    assert_lexes "&DoubleRightTee", "[[\"Character\",\"&DoubleRightTee\"]]"
  end
  it "namedEntities:Named entity: DoubleRightTee; with a semi-colon" do
    assert_lexes "&DoubleRightTee;", "[[\"Character\",\"⊨\"]]"
  end
  it "namedEntities:Bad named entity: DoubleUpArrow without a semi-colon" do
    assert_lexes "&DoubleUpArrow", "[[\"Character\",\"&DoubleUpArrow\"]]"
  end
  it "namedEntities:Named entity: DoubleUpArrow; with a semi-colon" do
    assert_lexes "&DoubleUpArrow;", "[[\"Character\",\"⇑\"]]"
  end
  it "namedEntities:Bad named entity: DoubleUpDownArrow without a semi-colon" do
    assert_lexes "&DoubleUpDownArrow", "[[\"Character\",\"&DoubleUpDownArrow\"]]"
  end
  it "namedEntities:Named entity: DoubleUpDownArrow; with a semi-colon" do
    assert_lexes "&DoubleUpDownArrow;", "[[\"Character\",\"⇕\"]]"
  end
  it "namedEntities:Bad named entity: DoubleVerticalBar without a semi-colon" do
    assert_lexes "&DoubleVerticalBar", "[[\"Character\",\"&DoubleVerticalBar\"]]"
  end
  it "namedEntities:Named entity: DoubleVerticalBar; with a semi-colon" do
    assert_lexes "&DoubleVerticalBar;", "[[\"Character\",\"∥\"]]"
  end
  it "namedEntities:Bad named entity: DownArrow without a semi-colon" do
    assert_lexes "&DownArrow", "[[\"Character\",\"&DownArrow\"]]"
  end
  it "namedEntities:Named entity: DownArrow; with a semi-colon" do
    assert_lexes "&DownArrow;", "[[\"Character\",\"↓\"]]"
  end
  it "namedEntities:Bad named entity: DownArrowBar without a semi-colon" do
    assert_lexes "&DownArrowBar", "[[\"Character\",\"&DownArrowBar\"]]"
  end
  it "namedEntities:Named entity: DownArrowBar; with a semi-colon" do
    assert_lexes "&DownArrowBar;", "[[\"Character\",\"⤓\"]]"
  end
  it "namedEntities:Bad named entity: DownArrowUpArrow without a semi-colon" do
    assert_lexes "&DownArrowUpArrow", "[[\"Character\",\"&DownArrowUpArrow\"]]"
  end
  it "namedEntities:Named entity: DownArrowUpArrow; with a semi-colon" do
    assert_lexes "&DownArrowUpArrow;", "[[\"Character\",\"⇵\"]]"
  end
  it "namedEntities:Bad named entity: DownBreve without a semi-colon" do
    assert_lexes "&DownBreve", "[[\"Character\",\"&DownBreve\"]]"
  end
  it "namedEntities:Named entity: DownBreve; with a semi-colon" do
    assert_lexes "&DownBreve;", "[[\"Character\",\"̑\"]]"
  end
  it "namedEntities:Bad named entity: DownLeftRightVector without a semi-colon" do
    assert_lexes "&DownLeftRightVector", "[[\"Character\",\"&DownLeftRightVector\"]]"
  end
  it "namedEntities:Named entity: DownLeftRightVector; with a semi-colon" do
    assert_lexes "&DownLeftRightVector;", "[[\"Character\",\"⥐\"]]"
  end
  it "namedEntities:Bad named entity: DownLeftTeeVector without a semi-colon" do
    assert_lexes "&DownLeftTeeVector", "[[\"Character\",\"&DownLeftTeeVector\"]]"
  end
  it "namedEntities:Named entity: DownLeftTeeVector; with a semi-colon" do
    assert_lexes "&DownLeftTeeVector;", "[[\"Character\",\"⥞\"]]"
  end
  it "namedEntities:Bad named entity: DownLeftVector without a semi-colon" do
    assert_lexes "&DownLeftVector", "[[\"Character\",\"&DownLeftVector\"]]"
  end
  it "namedEntities:Named entity: DownLeftVector; with a semi-colon" do
    assert_lexes "&DownLeftVector;", "[[\"Character\",\"↽\"]]"
  end
  it "namedEntities:Bad named entity: DownLeftVectorBar without a semi-colon" do
    assert_lexes "&DownLeftVectorBar", "[[\"Character\",\"&DownLeftVectorBar\"]]"
  end
  it "namedEntities:Named entity: DownLeftVectorBar; with a semi-colon" do
    assert_lexes "&DownLeftVectorBar;", "[[\"Character\",\"⥖\"]]"
  end
  it "namedEntities:Bad named entity: DownRightTeeVector without a semi-colon" do
    assert_lexes "&DownRightTeeVector", "[[\"Character\",\"&DownRightTeeVector\"]]"
  end
  it "namedEntities:Named entity: DownRightTeeVector; with a semi-colon" do
    assert_lexes "&DownRightTeeVector;", "[[\"Character\",\"⥟\"]]"
  end
  it "namedEntities:Bad named entity: DownRightVector without a semi-colon" do
    assert_lexes "&DownRightVector", "[[\"Character\",\"&DownRightVector\"]]"
  end
  it "namedEntities:Named entity: DownRightVector; with a semi-colon" do
    assert_lexes "&DownRightVector;", "[[\"Character\",\"⇁\"]]"
  end
  it "namedEntities:Bad named entity: DownRightVectorBar without a semi-colon" do
    assert_lexes "&DownRightVectorBar", "[[\"Character\",\"&DownRightVectorBar\"]]"
  end
  it "namedEntities:Named entity: DownRightVectorBar; with a semi-colon" do
    assert_lexes "&DownRightVectorBar;", "[[\"Character\",\"⥗\"]]"
  end
  it "namedEntities:Bad named entity: DownTee without a semi-colon" do
    assert_lexes "&DownTee", "[[\"Character\",\"&DownTee\"]]"
  end
  it "namedEntities:Named entity: DownTee; with a semi-colon" do
    assert_lexes "&DownTee;", "[[\"Character\",\"⊤\"]]"
  end
  it "namedEntities:Bad named entity: DownTeeArrow without a semi-colon" do
    assert_lexes "&DownTeeArrow", "[[\"Character\",\"&DownTeeArrow\"]]"
  end
  it "namedEntities:Named entity: DownTeeArrow; with a semi-colon" do
    assert_lexes "&DownTeeArrow;", "[[\"Character\",\"↧\"]]"
  end
  it "namedEntities:Bad named entity: Downarrow without a semi-colon" do
    assert_lexes "&Downarrow", "[[\"Character\",\"&Downarrow\"]]"
  end
  it "namedEntities:Named entity: Downarrow; with a semi-colon" do
    assert_lexes "&Downarrow;", "[[\"Character\",\"⇓\"]]"
  end
  it "namedEntities:Bad named entity: Dscr without a semi-colon" do
    assert_lexes "&Dscr", "[[\"Character\",\"&Dscr\"]]"
  end
  it "namedEntities:Named entity: Dscr; with a semi-colon" do
    assert_lexes "&Dscr;", "[[\"Character\",\"𝒟\"]]"
  end
  it "namedEntities:Bad named entity: Dstrok without a semi-colon" do
    assert_lexes "&Dstrok", "[[\"Character\",\"&Dstrok\"]]"
  end
  it "namedEntities:Named entity: Dstrok; with a semi-colon" do
    assert_lexes "&Dstrok;", "[[\"Character\",\"Đ\"]]"
  end
  it "namedEntities:Bad named entity: ENG without a semi-colon" do
    assert_lexes "&ENG", "[[\"Character\",\"&ENG\"]]"
  end
  it "namedEntities:Named entity: ENG; with a semi-colon" do
    assert_lexes "&ENG;", "[[\"Character\",\"Ŋ\"]]"
  end
  it "namedEntities:Named entity: ETH without a semi-colon" do
    assert_lexes "&ETH", "[[\"Character\",\"Ð\"]]"
  end
  it "namedEntities:Named entity: ETH; with a semi-colon" do
    assert_lexes "&ETH;", "[[\"Character\",\"Ð\"]]"
  end
  it "namedEntities:Named entity: Eacute without a semi-colon" do
    assert_lexes "&Eacute", "[[\"Character\",\"É\"]]"
  end
  it "namedEntities:Named entity: Eacute; with a semi-colon" do
    assert_lexes "&Eacute;", "[[\"Character\",\"É\"]]"
  end
  it "namedEntities:Bad named entity: Ecaron without a semi-colon" do
    assert_lexes "&Ecaron", "[[\"Character\",\"&Ecaron\"]]"
  end
  it "namedEntities:Named entity: Ecaron; with a semi-colon" do
    assert_lexes "&Ecaron;", "[[\"Character\",\"Ě\"]]"
  end
  it "namedEntities:Named entity: Ecirc without a semi-colon" do
    assert_lexes "&Ecirc", "[[\"Character\",\"Ê\"]]"
  end
  it "namedEntities:Named entity: Ecirc; with a semi-colon" do
    assert_lexes "&Ecirc;", "[[\"Character\",\"Ê\"]]"
  end
  it "namedEntities:Bad named entity: Ecy without a semi-colon" do
    assert_lexes "&Ecy", "[[\"Character\",\"&Ecy\"]]"
  end
  it "namedEntities:Named entity: Ecy; with a semi-colon" do
    assert_lexes "&Ecy;", "[[\"Character\",\"Э\"]]"
  end
  it "namedEntities:Bad named entity: Edot without a semi-colon" do
    assert_lexes "&Edot", "[[\"Character\",\"&Edot\"]]"
  end
  it "namedEntities:Named entity: Edot; with a semi-colon" do
    assert_lexes "&Edot;", "[[\"Character\",\"Ė\"]]"
  end
  it "namedEntities:Bad named entity: Efr without a semi-colon" do
    assert_lexes "&Efr", "[[\"Character\",\"&Efr\"]]"
  end
  it "namedEntities:Named entity: Efr; with a semi-colon" do
    assert_lexes "&Efr;", "[[\"Character\",\"𝔈\"]]"
  end
  it "namedEntities:Named entity: Egrave without a semi-colon" do
    assert_lexes "&Egrave", "[[\"Character\",\"È\"]]"
  end
  it "namedEntities:Named entity: Egrave; with a semi-colon" do
    assert_lexes "&Egrave;", "[[\"Character\",\"È\"]]"
  end
  it "namedEntities:Bad named entity: Element without a semi-colon" do
    assert_lexes "&Element", "[[\"Character\",\"&Element\"]]"
  end
  it "namedEntities:Named entity: Element; with a semi-colon" do
    assert_lexes "&Element;", "[[\"Character\",\"∈\"]]"
  end
  it "namedEntities:Bad named entity: Emacr without a semi-colon" do
    assert_lexes "&Emacr", "[[\"Character\",\"&Emacr\"]]"
  end
  it "namedEntities:Named entity: Emacr; with a semi-colon" do
    assert_lexes "&Emacr;", "[[\"Character\",\"Ē\"]]"
  end
  it "namedEntities:Bad named entity: EmptySmallSquare without a semi-colon" do
    assert_lexes "&EmptySmallSquare", "[[\"Character\",\"&EmptySmallSquare\"]]"
  end
  it "namedEntities:Named entity: EmptySmallSquare; with a semi-colon" do
    assert_lexes "&EmptySmallSquare;", "[[\"Character\",\"◻\"]]"
  end
  it "namedEntities:Bad named entity: EmptyVerySmallSquare without a semi-colon" do
    assert_lexes "&EmptyVerySmallSquare", "[[\"Character\",\"&EmptyVerySmallSquare\"]]"
  end
  it "namedEntities:Named entity: EmptyVerySmallSquare; with a semi-colon" do
    assert_lexes "&EmptyVerySmallSquare;", "[[\"Character\",\"▫\"]]"
  end
  it "namedEntities:Bad named entity: Eogon without a semi-colon" do
    assert_lexes "&Eogon", "[[\"Character\",\"&Eogon\"]]"
  end
  it "namedEntities:Named entity: Eogon; with a semi-colon" do
    assert_lexes "&Eogon;", "[[\"Character\",\"Ę\"]]"
  end
  it "namedEntities:Bad named entity: Eopf without a semi-colon" do
    assert_lexes "&Eopf", "[[\"Character\",\"&Eopf\"]]"
  end
  it "namedEntities:Named entity: Eopf; with a semi-colon" do
    assert_lexes "&Eopf;", "[[\"Character\",\"𝔼\"]]"
  end
  it "namedEntities:Bad named entity: Epsilon without a semi-colon" do
    assert_lexes "&Epsilon", "[[\"Character\",\"&Epsilon\"]]"
  end
  it "namedEntities:Named entity: Epsilon; with a semi-colon" do
    assert_lexes "&Epsilon;", "[[\"Character\",\"Ε\"]]"
  end
  it "namedEntities:Bad named entity: Equal without a semi-colon" do
    assert_lexes "&Equal", "[[\"Character\",\"&Equal\"]]"
  end
  it "namedEntities:Named entity: Equal; with a semi-colon" do
    assert_lexes "&Equal;", "[[\"Character\",\"⩵\"]]"
  end
  it "namedEntities:Bad named entity: EqualTilde without a semi-colon" do
    assert_lexes "&EqualTilde", "[[\"Character\",\"&EqualTilde\"]]"
  end
  it "namedEntities:Named entity: EqualTilde; with a semi-colon" do
    assert_lexes "&EqualTilde;", "[[\"Character\",\"≂\"]]"
  end
  it "namedEntities:Bad named entity: Equilibrium without a semi-colon" do
    assert_lexes "&Equilibrium", "[[\"Character\",\"&Equilibrium\"]]"
  end
  it "namedEntities:Named entity: Equilibrium; with a semi-colon" do
    assert_lexes "&Equilibrium;", "[[\"Character\",\"⇌\"]]"
  end
  it "namedEntities:Bad named entity: Escr without a semi-colon" do
    assert_lexes "&Escr", "[[\"Character\",\"&Escr\"]]"
  end
  it "namedEntities:Named entity: Escr; with a semi-colon" do
    assert_lexes "&Escr;", "[[\"Character\",\"ℰ\"]]"
  end
  it "namedEntities:Bad named entity: Esim without a semi-colon" do
    assert_lexes "&Esim", "[[\"Character\",\"&Esim\"]]"
  end
  it "namedEntities:Named entity: Esim; with a semi-colon" do
    assert_lexes "&Esim;", "[[\"Character\",\"⩳\"]]"
  end
  it "namedEntities:Bad named entity: Eta without a semi-colon" do
    assert_lexes "&Eta", "[[\"Character\",\"&Eta\"]]"
  end
  it "namedEntities:Named entity: Eta; with a semi-colon" do
    assert_lexes "&Eta;", "[[\"Character\",\"Η\"]]"
  end
  it "namedEntities:Named entity: Euml without a semi-colon" do
    assert_lexes "&Euml", "[[\"Character\",\"Ë\"]]"
  end
  it "namedEntities:Named entity: Euml; with a semi-colon" do
    assert_lexes "&Euml;", "[[\"Character\",\"Ë\"]]"
  end
  it "namedEntities:Bad named entity: Exists without a semi-colon" do
    assert_lexes "&Exists", "[[\"Character\",\"&Exists\"]]"
  end
  it "namedEntities:Named entity: Exists; with a semi-colon" do
    assert_lexes "&Exists;", "[[\"Character\",\"∃\"]]"
  end
  it "namedEntities:Bad named entity: ExponentialE without a semi-colon" do
    assert_lexes "&ExponentialE", "[[\"Character\",\"&ExponentialE\"]]"
  end
  it "namedEntities:Named entity: ExponentialE; with a semi-colon" do
    assert_lexes "&ExponentialE;", "[[\"Character\",\"ⅇ\"]]"
  end
  it "namedEntities:Bad named entity: Fcy without a semi-colon" do
    assert_lexes "&Fcy", "[[\"Character\",\"&Fcy\"]]"
  end
  it "namedEntities:Named entity: Fcy; with a semi-colon" do
    assert_lexes "&Fcy;", "[[\"Character\",\"Ф\"]]"
  end
  it "namedEntities:Bad named entity: Ffr without a semi-colon" do
    assert_lexes "&Ffr", "[[\"Character\",\"&Ffr\"]]"
  end
  it "namedEntities:Named entity: Ffr; with a semi-colon" do
    assert_lexes "&Ffr;", "[[\"Character\",\"𝔉\"]]"
  end
  it "namedEntities:Bad named entity: FilledSmallSquare without a semi-colon" do
    assert_lexes "&FilledSmallSquare", "[[\"Character\",\"&FilledSmallSquare\"]]"
  end
  it "namedEntities:Named entity: FilledSmallSquare; with a semi-colon" do
    assert_lexes "&FilledSmallSquare;", "[[\"Character\",\"◼\"]]"
  end
  it "namedEntities:Bad named entity: FilledVerySmallSquare without a semi-colon" do
    assert_lexes "&FilledVerySmallSquare", "[[\"Character\",\"&FilledVerySmallSquare\"]]"
  end
  it "namedEntities:Named entity: FilledVerySmallSquare; with a semi-colon" do
    assert_lexes "&FilledVerySmallSquare;", "[[\"Character\",\"▪\"]]"
  end
  it "namedEntities:Bad named entity: Fopf without a semi-colon" do
    assert_lexes "&Fopf", "[[\"Character\",\"&Fopf\"]]"
  end
  it "namedEntities:Named entity: Fopf; with a semi-colon" do
    assert_lexes "&Fopf;", "[[\"Character\",\"𝔽\"]]"
  end
  it "namedEntities:Bad named entity: ForAll without a semi-colon" do
    assert_lexes "&ForAll", "[[\"Character\",\"&ForAll\"]]"
  end
  it "namedEntities:Named entity: ForAll; with a semi-colon" do
    assert_lexes "&ForAll;", "[[\"Character\",\"∀\"]]"
  end
  it "namedEntities:Bad named entity: Fouriertrf without a semi-colon" do
    assert_lexes "&Fouriertrf", "[[\"Character\",\"&Fouriertrf\"]]"
  end
  it "namedEntities:Named entity: Fouriertrf; with a semi-colon" do
    assert_lexes "&Fouriertrf;", "[[\"Character\",\"ℱ\"]]"
  end
  it "namedEntities:Bad named entity: Fscr without a semi-colon" do
    assert_lexes "&Fscr", "[[\"Character\",\"&Fscr\"]]"
  end
  it "namedEntities:Named entity: Fscr; with a semi-colon" do
    assert_lexes "&Fscr;", "[[\"Character\",\"ℱ\"]]"
  end
  it "namedEntities:Bad named entity: GJcy without a semi-colon" do
    assert_lexes "&GJcy", "[[\"Character\",\"&GJcy\"]]"
  end
  it "namedEntities:Named entity: GJcy; with a semi-colon" do
    assert_lexes "&GJcy;", "[[\"Character\",\"Ѓ\"]]"
  end
  it "namedEntities:Named entity: GT without a semi-colon" do
    assert_lexes "&GT", "[[\"Character\",\">\"]]"
  end
  it "namedEntities:Named entity: GT; with a semi-colon" do
    assert_lexes "&GT;", "[[\"Character\",\">\"]]"
  end
  it "namedEntities:Bad named entity: Gamma without a semi-colon" do
    assert_lexes "&Gamma", "[[\"Character\",\"&Gamma\"]]"
  end
  it "namedEntities:Named entity: Gamma; with a semi-colon" do
    assert_lexes "&Gamma;", "[[\"Character\",\"Γ\"]]"
  end
  it "namedEntities:Bad named entity: Gammad without a semi-colon" do
    assert_lexes "&Gammad", "[[\"Character\",\"&Gammad\"]]"
  end
  it "namedEntities:Named entity: Gammad; with a semi-colon" do
    assert_lexes "&Gammad;", "[[\"Character\",\"Ϝ\"]]"
  end
  it "namedEntities:Bad named entity: Gbreve without a semi-colon" do
    assert_lexes "&Gbreve", "[[\"Character\",\"&Gbreve\"]]"
  end
  it "namedEntities:Named entity: Gbreve; with a semi-colon" do
    assert_lexes "&Gbreve;", "[[\"Character\",\"Ğ\"]]"
  end
  it "namedEntities:Bad named entity: Gcedil without a semi-colon" do
    assert_lexes "&Gcedil", "[[\"Character\",\"&Gcedil\"]]"
  end
  it "namedEntities:Named entity: Gcedil; with a semi-colon" do
    assert_lexes "&Gcedil;", "[[\"Character\",\"Ģ\"]]"
  end
  it "namedEntities:Bad named entity: Gcirc without a semi-colon" do
    assert_lexes "&Gcirc", "[[\"Character\",\"&Gcirc\"]]"
  end
  it "namedEntities:Named entity: Gcirc; with a semi-colon" do
    assert_lexes "&Gcirc;", "[[\"Character\",\"Ĝ\"]]"
  end
  it "namedEntities:Bad named entity: Gcy without a semi-colon" do
    assert_lexes "&Gcy", "[[\"Character\",\"&Gcy\"]]"
  end
  it "namedEntities:Named entity: Gcy; with a semi-colon" do
    assert_lexes "&Gcy;", "[[\"Character\",\"Г\"]]"
  end
  it "namedEntities:Bad named entity: Gdot without a semi-colon" do
    assert_lexes "&Gdot", "[[\"Character\",\"&Gdot\"]]"
  end
  it "namedEntities:Named entity: Gdot; with a semi-colon" do
    assert_lexes "&Gdot;", "[[\"Character\",\"Ġ\"]]"
  end
  it "namedEntities:Bad named entity: Gfr without a semi-colon" do
    assert_lexes "&Gfr", "[[\"Character\",\"&Gfr\"]]"
  end
  it "namedEntities:Named entity: Gfr; with a semi-colon" do
    assert_lexes "&Gfr;", "[[\"Character\",\"𝔊\"]]"
  end
  it "namedEntities:Bad named entity: Gg without a semi-colon" do
    assert_lexes "&Gg", "[[\"Character\",\"&Gg\"]]"
  end
  it "namedEntities:Named entity: Gg; with a semi-colon" do
    assert_lexes "&Gg;", "[[\"Character\",\"⋙\"]]"
  end
  it "namedEntities:Bad named entity: Gopf without a semi-colon" do
    assert_lexes "&Gopf", "[[\"Character\",\"&Gopf\"]]"
  end
  it "namedEntities:Named entity: Gopf; with a semi-colon" do
    assert_lexes "&Gopf;", "[[\"Character\",\"𝔾\"]]"
  end
  it "namedEntities:Bad named entity: GreaterEqual without a semi-colon" do
    assert_lexes "&GreaterEqual", "[[\"Character\",\"&GreaterEqual\"]]"
  end
  it "namedEntities:Named entity: GreaterEqual; with a semi-colon" do
    assert_lexes "&GreaterEqual;", "[[\"Character\",\"≥\"]]"
  end
  it "namedEntities:Bad named entity: GreaterEqualLess without a semi-colon" do
    assert_lexes "&GreaterEqualLess", "[[\"Character\",\"&GreaterEqualLess\"]]"
  end
  it "namedEntities:Named entity: GreaterEqualLess; with a semi-colon" do
    assert_lexes "&GreaterEqualLess;", "[[\"Character\",\"⋛\"]]"
  end
  it "namedEntities:Bad named entity: GreaterFullEqual without a semi-colon" do
    assert_lexes "&GreaterFullEqual", "[[\"Character\",\"&GreaterFullEqual\"]]"
  end
  it "namedEntities:Named entity: GreaterFullEqual; with a semi-colon" do
    assert_lexes "&GreaterFullEqual;", "[[\"Character\",\"≧\"]]"
  end
  it "namedEntities:Bad named entity: GreaterGreater without a semi-colon" do
    assert_lexes "&GreaterGreater", "[[\"Character\",\"&GreaterGreater\"]]"
  end
  it "namedEntities:Named entity: GreaterGreater; with a semi-colon" do
    assert_lexes "&GreaterGreater;", "[[\"Character\",\"⪢\"]]"
  end
  it "namedEntities:Bad named entity: GreaterLess without a semi-colon" do
    assert_lexes "&GreaterLess", "[[\"Character\",\"&GreaterLess\"]]"
  end
  it "namedEntities:Named entity: GreaterLess; with a semi-colon" do
    assert_lexes "&GreaterLess;", "[[\"Character\",\"≷\"]]"
  end
  it "namedEntities:Bad named entity: GreaterSlantEqual without a semi-colon" do
    assert_lexes "&GreaterSlantEqual", "[[\"Character\",\"&GreaterSlantEqual\"]]"
  end
  it "namedEntities:Named entity: GreaterSlantEqual; with a semi-colon" do
    assert_lexes "&GreaterSlantEqual;", "[[\"Character\",\"⩾\"]]"
  end
  it "namedEntities:Bad named entity: GreaterTilde without a semi-colon" do
    assert_lexes "&GreaterTilde", "[[\"Character\",\"&GreaterTilde\"]]"
  end
  it "namedEntities:Named entity: GreaterTilde; with a semi-colon" do
    assert_lexes "&GreaterTilde;", "[[\"Character\",\"≳\"]]"
  end
  it "namedEntities:Bad named entity: Gscr without a semi-colon" do
    assert_lexes "&Gscr", "[[\"Character\",\"&Gscr\"]]"
  end
  it "namedEntities:Named entity: Gscr; with a semi-colon" do
    assert_lexes "&Gscr;", "[[\"Character\",\"𝒢\"]]"
  end
  it "namedEntities:Bad named entity: Gt without a semi-colon" do
    assert_lexes "&Gt", "[[\"Character\",\"&Gt\"]]"
  end
  it "namedEntities:Named entity: Gt; with a semi-colon" do
    assert_lexes "&Gt;", "[[\"Character\",\"≫\"]]"
  end
  it "namedEntities:Bad named entity: HARDcy without a semi-colon" do
    assert_lexes "&HARDcy", "[[\"Character\",\"&HARDcy\"]]"
  end
  it "namedEntities:Named entity: HARDcy; with a semi-colon" do
    assert_lexes "&HARDcy;", "[[\"Character\",\"Ъ\"]]"
  end
  it "namedEntities:Bad named entity: Hacek without a semi-colon" do
    assert_lexes "&Hacek", "[[\"Character\",\"&Hacek\"]]"
  end
  it "namedEntities:Named entity: Hacek; with a semi-colon" do
    assert_lexes "&Hacek;", "[[\"Character\",\"ˇ\"]]"
  end
  it "namedEntities:Bad named entity: Hat without a semi-colon" do
    assert_lexes "&Hat", "[[\"Character\",\"&Hat\"]]"
  end
  it "namedEntities:Named entity: Hat; with a semi-colon" do
    assert_lexes "&Hat;", "[[\"Character\",\"^\"]]"
  end
  it "namedEntities:Bad named entity: Hcirc without a semi-colon" do
    assert_lexes "&Hcirc", "[[\"Character\",\"&Hcirc\"]]"
  end
  it "namedEntities:Named entity: Hcirc; with a semi-colon" do
    assert_lexes "&Hcirc;", "[[\"Character\",\"Ĥ\"]]"
  end
  it "namedEntities:Bad named entity: Hfr without a semi-colon" do
    assert_lexes "&Hfr", "[[\"Character\",\"&Hfr\"]]"
  end
  it "namedEntities:Named entity: Hfr; with a semi-colon" do
    assert_lexes "&Hfr;", "[[\"Character\",\"ℌ\"]]"
  end
  it "namedEntities:Bad named entity: HilbertSpace without a semi-colon" do
    assert_lexes "&HilbertSpace", "[[\"Character\",\"&HilbertSpace\"]]"
  end
  it "namedEntities:Named entity: HilbertSpace; with a semi-colon" do
    assert_lexes "&HilbertSpace;", "[[\"Character\",\"ℋ\"]]"
  end
  it "namedEntities:Bad named entity: Hopf without a semi-colon" do
    assert_lexes "&Hopf", "[[\"Character\",\"&Hopf\"]]"
  end
  it "namedEntities:Named entity: Hopf; with a semi-colon" do
    assert_lexes "&Hopf;", "[[\"Character\",\"ℍ\"]]"
  end
  it "namedEntities:Bad named entity: HorizontalLine without a semi-colon" do
    assert_lexes "&HorizontalLine", "[[\"Character\",\"&HorizontalLine\"]]"
  end
  it "namedEntities:Named entity: HorizontalLine; with a semi-colon" do
    assert_lexes "&HorizontalLine;", "[[\"Character\",\"─\"]]"
  end
  it "namedEntities:Bad named entity: Hscr without a semi-colon" do
    assert_lexes "&Hscr", "[[\"Character\",\"&Hscr\"]]"
  end
  it "namedEntities:Named entity: Hscr; with a semi-colon" do
    assert_lexes "&Hscr;", "[[\"Character\",\"ℋ\"]]"
  end
  it "namedEntities:Bad named entity: Hstrok without a semi-colon" do
    assert_lexes "&Hstrok", "[[\"Character\",\"&Hstrok\"]]"
  end
  it "namedEntities:Named entity: Hstrok; with a semi-colon" do
    assert_lexes "&Hstrok;", "[[\"Character\",\"Ħ\"]]"
  end
  it "namedEntities:Bad named entity: HumpDownHump without a semi-colon" do
    assert_lexes "&HumpDownHump", "[[\"Character\",\"&HumpDownHump\"]]"
  end
  it "namedEntities:Named entity: HumpDownHump; with a semi-colon" do
    assert_lexes "&HumpDownHump;", "[[\"Character\",\"≎\"]]"
  end
  it "namedEntities:Bad named entity: HumpEqual without a semi-colon" do
    assert_lexes "&HumpEqual", "[[\"Character\",\"&HumpEqual\"]]"
  end
  it "namedEntities:Named entity: HumpEqual; with a semi-colon" do
    assert_lexes "&HumpEqual;", "[[\"Character\",\"≏\"]]"
  end
  it "namedEntities:Bad named entity: IEcy without a semi-colon" do
    assert_lexes "&IEcy", "[[\"Character\",\"&IEcy\"]]"
  end
  it "namedEntities:Named entity: IEcy; with a semi-colon" do
    assert_lexes "&IEcy;", "[[\"Character\",\"Е\"]]"
  end
  it "namedEntities:Bad named entity: IJlig without a semi-colon" do
    assert_lexes "&IJlig", "[[\"Character\",\"&IJlig\"]]"
  end
  it "namedEntities:Named entity: IJlig; with a semi-colon" do
    assert_lexes "&IJlig;", "[[\"Character\",\"Ĳ\"]]"
  end
  it "namedEntities:Bad named entity: IOcy without a semi-colon" do
    assert_lexes "&IOcy", "[[\"Character\",\"&IOcy\"]]"
  end
  it "namedEntities:Named entity: IOcy; with a semi-colon" do
    assert_lexes "&IOcy;", "[[\"Character\",\"Ё\"]]"
  end
  it "namedEntities:Named entity: Iacute without a semi-colon" do
    assert_lexes "&Iacute", "[[\"Character\",\"Í\"]]"
  end
  it "namedEntities:Named entity: Iacute; with a semi-colon" do
    assert_lexes "&Iacute;", "[[\"Character\",\"Í\"]]"
  end
  it "namedEntities:Named entity: Icirc without a semi-colon" do
    assert_lexes "&Icirc", "[[\"Character\",\"Î\"]]"
  end
  it "namedEntities:Named entity: Icirc; with a semi-colon" do
    assert_lexes "&Icirc;", "[[\"Character\",\"Î\"]]"
  end
  it "namedEntities:Bad named entity: Icy without a semi-colon" do
    assert_lexes "&Icy", "[[\"Character\",\"&Icy\"]]"
  end
  it "namedEntities:Named entity: Icy; with a semi-colon" do
    assert_lexes "&Icy;", "[[\"Character\",\"И\"]]"
  end
  it "namedEntities:Bad named entity: Idot without a semi-colon" do
    assert_lexes "&Idot", "[[\"Character\",\"&Idot\"]]"
  end
  it "namedEntities:Named entity: Idot; with a semi-colon" do
    assert_lexes "&Idot;", "[[\"Character\",\"İ\"]]"
  end
  it "namedEntities:Bad named entity: Ifr without a semi-colon" do
    assert_lexes "&Ifr", "[[\"Character\",\"&Ifr\"]]"
  end
  it "namedEntities:Named entity: Ifr; with a semi-colon" do
    assert_lexes "&Ifr;", "[[\"Character\",\"ℑ\"]]"
  end
  it "namedEntities:Named entity: Igrave without a semi-colon" do
    assert_lexes "&Igrave", "[[\"Character\",\"Ì\"]]"
  end
  it "namedEntities:Named entity: Igrave; with a semi-colon" do
    assert_lexes "&Igrave;", "[[\"Character\",\"Ì\"]]"
  end
  it "namedEntities:Bad named entity: Im without a semi-colon" do
    assert_lexes "&Im", "[[\"Character\",\"&Im\"]]"
  end
  it "namedEntities:Named entity: Im; with a semi-colon" do
    assert_lexes "&Im;", "[[\"Character\",\"ℑ\"]]"
  end
  it "namedEntities:Bad named entity: Imacr without a semi-colon" do
    assert_lexes "&Imacr", "[[\"Character\",\"&Imacr\"]]"
  end
  it "namedEntities:Named entity: Imacr; with a semi-colon" do
    assert_lexes "&Imacr;", "[[\"Character\",\"Ī\"]]"
  end
  it "namedEntities:Bad named entity: ImaginaryI without a semi-colon" do
    assert_lexes "&ImaginaryI", "[[\"Character\",\"&ImaginaryI\"]]"
  end
  it "namedEntities:Named entity: ImaginaryI; with a semi-colon" do
    assert_lexes "&ImaginaryI;", "[[\"Character\",\"ⅈ\"]]"
  end
  it "namedEntities:Bad named entity: Implies without a semi-colon" do
    assert_lexes "&Implies", "[[\"Character\",\"&Implies\"]]"
  end
  it "namedEntities:Named entity: Implies; with a semi-colon" do
    assert_lexes "&Implies;", "[[\"Character\",\"⇒\"]]"
  end
  it "namedEntities:Bad named entity: Int without a semi-colon" do
    assert_lexes "&Int", "[[\"Character\",\"&Int\"]]"
  end
  it "namedEntities:Named entity: Int; with a semi-colon" do
    assert_lexes "&Int;", "[[\"Character\",\"∬\"]]"
  end
  it "namedEntities:Bad named entity: Integral without a semi-colon" do
    assert_lexes "&Integral", "[[\"Character\",\"&Integral\"]]"
  end
  it "namedEntities:Named entity: Integral; with a semi-colon" do
    assert_lexes "&Integral;", "[[\"Character\",\"∫\"]]"
  end
  it "namedEntities:Bad named entity: Intersection without a semi-colon" do
    assert_lexes "&Intersection", "[[\"Character\",\"&Intersection\"]]"
  end
  it "namedEntities:Named entity: Intersection; with a semi-colon" do
    assert_lexes "&Intersection;", "[[\"Character\",\"⋂\"]]"
  end
  it "namedEntities:Bad named entity: InvisibleComma without a semi-colon" do
    assert_lexes "&InvisibleComma", "[[\"Character\",\"&InvisibleComma\"]]"
  end
  it "namedEntities:Named entity: InvisibleComma; with a semi-colon" do
    assert_lexes "&InvisibleComma;", "[[\"Character\",\"\u2063\"]]"
  end
  it "namedEntities:Bad named entity: InvisibleTimes without a semi-colon" do
    assert_lexes "&InvisibleTimes", "[[\"Character\",\"&InvisibleTimes\"]]"
  end
  it "namedEntities:Named entity: InvisibleTimes; with a semi-colon" do
    assert_lexes "&InvisibleTimes;", "[[\"Character\",\"\u2062\"]]"
  end
  it "namedEntities:Bad named entity: Iogon without a semi-colon" do
    assert_lexes "&Iogon", "[[\"Character\",\"&Iogon\"]]"
  end
  it "namedEntities:Named entity: Iogon; with a semi-colon" do
    assert_lexes "&Iogon;", "[[\"Character\",\"Į\"]]"
  end
  it "namedEntities:Bad named entity: Iopf without a semi-colon" do
    assert_lexes "&Iopf", "[[\"Character\",\"&Iopf\"]]"
  end
  it "namedEntities:Named entity: Iopf; with a semi-colon" do
    assert_lexes "&Iopf;", "[[\"Character\",\"𝕀\"]]"
  end
  it "namedEntities:Bad named entity: Iota without a semi-colon" do
    assert_lexes "&Iota", "[[\"Character\",\"&Iota\"]]"
  end
  it "namedEntities:Named entity: Iota; with a semi-colon" do
    assert_lexes "&Iota;", "[[\"Character\",\"Ι\"]]"
  end
  it "namedEntities:Bad named entity: Iscr without a semi-colon" do
    assert_lexes "&Iscr", "[[\"Character\",\"&Iscr\"]]"
  end
  it "namedEntities:Named entity: Iscr; with a semi-colon" do
    assert_lexes "&Iscr;", "[[\"Character\",\"ℐ\"]]"
  end
  it "namedEntities:Bad named entity: Itilde without a semi-colon" do
    assert_lexes "&Itilde", "[[\"Character\",\"&Itilde\"]]"
  end
  it "namedEntities:Named entity: Itilde; with a semi-colon" do
    assert_lexes "&Itilde;", "[[\"Character\",\"Ĩ\"]]"
  end
  it "namedEntities:Bad named entity: Iukcy without a semi-colon" do
    assert_lexes "&Iukcy", "[[\"Character\",\"&Iukcy\"]]"
  end
  it "namedEntities:Named entity: Iukcy; with a semi-colon" do
    assert_lexes "&Iukcy;", "[[\"Character\",\"І\"]]"
  end
  it "namedEntities:Named entity: Iuml without a semi-colon" do
    assert_lexes "&Iuml", "[[\"Character\",\"Ï\"]]"
  end
  it "namedEntities:Named entity: Iuml; with a semi-colon" do
    assert_lexes "&Iuml;", "[[\"Character\",\"Ï\"]]"
  end
  it "namedEntities:Bad named entity: Jcirc without a semi-colon" do
    assert_lexes "&Jcirc", "[[\"Character\",\"&Jcirc\"]]"
  end
  it "namedEntities:Named entity: Jcirc; with a semi-colon" do
    assert_lexes "&Jcirc;", "[[\"Character\",\"Ĵ\"]]"
  end
  it "namedEntities:Bad named entity: Jcy without a semi-colon" do
    assert_lexes "&Jcy", "[[\"Character\",\"&Jcy\"]]"
  end
  it "namedEntities:Named entity: Jcy; with a semi-colon" do
    assert_lexes "&Jcy;", "[[\"Character\",\"Й\"]]"
  end
  it "namedEntities:Bad named entity: Jfr without a semi-colon" do
    assert_lexes "&Jfr", "[[\"Character\",\"&Jfr\"]]"
  end
  it "namedEntities:Named entity: Jfr; with a semi-colon" do
    assert_lexes "&Jfr;", "[[\"Character\",\"𝔍\"]]"
  end
  it "namedEntities:Bad named entity: Jopf without a semi-colon" do
    assert_lexes "&Jopf", "[[\"Character\",\"&Jopf\"]]"
  end
  it "namedEntities:Named entity: Jopf; with a semi-colon" do
    assert_lexes "&Jopf;", "[[\"Character\",\"𝕁\"]]"
  end
  it "namedEntities:Bad named entity: Jscr without a semi-colon" do
    assert_lexes "&Jscr", "[[\"Character\",\"&Jscr\"]]"
  end
  it "namedEntities:Named entity: Jscr; with a semi-colon" do
    assert_lexes "&Jscr;", "[[\"Character\",\"𝒥\"]]"
  end
  it "namedEntities:Bad named entity: Jsercy without a semi-colon" do
    assert_lexes "&Jsercy", "[[\"Character\",\"&Jsercy\"]]"
  end
  it "namedEntities:Named entity: Jsercy; with a semi-colon" do
    assert_lexes "&Jsercy;", "[[\"Character\",\"Ј\"]]"
  end
  it "namedEntities:Bad named entity: Jukcy without a semi-colon" do
    assert_lexes "&Jukcy", "[[\"Character\",\"&Jukcy\"]]"
  end
  it "namedEntities:Named entity: Jukcy; with a semi-colon" do
    assert_lexes "&Jukcy;", "[[\"Character\",\"Є\"]]"
  end
  it "namedEntities:Bad named entity: KHcy without a semi-colon" do
    assert_lexes "&KHcy", "[[\"Character\",\"&KHcy\"]]"
  end
  it "namedEntities:Named entity: KHcy; with a semi-colon" do
    assert_lexes "&KHcy;", "[[\"Character\",\"Х\"]]"
  end
  it "namedEntities:Bad named entity: KJcy without a semi-colon" do
    assert_lexes "&KJcy", "[[\"Character\",\"&KJcy\"]]"
  end
  it "namedEntities:Named entity: KJcy; with a semi-colon" do
    assert_lexes "&KJcy;", "[[\"Character\",\"Ќ\"]]"
  end
  it "namedEntities:Bad named entity: Kappa without a semi-colon" do
    assert_lexes "&Kappa", "[[\"Character\",\"&Kappa\"]]"
  end
  it "namedEntities:Named entity: Kappa; with a semi-colon" do
    assert_lexes "&Kappa;", "[[\"Character\",\"Κ\"]]"
  end
  it "namedEntities:Bad named entity: Kcedil without a semi-colon" do
    assert_lexes "&Kcedil", "[[\"Character\",\"&Kcedil\"]]"
  end
  it "namedEntities:Named entity: Kcedil; with a semi-colon" do
    assert_lexes "&Kcedil;", "[[\"Character\",\"Ķ\"]]"
  end
  it "namedEntities:Bad named entity: Kcy without a semi-colon" do
    assert_lexes "&Kcy", "[[\"Character\",\"&Kcy\"]]"
  end
  it "namedEntities:Named entity: Kcy; with a semi-colon" do
    assert_lexes "&Kcy;", "[[\"Character\",\"К\"]]"
  end
  it "namedEntities:Bad named entity: Kfr without a semi-colon" do
    assert_lexes "&Kfr", "[[\"Character\",\"&Kfr\"]]"
  end
  it "namedEntities:Named entity: Kfr; with a semi-colon" do
    assert_lexes "&Kfr;", "[[\"Character\",\"𝔎\"]]"
  end
  it "namedEntities:Bad named entity: Kopf without a semi-colon" do
    assert_lexes "&Kopf", "[[\"Character\",\"&Kopf\"]]"
  end
  it "namedEntities:Named entity: Kopf; with a semi-colon" do
    assert_lexes "&Kopf;", "[[\"Character\",\"𝕂\"]]"
  end
  it "namedEntities:Bad named entity: Kscr without a semi-colon" do
    assert_lexes "&Kscr", "[[\"Character\",\"&Kscr\"]]"
  end
  it "namedEntities:Named entity: Kscr; with a semi-colon" do
    assert_lexes "&Kscr;", "[[\"Character\",\"𝒦\"]]"
  end
  it "namedEntities:Bad named entity: LJcy without a semi-colon" do
    assert_lexes "&LJcy", "[[\"Character\",\"&LJcy\"]]"
  end
  it "namedEntities:Named entity: LJcy; with a semi-colon" do
    assert_lexes "&LJcy;", "[[\"Character\",\"Љ\"]]"
  end
  it "namedEntities:Named entity: LT without a semi-colon" do
    assert_lexes "&LT", "[[\"Character\",\"<\"]]"
  end
  it "namedEntities:Named entity: LT; with a semi-colon" do
    assert_lexes "&LT;", "[[\"Character\",\"<\"]]"
  end
  it "namedEntities:Bad named entity: Lacute without a semi-colon" do
    assert_lexes "&Lacute", "[[\"Character\",\"&Lacute\"]]"
  end
  it "namedEntities:Named entity: Lacute; with a semi-colon" do
    assert_lexes "&Lacute;", "[[\"Character\",\"Ĺ\"]]"
  end
  it "namedEntities:Bad named entity: Lambda without a semi-colon" do
    assert_lexes "&Lambda", "[[\"Character\",\"&Lambda\"]]"
  end
  it "namedEntities:Named entity: Lambda; with a semi-colon" do
    assert_lexes "&Lambda;", "[[\"Character\",\"Λ\"]]"
  end
  it "namedEntities:Bad named entity: Lang without a semi-colon" do
    assert_lexes "&Lang", "[[\"Character\",\"&Lang\"]]"
  end
  it "namedEntities:Named entity: Lang; with a semi-colon" do
    assert_lexes "&Lang;", "[[\"Character\",\"⟪\"]]"
  end
  it "namedEntities:Bad named entity: Laplacetrf without a semi-colon" do
    assert_lexes "&Laplacetrf", "[[\"Character\",\"&Laplacetrf\"]]"
  end
  it "namedEntities:Named entity: Laplacetrf; with a semi-colon" do
    assert_lexes "&Laplacetrf;", "[[\"Character\",\"ℒ\"]]"
  end
  it "namedEntities:Bad named entity: Larr without a semi-colon" do
    assert_lexes "&Larr", "[[\"Character\",\"&Larr\"]]"
  end
  it "namedEntities:Named entity: Larr; with a semi-colon" do
    assert_lexes "&Larr;", "[[\"Character\",\"↞\"]]"
  end
  it "namedEntities:Bad named entity: Lcaron without a semi-colon" do
    assert_lexes "&Lcaron", "[[\"Character\",\"&Lcaron\"]]"
  end
  it "namedEntities:Named entity: Lcaron; with a semi-colon" do
    assert_lexes "&Lcaron;", "[[\"Character\",\"Ľ\"]]"
  end
  it "namedEntities:Bad named entity: Lcedil without a semi-colon" do
    assert_lexes "&Lcedil", "[[\"Character\",\"&Lcedil\"]]"
  end
  it "namedEntities:Named entity: Lcedil; with a semi-colon" do
    assert_lexes "&Lcedil;", "[[\"Character\",\"Ļ\"]]"
  end
  it "namedEntities:Bad named entity: Lcy without a semi-colon" do
    assert_lexes "&Lcy", "[[\"Character\",\"&Lcy\"]]"
  end
  it "namedEntities:Named entity: Lcy; with a semi-colon" do
    assert_lexes "&Lcy;", "[[\"Character\",\"Л\"]]"
  end
  it "namedEntities:Bad named entity: LeftAngleBracket without a semi-colon" do
    assert_lexes "&LeftAngleBracket", "[[\"Character\",\"&LeftAngleBracket\"]]"
  end
  it "namedEntities:Named entity: LeftAngleBracket; with a semi-colon" do
    assert_lexes "&LeftAngleBracket;", "[[\"Character\",\"⟨\"]]"
  end
  it "namedEntities:Bad named entity: LeftArrow without a semi-colon" do
    assert_lexes "&LeftArrow", "[[\"Character\",\"&LeftArrow\"]]"
  end
  it "namedEntities:Named entity: LeftArrow; with a semi-colon" do
    assert_lexes "&LeftArrow;", "[[\"Character\",\"←\"]]"
  end
  it "namedEntities:Bad named entity: LeftArrowBar without a semi-colon" do
    assert_lexes "&LeftArrowBar", "[[\"Character\",\"&LeftArrowBar\"]]"
  end
  it "namedEntities:Named entity: LeftArrowBar; with a semi-colon" do
    assert_lexes "&LeftArrowBar;", "[[\"Character\",\"⇤\"]]"
  end
  it "namedEntities:Bad named entity: LeftArrowRightArrow without a semi-colon" do
    assert_lexes "&LeftArrowRightArrow", "[[\"Character\",\"&LeftArrowRightArrow\"]]"
  end
  it "namedEntities:Named entity: LeftArrowRightArrow; with a semi-colon" do
    assert_lexes "&LeftArrowRightArrow;", "[[\"Character\",\"⇆\"]]"
  end
  it "namedEntities:Bad named entity: LeftCeiling without a semi-colon" do
    assert_lexes "&LeftCeiling", "[[\"Character\",\"&LeftCeiling\"]]"
  end
  it "namedEntities:Named entity: LeftCeiling; with a semi-colon" do
    assert_lexes "&LeftCeiling;", "[[\"Character\",\"⌈\"]]"
  end
  it "namedEntities:Bad named entity: LeftDoubleBracket without a semi-colon" do
    assert_lexes "&LeftDoubleBracket", "[[\"Character\",\"&LeftDoubleBracket\"]]"
  end
  it "namedEntities:Named entity: LeftDoubleBracket; with a semi-colon" do
    assert_lexes "&LeftDoubleBracket;", "[[\"Character\",\"⟦\"]]"
  end
  it "namedEntities:Bad named entity: LeftDownTeeVector without a semi-colon" do
    assert_lexes "&LeftDownTeeVector", "[[\"Character\",\"&LeftDownTeeVector\"]]"
  end
  it "namedEntities:Named entity: LeftDownTeeVector; with a semi-colon" do
    assert_lexes "&LeftDownTeeVector;", "[[\"Character\",\"⥡\"]]"
  end
  it "namedEntities:Bad named entity: LeftDownVector without a semi-colon" do
    assert_lexes "&LeftDownVector", "[[\"Character\",\"&LeftDownVector\"]]"
  end
  it "namedEntities:Named entity: LeftDownVector; with a semi-colon" do
    assert_lexes "&LeftDownVector;", "[[\"Character\",\"⇃\"]]"
  end
  it "namedEntities:Bad named entity: LeftDownVectorBar without a semi-colon" do
    assert_lexes "&LeftDownVectorBar", "[[\"Character\",\"&LeftDownVectorBar\"]]"
  end
  it "namedEntities:Named entity: LeftDownVectorBar; with a semi-colon" do
    assert_lexes "&LeftDownVectorBar;", "[[\"Character\",\"⥙\"]]"
  end
  it "namedEntities:Bad named entity: LeftFloor without a semi-colon" do
    assert_lexes "&LeftFloor", "[[\"Character\",\"&LeftFloor\"]]"
  end
  it "namedEntities:Named entity: LeftFloor; with a semi-colon" do
    assert_lexes "&LeftFloor;", "[[\"Character\",\"⌊\"]]"
  end
  it "namedEntities:Bad named entity: LeftRightArrow without a semi-colon" do
    assert_lexes "&LeftRightArrow", "[[\"Character\",\"&LeftRightArrow\"]]"
  end
  it "namedEntities:Named entity: LeftRightArrow; with a semi-colon" do
    assert_lexes "&LeftRightArrow;", "[[\"Character\",\"↔\"]]"
  end
  it "namedEntities:Bad named entity: LeftRightVector without a semi-colon" do
    assert_lexes "&LeftRightVector", "[[\"Character\",\"&LeftRightVector\"]]"
  end
  it "namedEntities:Named entity: LeftRightVector; with a semi-colon" do
    assert_lexes "&LeftRightVector;", "[[\"Character\",\"⥎\"]]"
  end
  it "namedEntities:Bad named entity: LeftTee without a semi-colon" do
    assert_lexes "&LeftTee", "[[\"Character\",\"&LeftTee\"]]"
  end
  it "namedEntities:Named entity: LeftTee; with a semi-colon" do
    assert_lexes "&LeftTee;", "[[\"Character\",\"⊣\"]]"
  end
  it "namedEntities:Bad named entity: LeftTeeArrow without a semi-colon" do
    assert_lexes "&LeftTeeArrow", "[[\"Character\",\"&LeftTeeArrow\"]]"
  end
  it "namedEntities:Named entity: LeftTeeArrow; with a semi-colon" do
    assert_lexes "&LeftTeeArrow;", "[[\"Character\",\"↤\"]]"
  end
  it "namedEntities:Bad named entity: LeftTeeVector without a semi-colon" do
    assert_lexes "&LeftTeeVector", "[[\"Character\",\"&LeftTeeVector\"]]"
  end
  it "namedEntities:Named entity: LeftTeeVector; with a semi-colon" do
    assert_lexes "&LeftTeeVector;", "[[\"Character\",\"⥚\"]]"
  end
  it "namedEntities:Bad named entity: LeftTriangle without a semi-colon" do
    assert_lexes "&LeftTriangle", "[[\"Character\",\"&LeftTriangle\"]]"
  end
  it "namedEntities:Named entity: LeftTriangle; with a semi-colon" do
    assert_lexes "&LeftTriangle;", "[[\"Character\",\"⊲\"]]"
  end
  it "namedEntities:Bad named entity: LeftTriangleBar without a semi-colon" do
    assert_lexes "&LeftTriangleBar", "[[\"Character\",\"&LeftTriangleBar\"]]"
  end
  it "namedEntities:Named entity: LeftTriangleBar; with a semi-colon" do
    assert_lexes "&LeftTriangleBar;", "[[\"Character\",\"⧏\"]]"
  end
  it "namedEntities:Bad named entity: LeftTriangleEqual without a semi-colon" do
    assert_lexes "&LeftTriangleEqual", "[[\"Character\",\"&LeftTriangleEqual\"]]"
  end
  it "namedEntities:Named entity: LeftTriangleEqual; with a semi-colon" do
    assert_lexes "&LeftTriangleEqual;", "[[\"Character\",\"⊴\"]]"
  end
  it "namedEntities:Bad named entity: LeftUpDownVector without a semi-colon" do
    assert_lexes "&LeftUpDownVector", "[[\"Character\",\"&LeftUpDownVector\"]]"
  end
  it "namedEntities:Named entity: LeftUpDownVector; with a semi-colon" do
    assert_lexes "&LeftUpDownVector;", "[[\"Character\",\"⥑\"]]"
  end
  it "namedEntities:Bad named entity: LeftUpTeeVector without a semi-colon" do
    assert_lexes "&LeftUpTeeVector", "[[\"Character\",\"&LeftUpTeeVector\"]]"
  end
  it "namedEntities:Named entity: LeftUpTeeVector; with a semi-colon" do
    assert_lexes "&LeftUpTeeVector;", "[[\"Character\",\"⥠\"]]"
  end
  it "namedEntities:Bad named entity: LeftUpVector without a semi-colon" do
    assert_lexes "&LeftUpVector", "[[\"Character\",\"&LeftUpVector\"]]"
  end
  it "namedEntities:Named entity: LeftUpVector; with a semi-colon" do
    assert_lexes "&LeftUpVector;", "[[\"Character\",\"↿\"]]"
  end
  it "namedEntities:Bad named entity: LeftUpVectorBar without a semi-colon" do
    assert_lexes "&LeftUpVectorBar", "[[\"Character\",\"&LeftUpVectorBar\"]]"
  end
  it "namedEntities:Named entity: LeftUpVectorBar; with a semi-colon" do
    assert_lexes "&LeftUpVectorBar;", "[[\"Character\",\"⥘\"]]"
  end
  it "namedEntities:Bad named entity: LeftVector without a semi-colon" do
    assert_lexes "&LeftVector", "[[\"Character\",\"&LeftVector\"]]"
  end
  it "namedEntities:Named entity: LeftVector; with a semi-colon" do
    assert_lexes "&LeftVector;", "[[\"Character\",\"↼\"]]"
  end
  it "namedEntities:Bad named entity: LeftVectorBar without a semi-colon" do
    assert_lexes "&LeftVectorBar", "[[\"Character\",\"&LeftVectorBar\"]]"
  end
  it "namedEntities:Named entity: LeftVectorBar; with a semi-colon" do
    assert_lexes "&LeftVectorBar;", "[[\"Character\",\"⥒\"]]"
  end
  it "namedEntities:Bad named entity: Leftarrow without a semi-colon" do
    assert_lexes "&Leftarrow", "[[\"Character\",\"&Leftarrow\"]]"
  end
  it "namedEntities:Named entity: Leftarrow; with a semi-colon" do
    assert_lexes "&Leftarrow;", "[[\"Character\",\"⇐\"]]"
  end
  it "namedEntities:Bad named entity: Leftrightarrow without a semi-colon" do
    assert_lexes "&Leftrightarrow", "[[\"Character\",\"&Leftrightarrow\"]]"
  end
  it "namedEntities:Named entity: Leftrightarrow; with a semi-colon" do
    assert_lexes "&Leftrightarrow;", "[[\"Character\",\"⇔\"]]"
  end
  it "namedEntities:Bad named entity: LessEqualGreater without a semi-colon" do
    assert_lexes "&LessEqualGreater", "[[\"Character\",\"&LessEqualGreater\"]]"
  end
  it "namedEntities:Named entity: LessEqualGreater; with a semi-colon" do
    assert_lexes "&LessEqualGreater;", "[[\"Character\",\"⋚\"]]"
  end
  it "namedEntities:Bad named entity: LessFullEqual without a semi-colon" do
    assert_lexes "&LessFullEqual", "[[\"Character\",\"&LessFullEqual\"]]"
  end
  it "namedEntities:Named entity: LessFullEqual; with a semi-colon" do
    assert_lexes "&LessFullEqual;", "[[\"Character\",\"≦\"]]"
  end
  it "namedEntities:Bad named entity: LessGreater without a semi-colon" do
    assert_lexes "&LessGreater", "[[\"Character\",\"&LessGreater\"]]"
  end
  it "namedEntities:Named entity: LessGreater; with a semi-colon" do
    assert_lexes "&LessGreater;", "[[\"Character\",\"≶\"]]"
  end
  it "namedEntities:Bad named entity: LessLess without a semi-colon" do
    assert_lexes "&LessLess", "[[\"Character\",\"&LessLess\"]]"
  end
  it "namedEntities:Named entity: LessLess; with a semi-colon" do
    assert_lexes "&LessLess;", "[[\"Character\",\"⪡\"]]"
  end
  it "namedEntities:Bad named entity: LessSlantEqual without a semi-colon" do
    assert_lexes "&LessSlantEqual", "[[\"Character\",\"&LessSlantEqual\"]]"
  end
  it "namedEntities:Named entity: LessSlantEqual; with a semi-colon" do
    assert_lexes "&LessSlantEqual;", "[[\"Character\",\"⩽\"]]"
  end
  it "namedEntities:Bad named entity: LessTilde without a semi-colon" do
    assert_lexes "&LessTilde", "[[\"Character\",\"&LessTilde\"]]"
  end
  it "namedEntities:Named entity: LessTilde; with a semi-colon" do
    assert_lexes "&LessTilde;", "[[\"Character\",\"≲\"]]"
  end
  it "namedEntities:Bad named entity: Lfr without a semi-colon" do
    assert_lexes "&Lfr", "[[\"Character\",\"&Lfr\"]]"
  end
  it "namedEntities:Named entity: Lfr; with a semi-colon" do
    assert_lexes "&Lfr;", "[[\"Character\",\"𝔏\"]]"
  end
  it "namedEntities:Bad named entity: Ll without a semi-colon" do
    assert_lexes "&Ll", "[[\"Character\",\"&Ll\"]]"
  end
  it "namedEntities:Named entity: Ll; with a semi-colon" do
    assert_lexes "&Ll;", "[[\"Character\",\"⋘\"]]"
  end
  it "namedEntities:Bad named entity: Lleftarrow without a semi-colon" do
    assert_lexes "&Lleftarrow", "[[\"Character\",\"&Lleftarrow\"]]"
  end
  it "namedEntities:Named entity: Lleftarrow; with a semi-colon" do
    assert_lexes "&Lleftarrow;", "[[\"Character\",\"⇚\"]]"
  end
  it "namedEntities:Bad named entity: Lmidot without a semi-colon" do
    assert_lexes "&Lmidot", "[[\"Character\",\"&Lmidot\"]]"
  end
  it "namedEntities:Named entity: Lmidot; with a semi-colon" do
    assert_lexes "&Lmidot;", "[[\"Character\",\"Ŀ\"]]"
  end
  it "namedEntities:Bad named entity: LongLeftArrow without a semi-colon" do
    assert_lexes "&LongLeftArrow", "[[\"Character\",\"&LongLeftArrow\"]]"
  end
  it "namedEntities:Named entity: LongLeftArrow; with a semi-colon" do
    assert_lexes "&LongLeftArrow;", "[[\"Character\",\"⟵\"]]"
  end
  it "namedEntities:Bad named entity: LongLeftRightArrow without a semi-colon" do
    assert_lexes "&LongLeftRightArrow", "[[\"Character\",\"&LongLeftRightArrow\"]]"
  end
  it "namedEntities:Named entity: LongLeftRightArrow; with a semi-colon" do
    assert_lexes "&LongLeftRightArrow;", "[[\"Character\",\"⟷\"]]"
  end
  it "namedEntities:Bad named entity: LongRightArrow without a semi-colon" do
    assert_lexes "&LongRightArrow", "[[\"Character\",\"&LongRightArrow\"]]"
  end
  it "namedEntities:Named entity: LongRightArrow; with a semi-colon" do
    assert_lexes "&LongRightArrow;", "[[\"Character\",\"⟶\"]]"
  end
  it "namedEntities:Bad named entity: Longleftarrow without a semi-colon" do
    assert_lexes "&Longleftarrow", "[[\"Character\",\"&Longleftarrow\"]]"
  end
  it "namedEntities:Named entity: Longleftarrow; with a semi-colon" do
    assert_lexes "&Longleftarrow;", "[[\"Character\",\"⟸\"]]"
  end
  it "namedEntities:Bad named entity: Longleftrightarrow without a semi-colon" do
    assert_lexes "&Longleftrightarrow", "[[\"Character\",\"&Longleftrightarrow\"]]"
  end
  it "namedEntities:Named entity: Longleftrightarrow; with a semi-colon" do
    assert_lexes "&Longleftrightarrow;", "[[\"Character\",\"⟺\"]]"
  end
  it "namedEntities:Bad named entity: Longrightarrow without a semi-colon" do
    assert_lexes "&Longrightarrow", "[[\"Character\",\"&Longrightarrow\"]]"
  end
  it "namedEntities:Named entity: Longrightarrow; with a semi-colon" do
    assert_lexes "&Longrightarrow;", "[[\"Character\",\"⟹\"]]"
  end
  it "namedEntities:Bad named entity: Lopf without a semi-colon" do
    assert_lexes "&Lopf", "[[\"Character\",\"&Lopf\"]]"
  end
  it "namedEntities:Named entity: Lopf; with a semi-colon" do
    assert_lexes "&Lopf;", "[[\"Character\",\"𝕃\"]]"
  end
  it "namedEntities:Bad named entity: LowerLeftArrow without a semi-colon" do
    assert_lexes "&LowerLeftArrow", "[[\"Character\",\"&LowerLeftArrow\"]]"
  end
  it "namedEntities:Named entity: LowerLeftArrow; with a semi-colon" do
    assert_lexes "&LowerLeftArrow;", "[[\"Character\",\"↙\"]]"
  end
  it "namedEntities:Bad named entity: LowerRightArrow without a semi-colon" do
    assert_lexes "&LowerRightArrow", "[[\"Character\",\"&LowerRightArrow\"]]"
  end
  it "namedEntities:Named entity: LowerRightArrow; with a semi-colon" do
    assert_lexes "&LowerRightArrow;", "[[\"Character\",\"↘\"]]"
  end
  it "namedEntities:Bad named entity: Lscr without a semi-colon" do
    assert_lexes "&Lscr", "[[\"Character\",\"&Lscr\"]]"
  end
  it "namedEntities:Named entity: Lscr; with a semi-colon" do
    assert_lexes "&Lscr;", "[[\"Character\",\"ℒ\"]]"
  end
  it "namedEntities:Bad named entity: Lsh without a semi-colon" do
    assert_lexes "&Lsh", "[[\"Character\",\"&Lsh\"]]"
  end
  it "namedEntities:Named entity: Lsh; with a semi-colon" do
    assert_lexes "&Lsh;", "[[\"Character\",\"↰\"]]"
  end
  it "namedEntities:Bad named entity: Lstrok without a semi-colon" do
    assert_lexes "&Lstrok", "[[\"Character\",\"&Lstrok\"]]"
  end
  it "namedEntities:Named entity: Lstrok; with a semi-colon" do
    assert_lexes "&Lstrok;", "[[\"Character\",\"Ł\"]]"
  end
  it "namedEntities:Bad named entity: Lt without a semi-colon" do
    assert_lexes "&Lt", "[[\"Character\",\"&Lt\"]]"
  end
  it "namedEntities:Named entity: Lt; with a semi-colon" do
    assert_lexes "&Lt;", "[[\"Character\",\"≪\"]]"
  end
  it "namedEntities:Bad named entity: Map without a semi-colon" do
    assert_lexes "&Map", "[[\"Character\",\"&Map\"]]"
  end
  it "namedEntities:Named entity: Map; with a semi-colon" do
    assert_lexes "&Map;", "[[\"Character\",\"⤅\"]]"
  end
  it "namedEntities:Bad named entity: Mcy without a semi-colon" do
    assert_lexes "&Mcy", "[[\"Character\",\"&Mcy\"]]"
  end
  it "namedEntities:Named entity: Mcy; with a semi-colon" do
    assert_lexes "&Mcy;", "[[\"Character\",\"М\"]]"
  end
  it "namedEntities:Bad named entity: MediumSpace without a semi-colon" do
    assert_lexes "&MediumSpace", "[[\"Character\",\"&MediumSpace\"]]"
  end
  it "namedEntities:Named entity: MediumSpace; with a semi-colon" do
    assert_lexes "&MediumSpace;", "[[\"Character\",\"\u205F\"]]"
  end
  it "namedEntities:Bad named entity: Mellintrf without a semi-colon" do
    assert_lexes "&Mellintrf", "[[\"Character\",\"&Mellintrf\"]]"
  end
  it "namedEntities:Named entity: Mellintrf; with a semi-colon" do
    assert_lexes "&Mellintrf;", "[[\"Character\",\"ℳ\"]]"
  end
  it "namedEntities:Bad named entity: Mfr without a semi-colon" do
    assert_lexes "&Mfr", "[[\"Character\",\"&Mfr\"]]"
  end
  it "namedEntities:Named entity: Mfr; with a semi-colon" do
    assert_lexes "&Mfr;", "[[\"Character\",\"𝔐\"]]"
  end
  it "namedEntities:Bad named entity: MinusPlus without a semi-colon" do
    assert_lexes "&MinusPlus", "[[\"Character\",\"&MinusPlus\"]]"
  end
  it "namedEntities:Named entity: MinusPlus; with a semi-colon" do
    assert_lexes "&MinusPlus;", "[[\"Character\",\"∓\"]]"
  end
  it "namedEntities:Bad named entity: Mopf without a semi-colon" do
    assert_lexes "&Mopf", "[[\"Character\",\"&Mopf\"]]"
  end
  it "namedEntities:Named entity: Mopf; with a semi-colon" do
    assert_lexes "&Mopf;", "[[\"Character\",\"𝕄\"]]"
  end
  it "namedEntities:Bad named entity: Mscr without a semi-colon" do
    assert_lexes "&Mscr", "[[\"Character\",\"&Mscr\"]]"
  end
  it "namedEntities:Named entity: Mscr; with a semi-colon" do
    assert_lexes "&Mscr;", "[[\"Character\",\"ℳ\"]]"
  end
  it "namedEntities:Bad named entity: Mu without a semi-colon" do
    assert_lexes "&Mu", "[[\"Character\",\"&Mu\"]]"
  end
  it "namedEntities:Named entity: Mu; with a semi-colon" do
    assert_lexes "&Mu;", "[[\"Character\",\"Μ\"]]"
  end
  it "namedEntities:Bad named entity: NJcy without a semi-colon" do
    assert_lexes "&NJcy", "[[\"Character\",\"&NJcy\"]]"
  end
  it "namedEntities:Named entity: NJcy; with a semi-colon" do
    assert_lexes "&NJcy;", "[[\"Character\",\"Њ\"]]"
  end
  it "namedEntities:Bad named entity: Nacute without a semi-colon" do
    assert_lexes "&Nacute", "[[\"Character\",\"&Nacute\"]]"
  end
  it "namedEntities:Named entity: Nacute; with a semi-colon" do
    assert_lexes "&Nacute;", "[[\"Character\",\"Ń\"]]"
  end
  it "namedEntities:Bad named entity: Ncaron without a semi-colon" do
    assert_lexes "&Ncaron", "[[\"Character\",\"&Ncaron\"]]"
  end
  it "namedEntities:Named entity: Ncaron; with a semi-colon" do
    assert_lexes "&Ncaron;", "[[\"Character\",\"Ň\"]]"
  end
  it "namedEntities:Bad named entity: Ncedil without a semi-colon" do
    assert_lexes "&Ncedil", "[[\"Character\",\"&Ncedil\"]]"
  end
  it "namedEntities:Named entity: Ncedil; with a semi-colon" do
    assert_lexes "&Ncedil;", "[[\"Character\",\"Ņ\"]]"
  end
  it "namedEntities:Bad named entity: Ncy without a semi-colon" do
    assert_lexes "&Ncy", "[[\"Character\",\"&Ncy\"]]"
  end
  it "namedEntities:Named entity: Ncy; with a semi-colon" do
    assert_lexes "&Ncy;", "[[\"Character\",\"Н\"]]"
  end
  it "namedEntities:Bad named entity: NegativeMediumSpace without a semi-colon" do
    assert_lexes "&NegativeMediumSpace", "[[\"Character\",\"&NegativeMediumSpace\"]]"
  end
  it "namedEntities:Named entity: NegativeMediumSpace; with a semi-colon" do
    assert_lexes "&NegativeMediumSpace;", "[[\"Character\",\"\u200B\"]]"
  end
  it "namedEntities:Bad named entity: NegativeThickSpace without a semi-colon" do
    assert_lexes "&NegativeThickSpace", "[[\"Character\",\"&NegativeThickSpace\"]]"
  end
  it "namedEntities:Named entity: NegativeThickSpace; with a semi-colon" do
    assert_lexes "&NegativeThickSpace;", "[[\"Character\",\"\u200B\"]]"
  end
  it "namedEntities:Bad named entity: NegativeThinSpace without a semi-colon" do
    assert_lexes "&NegativeThinSpace", "[[\"Character\",\"&NegativeThinSpace\"]]"
  end
  it "namedEntities:Named entity: NegativeThinSpace; with a semi-colon" do
    assert_lexes "&NegativeThinSpace;", "[[\"Character\",\"\u200B\"]]"
  end
  it "namedEntities:Bad named entity: NegativeVeryThinSpace without a semi-colon" do
    assert_lexes "&NegativeVeryThinSpace", "[[\"Character\",\"&NegativeVeryThinSpace\"]]"
  end
  it "namedEntities:Named entity: NegativeVeryThinSpace; with a semi-colon" do
    assert_lexes "&NegativeVeryThinSpace;", "[[\"Character\",\"\u200B\"]]"
  end
  it "namedEntities:Bad named entity: NestedGreaterGreater without a semi-colon" do
    assert_lexes "&NestedGreaterGreater", "[[\"Character\",\"&NestedGreaterGreater\"]]"
  end
  it "namedEntities:Named entity: NestedGreaterGreater; with a semi-colon" do
    assert_lexes "&NestedGreaterGreater;", "[[\"Character\",\"≫\"]]"
  end
  it "namedEntities:Bad named entity: NestedLessLess without a semi-colon" do
    assert_lexes "&NestedLessLess", "[[\"Character\",\"&NestedLessLess\"]]"
  end
  it "namedEntities:Named entity: NestedLessLess; with a semi-colon" do
    assert_lexes "&NestedLessLess;", "[[\"Character\",\"≪\"]]"
  end
  it "namedEntities:Bad named entity: NewLine without a semi-colon" do
    assert_lexes "&NewLine", "[[\"Character\",\"&NewLine\"]]"
  end
  it "namedEntities:Named entity: NewLine; with a semi-colon" do
    assert_lexes "&NewLine;", "[[\"Character\",\"\\n\"]]"
  end
  it "namedEntities:Bad named entity: Nfr without a semi-colon" do
    assert_lexes "&Nfr", "[[\"Character\",\"&Nfr\"]]"
  end
  it "namedEntities:Named entity: Nfr; with a semi-colon" do
    assert_lexes "&Nfr;", "[[\"Character\",\"𝔑\"]]"
  end
  it "namedEntities:Bad named entity: NoBreak without a semi-colon" do
    assert_lexes "&NoBreak", "[[\"Character\",\"&NoBreak\"]]"
  end
  it "namedEntities:Named entity: NoBreak; with a semi-colon" do
    assert_lexes "&NoBreak;", "[[\"Character\",\"\u2060\"]]"
  end
  it "namedEntities:Bad named entity: NonBreakingSpace without a semi-colon" do
    assert_lexes "&NonBreakingSpace", "[[\"Character\",\"&NonBreakingSpace\"]]"
  end
  it "namedEntities:Named entity: NonBreakingSpace; with a semi-colon" do
    assert_lexes "&NonBreakingSpace;", "[[\"Character\",\"\u00A0\"]]"
  end
  it "namedEntities:Bad named entity: Nopf without a semi-colon" do
    assert_lexes "&Nopf", "[[\"Character\",\"&Nopf\"]]"
  end
  it "namedEntities:Named entity: Nopf; with a semi-colon" do
    assert_lexes "&Nopf;", "[[\"Character\",\"ℕ\"]]"
  end
  it "namedEntities:Bad named entity: Not without a semi-colon" do
    assert_lexes "&Not", "[[\"Character\",\"&Not\"]]"
  end
  it "namedEntities:Named entity: Not; with a semi-colon" do
    assert_lexes "&Not;", "[[\"Character\",\"⫬\"]]"
  end
  it "namedEntities:Bad named entity: NotCongruent without a semi-colon" do
    assert_lexes "&NotCongruent", "[[\"Character\",\"&NotCongruent\"]]"
  end
  it "namedEntities:Named entity: NotCongruent; with a semi-colon" do
    assert_lexes "&NotCongruent;", "[[\"Character\",\"≢\"]]"
  end
  it "namedEntities:Bad named entity: NotCupCap without a semi-colon" do
    assert_lexes "&NotCupCap", "[[\"Character\",\"&NotCupCap\"]]"
  end
  it "namedEntities:Named entity: NotCupCap; with a semi-colon" do
    assert_lexes "&NotCupCap;", "[[\"Character\",\"≭\"]]"
  end
  it "namedEntities:Bad named entity: NotDoubleVerticalBar without a semi-colon" do
    assert_lexes "&NotDoubleVerticalBar", "[[\"Character\",\"&NotDoubleVerticalBar\"]]"
  end
  it "namedEntities:Named entity: NotDoubleVerticalBar; with a semi-colon" do
    assert_lexes "&NotDoubleVerticalBar;", "[[\"Character\",\"∦\"]]"
  end
  it "namedEntities:Bad named entity: NotElement without a semi-colon" do
    assert_lexes "&NotElement", "[[\"Character\",\"&NotElement\"]]"
  end
  it "namedEntities:Named entity: NotElement; with a semi-colon" do
    assert_lexes "&NotElement;", "[[\"Character\",\"∉\"]]"
  end
  it "namedEntities:Bad named entity: NotEqual without a semi-colon" do
    assert_lexes "&NotEqual", "[[\"Character\",\"&NotEqual\"]]"
  end
  it "namedEntities:Named entity: NotEqual; with a semi-colon" do
    assert_lexes "&NotEqual;", "[[\"Character\",\"≠\"]]"
  end
  it "namedEntities:Bad named entity: NotEqualTilde without a semi-colon" do
    assert_lexes "&NotEqualTilde", "[[\"Character\",\"&NotEqualTilde\"]]"
  end
  it "namedEntities:Named entity: NotEqualTilde; with a semi-colon" do
    assert_lexes "&NotEqualTilde;", "[[\"Character\",\"≂̸\"]]"
  end
  it "namedEntities:Bad named entity: NotExists without a semi-colon" do
    assert_lexes "&NotExists", "[[\"Character\",\"&NotExists\"]]"
  end
  it "namedEntities:Named entity: NotExists; with a semi-colon" do
    assert_lexes "&NotExists;", "[[\"Character\",\"∄\"]]"
  end
  it "namedEntities:Bad named entity: NotGreater without a semi-colon" do
    assert_lexes "&NotGreater", "[[\"Character\",\"&NotGreater\"]]"
  end
  it "namedEntities:Named entity: NotGreater; with a semi-colon" do
    assert_lexes "&NotGreater;", "[[\"Character\",\"≯\"]]"
  end
  it "namedEntities:Bad named entity: NotGreaterEqual without a semi-colon" do
    assert_lexes "&NotGreaterEqual", "[[\"Character\",\"&NotGreaterEqual\"]]"
  end
  it "namedEntities:Named entity: NotGreaterEqual; with a semi-colon" do
    assert_lexes "&NotGreaterEqual;", "[[\"Character\",\"≱\"]]"
  end
  it "namedEntities:Bad named entity: NotGreaterFullEqual without a semi-colon" do
    assert_lexes "&NotGreaterFullEqual", "[[\"Character\",\"&NotGreaterFullEqual\"]]"
  end
  it "namedEntities:Named entity: NotGreaterFullEqual; with a semi-colon" do
    assert_lexes "&NotGreaterFullEqual;", "[[\"Character\",\"≧̸\"]]"
  end
  it "namedEntities:Bad named entity: NotGreaterGreater without a semi-colon" do
    assert_lexes "&NotGreaterGreater", "[[\"Character\",\"&NotGreaterGreater\"]]"
  end
  it "namedEntities:Named entity: NotGreaterGreater; with a semi-colon" do
    assert_lexes "&NotGreaterGreater;", "[[\"Character\",\"≫̸\"]]"
  end
  it "namedEntities:Bad named entity: NotGreaterLess without a semi-colon" do
    assert_lexes "&NotGreaterLess", "[[\"Character\",\"&NotGreaterLess\"]]"
  end
  it "namedEntities:Named entity: NotGreaterLess; with a semi-colon" do
    assert_lexes "&NotGreaterLess;", "[[\"Character\",\"≹\"]]"
  end
  it "namedEntities:Bad named entity: NotGreaterSlantEqual without a semi-colon" do
    assert_lexes "&NotGreaterSlantEqual", "[[\"Character\",\"&NotGreaterSlantEqual\"]]"
  end
  it "namedEntities:Named entity: NotGreaterSlantEqual; with a semi-colon" do
    assert_lexes "&NotGreaterSlantEqual;", "[[\"Character\",\"⩾̸\"]]"
  end
  it "namedEntities:Bad named entity: NotGreaterTilde without a semi-colon" do
    assert_lexes "&NotGreaterTilde", "[[\"Character\",\"&NotGreaterTilde\"]]"
  end
  it "namedEntities:Named entity: NotGreaterTilde; with a semi-colon" do
    assert_lexes "&NotGreaterTilde;", "[[\"Character\",\"≵\"]]"
  end
  it "namedEntities:Bad named entity: NotHumpDownHump without a semi-colon" do
    assert_lexes "&NotHumpDownHump", "[[\"Character\",\"&NotHumpDownHump\"]]"
  end
  it "namedEntities:Named entity: NotHumpDownHump; with a semi-colon" do
    assert_lexes "&NotHumpDownHump;", "[[\"Character\",\"≎̸\"]]"
  end
  it "namedEntities:Bad named entity: NotHumpEqual without a semi-colon" do
    assert_lexes "&NotHumpEqual", "[[\"Character\",\"&NotHumpEqual\"]]"
  end
  it "namedEntities:Named entity: NotHumpEqual; with a semi-colon" do
    assert_lexes "&NotHumpEqual;", "[[\"Character\",\"≏̸\"]]"
  end
  it "namedEntities:Bad named entity: NotLeftTriangle without a semi-colon" do
    assert_lexes "&NotLeftTriangle", "[[\"Character\",\"&NotLeftTriangle\"]]"
  end
  it "namedEntities:Named entity: NotLeftTriangle; with a semi-colon" do
    assert_lexes "&NotLeftTriangle;", "[[\"Character\",\"⋪\"]]"
  end
  it "namedEntities:Bad named entity: NotLeftTriangleBar without a semi-colon" do
    assert_lexes "&NotLeftTriangleBar", "[[\"Character\",\"&NotLeftTriangleBar\"]]"
  end
  it "namedEntities:Named entity: NotLeftTriangleBar; with a semi-colon" do
    assert_lexes "&NotLeftTriangleBar;", "[[\"Character\",\"⧏̸\"]]"
  end
  it "namedEntities:Bad named entity: NotLeftTriangleEqual without a semi-colon" do
    assert_lexes "&NotLeftTriangleEqual", "[[\"Character\",\"&NotLeftTriangleEqual\"]]"
  end
  it "namedEntities:Named entity: NotLeftTriangleEqual; with a semi-colon" do
    assert_lexes "&NotLeftTriangleEqual;", "[[\"Character\",\"⋬\"]]"
  end
  it "namedEntities:Bad named entity: NotLess without a semi-colon" do
    assert_lexes "&NotLess", "[[\"Character\",\"&NotLess\"]]"
  end
  it "namedEntities:Named entity: NotLess; with a semi-colon" do
    assert_lexes "&NotLess;", "[[\"Character\",\"≮\"]]"
  end
  it "namedEntities:Bad named entity: NotLessEqual without a semi-colon" do
    assert_lexes "&NotLessEqual", "[[\"Character\",\"&NotLessEqual\"]]"
  end
  it "namedEntities:Named entity: NotLessEqual; with a semi-colon" do
    assert_lexes "&NotLessEqual;", "[[\"Character\",\"≰\"]]"
  end
  it "namedEntities:Bad named entity: NotLessGreater without a semi-colon" do
    assert_lexes "&NotLessGreater", "[[\"Character\",\"&NotLessGreater\"]]"
  end
  it "namedEntities:Named entity: NotLessGreater; with a semi-colon" do
    assert_lexes "&NotLessGreater;", "[[\"Character\",\"≸\"]]"
  end
  it "namedEntities:Bad named entity: NotLessLess without a semi-colon" do
    assert_lexes "&NotLessLess", "[[\"Character\",\"&NotLessLess\"]]"
  end
  it "namedEntities:Named entity: NotLessLess; with a semi-colon" do
    assert_lexes "&NotLessLess;", "[[\"Character\",\"≪̸\"]]"
  end
  it "namedEntities:Bad named entity: NotLessSlantEqual without a semi-colon" do
    assert_lexes "&NotLessSlantEqual", "[[\"Character\",\"&NotLessSlantEqual\"]]"
  end
  it "namedEntities:Named entity: NotLessSlantEqual; with a semi-colon" do
    assert_lexes "&NotLessSlantEqual;", "[[\"Character\",\"⩽̸\"]]"
  end
  it "namedEntities:Bad named entity: NotLessTilde without a semi-colon" do
    assert_lexes "&NotLessTilde", "[[\"Character\",\"&NotLessTilde\"]]"
  end
  it "namedEntities:Named entity: NotLessTilde; with a semi-colon" do
    assert_lexes "&NotLessTilde;", "[[\"Character\",\"≴\"]]"
  end
  it "namedEntities:Bad named entity: NotNestedGreaterGreater without a semi-colon" do
    assert_lexes "&NotNestedGreaterGreater", "[[\"Character\",\"&NotNestedGreaterGreater\"]]"
  end
  it "namedEntities:Named entity: NotNestedGreaterGreater; with a semi-colon" do
    assert_lexes "&NotNestedGreaterGreater;", "[[\"Character\",\"⪢̸\"]]"
  end
  it "namedEntities:Bad named entity: NotNestedLessLess without a semi-colon" do
    assert_lexes "&NotNestedLessLess", "[[\"Character\",\"&NotNestedLessLess\"]]"
  end
  it "namedEntities:Named entity: NotNestedLessLess; with a semi-colon" do
    assert_lexes "&NotNestedLessLess;", "[[\"Character\",\"⪡̸\"]]"
  end
  it "namedEntities:Bad named entity: NotPrecedes without a semi-colon" do
    assert_lexes "&NotPrecedes", "[[\"Character\",\"&NotPrecedes\"]]"
  end
  it "namedEntities:Named entity: NotPrecedes; with a semi-colon" do
    assert_lexes "&NotPrecedes;", "[[\"Character\",\"⊀\"]]"
  end
  it "namedEntities:Bad named entity: NotPrecedesEqual without a semi-colon" do
    assert_lexes "&NotPrecedesEqual", "[[\"Character\",\"&NotPrecedesEqual\"]]"
  end
  it "namedEntities:Named entity: NotPrecedesEqual; with a semi-colon" do
    assert_lexes "&NotPrecedesEqual;", "[[\"Character\",\"⪯̸\"]]"
  end
  it "namedEntities:Bad named entity: NotPrecedesSlantEqual without a semi-colon" do
    assert_lexes "&NotPrecedesSlantEqual", "[[\"Character\",\"&NotPrecedesSlantEqual\"]]"
  end
  it "namedEntities:Named entity: NotPrecedesSlantEqual; with a semi-colon" do
    assert_lexes "&NotPrecedesSlantEqual;", "[[\"Character\",\"⋠\"]]"
  end
  it "namedEntities:Bad named entity: NotReverseElement without a semi-colon" do
    assert_lexes "&NotReverseElement", "[[\"Character\",\"&NotReverseElement\"]]"
  end
  it "namedEntities:Named entity: NotReverseElement; with a semi-colon" do
    assert_lexes "&NotReverseElement;", "[[\"Character\",\"∌\"]]"
  end
  it "namedEntities:Bad named entity: NotRightTriangle without a semi-colon" do
    assert_lexes "&NotRightTriangle", "[[\"Character\",\"&NotRightTriangle\"]]"
  end
  it "namedEntities:Named entity: NotRightTriangle; with a semi-colon" do
    assert_lexes "&NotRightTriangle;", "[[\"Character\",\"⋫\"]]"
  end
  it "namedEntities:Bad named entity: NotRightTriangleBar without a semi-colon" do
    assert_lexes "&NotRightTriangleBar", "[[\"Character\",\"&NotRightTriangleBar\"]]"
  end
  it "namedEntities:Named entity: NotRightTriangleBar; with a semi-colon" do
    assert_lexes "&NotRightTriangleBar;", "[[\"Character\",\"⧐̸\"]]"
  end
  it "namedEntities:Bad named entity: NotRightTriangleEqual without a semi-colon" do
    assert_lexes "&NotRightTriangleEqual", "[[\"Character\",\"&NotRightTriangleEqual\"]]"
  end
  it "namedEntities:Named entity: NotRightTriangleEqual; with a semi-colon" do
    assert_lexes "&NotRightTriangleEqual;", "[[\"Character\",\"⋭\"]]"
  end
  it "namedEntities:Bad named entity: NotSquareSubset without a semi-colon" do
    assert_lexes "&NotSquareSubset", "[[\"Character\",\"&NotSquareSubset\"]]"
  end
  it "namedEntities:Named entity: NotSquareSubset; with a semi-colon" do
    assert_lexes "&NotSquareSubset;", "[[\"Character\",\"⊏̸\"]]"
  end
  it "namedEntities:Bad named entity: NotSquareSubsetEqual without a semi-colon" do
    assert_lexes "&NotSquareSubsetEqual", "[[\"Character\",\"&NotSquareSubsetEqual\"]]"
  end
  it "namedEntities:Named entity: NotSquareSubsetEqual; with a semi-colon" do
    assert_lexes "&NotSquareSubsetEqual;", "[[\"Character\",\"⋢\"]]"
  end
  it "namedEntities:Bad named entity: NotSquareSuperset without a semi-colon" do
    assert_lexes "&NotSquareSuperset", "[[\"Character\",\"&NotSquareSuperset\"]]"
  end
  it "namedEntities:Named entity: NotSquareSuperset; with a semi-colon" do
    assert_lexes "&NotSquareSuperset;", "[[\"Character\",\"⊐̸\"]]"
  end
  it "namedEntities:Bad named entity: NotSquareSupersetEqual without a semi-colon" do
    assert_lexes "&NotSquareSupersetEqual", "[[\"Character\",\"&NotSquareSupersetEqual\"]]"
  end
  it "namedEntities:Named entity: NotSquareSupersetEqual; with a semi-colon" do
    assert_lexes "&NotSquareSupersetEqual;", "[[\"Character\",\"⋣\"]]"
  end
  it "namedEntities:Bad named entity: NotSubset without a semi-colon" do
    assert_lexes "&NotSubset", "[[\"Character\",\"&NotSubset\"]]"
  end
  it "namedEntities:Named entity: NotSubset; with a semi-colon" do
    assert_lexes "&NotSubset;", "[[\"Character\",\"⊂⃒\"]]"
  end
  it "namedEntities:Bad named entity: NotSubsetEqual without a semi-colon" do
    assert_lexes "&NotSubsetEqual", "[[\"Character\",\"&NotSubsetEqual\"]]"
  end
  it "namedEntities:Named entity: NotSubsetEqual; with a semi-colon" do
    assert_lexes "&NotSubsetEqual;", "[[\"Character\",\"⊈\"]]"
  end
  it "namedEntities:Bad named entity: NotSucceeds without a semi-colon" do
    assert_lexes "&NotSucceeds", "[[\"Character\",\"&NotSucceeds\"]]"
  end
  it "namedEntities:Named entity: NotSucceeds; with a semi-colon" do
    assert_lexes "&NotSucceeds;", "[[\"Character\",\"⊁\"]]"
  end
  it "namedEntities:Bad named entity: NotSucceedsEqual without a semi-colon" do
    assert_lexes "&NotSucceedsEqual", "[[\"Character\",\"&NotSucceedsEqual\"]]"
  end
  it "namedEntities:Named entity: NotSucceedsEqual; with a semi-colon" do
    assert_lexes "&NotSucceedsEqual;", "[[\"Character\",\"⪰̸\"]]"
  end
  it "namedEntities:Bad named entity: NotSucceedsSlantEqual without a semi-colon" do
    assert_lexes "&NotSucceedsSlantEqual", "[[\"Character\",\"&NotSucceedsSlantEqual\"]]"
  end
  it "namedEntities:Named entity: NotSucceedsSlantEqual; with a semi-colon" do
    assert_lexes "&NotSucceedsSlantEqual;", "[[\"Character\",\"⋡\"]]"
  end
  it "namedEntities:Bad named entity: NotSucceedsTilde without a semi-colon" do
    assert_lexes "&NotSucceedsTilde", "[[\"Character\",\"&NotSucceedsTilde\"]]"
  end
  it "namedEntities:Named entity: NotSucceedsTilde; with a semi-colon" do
    assert_lexes "&NotSucceedsTilde;", "[[\"Character\",\"≿̸\"]]"
  end
  it "namedEntities:Bad named entity: NotSuperset without a semi-colon" do
    assert_lexes "&NotSuperset", "[[\"Character\",\"&NotSuperset\"]]"
  end
  it "namedEntities:Named entity: NotSuperset; with a semi-colon" do
    assert_lexes "&NotSuperset;", "[[\"Character\",\"⊃⃒\"]]"
  end
  it "namedEntities:Bad named entity: NotSupersetEqual without a semi-colon" do
    assert_lexes "&NotSupersetEqual", "[[\"Character\",\"&NotSupersetEqual\"]]"
  end
  it "namedEntities:Named entity: NotSupersetEqual; with a semi-colon" do
    assert_lexes "&NotSupersetEqual;", "[[\"Character\",\"⊉\"]]"
  end
  it "namedEntities:Bad named entity: NotTilde without a semi-colon" do
    assert_lexes "&NotTilde", "[[\"Character\",\"&NotTilde\"]]"
  end
  it "namedEntities:Named entity: NotTilde; with a semi-colon" do
    assert_lexes "&NotTilde;", "[[\"Character\",\"≁\"]]"
  end
  it "namedEntities:Bad named entity: NotTildeEqual without a semi-colon" do
    assert_lexes "&NotTildeEqual", "[[\"Character\",\"&NotTildeEqual\"]]"
  end
  it "namedEntities:Named entity: NotTildeEqual; with a semi-colon" do
    assert_lexes "&NotTildeEqual;", "[[\"Character\",\"≄\"]]"
  end
  it "namedEntities:Bad named entity: NotTildeFullEqual without a semi-colon" do
    assert_lexes "&NotTildeFullEqual", "[[\"Character\",\"&NotTildeFullEqual\"]]"
  end
  it "namedEntities:Named entity: NotTildeFullEqual; with a semi-colon" do
    assert_lexes "&NotTildeFullEqual;", "[[\"Character\",\"≇\"]]"
  end
  it "namedEntities:Bad named entity: NotTildeTilde without a semi-colon" do
    assert_lexes "&NotTildeTilde", "[[\"Character\",\"&NotTildeTilde\"]]"
  end
  it "namedEntities:Named entity: NotTildeTilde; with a semi-colon" do
    assert_lexes "&NotTildeTilde;", "[[\"Character\",\"≉\"]]"
  end
  it "namedEntities:Bad named entity: NotVerticalBar without a semi-colon" do
    assert_lexes "&NotVerticalBar", "[[\"Character\",\"&NotVerticalBar\"]]"
  end
  it "namedEntities:Named entity: NotVerticalBar; with a semi-colon" do
    assert_lexes "&NotVerticalBar;", "[[\"Character\",\"∤\"]]"
  end
  it "namedEntities:Bad named entity: Nscr without a semi-colon" do
    assert_lexes "&Nscr", "[[\"Character\",\"&Nscr\"]]"
  end
  it "namedEntities:Named entity: Nscr; with a semi-colon" do
    assert_lexes "&Nscr;", "[[\"Character\",\"𝒩\"]]"
  end
  it "namedEntities:Named entity: Ntilde without a semi-colon" do
    assert_lexes "&Ntilde", "[[\"Character\",\"Ñ\"]]"
  end
  it "namedEntities:Named entity: Ntilde; with a semi-colon" do
    assert_lexes "&Ntilde;", "[[\"Character\",\"Ñ\"]]"
  end
  it "namedEntities:Bad named entity: Nu without a semi-colon" do
    assert_lexes "&Nu", "[[\"Character\",\"&Nu\"]]"
  end
  it "namedEntities:Named entity: Nu; with a semi-colon" do
    assert_lexes "&Nu;", "[[\"Character\",\"Ν\"]]"
  end
  it "namedEntities:Bad named entity: OElig without a semi-colon" do
    assert_lexes "&OElig", "[[\"Character\",\"&OElig\"]]"
  end
  it "namedEntities:Named entity: OElig; with a semi-colon" do
    assert_lexes "&OElig;", "[[\"Character\",\"Œ\"]]"
  end
  it "namedEntities:Named entity: Oacute without a semi-colon" do
    assert_lexes "&Oacute", "[[\"Character\",\"Ó\"]]"
  end
  it "namedEntities:Named entity: Oacute; with a semi-colon" do
    assert_lexes "&Oacute;", "[[\"Character\",\"Ó\"]]"
  end
  it "namedEntities:Named entity: Ocirc without a semi-colon" do
    assert_lexes "&Ocirc", "[[\"Character\",\"Ô\"]]"
  end
  it "namedEntities:Named entity: Ocirc; with a semi-colon" do
    assert_lexes "&Ocirc;", "[[\"Character\",\"Ô\"]]"
  end
  it "namedEntities:Bad named entity: Ocy without a semi-colon" do
    assert_lexes "&Ocy", "[[\"Character\",\"&Ocy\"]]"
  end
  it "namedEntities:Named entity: Ocy; with a semi-colon" do
    assert_lexes "&Ocy;", "[[\"Character\",\"О\"]]"
  end
  it "namedEntities:Bad named entity: Odblac without a semi-colon" do
    assert_lexes "&Odblac", "[[\"Character\",\"&Odblac\"]]"
  end
  it "namedEntities:Named entity: Odblac; with a semi-colon" do
    assert_lexes "&Odblac;", "[[\"Character\",\"Ő\"]]"
  end
  it "namedEntities:Bad named entity: Ofr without a semi-colon" do
    assert_lexes "&Ofr", "[[\"Character\",\"&Ofr\"]]"
  end
  it "namedEntities:Named entity: Ofr; with a semi-colon" do
    assert_lexes "&Ofr;", "[[\"Character\",\"𝔒\"]]"
  end
  it "namedEntities:Named entity: Ograve without a semi-colon" do
    assert_lexes "&Ograve", "[[\"Character\",\"Ò\"]]"
  end
  it "namedEntities:Named entity: Ograve; with a semi-colon" do
    assert_lexes "&Ograve;", "[[\"Character\",\"Ò\"]]"
  end
  it "namedEntities:Bad named entity: Omacr without a semi-colon" do
    assert_lexes "&Omacr", "[[\"Character\",\"&Omacr\"]]"
  end
  it "namedEntities:Named entity: Omacr; with a semi-colon" do
    assert_lexes "&Omacr;", "[[\"Character\",\"Ō\"]]"
  end
  it "namedEntities:Bad named entity: Omega without a semi-colon" do
    assert_lexes "&Omega", "[[\"Character\",\"&Omega\"]]"
  end
  it "namedEntities:Named entity: Omega; with a semi-colon" do
    assert_lexes "&Omega;", "[[\"Character\",\"Ω\"]]"
  end
  it "namedEntities:Bad named entity: Omicron without a semi-colon" do
    assert_lexes "&Omicron", "[[\"Character\",\"&Omicron\"]]"
  end
  it "namedEntities:Named entity: Omicron; with a semi-colon" do
    assert_lexes "&Omicron;", "[[\"Character\",\"Ο\"]]"
  end
  it "namedEntities:Bad named entity: Oopf without a semi-colon" do
    assert_lexes "&Oopf", "[[\"Character\",\"&Oopf\"]]"
  end
  it "namedEntities:Named entity: Oopf; with a semi-colon" do
    assert_lexes "&Oopf;", "[[\"Character\",\"𝕆\"]]"
  end
  it "namedEntities:Bad named entity: OpenCurlyDoubleQuote without a semi-colon" do
    assert_lexes "&OpenCurlyDoubleQuote", "[[\"Character\",\"&OpenCurlyDoubleQuote\"]]"
  end
  it "namedEntities:Named entity: OpenCurlyDoubleQuote; with a semi-colon" do
    assert_lexes "&OpenCurlyDoubleQuote;", "[[\"Character\",\"“\"]]"
  end
  it "namedEntities:Bad named entity: OpenCurlyQuote without a semi-colon" do
    assert_lexes "&OpenCurlyQuote", "[[\"Character\",\"&OpenCurlyQuote\"]]"
  end
  it "namedEntities:Named entity: OpenCurlyQuote; with a semi-colon" do
    assert_lexes "&OpenCurlyQuote;", "[[\"Character\",\"‘\"]]"
  end
  it "namedEntities:Bad named entity: Or without a semi-colon" do
    assert_lexes "&Or", "[[\"Character\",\"&Or\"]]"
  end
  it "namedEntities:Named entity: Or; with a semi-colon" do
    assert_lexes "&Or;", "[[\"Character\",\"⩔\"]]"
  end
  it "namedEntities:Bad named entity: Oscr without a semi-colon" do
    assert_lexes "&Oscr", "[[\"Character\",\"&Oscr\"]]"
  end
  it "namedEntities:Named entity: Oscr; with a semi-colon" do
    assert_lexes "&Oscr;", "[[\"Character\",\"𝒪\"]]"
  end
  it "namedEntities:Named entity: Oslash without a semi-colon" do
    assert_lexes "&Oslash", "[[\"Character\",\"Ø\"]]"
  end
  it "namedEntities:Named entity: Oslash; with a semi-colon" do
    assert_lexes "&Oslash;", "[[\"Character\",\"Ø\"]]"
  end
  it "namedEntities:Named entity: Otilde without a semi-colon" do
    assert_lexes "&Otilde", "[[\"Character\",\"Õ\"]]"
  end
  it "namedEntities:Named entity: Otilde; with a semi-colon" do
    assert_lexes "&Otilde;", "[[\"Character\",\"Õ\"]]"
  end
  it "namedEntities:Bad named entity: Otimes without a semi-colon" do
    assert_lexes "&Otimes", "[[\"Character\",\"&Otimes\"]]"
  end
  it "namedEntities:Named entity: Otimes; with a semi-colon" do
    assert_lexes "&Otimes;", "[[\"Character\",\"⨷\"]]"
  end
  it "namedEntities:Named entity: Ouml without a semi-colon" do
    assert_lexes "&Ouml", "[[\"Character\",\"Ö\"]]"
  end
  it "namedEntities:Named entity: Ouml; with a semi-colon" do
    assert_lexes "&Ouml;", "[[\"Character\",\"Ö\"]]"
  end
  it "namedEntities:Bad named entity: OverBar without a semi-colon" do
    assert_lexes "&OverBar", "[[\"Character\",\"&OverBar\"]]"
  end
  it "namedEntities:Named entity: OverBar; with a semi-colon" do
    assert_lexes "&OverBar;", "[[\"Character\",\"‾\"]]"
  end
  it "namedEntities:Bad named entity: OverBrace without a semi-colon" do
    assert_lexes "&OverBrace", "[[\"Character\",\"&OverBrace\"]]"
  end
  it "namedEntities:Named entity: OverBrace; with a semi-colon" do
    assert_lexes "&OverBrace;", "[[\"Character\",\"⏞\"]]"
  end
  it "namedEntities:Bad named entity: OverBracket without a semi-colon" do
    assert_lexes "&OverBracket", "[[\"Character\",\"&OverBracket\"]]"
  end
  it "namedEntities:Named entity: OverBracket; with a semi-colon" do
    assert_lexes "&OverBracket;", "[[\"Character\",\"⎴\"]]"
  end
  it "namedEntities:Bad named entity: OverParenthesis without a semi-colon" do
    assert_lexes "&OverParenthesis", "[[\"Character\",\"&OverParenthesis\"]]"
  end
  it "namedEntities:Named entity: OverParenthesis; with a semi-colon" do
    assert_lexes "&OverParenthesis;", "[[\"Character\",\"⏜\"]]"
  end
  it "namedEntities:Bad named entity: PartialD without a semi-colon" do
    assert_lexes "&PartialD", "[[\"Character\",\"&PartialD\"]]"
  end
  it "namedEntities:Named entity: PartialD; with a semi-colon" do
    assert_lexes "&PartialD;", "[[\"Character\",\"∂\"]]"
  end
  it "namedEntities:Bad named entity: Pcy without a semi-colon" do
    assert_lexes "&Pcy", "[[\"Character\",\"&Pcy\"]]"
  end
  it "namedEntities:Named entity: Pcy; with a semi-colon" do
    assert_lexes "&Pcy;", "[[\"Character\",\"П\"]]"
  end
  it "namedEntities:Bad named entity: Pfr without a semi-colon" do
    assert_lexes "&Pfr", "[[\"Character\",\"&Pfr\"]]"
  end
  it "namedEntities:Named entity: Pfr; with a semi-colon" do
    assert_lexes "&Pfr;", "[[\"Character\",\"𝔓\"]]"
  end
  it "namedEntities:Bad named entity: Phi without a semi-colon" do
    assert_lexes "&Phi", "[[\"Character\",\"&Phi\"]]"
  end
  it "namedEntities:Named entity: Phi; with a semi-colon" do
    assert_lexes "&Phi;", "[[\"Character\",\"Φ\"]]"
  end
  it "namedEntities:Bad named entity: Pi without a semi-colon" do
    assert_lexes "&Pi", "[[\"Character\",\"&Pi\"]]"
  end
  it "namedEntities:Named entity: Pi; with a semi-colon" do
    assert_lexes "&Pi;", "[[\"Character\",\"Π\"]]"
  end
  it "namedEntities:Bad named entity: PlusMinus without a semi-colon" do
    assert_lexes "&PlusMinus", "[[\"Character\",\"&PlusMinus\"]]"
  end
  it "namedEntities:Named entity: PlusMinus; with a semi-colon" do
    assert_lexes "&PlusMinus;", "[[\"Character\",\"±\"]]"
  end
  it "namedEntities:Bad named entity: Poincareplane without a semi-colon" do
    assert_lexes "&Poincareplane", "[[\"Character\",\"&Poincareplane\"]]"
  end
  it "namedEntities:Named entity: Poincareplane; with a semi-colon" do
    assert_lexes "&Poincareplane;", "[[\"Character\",\"ℌ\"]]"
  end
  it "namedEntities:Bad named entity: Popf without a semi-colon" do
    assert_lexes "&Popf", "[[\"Character\",\"&Popf\"]]"
  end
  it "namedEntities:Named entity: Popf; with a semi-colon" do
    assert_lexes "&Popf;", "[[\"Character\",\"ℙ\"]]"
  end
  it "namedEntities:Bad named entity: Pr without a semi-colon" do
    assert_lexes "&Pr", "[[\"Character\",\"&Pr\"]]"
  end
  it "namedEntities:Named entity: Pr; with a semi-colon" do
    assert_lexes "&Pr;", "[[\"Character\",\"⪻\"]]"
  end
  it "namedEntities:Bad named entity: Precedes without a semi-colon" do
    assert_lexes "&Precedes", "[[\"Character\",\"&Precedes\"]]"
  end
  it "namedEntities:Named entity: Precedes; with a semi-colon" do
    assert_lexes "&Precedes;", "[[\"Character\",\"≺\"]]"
  end
  it "namedEntities:Bad named entity: PrecedesEqual without a semi-colon" do
    assert_lexes "&PrecedesEqual", "[[\"Character\",\"&PrecedesEqual\"]]"
  end
  it "namedEntities:Named entity: PrecedesEqual; with a semi-colon" do
    assert_lexes "&PrecedesEqual;", "[[\"Character\",\"⪯\"]]"
  end
  it "namedEntities:Bad named entity: PrecedesSlantEqual without a semi-colon" do
    assert_lexes "&PrecedesSlantEqual", "[[\"Character\",\"&PrecedesSlantEqual\"]]"
  end
  it "namedEntities:Named entity: PrecedesSlantEqual; with a semi-colon" do
    assert_lexes "&PrecedesSlantEqual;", "[[\"Character\",\"≼\"]]"
  end
  it "namedEntities:Bad named entity: PrecedesTilde without a semi-colon" do
    assert_lexes "&PrecedesTilde", "[[\"Character\",\"&PrecedesTilde\"]]"
  end
  it "namedEntities:Named entity: PrecedesTilde; with a semi-colon" do
    assert_lexes "&PrecedesTilde;", "[[\"Character\",\"≾\"]]"
  end
  it "namedEntities:Bad named entity: Prime without a semi-colon" do
    assert_lexes "&Prime", "[[\"Character\",\"&Prime\"]]"
  end
  it "namedEntities:Named entity: Prime; with a semi-colon" do
    assert_lexes "&Prime;", "[[\"Character\",\"″\"]]"
  end
  it "namedEntities:Bad named entity: Product without a semi-colon" do
    assert_lexes "&Product", "[[\"Character\",\"&Product\"]]"
  end
  it "namedEntities:Named entity: Product; with a semi-colon" do
    assert_lexes "&Product;", "[[\"Character\",\"∏\"]]"
  end
  it "namedEntities:Bad named entity: Proportion without a semi-colon" do
    assert_lexes "&Proportion", "[[\"Character\",\"&Proportion\"]]"
  end
  it "namedEntities:Named entity: Proportion; with a semi-colon" do
    assert_lexes "&Proportion;", "[[\"Character\",\"∷\"]]"
  end
  it "namedEntities:Bad named entity: Proportional without a semi-colon" do
    assert_lexes "&Proportional", "[[\"Character\",\"&Proportional\"]]"
  end
  it "namedEntities:Named entity: Proportional; with a semi-colon" do
    assert_lexes "&Proportional;", "[[\"Character\",\"∝\"]]"
  end
  it "namedEntities:Bad named entity: Pscr without a semi-colon" do
    assert_lexes "&Pscr", "[[\"Character\",\"&Pscr\"]]"
  end
  it "namedEntities:Named entity: Pscr; with a semi-colon" do
    assert_lexes "&Pscr;", "[[\"Character\",\"𝒫\"]]"
  end
  it "namedEntities:Bad named entity: Psi without a semi-colon" do
    assert_lexes "&Psi", "[[\"Character\",\"&Psi\"]]"
  end
  it "namedEntities:Named entity: Psi; with a semi-colon" do
    assert_lexes "&Psi;", "[[\"Character\",\"Ψ\"]]"
  end
  it "namedEntities:Named entity: QUOT without a semi-colon" do
    assert_lexes "&QUOT", "[[\"Character\",\"\\\"\"]]"
  end
  it "namedEntities:Named entity: QUOT; with a semi-colon" do
    assert_lexes "&QUOT;", "[[\"Character\",\"\\\"\"]]"
  end
  it "namedEntities:Bad named entity: Qfr without a semi-colon" do
    assert_lexes "&Qfr", "[[\"Character\",\"&Qfr\"]]"
  end
  it "namedEntities:Named entity: Qfr; with a semi-colon" do
    assert_lexes "&Qfr;", "[[\"Character\",\"𝔔\"]]"
  end
  it "namedEntities:Bad named entity: Qopf without a semi-colon" do
    assert_lexes "&Qopf", "[[\"Character\",\"&Qopf\"]]"
  end
  it "namedEntities:Named entity: Qopf; with a semi-colon" do
    assert_lexes "&Qopf;", "[[\"Character\",\"ℚ\"]]"
  end
  it "namedEntities:Bad named entity: Qscr without a semi-colon" do
    assert_lexes "&Qscr", "[[\"Character\",\"&Qscr\"]]"
  end
  it "namedEntities:Named entity: Qscr; with a semi-colon" do
    assert_lexes "&Qscr;", "[[\"Character\",\"𝒬\"]]"
  end
  it "namedEntities:Bad named entity: RBarr without a semi-colon" do
    assert_lexes "&RBarr", "[[\"Character\",\"&RBarr\"]]"
  end
  it "namedEntities:Named entity: RBarr; with a semi-colon" do
    assert_lexes "&RBarr;", "[[\"Character\",\"⤐\"]]"
  end
  it "namedEntities:Named entity: REG without a semi-colon" do
    assert_lexes "&REG", "[[\"Character\",\"®\"]]"
  end
  it "namedEntities:Named entity: REG; with a semi-colon" do
    assert_lexes "&REG;", "[[\"Character\",\"®\"]]"
  end
  it "namedEntities:Bad named entity: Racute without a semi-colon" do
    assert_lexes "&Racute", "[[\"Character\",\"&Racute\"]]"
  end
  it "namedEntities:Named entity: Racute; with a semi-colon" do
    assert_lexes "&Racute;", "[[\"Character\",\"Ŕ\"]]"
  end
  it "namedEntities:Bad named entity: Rang without a semi-colon" do
    assert_lexes "&Rang", "[[\"Character\",\"&Rang\"]]"
  end
  it "namedEntities:Named entity: Rang; with a semi-colon" do
    assert_lexes "&Rang;", "[[\"Character\",\"⟫\"]]"
  end
  it "namedEntities:Bad named entity: Rarr without a semi-colon" do
    assert_lexes "&Rarr", "[[\"Character\",\"&Rarr\"]]"
  end
  it "namedEntities:Named entity: Rarr; with a semi-colon" do
    assert_lexes "&Rarr;", "[[\"Character\",\"↠\"]]"
  end
  it "namedEntities:Bad named entity: Rarrtl without a semi-colon" do
    assert_lexes "&Rarrtl", "[[\"Character\",\"&Rarrtl\"]]"
  end
  it "namedEntities:Named entity: Rarrtl; with a semi-colon" do
    assert_lexes "&Rarrtl;", "[[\"Character\",\"⤖\"]]"
  end
  it "namedEntities:Bad named entity: Rcaron without a semi-colon" do
    assert_lexes "&Rcaron", "[[\"Character\",\"&Rcaron\"]]"
  end
  it "namedEntities:Named entity: Rcaron; with a semi-colon" do
    assert_lexes "&Rcaron;", "[[\"Character\",\"Ř\"]]"
  end
  it "namedEntities:Bad named entity: Rcedil without a semi-colon" do
    assert_lexes "&Rcedil", "[[\"Character\",\"&Rcedil\"]]"
  end
  it "namedEntities:Named entity: Rcedil; with a semi-colon" do
    assert_lexes "&Rcedil;", "[[\"Character\",\"Ŗ\"]]"
  end
  it "namedEntities:Bad named entity: Rcy without a semi-colon" do
    assert_lexes "&Rcy", "[[\"Character\",\"&Rcy\"]]"
  end
  it "namedEntities:Named entity: Rcy; with a semi-colon" do
    assert_lexes "&Rcy;", "[[\"Character\",\"Р\"]]"
  end
  it "namedEntities:Bad named entity: Re without a semi-colon" do
    assert_lexes "&Re", "[[\"Character\",\"&Re\"]]"
  end
  it "namedEntities:Named entity: Re; with a semi-colon" do
    assert_lexes "&Re;", "[[\"Character\",\"ℜ\"]]"
  end
  it "namedEntities:Bad named entity: ReverseElement without a semi-colon" do
    assert_lexes "&ReverseElement", "[[\"Character\",\"&ReverseElement\"]]"
  end
  it "namedEntities:Named entity: ReverseElement; with a semi-colon" do
    assert_lexes "&ReverseElement;", "[[\"Character\",\"∋\"]]"
  end
  it "namedEntities:Bad named entity: ReverseEquilibrium without a semi-colon" do
    assert_lexes "&ReverseEquilibrium", "[[\"Character\",\"&ReverseEquilibrium\"]]"
  end
  it "namedEntities:Named entity: ReverseEquilibrium; with a semi-colon" do
    assert_lexes "&ReverseEquilibrium;", "[[\"Character\",\"⇋\"]]"
  end
  it "namedEntities:Bad named entity: ReverseUpEquilibrium without a semi-colon" do
    assert_lexes "&ReverseUpEquilibrium", "[[\"Character\",\"&ReverseUpEquilibrium\"]]"
  end
  it "namedEntities:Named entity: ReverseUpEquilibrium; with a semi-colon" do
    assert_lexes "&ReverseUpEquilibrium;", "[[\"Character\",\"⥯\"]]"
  end
  it "namedEntities:Bad named entity: Rfr without a semi-colon" do
    assert_lexes "&Rfr", "[[\"Character\",\"&Rfr\"]]"
  end
  it "namedEntities:Named entity: Rfr; with a semi-colon" do
    assert_lexes "&Rfr;", "[[\"Character\",\"ℜ\"]]"
  end
  it "namedEntities:Bad named entity: Rho without a semi-colon" do
    assert_lexes "&Rho", "[[\"Character\",\"&Rho\"]]"
  end
  it "namedEntities:Named entity: Rho; with a semi-colon" do
    assert_lexes "&Rho;", "[[\"Character\",\"Ρ\"]]"
  end
  it "namedEntities:Bad named entity: RightAngleBracket without a semi-colon" do
    assert_lexes "&RightAngleBracket", "[[\"Character\",\"&RightAngleBracket\"]]"
  end
  it "namedEntities:Named entity: RightAngleBracket; with a semi-colon" do
    assert_lexes "&RightAngleBracket;", "[[\"Character\",\"⟩\"]]"
  end
  it "namedEntities:Bad named entity: RightArrow without a semi-colon" do
    assert_lexes "&RightArrow", "[[\"Character\",\"&RightArrow\"]]"
  end
  it "namedEntities:Named entity: RightArrow; with a semi-colon" do
    assert_lexes "&RightArrow;", "[[\"Character\",\"→\"]]"
  end
  it "namedEntities:Bad named entity: RightArrowBar without a semi-colon" do
    assert_lexes "&RightArrowBar", "[[\"Character\",\"&RightArrowBar\"]]"
  end
  it "namedEntities:Named entity: RightArrowBar; with a semi-colon" do
    assert_lexes "&RightArrowBar;", "[[\"Character\",\"⇥\"]]"
  end
  it "namedEntities:Bad named entity: RightArrowLeftArrow without a semi-colon" do
    assert_lexes "&RightArrowLeftArrow", "[[\"Character\",\"&RightArrowLeftArrow\"]]"
  end
  it "namedEntities:Named entity: RightArrowLeftArrow; with a semi-colon" do
    assert_lexes "&RightArrowLeftArrow;", "[[\"Character\",\"⇄\"]]"
  end
  it "namedEntities:Bad named entity: RightCeiling without a semi-colon" do
    assert_lexes "&RightCeiling", "[[\"Character\",\"&RightCeiling\"]]"
  end
  it "namedEntities:Named entity: RightCeiling; with a semi-colon" do
    assert_lexes "&RightCeiling;", "[[\"Character\",\"⌉\"]]"
  end
  it "namedEntities:Bad named entity: RightDoubleBracket without a semi-colon" do
    assert_lexes "&RightDoubleBracket", "[[\"Character\",\"&RightDoubleBracket\"]]"
  end
  it "namedEntities:Named entity: RightDoubleBracket; with a semi-colon" do
    assert_lexes "&RightDoubleBracket;", "[[\"Character\",\"⟧\"]]"
  end
  it "namedEntities:Bad named entity: RightDownTeeVector without a semi-colon" do
    assert_lexes "&RightDownTeeVector", "[[\"Character\",\"&RightDownTeeVector\"]]"
  end
  it "namedEntities:Named entity: RightDownTeeVector; with a semi-colon" do
    assert_lexes "&RightDownTeeVector;", "[[\"Character\",\"⥝\"]]"
  end
  it "namedEntities:Bad named entity: RightDownVector without a semi-colon" do
    assert_lexes "&RightDownVector", "[[\"Character\",\"&RightDownVector\"]]"
  end
  it "namedEntities:Named entity: RightDownVector; with a semi-colon" do
    assert_lexes "&RightDownVector;", "[[\"Character\",\"⇂\"]]"
  end
  it "namedEntities:Bad named entity: RightDownVectorBar without a semi-colon" do
    assert_lexes "&RightDownVectorBar", "[[\"Character\",\"&RightDownVectorBar\"]]"
  end
  it "namedEntities:Named entity: RightDownVectorBar; with a semi-colon" do
    assert_lexes "&RightDownVectorBar;", "[[\"Character\",\"⥕\"]]"
  end
  it "namedEntities:Bad named entity: RightFloor without a semi-colon" do
    assert_lexes "&RightFloor", "[[\"Character\",\"&RightFloor\"]]"
  end
  it "namedEntities:Named entity: RightFloor; with a semi-colon" do
    assert_lexes "&RightFloor;", "[[\"Character\",\"⌋\"]]"
  end
  it "namedEntities:Bad named entity: RightTee without a semi-colon" do
    assert_lexes "&RightTee", "[[\"Character\",\"&RightTee\"]]"
  end
  it "namedEntities:Named entity: RightTee; with a semi-colon" do
    assert_lexes "&RightTee;", "[[\"Character\",\"⊢\"]]"
  end
  it "namedEntities:Bad named entity: RightTeeArrow without a semi-colon" do
    assert_lexes "&RightTeeArrow", "[[\"Character\",\"&RightTeeArrow\"]]"
  end
  it "namedEntities:Named entity: RightTeeArrow; with a semi-colon" do
    assert_lexes "&RightTeeArrow;", "[[\"Character\",\"↦\"]]"
  end
  it "namedEntities:Bad named entity: RightTeeVector without a semi-colon" do
    assert_lexes "&RightTeeVector", "[[\"Character\",\"&RightTeeVector\"]]"
  end
  it "namedEntities:Named entity: RightTeeVector; with a semi-colon" do
    assert_lexes "&RightTeeVector;", "[[\"Character\",\"⥛\"]]"
  end
  it "namedEntities:Bad named entity: RightTriangle without a semi-colon" do
    assert_lexes "&RightTriangle", "[[\"Character\",\"&RightTriangle\"]]"
  end
  it "namedEntities:Named entity: RightTriangle; with a semi-colon" do
    assert_lexes "&RightTriangle;", "[[\"Character\",\"⊳\"]]"
  end
  it "namedEntities:Bad named entity: RightTriangleBar without a semi-colon" do
    assert_lexes "&RightTriangleBar", "[[\"Character\",\"&RightTriangleBar\"]]"
  end
  it "namedEntities:Named entity: RightTriangleBar; with a semi-colon" do
    assert_lexes "&RightTriangleBar;", "[[\"Character\",\"⧐\"]]"
  end
  it "namedEntities:Bad named entity: RightTriangleEqual without a semi-colon" do
    assert_lexes "&RightTriangleEqual", "[[\"Character\",\"&RightTriangleEqual\"]]"
  end
  it "namedEntities:Named entity: RightTriangleEqual; with a semi-colon" do
    assert_lexes "&RightTriangleEqual;", "[[\"Character\",\"⊵\"]]"
  end
  it "namedEntities:Bad named entity: RightUpDownVector without a semi-colon" do
    assert_lexes "&RightUpDownVector", "[[\"Character\",\"&RightUpDownVector\"]]"
  end
  it "namedEntities:Named entity: RightUpDownVector; with a semi-colon" do
    assert_lexes "&RightUpDownVector;", "[[\"Character\",\"⥏\"]]"
  end
  it "namedEntities:Bad named entity: RightUpTeeVector without a semi-colon" do
    assert_lexes "&RightUpTeeVector", "[[\"Character\",\"&RightUpTeeVector\"]]"
  end
  it "namedEntities:Named entity: RightUpTeeVector; with a semi-colon" do
    assert_lexes "&RightUpTeeVector;", "[[\"Character\",\"⥜\"]]"
  end
  it "namedEntities:Bad named entity: RightUpVector without a semi-colon" do
    assert_lexes "&RightUpVector", "[[\"Character\",\"&RightUpVector\"]]"
  end
  it "namedEntities:Named entity: RightUpVector; with a semi-colon" do
    assert_lexes "&RightUpVector;", "[[\"Character\",\"↾\"]]"
  end
  it "namedEntities:Bad named entity: RightUpVectorBar without a semi-colon" do
    assert_lexes "&RightUpVectorBar", "[[\"Character\",\"&RightUpVectorBar\"]]"
  end
  it "namedEntities:Named entity: RightUpVectorBar; with a semi-colon" do
    assert_lexes "&RightUpVectorBar;", "[[\"Character\",\"⥔\"]]"
  end
  it "namedEntities:Bad named entity: RightVector without a semi-colon" do
    assert_lexes "&RightVector", "[[\"Character\",\"&RightVector\"]]"
  end
  it "namedEntities:Named entity: RightVector; with a semi-colon" do
    assert_lexes "&RightVector;", "[[\"Character\",\"⇀\"]]"
  end
  it "namedEntities:Bad named entity: RightVectorBar without a semi-colon" do
    assert_lexes "&RightVectorBar", "[[\"Character\",\"&RightVectorBar\"]]"
  end
  it "namedEntities:Named entity: RightVectorBar; with a semi-colon" do
    assert_lexes "&RightVectorBar;", "[[\"Character\",\"⥓\"]]"
  end
  it "namedEntities:Bad named entity: Rightarrow without a semi-colon" do
    assert_lexes "&Rightarrow", "[[\"Character\",\"&Rightarrow\"]]"
  end
  it "namedEntities:Named entity: Rightarrow; with a semi-colon" do
    assert_lexes "&Rightarrow;", "[[\"Character\",\"⇒\"]]"
  end
  it "namedEntities:Bad named entity: Ropf without a semi-colon" do
    assert_lexes "&Ropf", "[[\"Character\",\"&Ropf\"]]"
  end
  it "namedEntities:Named entity: Ropf; with a semi-colon" do
    assert_lexes "&Ropf;", "[[\"Character\",\"ℝ\"]]"
  end
  it "namedEntities:Bad named entity: RoundImplies without a semi-colon" do
    assert_lexes "&RoundImplies", "[[\"Character\",\"&RoundImplies\"]]"
  end
  it "namedEntities:Named entity: RoundImplies; with a semi-colon" do
    assert_lexes "&RoundImplies;", "[[\"Character\",\"⥰\"]]"
  end
  it "namedEntities:Bad named entity: Rrightarrow without a semi-colon" do
    assert_lexes "&Rrightarrow", "[[\"Character\",\"&Rrightarrow\"]]"
  end
  it "namedEntities:Named entity: Rrightarrow; with a semi-colon" do
    assert_lexes "&Rrightarrow;", "[[\"Character\",\"⇛\"]]"
  end
  it "namedEntities:Bad named entity: Rscr without a semi-colon" do
    assert_lexes "&Rscr", "[[\"Character\",\"&Rscr\"]]"
  end
  it "namedEntities:Named entity: Rscr; with a semi-colon" do
    assert_lexes "&Rscr;", "[[\"Character\",\"ℛ\"]]"
  end
  it "namedEntities:Bad named entity: Rsh without a semi-colon" do
    assert_lexes "&Rsh", "[[\"Character\",\"&Rsh\"]]"
  end
  it "namedEntities:Named entity: Rsh; with a semi-colon" do
    assert_lexes "&Rsh;", "[[\"Character\",\"↱\"]]"
  end
  it "namedEntities:Bad named entity: RuleDelayed without a semi-colon" do
    assert_lexes "&RuleDelayed", "[[\"Character\",\"&RuleDelayed\"]]"
  end
  it "namedEntities:Named entity: RuleDelayed; with a semi-colon" do
    assert_lexes "&RuleDelayed;", "[[\"Character\",\"⧴\"]]"
  end
  it "namedEntities:Bad named entity: SHCHcy without a semi-colon" do
    assert_lexes "&SHCHcy", "[[\"Character\",\"&SHCHcy\"]]"
  end
  it "namedEntities:Named entity: SHCHcy; with a semi-colon" do
    assert_lexes "&SHCHcy;", "[[\"Character\",\"Щ\"]]"
  end
  it "namedEntities:Bad named entity: SHcy without a semi-colon" do
    assert_lexes "&SHcy", "[[\"Character\",\"&SHcy\"]]"
  end
  it "namedEntities:Named entity: SHcy; with a semi-colon" do
    assert_lexes "&SHcy;", "[[\"Character\",\"Ш\"]]"
  end
  it "namedEntities:Bad named entity: SOFTcy without a semi-colon" do
    assert_lexes "&SOFTcy", "[[\"Character\",\"&SOFTcy\"]]"
  end
  it "namedEntities:Named entity: SOFTcy; with a semi-colon" do
    assert_lexes "&SOFTcy;", "[[\"Character\",\"Ь\"]]"
  end
  it "namedEntities:Bad named entity: Sacute without a semi-colon" do
    assert_lexes "&Sacute", "[[\"Character\",\"&Sacute\"]]"
  end
  it "namedEntities:Named entity: Sacute; with a semi-colon" do
    assert_lexes "&Sacute;", "[[\"Character\",\"Ś\"]]"
  end
  it "namedEntities:Bad named entity: Sc without a semi-colon" do
    assert_lexes "&Sc", "[[\"Character\",\"&Sc\"]]"
  end
  it "namedEntities:Named entity: Sc; with a semi-colon" do
    assert_lexes "&Sc;", "[[\"Character\",\"⪼\"]]"
  end
  it "namedEntities:Bad named entity: Scaron without a semi-colon" do
    assert_lexes "&Scaron", "[[\"Character\",\"&Scaron\"]]"
  end
  it "namedEntities:Named entity: Scaron; with a semi-colon" do
    assert_lexes "&Scaron;", "[[\"Character\",\"Š\"]]"
  end
  it "namedEntities:Bad named entity: Scedil without a semi-colon" do
    assert_lexes "&Scedil", "[[\"Character\",\"&Scedil\"]]"
  end
  it "namedEntities:Named entity: Scedil; with a semi-colon" do
    assert_lexes "&Scedil;", "[[\"Character\",\"Ş\"]]"
  end
  it "namedEntities:Bad named entity: Scirc without a semi-colon" do
    assert_lexes "&Scirc", "[[\"Character\",\"&Scirc\"]]"
  end
  it "namedEntities:Named entity: Scirc; with a semi-colon" do
    assert_lexes "&Scirc;", "[[\"Character\",\"Ŝ\"]]"
  end
  it "namedEntities:Bad named entity: Scy without a semi-colon" do
    assert_lexes "&Scy", "[[\"Character\",\"&Scy\"]]"
  end
  it "namedEntities:Named entity: Scy; with a semi-colon" do
    assert_lexes "&Scy;", "[[\"Character\",\"С\"]]"
  end
  it "namedEntities:Bad named entity: Sfr without a semi-colon" do
    assert_lexes "&Sfr", "[[\"Character\",\"&Sfr\"]]"
  end
  it "namedEntities:Named entity: Sfr; with a semi-colon" do
    assert_lexes "&Sfr;", "[[\"Character\",\"𝔖\"]]"
  end
  it "namedEntities:Bad named entity: ShortDownArrow without a semi-colon" do
    assert_lexes "&ShortDownArrow", "[[\"Character\",\"&ShortDownArrow\"]]"
  end
  it "namedEntities:Named entity: ShortDownArrow; with a semi-colon" do
    assert_lexes "&ShortDownArrow;", "[[\"Character\",\"↓\"]]"
  end
  it "namedEntities:Bad named entity: ShortLeftArrow without a semi-colon" do
    assert_lexes "&ShortLeftArrow", "[[\"Character\",\"&ShortLeftArrow\"]]"
  end
  it "namedEntities:Named entity: ShortLeftArrow; with a semi-colon" do
    assert_lexes "&ShortLeftArrow;", "[[\"Character\",\"←\"]]"
  end
  it "namedEntities:Bad named entity: ShortRightArrow without a semi-colon" do
    assert_lexes "&ShortRightArrow", "[[\"Character\",\"&ShortRightArrow\"]]"
  end
  it "namedEntities:Named entity: ShortRightArrow; with a semi-colon" do
    assert_lexes "&ShortRightArrow;", "[[\"Character\",\"→\"]]"
  end
  it "namedEntities:Bad named entity: ShortUpArrow without a semi-colon" do
    assert_lexes "&ShortUpArrow", "[[\"Character\",\"&ShortUpArrow\"]]"
  end
  it "namedEntities:Named entity: ShortUpArrow; with a semi-colon" do
    assert_lexes "&ShortUpArrow;", "[[\"Character\",\"↑\"]]"
  end
  it "namedEntities:Bad named entity: Sigma without a semi-colon" do
    assert_lexes "&Sigma", "[[\"Character\",\"&Sigma\"]]"
  end
  it "namedEntities:Named entity: Sigma; with a semi-colon" do
    assert_lexes "&Sigma;", "[[\"Character\",\"Σ\"]]"
  end
  it "namedEntities:Bad named entity: SmallCircle without a semi-colon" do
    assert_lexes "&SmallCircle", "[[\"Character\",\"&SmallCircle\"]]"
  end
  it "namedEntities:Named entity: SmallCircle; with a semi-colon" do
    assert_lexes "&SmallCircle;", "[[\"Character\",\"∘\"]]"
  end
  it "namedEntities:Bad named entity: Sopf without a semi-colon" do
    assert_lexes "&Sopf", "[[\"Character\",\"&Sopf\"]]"
  end
  it "namedEntities:Named entity: Sopf; with a semi-colon" do
    assert_lexes "&Sopf;", "[[\"Character\",\"𝕊\"]]"
  end
  it "namedEntities:Bad named entity: Sqrt without a semi-colon" do
    assert_lexes "&Sqrt", "[[\"Character\",\"&Sqrt\"]]"
  end
  it "namedEntities:Named entity: Sqrt; with a semi-colon" do
    assert_lexes "&Sqrt;", "[[\"Character\",\"√\"]]"
  end
  it "namedEntities:Bad named entity: Square without a semi-colon" do
    assert_lexes "&Square", "[[\"Character\",\"&Square\"]]"
  end
  it "namedEntities:Named entity: Square; with a semi-colon" do
    assert_lexes "&Square;", "[[\"Character\",\"□\"]]"
  end
  it "namedEntities:Bad named entity: SquareIntersection without a semi-colon" do
    assert_lexes "&SquareIntersection", "[[\"Character\",\"&SquareIntersection\"]]"
  end
  it "namedEntities:Named entity: SquareIntersection; with a semi-colon" do
    assert_lexes "&SquareIntersection;", "[[\"Character\",\"⊓\"]]"
  end
  it "namedEntities:Bad named entity: SquareSubset without a semi-colon" do
    assert_lexes "&SquareSubset", "[[\"Character\",\"&SquareSubset\"]]"
  end
  it "namedEntities:Named entity: SquareSubset; with a semi-colon" do
    assert_lexes "&SquareSubset;", "[[\"Character\",\"⊏\"]]"
  end
  it "namedEntities:Bad named entity: SquareSubsetEqual without a semi-colon" do
    assert_lexes "&SquareSubsetEqual", "[[\"Character\",\"&SquareSubsetEqual\"]]"
  end
  it "namedEntities:Named entity: SquareSubsetEqual; with a semi-colon" do
    assert_lexes "&SquareSubsetEqual;", "[[\"Character\",\"⊑\"]]"
  end
  it "namedEntities:Bad named entity: SquareSuperset without a semi-colon" do
    assert_lexes "&SquareSuperset", "[[\"Character\",\"&SquareSuperset\"]]"
  end
  it "namedEntities:Named entity: SquareSuperset; with a semi-colon" do
    assert_lexes "&SquareSuperset;", "[[\"Character\",\"⊐\"]]"
  end
  it "namedEntities:Bad named entity: SquareSupersetEqual without a semi-colon" do
    assert_lexes "&SquareSupersetEqual", "[[\"Character\",\"&SquareSupersetEqual\"]]"
  end
  it "namedEntities:Named entity: SquareSupersetEqual; with a semi-colon" do
    assert_lexes "&SquareSupersetEqual;", "[[\"Character\",\"⊒\"]]"
  end
  it "namedEntities:Bad named entity: SquareUnion without a semi-colon" do
    assert_lexes "&SquareUnion", "[[\"Character\",\"&SquareUnion\"]]"
  end
  it "namedEntities:Named entity: SquareUnion; with a semi-colon" do
    assert_lexes "&SquareUnion;", "[[\"Character\",\"⊔\"]]"
  end
  it "namedEntities:Bad named entity: Sscr without a semi-colon" do
    assert_lexes "&Sscr", "[[\"Character\",\"&Sscr\"]]"
  end
  it "namedEntities:Named entity: Sscr; with a semi-colon" do
    assert_lexes "&Sscr;", "[[\"Character\",\"𝒮\"]]"
  end
  it "namedEntities:Bad named entity: Star without a semi-colon" do
    assert_lexes "&Star", "[[\"Character\",\"&Star\"]]"
  end
  it "namedEntities:Named entity: Star; with a semi-colon" do
    assert_lexes "&Star;", "[[\"Character\",\"⋆\"]]"
  end
  it "namedEntities:Bad named entity: Sub without a semi-colon" do
    assert_lexes "&Sub", "[[\"Character\",\"&Sub\"]]"
  end
  it "namedEntities:Named entity: Sub; with a semi-colon" do
    assert_lexes "&Sub;", "[[\"Character\",\"⋐\"]]"
  end
  it "namedEntities:Bad named entity: Subset without a semi-colon" do
    assert_lexes "&Subset", "[[\"Character\",\"&Subset\"]]"
  end
  it "namedEntities:Named entity: Subset; with a semi-colon" do
    assert_lexes "&Subset;", "[[\"Character\",\"⋐\"]]"
  end
  it "namedEntities:Bad named entity: SubsetEqual without a semi-colon" do
    assert_lexes "&SubsetEqual", "[[\"Character\",\"&SubsetEqual\"]]"
  end
  it "namedEntities:Named entity: SubsetEqual; with a semi-colon" do
    assert_lexes "&SubsetEqual;", "[[\"Character\",\"⊆\"]]"
  end
  it "namedEntities:Bad named entity: Succeeds without a semi-colon" do
    assert_lexes "&Succeeds", "[[\"Character\",\"&Succeeds\"]]"
  end
  it "namedEntities:Named entity: Succeeds; with a semi-colon" do
    assert_lexes "&Succeeds;", "[[\"Character\",\"≻\"]]"
  end
  it "namedEntities:Bad named entity: SucceedsEqual without a semi-colon" do
    assert_lexes "&SucceedsEqual", "[[\"Character\",\"&SucceedsEqual\"]]"
  end
  it "namedEntities:Named entity: SucceedsEqual; with a semi-colon" do
    assert_lexes "&SucceedsEqual;", "[[\"Character\",\"⪰\"]]"
  end
  it "namedEntities:Bad named entity: SucceedsSlantEqual without a semi-colon" do
    assert_lexes "&SucceedsSlantEqual", "[[\"Character\",\"&SucceedsSlantEqual\"]]"
  end
  it "namedEntities:Named entity: SucceedsSlantEqual; with a semi-colon" do
    assert_lexes "&SucceedsSlantEqual;", "[[\"Character\",\"≽\"]]"
  end
  it "namedEntities:Bad named entity: SucceedsTilde without a semi-colon" do
    assert_lexes "&SucceedsTilde", "[[\"Character\",\"&SucceedsTilde\"]]"
  end
  it "namedEntities:Named entity: SucceedsTilde; with a semi-colon" do
    assert_lexes "&SucceedsTilde;", "[[\"Character\",\"≿\"]]"
  end
  it "namedEntities:Bad named entity: SuchThat without a semi-colon" do
    assert_lexes "&SuchThat", "[[\"Character\",\"&SuchThat\"]]"
  end
  it "namedEntities:Named entity: SuchThat; with a semi-colon" do
    assert_lexes "&SuchThat;", "[[\"Character\",\"∋\"]]"
  end
  it "namedEntities:Bad named entity: Sum without a semi-colon" do
    assert_lexes "&Sum", "[[\"Character\",\"&Sum\"]]"
  end
  it "namedEntities:Named entity: Sum; with a semi-colon" do
    assert_lexes "&Sum;", "[[\"Character\",\"∑\"]]"
  end
  it "namedEntities:Bad named entity: Sup without a semi-colon" do
    assert_lexes "&Sup", "[[\"Character\",\"&Sup\"]]"
  end
  it "namedEntities:Named entity: Sup; with a semi-colon" do
    assert_lexes "&Sup;", "[[\"Character\",\"⋑\"]]"
  end
  it "namedEntities:Bad named entity: Superset without a semi-colon" do
    assert_lexes "&Superset", "[[\"Character\",\"&Superset\"]]"
  end
  it "namedEntities:Named entity: Superset; with a semi-colon" do
    assert_lexes "&Superset;", "[[\"Character\",\"⊃\"]]"
  end
  it "namedEntities:Bad named entity: SupersetEqual without a semi-colon" do
    assert_lexes "&SupersetEqual", "[[\"Character\",\"&SupersetEqual\"]]"
  end
  it "namedEntities:Named entity: SupersetEqual; with a semi-colon" do
    assert_lexes "&SupersetEqual;", "[[\"Character\",\"⊇\"]]"
  end
  it "namedEntities:Bad named entity: Supset without a semi-colon" do
    assert_lexes "&Supset", "[[\"Character\",\"&Supset\"]]"
  end
  it "namedEntities:Named entity: Supset; with a semi-colon" do
    assert_lexes "&Supset;", "[[\"Character\",\"⋑\"]]"
  end
  it "namedEntities:Named entity: THORN without a semi-colon" do
    assert_lexes "&THORN", "[[\"Character\",\"Þ\"]]"
  end
  it "namedEntities:Named entity: THORN; with a semi-colon" do
    assert_lexes "&THORN;", "[[\"Character\",\"Þ\"]]"
  end
  it "namedEntities:Bad named entity: TRADE without a semi-colon" do
    assert_lexes "&TRADE", "[[\"Character\",\"&TRADE\"]]"
  end
  it "namedEntities:Named entity: TRADE; with a semi-colon" do
    assert_lexes "&TRADE;", "[[\"Character\",\"™\"]]"
  end
  it "namedEntities:Bad named entity: TSHcy without a semi-colon" do
    assert_lexes "&TSHcy", "[[\"Character\",\"&TSHcy\"]]"
  end
  it "namedEntities:Named entity: TSHcy; with a semi-colon" do
    assert_lexes "&TSHcy;", "[[\"Character\",\"Ћ\"]]"
  end
  it "namedEntities:Bad named entity: TScy without a semi-colon" do
    assert_lexes "&TScy", "[[\"Character\",\"&TScy\"]]"
  end
  it "namedEntities:Named entity: TScy; with a semi-colon" do
    assert_lexes "&TScy;", "[[\"Character\",\"Ц\"]]"
  end
  it "namedEntities:Bad named entity: Tab without a semi-colon" do
    assert_lexes "&Tab", "[[\"Character\",\"&Tab\"]]"
  end
  it "namedEntities:Named entity: Tab; with a semi-colon" do
    assert_lexes "&Tab;", "[[\"Character\",\"\\t\"]]"
  end
  it "namedEntities:Bad named entity: Tau without a semi-colon" do
    assert_lexes "&Tau", "[[\"Character\",\"&Tau\"]]"
  end
  it "namedEntities:Named entity: Tau; with a semi-colon" do
    assert_lexes "&Tau;", "[[\"Character\",\"Τ\"]]"
  end
  it "namedEntities:Bad named entity: Tcaron without a semi-colon" do
    assert_lexes "&Tcaron", "[[\"Character\",\"&Tcaron\"]]"
  end
  it "namedEntities:Named entity: Tcaron; with a semi-colon" do
    assert_lexes "&Tcaron;", "[[\"Character\",\"Ť\"]]"
  end
  it "namedEntities:Bad named entity: Tcedil without a semi-colon" do
    assert_lexes "&Tcedil", "[[\"Character\",\"&Tcedil\"]]"
  end
  it "namedEntities:Named entity: Tcedil; with a semi-colon" do
    assert_lexes "&Tcedil;", "[[\"Character\",\"Ţ\"]]"
  end
  it "namedEntities:Bad named entity: Tcy without a semi-colon" do
    assert_lexes "&Tcy", "[[\"Character\",\"&Tcy\"]]"
  end
  it "namedEntities:Named entity: Tcy; with a semi-colon" do
    assert_lexes "&Tcy;", "[[\"Character\",\"Т\"]]"
  end
  it "namedEntities:Bad named entity: Tfr without a semi-colon" do
    assert_lexes "&Tfr", "[[\"Character\",\"&Tfr\"]]"
  end
  it "namedEntities:Named entity: Tfr; with a semi-colon" do
    assert_lexes "&Tfr;", "[[\"Character\",\"𝔗\"]]"
  end
  it "namedEntities:Bad named entity: Therefore without a semi-colon" do
    assert_lexes "&Therefore", "[[\"Character\",\"&Therefore\"]]"
  end
  it "namedEntities:Named entity: Therefore; with a semi-colon" do
    assert_lexes "&Therefore;", "[[\"Character\",\"∴\"]]"
  end
  it "namedEntities:Bad named entity: Theta without a semi-colon" do
    assert_lexes "&Theta", "[[\"Character\",\"&Theta\"]]"
  end
  it "namedEntities:Named entity: Theta; with a semi-colon" do
    assert_lexes "&Theta;", "[[\"Character\",\"Θ\"]]"
  end
  it "namedEntities:Bad named entity: ThickSpace without a semi-colon" do
    assert_lexes "&ThickSpace", "[[\"Character\",\"&ThickSpace\"]]"
  end
  it "namedEntities:Named entity: ThickSpace; with a semi-colon" do
    assert_lexes "&ThickSpace;", "[[\"Character\",\"\u205F\u200A\"]]"
  end
  it "namedEntities:Bad named entity: ThinSpace without a semi-colon" do
    assert_lexes "&ThinSpace", "[[\"Character\",\"&ThinSpace\"]]"
  end
  it "namedEntities:Named entity: ThinSpace; with a semi-colon" do
    assert_lexes "&ThinSpace;", "[[\"Character\",\"\u2009\"]]"
  end
  it "namedEntities:Bad named entity: Tilde without a semi-colon" do
    assert_lexes "&Tilde", "[[\"Character\",\"&Tilde\"]]"
  end
  it "namedEntities:Named entity: Tilde; with a semi-colon" do
    assert_lexes "&Tilde;", "[[\"Character\",\"∼\"]]"
  end
  it "namedEntities:Bad named entity: TildeEqual without a semi-colon" do
    assert_lexes "&TildeEqual", "[[\"Character\",\"&TildeEqual\"]]"
  end
  it "namedEntities:Named entity: TildeEqual; with a semi-colon" do
    assert_lexes "&TildeEqual;", "[[\"Character\",\"≃\"]]"
  end
  it "namedEntities:Bad named entity: TildeFullEqual without a semi-colon" do
    assert_lexes "&TildeFullEqual", "[[\"Character\",\"&TildeFullEqual\"]]"
  end
  it "namedEntities:Named entity: TildeFullEqual; with a semi-colon" do
    assert_lexes "&TildeFullEqual;", "[[\"Character\",\"≅\"]]"
  end
  it "namedEntities:Bad named entity: TildeTilde without a semi-colon" do
    assert_lexes "&TildeTilde", "[[\"Character\",\"&TildeTilde\"]]"
  end
  it "namedEntities:Named entity: TildeTilde; with a semi-colon" do
    assert_lexes "&TildeTilde;", "[[\"Character\",\"≈\"]]"
  end
  it "namedEntities:Bad named entity: Topf without a semi-colon" do
    assert_lexes "&Topf", "[[\"Character\",\"&Topf\"]]"
  end
  it "namedEntities:Named entity: Topf; with a semi-colon" do
    assert_lexes "&Topf;", "[[\"Character\",\"𝕋\"]]"
  end
  it "namedEntities:Bad named entity: TripleDot without a semi-colon" do
    assert_lexes "&TripleDot", "[[\"Character\",\"&TripleDot\"]]"
  end
  it "namedEntities:Named entity: TripleDot; with a semi-colon" do
    assert_lexes "&TripleDot;", "[[\"Character\",\"⃛\"]]"
  end
  it "namedEntities:Bad named entity: Tscr without a semi-colon" do
    assert_lexes "&Tscr", "[[\"Character\",\"&Tscr\"]]"
  end
  it "namedEntities:Named entity: Tscr; with a semi-colon" do
    assert_lexes "&Tscr;", "[[\"Character\",\"𝒯\"]]"
  end
  it "namedEntities:Bad named entity: Tstrok without a semi-colon" do
    assert_lexes "&Tstrok", "[[\"Character\",\"&Tstrok\"]]"
  end
  it "namedEntities:Named entity: Tstrok; with a semi-colon" do
    assert_lexes "&Tstrok;", "[[\"Character\",\"Ŧ\"]]"
  end
  it "namedEntities:Named entity: Uacute without a semi-colon" do
    assert_lexes "&Uacute", "[[\"Character\",\"Ú\"]]"
  end
  it "namedEntities:Named entity: Uacute; with a semi-colon" do
    assert_lexes "&Uacute;", "[[\"Character\",\"Ú\"]]"
  end
  it "namedEntities:Bad named entity: Uarr without a semi-colon" do
    assert_lexes "&Uarr", "[[\"Character\",\"&Uarr\"]]"
  end
  it "namedEntities:Named entity: Uarr; with a semi-colon" do
    assert_lexes "&Uarr;", "[[\"Character\",\"↟\"]]"
  end
  it "namedEntities:Bad named entity: Uarrocir without a semi-colon" do
    assert_lexes "&Uarrocir", "[[\"Character\",\"&Uarrocir\"]]"
  end
  it "namedEntities:Named entity: Uarrocir; with a semi-colon" do
    assert_lexes "&Uarrocir;", "[[\"Character\",\"⥉\"]]"
  end
  it "namedEntities:Bad named entity: Ubrcy without a semi-colon" do
    assert_lexes "&Ubrcy", "[[\"Character\",\"&Ubrcy\"]]"
  end
  it "namedEntities:Named entity: Ubrcy; with a semi-colon" do
    assert_lexes "&Ubrcy;", "[[\"Character\",\"Ў\"]]"
  end
  it "namedEntities:Bad named entity: Ubreve without a semi-colon" do
    assert_lexes "&Ubreve", "[[\"Character\",\"&Ubreve\"]]"
  end
  it "namedEntities:Named entity: Ubreve; with a semi-colon" do
    assert_lexes "&Ubreve;", "[[\"Character\",\"Ŭ\"]]"
  end
  it "namedEntities:Named entity: Ucirc without a semi-colon" do
    assert_lexes "&Ucirc", "[[\"Character\",\"Û\"]]"
  end
  it "namedEntities:Named entity: Ucirc; with a semi-colon" do
    assert_lexes "&Ucirc;", "[[\"Character\",\"Û\"]]"
  end
  it "namedEntities:Bad named entity: Ucy without a semi-colon" do
    assert_lexes "&Ucy", "[[\"Character\",\"&Ucy\"]]"
  end
  it "namedEntities:Named entity: Ucy; with a semi-colon" do
    assert_lexes "&Ucy;", "[[\"Character\",\"У\"]]"
  end
  it "namedEntities:Bad named entity: Udblac without a semi-colon" do
    assert_lexes "&Udblac", "[[\"Character\",\"&Udblac\"]]"
  end
  it "namedEntities:Named entity: Udblac; with a semi-colon" do
    assert_lexes "&Udblac;", "[[\"Character\",\"Ű\"]]"
  end
  it "namedEntities:Bad named entity: Ufr without a semi-colon" do
    assert_lexes "&Ufr", "[[\"Character\",\"&Ufr\"]]"
  end
  it "namedEntities:Named entity: Ufr; with a semi-colon" do
    assert_lexes "&Ufr;", "[[\"Character\",\"𝔘\"]]"
  end
  it "namedEntities:Named entity: Ugrave without a semi-colon" do
    assert_lexes "&Ugrave", "[[\"Character\",\"Ù\"]]"
  end
  it "namedEntities:Named entity: Ugrave; with a semi-colon" do
    assert_lexes "&Ugrave;", "[[\"Character\",\"Ù\"]]"
  end
  it "namedEntities:Bad named entity: Umacr without a semi-colon" do
    assert_lexes "&Umacr", "[[\"Character\",\"&Umacr\"]]"
  end
  it "namedEntities:Named entity: Umacr; with a semi-colon" do
    assert_lexes "&Umacr;", "[[\"Character\",\"Ū\"]]"
  end
  it "namedEntities:Bad named entity: UnderBar without a semi-colon" do
    assert_lexes "&UnderBar", "[[\"Character\",\"&UnderBar\"]]"
  end
  it "namedEntities:Named entity: UnderBar; with a semi-colon" do
    assert_lexes "&UnderBar;", "[[\"Character\",\"_\"]]"
  end
  it "namedEntities:Bad named entity: UnderBrace without a semi-colon" do
    assert_lexes "&UnderBrace", "[[\"Character\",\"&UnderBrace\"]]"
  end
  it "namedEntities:Named entity: UnderBrace; with a semi-colon" do
    assert_lexes "&UnderBrace;", "[[\"Character\",\"⏟\"]]"
  end
  it "namedEntities:Bad named entity: UnderBracket without a semi-colon" do
    assert_lexes "&UnderBracket", "[[\"Character\",\"&UnderBracket\"]]"
  end
  it "namedEntities:Named entity: UnderBracket; with a semi-colon" do
    assert_lexes "&UnderBracket;", "[[\"Character\",\"⎵\"]]"
  end
  it "namedEntities:Bad named entity: UnderParenthesis without a semi-colon" do
    assert_lexes "&UnderParenthesis", "[[\"Character\",\"&UnderParenthesis\"]]"
  end
  it "namedEntities:Named entity: UnderParenthesis; with a semi-colon" do
    assert_lexes "&UnderParenthesis;", "[[\"Character\",\"⏝\"]]"
  end
  it "namedEntities:Bad named entity: Union without a semi-colon" do
    assert_lexes "&Union", "[[\"Character\",\"&Union\"]]"
  end
  it "namedEntities:Named entity: Union; with a semi-colon" do
    assert_lexes "&Union;", "[[\"Character\",\"⋃\"]]"
  end
  it "namedEntities:Bad named entity: UnionPlus without a semi-colon" do
    assert_lexes "&UnionPlus", "[[\"Character\",\"&UnionPlus\"]]"
  end
  it "namedEntities:Named entity: UnionPlus; with a semi-colon" do
    assert_lexes "&UnionPlus;", "[[\"Character\",\"⊎\"]]"
  end
  it "namedEntities:Bad named entity: Uogon without a semi-colon" do
    assert_lexes "&Uogon", "[[\"Character\",\"&Uogon\"]]"
  end
  it "namedEntities:Named entity: Uogon; with a semi-colon" do
    assert_lexes "&Uogon;", "[[\"Character\",\"Ų\"]]"
  end
  it "namedEntities:Bad named entity: Uopf without a semi-colon" do
    assert_lexes "&Uopf", "[[\"Character\",\"&Uopf\"]]"
  end
  it "namedEntities:Named entity: Uopf; with a semi-colon" do
    assert_lexes "&Uopf;", "[[\"Character\",\"𝕌\"]]"
  end
  it "namedEntities:Bad named entity: UpArrow without a semi-colon" do
    assert_lexes "&UpArrow", "[[\"Character\",\"&UpArrow\"]]"
  end
  it "namedEntities:Named entity: UpArrow; with a semi-colon" do
    assert_lexes "&UpArrow;", "[[\"Character\",\"↑\"]]"
  end
  it "namedEntities:Bad named entity: UpArrowBar without a semi-colon" do
    assert_lexes "&UpArrowBar", "[[\"Character\",\"&UpArrowBar\"]]"
  end
  it "namedEntities:Named entity: UpArrowBar; with a semi-colon" do
    assert_lexes "&UpArrowBar;", "[[\"Character\",\"⤒\"]]"
  end
  it "namedEntities:Bad named entity: UpArrowDownArrow without a semi-colon" do
    assert_lexes "&UpArrowDownArrow", "[[\"Character\",\"&UpArrowDownArrow\"]]"
  end
  it "namedEntities:Named entity: UpArrowDownArrow; with a semi-colon" do
    assert_lexes "&UpArrowDownArrow;", "[[\"Character\",\"⇅\"]]"
  end
  it "namedEntities:Bad named entity: UpDownArrow without a semi-colon" do
    assert_lexes "&UpDownArrow", "[[\"Character\",\"&UpDownArrow\"]]"
  end
  it "namedEntities:Named entity: UpDownArrow; with a semi-colon" do
    assert_lexes "&UpDownArrow;", "[[\"Character\",\"↕\"]]"
  end
  it "namedEntities:Bad named entity: UpEquilibrium without a semi-colon" do
    assert_lexes "&UpEquilibrium", "[[\"Character\",\"&UpEquilibrium\"]]"
  end
  it "namedEntities:Named entity: UpEquilibrium; with a semi-colon" do
    assert_lexes "&UpEquilibrium;", "[[\"Character\",\"⥮\"]]"
  end
  it "namedEntities:Bad named entity: UpTee without a semi-colon" do
    assert_lexes "&UpTee", "[[\"Character\",\"&UpTee\"]]"
  end
  it "namedEntities:Named entity: UpTee; with a semi-colon" do
    assert_lexes "&UpTee;", "[[\"Character\",\"⊥\"]]"
  end
  it "namedEntities:Bad named entity: UpTeeArrow without a semi-colon" do
    assert_lexes "&UpTeeArrow", "[[\"Character\",\"&UpTeeArrow\"]]"
  end
  it "namedEntities:Named entity: UpTeeArrow; with a semi-colon" do
    assert_lexes "&UpTeeArrow;", "[[\"Character\",\"↥\"]]"
  end
  it "namedEntities:Bad named entity: Uparrow without a semi-colon" do
    assert_lexes "&Uparrow", "[[\"Character\",\"&Uparrow\"]]"
  end
  it "namedEntities:Named entity: Uparrow; with a semi-colon" do
    assert_lexes "&Uparrow;", "[[\"Character\",\"⇑\"]]"
  end
  it "namedEntities:Bad named entity: Updownarrow without a semi-colon" do
    assert_lexes "&Updownarrow", "[[\"Character\",\"&Updownarrow\"]]"
  end
  it "namedEntities:Named entity: Updownarrow; with a semi-colon" do
    assert_lexes "&Updownarrow;", "[[\"Character\",\"⇕\"]]"
  end
  it "namedEntities:Bad named entity: UpperLeftArrow without a semi-colon" do
    assert_lexes "&UpperLeftArrow", "[[\"Character\",\"&UpperLeftArrow\"]]"
  end
  it "namedEntities:Named entity: UpperLeftArrow; with a semi-colon" do
    assert_lexes "&UpperLeftArrow;", "[[\"Character\",\"↖\"]]"
  end
  it "namedEntities:Bad named entity: UpperRightArrow without a semi-colon" do
    assert_lexes "&UpperRightArrow", "[[\"Character\",\"&UpperRightArrow\"]]"
  end
  it "namedEntities:Named entity: UpperRightArrow; with a semi-colon" do
    assert_lexes "&UpperRightArrow;", "[[\"Character\",\"↗\"]]"
  end
  it "namedEntities:Bad named entity: Upsi without a semi-colon" do
    assert_lexes "&Upsi", "[[\"Character\",\"&Upsi\"]]"
  end
  it "namedEntities:Named entity: Upsi; with a semi-colon" do
    assert_lexes "&Upsi;", "[[\"Character\",\"ϒ\"]]"
  end
  it "namedEntities:Bad named entity: Upsilon without a semi-colon" do
    assert_lexes "&Upsilon", "[[\"Character\",\"&Upsilon\"]]"
  end
  it "namedEntities:Named entity: Upsilon; with a semi-colon" do
    assert_lexes "&Upsilon;", "[[\"Character\",\"Υ\"]]"
  end
  it "namedEntities:Bad named entity: Uring without a semi-colon" do
    assert_lexes "&Uring", "[[\"Character\",\"&Uring\"]]"
  end
  it "namedEntities:Named entity: Uring; with a semi-colon" do
    assert_lexes "&Uring;", "[[\"Character\",\"Ů\"]]"
  end
  it "namedEntities:Bad named entity: Uscr without a semi-colon" do
    assert_lexes "&Uscr", "[[\"Character\",\"&Uscr\"]]"
  end
  it "namedEntities:Named entity: Uscr; with a semi-colon" do
    assert_lexes "&Uscr;", "[[\"Character\",\"𝒰\"]]"
  end
  it "namedEntities:Bad named entity: Utilde without a semi-colon" do
    assert_lexes "&Utilde", "[[\"Character\",\"&Utilde\"]]"
  end
  it "namedEntities:Named entity: Utilde; with a semi-colon" do
    assert_lexes "&Utilde;", "[[\"Character\",\"Ũ\"]]"
  end
  it "namedEntities:Named entity: Uuml without a semi-colon" do
    assert_lexes "&Uuml", "[[\"Character\",\"Ü\"]]"
  end
  it "namedEntities:Named entity: Uuml; with a semi-colon" do
    assert_lexes "&Uuml;", "[[\"Character\",\"Ü\"]]"
  end
  it "namedEntities:Bad named entity: VDash without a semi-colon" do
    assert_lexes "&VDash", "[[\"Character\",\"&VDash\"]]"
  end
  it "namedEntities:Named entity: VDash; with a semi-colon" do
    assert_lexes "&VDash;", "[[\"Character\",\"⊫\"]]"
  end
  it "namedEntities:Bad named entity: Vbar without a semi-colon" do
    assert_lexes "&Vbar", "[[\"Character\",\"&Vbar\"]]"
  end
  it "namedEntities:Named entity: Vbar; with a semi-colon" do
    assert_lexes "&Vbar;", "[[\"Character\",\"⫫\"]]"
  end
  it "namedEntities:Bad named entity: Vcy without a semi-colon" do
    assert_lexes "&Vcy", "[[\"Character\",\"&Vcy\"]]"
  end
  it "namedEntities:Named entity: Vcy; with a semi-colon" do
    assert_lexes "&Vcy;", "[[\"Character\",\"В\"]]"
  end
  it "namedEntities:Bad named entity: Vdash without a semi-colon" do
    assert_lexes "&Vdash", "[[\"Character\",\"&Vdash\"]]"
  end
  it "namedEntities:Named entity: Vdash; with a semi-colon" do
    assert_lexes "&Vdash;", "[[\"Character\",\"⊩\"]]"
  end
  it "namedEntities:Bad named entity: Vdashl without a semi-colon" do
    assert_lexes "&Vdashl", "[[\"Character\",\"&Vdashl\"]]"
  end
  it "namedEntities:Named entity: Vdashl; with a semi-colon" do
    assert_lexes "&Vdashl;", "[[\"Character\",\"⫦\"]]"
  end
  it "namedEntities:Bad named entity: Vee without a semi-colon" do
    assert_lexes "&Vee", "[[\"Character\",\"&Vee\"]]"
  end
  it "namedEntities:Named entity: Vee; with a semi-colon" do
    assert_lexes "&Vee;", "[[\"Character\",\"⋁\"]]"
  end
  it "namedEntities:Bad named entity: Verbar without a semi-colon" do
    assert_lexes "&Verbar", "[[\"Character\",\"&Verbar\"]]"
  end
  it "namedEntities:Named entity: Verbar; with a semi-colon" do
    assert_lexes "&Verbar;", "[[\"Character\",\"‖\"]]"
  end
  it "namedEntities:Bad named entity: Vert without a semi-colon" do
    assert_lexes "&Vert", "[[\"Character\",\"&Vert\"]]"
  end
  it "namedEntities:Named entity: Vert; with a semi-colon" do
    assert_lexes "&Vert;", "[[\"Character\",\"‖\"]]"
  end
  it "namedEntities:Bad named entity: VerticalBar without a semi-colon" do
    assert_lexes "&VerticalBar", "[[\"Character\",\"&VerticalBar\"]]"
  end
  it "namedEntities:Named entity: VerticalBar; with a semi-colon" do
    assert_lexes "&VerticalBar;", "[[\"Character\",\"∣\"]]"
  end
  it "namedEntities:Bad named entity: VerticalLine without a semi-colon" do
    assert_lexes "&VerticalLine", "[[\"Character\",\"&VerticalLine\"]]"
  end
  it "namedEntities:Named entity: VerticalLine; with a semi-colon" do
    assert_lexes "&VerticalLine;", "[[\"Character\",\"|\"]]"
  end
  it "namedEntities:Bad named entity: VerticalSeparator without a semi-colon" do
    assert_lexes "&VerticalSeparator", "[[\"Character\",\"&VerticalSeparator\"]]"
  end
  it "namedEntities:Named entity: VerticalSeparator; with a semi-colon" do
    assert_lexes "&VerticalSeparator;", "[[\"Character\",\"❘\"]]"
  end
  it "namedEntities:Bad named entity: VerticalTilde without a semi-colon" do
    assert_lexes "&VerticalTilde", "[[\"Character\",\"&VerticalTilde\"]]"
  end
  it "namedEntities:Named entity: VerticalTilde; with a semi-colon" do
    assert_lexes "&VerticalTilde;", "[[\"Character\",\"≀\"]]"
  end
  it "namedEntities:Bad named entity: VeryThinSpace without a semi-colon" do
    assert_lexes "&VeryThinSpace", "[[\"Character\",\"&VeryThinSpace\"]]"
  end
  it "namedEntities:Named entity: VeryThinSpace; with a semi-colon" do
    assert_lexes "&VeryThinSpace;", "[[\"Character\",\"\u200A\"]]"
  end
  it "namedEntities:Bad named entity: Vfr without a semi-colon" do
    assert_lexes "&Vfr", "[[\"Character\",\"&Vfr\"]]"
  end
  it "namedEntities:Named entity: Vfr; with a semi-colon" do
    assert_lexes "&Vfr;", "[[\"Character\",\"𝔙\"]]"
  end
  it "namedEntities:Bad named entity: Vopf without a semi-colon" do
    assert_lexes "&Vopf", "[[\"Character\",\"&Vopf\"]]"
  end
  it "namedEntities:Named entity: Vopf; with a semi-colon" do
    assert_lexes "&Vopf;", "[[\"Character\",\"𝕍\"]]"
  end
  it "namedEntities:Bad named entity: Vscr without a semi-colon" do
    assert_lexes "&Vscr", "[[\"Character\",\"&Vscr\"]]"
  end
  it "namedEntities:Named entity: Vscr; with a semi-colon" do
    assert_lexes "&Vscr;", "[[\"Character\",\"𝒱\"]]"
  end
  it "namedEntities:Bad named entity: Vvdash without a semi-colon" do
    assert_lexes "&Vvdash", "[[\"Character\",\"&Vvdash\"]]"
  end
  it "namedEntities:Named entity: Vvdash; with a semi-colon" do
    assert_lexes "&Vvdash;", "[[\"Character\",\"⊪\"]]"
  end
  it "namedEntities:Bad named entity: Wcirc without a semi-colon" do
    assert_lexes "&Wcirc", "[[\"Character\",\"&Wcirc\"]]"
  end
  it "namedEntities:Named entity: Wcirc; with a semi-colon" do
    assert_lexes "&Wcirc;", "[[\"Character\",\"Ŵ\"]]"
  end
  it "namedEntities:Bad named entity: Wedge without a semi-colon" do
    assert_lexes "&Wedge", "[[\"Character\",\"&Wedge\"]]"
  end
  it "namedEntities:Named entity: Wedge; with a semi-colon" do
    assert_lexes "&Wedge;", "[[\"Character\",\"⋀\"]]"
  end
  it "namedEntities:Bad named entity: Wfr without a semi-colon" do
    assert_lexes "&Wfr", "[[\"Character\",\"&Wfr\"]]"
  end
  it "namedEntities:Named entity: Wfr; with a semi-colon" do
    assert_lexes "&Wfr;", "[[\"Character\",\"𝔚\"]]"
  end
  it "namedEntities:Bad named entity: Wopf without a semi-colon" do
    assert_lexes "&Wopf", "[[\"Character\",\"&Wopf\"]]"
  end
  it "namedEntities:Named entity: Wopf; with a semi-colon" do
    assert_lexes "&Wopf;", "[[\"Character\",\"𝕎\"]]"
  end
  it "namedEntities:Bad named entity: Wscr without a semi-colon" do
    assert_lexes "&Wscr", "[[\"Character\",\"&Wscr\"]]"
  end
  it "namedEntities:Named entity: Wscr; with a semi-colon" do
    assert_lexes "&Wscr;", "[[\"Character\",\"𝒲\"]]"
  end
  it "namedEntities:Bad named entity: Xfr without a semi-colon" do
    assert_lexes "&Xfr", "[[\"Character\",\"&Xfr\"]]"
  end
  it "namedEntities:Named entity: Xfr; with a semi-colon" do
    assert_lexes "&Xfr;", "[[\"Character\",\"𝔛\"]]"
  end
  it "namedEntities:Bad named entity: Xi without a semi-colon" do
    assert_lexes "&Xi", "[[\"Character\",\"&Xi\"]]"
  end
  it "namedEntities:Named entity: Xi; with a semi-colon" do
    assert_lexes "&Xi;", "[[\"Character\",\"Ξ\"]]"
  end
  it "namedEntities:Bad named entity: Xopf without a semi-colon" do
    assert_lexes "&Xopf", "[[\"Character\",\"&Xopf\"]]"
  end
  it "namedEntities:Named entity: Xopf; with a semi-colon" do
    assert_lexes "&Xopf;", "[[\"Character\",\"𝕏\"]]"
  end
  it "namedEntities:Bad named entity: Xscr without a semi-colon" do
    assert_lexes "&Xscr", "[[\"Character\",\"&Xscr\"]]"
  end
  it "namedEntities:Named entity: Xscr; with a semi-colon" do
    assert_lexes "&Xscr;", "[[\"Character\",\"𝒳\"]]"
  end
  it "namedEntities:Bad named entity: YAcy without a semi-colon" do
    assert_lexes "&YAcy", "[[\"Character\",\"&YAcy\"]]"
  end
  it "namedEntities:Named entity: YAcy; with a semi-colon" do
    assert_lexes "&YAcy;", "[[\"Character\",\"Я\"]]"
  end
  it "namedEntities:Bad named entity: YIcy without a semi-colon" do
    assert_lexes "&YIcy", "[[\"Character\",\"&YIcy\"]]"
  end
  it "namedEntities:Named entity: YIcy; with a semi-colon" do
    assert_lexes "&YIcy;", "[[\"Character\",\"Ї\"]]"
  end
  it "namedEntities:Bad named entity: YUcy without a semi-colon" do
    assert_lexes "&YUcy", "[[\"Character\",\"&YUcy\"]]"
  end
  it "namedEntities:Named entity: YUcy; with a semi-colon" do
    assert_lexes "&YUcy;", "[[\"Character\",\"Ю\"]]"
  end
  it "namedEntities:Named entity: Yacute without a semi-colon" do
    assert_lexes "&Yacute", "[[\"Character\",\"Ý\"]]"
  end
  it "namedEntities:Named entity: Yacute; with a semi-colon" do
    assert_lexes "&Yacute;", "[[\"Character\",\"Ý\"]]"
  end
  it "namedEntities:Bad named entity: Ycirc without a semi-colon" do
    assert_lexes "&Ycirc", "[[\"Character\",\"&Ycirc\"]]"
  end
  it "namedEntities:Named entity: Ycirc; with a semi-colon" do
    assert_lexes "&Ycirc;", "[[\"Character\",\"Ŷ\"]]"
  end
  it "namedEntities:Bad named entity: Ycy without a semi-colon" do
    assert_lexes "&Ycy", "[[\"Character\",\"&Ycy\"]]"
  end
  it "namedEntities:Named entity: Ycy; with a semi-colon" do
    assert_lexes "&Ycy;", "[[\"Character\",\"Ы\"]]"
  end
  it "namedEntities:Bad named entity: Yfr without a semi-colon" do
    assert_lexes "&Yfr", "[[\"Character\",\"&Yfr\"]]"
  end
  it "namedEntities:Named entity: Yfr; with a semi-colon" do
    assert_lexes "&Yfr;", "[[\"Character\",\"𝔜\"]]"
  end
  it "namedEntities:Bad named entity: Yopf without a semi-colon" do
    assert_lexes "&Yopf", "[[\"Character\",\"&Yopf\"]]"
  end
  it "namedEntities:Named entity: Yopf; with a semi-colon" do
    assert_lexes "&Yopf;", "[[\"Character\",\"𝕐\"]]"
  end
  it "namedEntities:Bad named entity: Yscr without a semi-colon" do
    assert_lexes "&Yscr", "[[\"Character\",\"&Yscr\"]]"
  end
  it "namedEntities:Named entity: Yscr; with a semi-colon" do
    assert_lexes "&Yscr;", "[[\"Character\",\"𝒴\"]]"
  end
  it "namedEntities:Bad named entity: Yuml without a semi-colon" do
    assert_lexes "&Yuml", "[[\"Character\",\"&Yuml\"]]"
  end
  it "namedEntities:Named entity: Yuml; with a semi-colon" do
    assert_lexes "&Yuml;", "[[\"Character\",\"Ÿ\"]]"
  end
  it "namedEntities:Bad named entity: ZHcy without a semi-colon" do
    assert_lexes "&ZHcy", "[[\"Character\",\"&ZHcy\"]]"
  end
  it "namedEntities:Named entity: ZHcy; with a semi-colon" do
    assert_lexes "&ZHcy;", "[[\"Character\",\"Ж\"]]"
  end
  it "namedEntities:Bad named entity: Zacute without a semi-colon" do
    assert_lexes "&Zacute", "[[\"Character\",\"&Zacute\"]]"
  end
  it "namedEntities:Named entity: Zacute; with a semi-colon" do
    assert_lexes "&Zacute;", "[[\"Character\",\"Ź\"]]"
  end
  it "namedEntities:Bad named entity: Zcaron without a semi-colon" do
    assert_lexes "&Zcaron", "[[\"Character\",\"&Zcaron\"]]"
  end
  it "namedEntities:Named entity: Zcaron; with a semi-colon" do
    assert_lexes "&Zcaron;", "[[\"Character\",\"Ž\"]]"
  end
  it "namedEntities:Bad named entity: Zcy without a semi-colon" do
    assert_lexes "&Zcy", "[[\"Character\",\"&Zcy\"]]"
  end
  it "namedEntities:Named entity: Zcy; with a semi-colon" do
    assert_lexes "&Zcy;", "[[\"Character\",\"З\"]]"
  end
  it "namedEntities:Bad named entity: Zdot without a semi-colon" do
    assert_lexes "&Zdot", "[[\"Character\",\"&Zdot\"]]"
  end
  it "namedEntities:Named entity: Zdot; with a semi-colon" do
    assert_lexes "&Zdot;", "[[\"Character\",\"Ż\"]]"
  end
  it "namedEntities:Bad named entity: ZeroWidthSpace without a semi-colon" do
    assert_lexes "&ZeroWidthSpace", "[[\"Character\",\"&ZeroWidthSpace\"]]"
  end
  it "namedEntities:Named entity: ZeroWidthSpace; with a semi-colon" do
    assert_lexes "&ZeroWidthSpace;", "[[\"Character\",\"\u200B\"]]"
  end
  it "namedEntities:Bad named entity: Zeta without a semi-colon" do
    assert_lexes "&Zeta", "[[\"Character\",\"&Zeta\"]]"
  end
  it "namedEntities:Named entity: Zeta; with a semi-colon" do
    assert_lexes "&Zeta;", "[[\"Character\",\"Ζ\"]]"
  end
  it "namedEntities:Bad named entity: Zfr without a semi-colon" do
    assert_lexes "&Zfr", "[[\"Character\",\"&Zfr\"]]"
  end
  it "namedEntities:Named entity: Zfr; with a semi-colon" do
    assert_lexes "&Zfr;", "[[\"Character\",\"ℨ\"]]"
  end
  it "namedEntities:Bad named entity: Zopf without a semi-colon" do
    assert_lexes "&Zopf", "[[\"Character\",\"&Zopf\"]]"
  end
  it "namedEntities:Named entity: Zopf; with a semi-colon" do
    assert_lexes "&Zopf;", "[[\"Character\",\"ℤ\"]]"
  end
  it "namedEntities:Bad named entity: Zscr without a semi-colon" do
    assert_lexes "&Zscr", "[[\"Character\",\"&Zscr\"]]"
  end
  it "namedEntities:Named entity: Zscr; with a semi-colon" do
    assert_lexes "&Zscr;", "[[\"Character\",\"𝒵\"]]"
  end
  it "namedEntities:Named entity: aacute without a semi-colon" do
    assert_lexes "&aacute", "[[\"Character\",\"á\"]]"
  end
  it "namedEntities:Named entity: aacute; with a semi-colon" do
    assert_lexes "&aacute;", "[[\"Character\",\"á\"]]"
  end
  it "namedEntities:Bad named entity: abreve without a semi-colon" do
    assert_lexes "&abreve", "[[\"Character\",\"&abreve\"]]"
  end
  it "namedEntities:Named entity: abreve; with a semi-colon" do
    assert_lexes "&abreve;", "[[\"Character\",\"ă\"]]"
  end
  it "namedEntities:Bad named entity: ac without a semi-colon" do
    assert_lexes "&ac", "[[\"Character\",\"&ac\"]]"
  end
  it "namedEntities:Named entity: ac; with a semi-colon" do
    assert_lexes "&ac;", "[[\"Character\",\"∾\"]]"
  end
  it "namedEntities:Bad named entity: acE without a semi-colon" do
    assert_lexes "&acE", "[[\"Character\",\"&acE\"]]"
  end
  it "namedEntities:Named entity: acE; with a semi-colon" do
    assert_lexes "&acE;", "[[\"Character\",\"∾̳\"]]"
  end
  it "namedEntities:Bad named entity: acd without a semi-colon" do
    assert_lexes "&acd", "[[\"Character\",\"&acd\"]]"
  end
  it "namedEntities:Named entity: acd; with a semi-colon" do
    assert_lexes "&acd;", "[[\"Character\",\"∿\"]]"
  end
  it "namedEntities:Named entity: acirc without a semi-colon" do
    assert_lexes "&acirc", "[[\"Character\",\"â\"]]"
  end
  it "namedEntities:Named entity: acirc; with a semi-colon" do
    assert_lexes "&acirc;", "[[\"Character\",\"â\"]]"
  end
  it "namedEntities:Named entity: acute without a semi-colon" do
    assert_lexes "&acute", "[[\"Character\",\"´\"]]"
  end
  it "namedEntities:Named entity: acute; with a semi-colon" do
    assert_lexes "&acute;", "[[\"Character\",\"´\"]]"
  end
  it "namedEntities:Bad named entity: acy without a semi-colon" do
    assert_lexes "&acy", "[[\"Character\",\"&acy\"]]"
  end
  it "namedEntities:Named entity: acy; with a semi-colon" do
    assert_lexes "&acy;", "[[\"Character\",\"а\"]]"
  end
  it "namedEntities:Named entity: aelig without a semi-colon" do
    assert_lexes "&aelig", "[[\"Character\",\"æ\"]]"
  end
  it "namedEntities:Named entity: aelig; with a semi-colon" do
    assert_lexes "&aelig;", "[[\"Character\",\"æ\"]]"
  end
  it "namedEntities:Bad named entity: af without a semi-colon" do
    assert_lexes "&af", "[[\"Character\",\"&af\"]]"
  end
  it "namedEntities:Named entity: af; with a semi-colon" do
    assert_lexes "&af;", "[[\"Character\",\"\u2061\"]]"
  end
  it "namedEntities:Bad named entity: afr without a semi-colon" do
    assert_lexes "&afr", "[[\"Character\",\"&afr\"]]"
  end
  it "namedEntities:Named entity: afr; with a semi-colon" do
    assert_lexes "&afr;", "[[\"Character\",\"𝔞\"]]"
  end
  it "namedEntities:Named entity: agrave without a semi-colon" do
    assert_lexes "&agrave", "[[\"Character\",\"à\"]]"
  end
  it "namedEntities:Named entity: agrave; with a semi-colon" do
    assert_lexes "&agrave;", "[[\"Character\",\"à\"]]"
  end
  it "namedEntities:Bad named entity: alefsym without a semi-colon" do
    assert_lexes "&alefsym", "[[\"Character\",\"&alefsym\"]]"
  end
  it "namedEntities:Named entity: alefsym; with a semi-colon" do
    assert_lexes "&alefsym;", "[[\"Character\",\"ℵ\"]]"
  end
  it "namedEntities:Bad named entity: aleph without a semi-colon" do
    assert_lexes "&aleph", "[[\"Character\",\"&aleph\"]]"
  end
  it "namedEntities:Named entity: aleph; with a semi-colon" do
    assert_lexes "&aleph;", "[[\"Character\",\"ℵ\"]]"
  end
  it "namedEntities:Bad named entity: alpha without a semi-colon" do
    assert_lexes "&alpha", "[[\"Character\",\"&alpha\"]]"
  end
  it "namedEntities:Named entity: alpha; with a semi-colon" do
    assert_lexes "&alpha;", "[[\"Character\",\"α\"]]"
  end
  it "namedEntities:Bad named entity: amacr without a semi-colon" do
    assert_lexes "&amacr", "[[\"Character\",\"&amacr\"]]"
  end
  it "namedEntities:Named entity: amacr; with a semi-colon" do
    assert_lexes "&amacr;", "[[\"Character\",\"ā\"]]"
  end
  it "namedEntities:Bad named entity: amalg without a semi-colon" do
    assert_lexes "&amalg", "[[\"Character\",\"&amalg\"]]"
  end
  it "namedEntities:Named entity: amalg; with a semi-colon" do
    assert_lexes "&amalg;", "[[\"Character\",\"⨿\"]]"
  end
  it "namedEntities:Named entity: amp without a semi-colon" do
    assert_lexes "&amp", "[[\"Character\",\"&\"]]"
  end
  it "namedEntities:Named entity: amp; with a semi-colon" do
    assert_lexes "&amp;", "[[\"Character\",\"&\"]]"
  end
  it "namedEntities:Bad named entity: and without a semi-colon" do
    assert_lexes "&and", "[[\"Character\",\"&and\"]]"
  end
  it "namedEntities:Named entity: and; with a semi-colon" do
    assert_lexes "&and;", "[[\"Character\",\"∧\"]]"
  end
  it "namedEntities:Bad named entity: andand without a semi-colon" do
    assert_lexes "&andand", "[[\"Character\",\"&andand\"]]"
  end
  it "namedEntities:Named entity: andand; with a semi-colon" do
    assert_lexes "&andand;", "[[\"Character\",\"⩕\"]]"
  end
  it "namedEntities:Bad named entity: andd without a semi-colon" do
    assert_lexes "&andd", "[[\"Character\",\"&andd\"]]"
  end
  it "namedEntities:Named entity: andd; with a semi-colon" do
    assert_lexes "&andd;", "[[\"Character\",\"⩜\"]]"
  end
  it "namedEntities:Bad named entity: andslope without a semi-colon" do
    assert_lexes "&andslope", "[[\"Character\",\"&andslope\"]]"
  end
  it "namedEntities:Named entity: andslope; with a semi-colon" do
    assert_lexes "&andslope;", "[[\"Character\",\"⩘\"]]"
  end
  it "namedEntities:Bad named entity: andv without a semi-colon" do
    assert_lexes "&andv", "[[\"Character\",\"&andv\"]]"
  end
  it "namedEntities:Named entity: andv; with a semi-colon" do
    assert_lexes "&andv;", "[[\"Character\",\"⩚\"]]"
  end
  it "namedEntities:Bad named entity: ang without a semi-colon" do
    assert_lexes "&ang", "[[\"Character\",\"&ang\"]]"
  end
  it "namedEntities:Named entity: ang; with a semi-colon" do
    assert_lexes "&ang;", "[[\"Character\",\"∠\"]]"
  end
  it "namedEntities:Bad named entity: ange without a semi-colon" do
    assert_lexes "&ange", "[[\"Character\",\"&ange\"]]"
  end
  it "namedEntities:Named entity: ange; with a semi-colon" do
    assert_lexes "&ange;", "[[\"Character\",\"⦤\"]]"
  end
  it "namedEntities:Bad named entity: angle without a semi-colon" do
    assert_lexes "&angle", "[[\"Character\",\"&angle\"]]"
  end
  it "namedEntities:Named entity: angle; with a semi-colon" do
    assert_lexes "&angle;", "[[\"Character\",\"∠\"]]"
  end
  it "namedEntities:Bad named entity: angmsd without a semi-colon" do
    assert_lexes "&angmsd", "[[\"Character\",\"&angmsd\"]]"
  end
  it "namedEntities:Named entity: angmsd; with a semi-colon" do
    assert_lexes "&angmsd;", "[[\"Character\",\"∡\"]]"
  end
  it "namedEntities:Bad named entity: angmsdaa without a semi-colon" do
    assert_lexes "&angmsdaa", "[[\"Character\",\"&angmsdaa\"]]"
  end
  it "namedEntities:Named entity: angmsdaa; with a semi-colon" do
    assert_lexes "&angmsdaa;", "[[\"Character\",\"⦨\"]]"
  end
  it "namedEntities:Bad named entity: angmsdab without a semi-colon" do
    assert_lexes "&angmsdab", "[[\"Character\",\"&angmsdab\"]]"
  end
  it "namedEntities:Named entity: angmsdab; with a semi-colon" do
    assert_lexes "&angmsdab;", "[[\"Character\",\"⦩\"]]"
  end
  it "namedEntities:Bad named entity: angmsdac without a semi-colon" do
    assert_lexes "&angmsdac", "[[\"Character\",\"&angmsdac\"]]"
  end
  it "namedEntities:Named entity: angmsdac; with a semi-colon" do
    assert_lexes "&angmsdac;", "[[\"Character\",\"⦪\"]]"
  end
  it "namedEntities:Bad named entity: angmsdad without a semi-colon" do
    assert_lexes "&angmsdad", "[[\"Character\",\"&angmsdad\"]]"
  end
  it "namedEntities:Named entity: angmsdad; with a semi-colon" do
    assert_lexes "&angmsdad;", "[[\"Character\",\"⦫\"]]"
  end
  it "namedEntities:Bad named entity: angmsdae without a semi-colon" do
    assert_lexes "&angmsdae", "[[\"Character\",\"&angmsdae\"]]"
  end
  it "namedEntities:Named entity: angmsdae; with a semi-colon" do
    assert_lexes "&angmsdae;", "[[\"Character\",\"⦬\"]]"
  end
  it "namedEntities:Bad named entity: angmsdaf without a semi-colon" do
    assert_lexes "&angmsdaf", "[[\"Character\",\"&angmsdaf\"]]"
  end
  it "namedEntities:Named entity: angmsdaf; with a semi-colon" do
    assert_lexes "&angmsdaf;", "[[\"Character\",\"⦭\"]]"
  end
  it "namedEntities:Bad named entity: angmsdag without a semi-colon" do
    assert_lexes "&angmsdag", "[[\"Character\",\"&angmsdag\"]]"
  end
  it "namedEntities:Named entity: angmsdag; with a semi-colon" do
    assert_lexes "&angmsdag;", "[[\"Character\",\"⦮\"]]"
  end
  it "namedEntities:Bad named entity: angmsdah without a semi-colon" do
    assert_lexes "&angmsdah", "[[\"Character\",\"&angmsdah\"]]"
  end
  it "namedEntities:Named entity: angmsdah; with a semi-colon" do
    assert_lexes "&angmsdah;", "[[\"Character\",\"⦯\"]]"
  end
  it "namedEntities:Bad named entity: angrt without a semi-colon" do
    assert_lexes "&angrt", "[[\"Character\",\"&angrt\"]]"
  end
  it "namedEntities:Named entity: angrt; with a semi-colon" do
    assert_lexes "&angrt;", "[[\"Character\",\"∟\"]]"
  end
  it "namedEntities:Bad named entity: angrtvb without a semi-colon" do
    assert_lexes "&angrtvb", "[[\"Character\",\"&angrtvb\"]]"
  end
  it "namedEntities:Named entity: angrtvb; with a semi-colon" do
    assert_lexes "&angrtvb;", "[[\"Character\",\"⊾\"]]"
  end
  it "namedEntities:Bad named entity: angrtvbd without a semi-colon" do
    assert_lexes "&angrtvbd", "[[\"Character\",\"&angrtvbd\"]]"
  end
  it "namedEntities:Named entity: angrtvbd; with a semi-colon" do
    assert_lexes "&angrtvbd;", "[[\"Character\",\"⦝\"]]"
  end
  it "namedEntities:Bad named entity: angsph without a semi-colon" do
    assert_lexes "&angsph", "[[\"Character\",\"&angsph\"]]"
  end
  it "namedEntities:Named entity: angsph; with a semi-colon" do
    assert_lexes "&angsph;", "[[\"Character\",\"∢\"]]"
  end
  it "namedEntities:Bad named entity: angst without a semi-colon" do
    assert_lexes "&angst", "[[\"Character\",\"&angst\"]]"
  end
  it "namedEntities:Named entity: angst; with a semi-colon" do
    assert_lexes "&angst;", "[[\"Character\",\"Å\"]]"
  end
  it "namedEntities:Bad named entity: angzarr without a semi-colon" do
    assert_lexes "&angzarr", "[[\"Character\",\"&angzarr\"]]"
  end
  it "namedEntities:Named entity: angzarr; with a semi-colon" do
    assert_lexes "&angzarr;", "[[\"Character\",\"⍼\"]]"
  end
  it "namedEntities:Bad named entity: aogon without a semi-colon" do
    assert_lexes "&aogon", "[[\"Character\",\"&aogon\"]]"
  end
  it "namedEntities:Named entity: aogon; with a semi-colon" do
    assert_lexes "&aogon;", "[[\"Character\",\"ą\"]]"
  end
  it "namedEntities:Bad named entity: aopf without a semi-colon" do
    assert_lexes "&aopf", "[[\"Character\",\"&aopf\"]]"
  end
  it "namedEntities:Named entity: aopf; with a semi-colon" do
    assert_lexes "&aopf;", "[[\"Character\",\"𝕒\"]]"
  end
  it "namedEntities:Bad named entity: ap without a semi-colon" do
    assert_lexes "&ap", "[[\"Character\",\"&ap\"]]"
  end
  it "namedEntities:Named entity: ap; with a semi-colon" do
    assert_lexes "&ap;", "[[\"Character\",\"≈\"]]"
  end
  it "namedEntities:Bad named entity: apE without a semi-colon" do
    assert_lexes "&apE", "[[\"Character\",\"&apE\"]]"
  end
  it "namedEntities:Named entity: apE; with a semi-colon" do
    assert_lexes "&apE;", "[[\"Character\",\"⩰\"]]"
  end
  it "namedEntities:Bad named entity: apacir without a semi-colon" do
    assert_lexes "&apacir", "[[\"Character\",\"&apacir\"]]"
  end
  it "namedEntities:Named entity: apacir; with a semi-colon" do
    assert_lexes "&apacir;", "[[\"Character\",\"⩯\"]]"
  end
  it "namedEntities:Bad named entity: ape without a semi-colon" do
    assert_lexes "&ape", "[[\"Character\",\"&ape\"]]"
  end
  it "namedEntities:Named entity: ape; with a semi-colon" do
    assert_lexes "&ape;", "[[\"Character\",\"≊\"]]"
  end
  it "namedEntities:Bad named entity: apid without a semi-colon" do
    assert_lexes "&apid", "[[\"Character\",\"&apid\"]]"
  end
  it "namedEntities:Named entity: apid; with a semi-colon" do
    assert_lexes "&apid;", "[[\"Character\",\"≋\"]]"
  end
  it "namedEntities:Bad named entity: apos without a semi-colon" do
    assert_lexes "&apos", "[[\"Character\",\"&apos\"]]"
  end
  it "namedEntities:Named entity: apos; with a semi-colon" do
    assert_lexes "&apos;", "[[\"Character\",\"'\"]]"
  end
  it "namedEntities:Bad named entity: approx without a semi-colon" do
    assert_lexes "&approx", "[[\"Character\",\"&approx\"]]"
  end
  it "namedEntities:Named entity: approx; with a semi-colon" do
    assert_lexes "&approx;", "[[\"Character\",\"≈\"]]"
  end
  it "namedEntities:Bad named entity: approxeq without a semi-colon" do
    assert_lexes "&approxeq", "[[\"Character\",\"&approxeq\"]]"
  end
  it "namedEntities:Named entity: approxeq; with a semi-colon" do
    assert_lexes "&approxeq;", "[[\"Character\",\"≊\"]]"
  end
  it "namedEntities:Named entity: aring without a semi-colon" do
    assert_lexes "&aring", "[[\"Character\",\"å\"]]"
  end
  it "namedEntities:Named entity: aring; with a semi-colon" do
    assert_lexes "&aring;", "[[\"Character\",\"å\"]]"
  end
  it "namedEntities:Bad named entity: ascr without a semi-colon" do
    assert_lexes "&ascr", "[[\"Character\",\"&ascr\"]]"
  end
  it "namedEntities:Named entity: ascr; with a semi-colon" do
    assert_lexes "&ascr;", "[[\"Character\",\"𝒶\"]]"
  end
  it "namedEntities:Bad named entity: ast without a semi-colon" do
    assert_lexes "&ast", "[[\"Character\",\"&ast\"]]"
  end
  it "namedEntities:Named entity: ast; with a semi-colon" do
    assert_lexes "&ast;", "[[\"Character\",\"*\"]]"
  end
  it "namedEntities:Bad named entity: asymp without a semi-colon" do
    assert_lexes "&asymp", "[[\"Character\",\"&asymp\"]]"
  end
  it "namedEntities:Named entity: asymp; with a semi-colon" do
    assert_lexes "&asymp;", "[[\"Character\",\"≈\"]]"
  end
  it "namedEntities:Bad named entity: asympeq without a semi-colon" do
    assert_lexes "&asympeq", "[[\"Character\",\"&asympeq\"]]"
  end
  it "namedEntities:Named entity: asympeq; with a semi-colon" do
    assert_lexes "&asympeq;", "[[\"Character\",\"≍\"]]"
  end
  it "namedEntities:Named entity: atilde without a semi-colon" do
    assert_lexes "&atilde", "[[\"Character\",\"ã\"]]"
  end
  it "namedEntities:Named entity: atilde; with a semi-colon" do
    assert_lexes "&atilde;", "[[\"Character\",\"ã\"]]"
  end
  it "namedEntities:Named entity: auml without a semi-colon" do
    assert_lexes "&auml", "[[\"Character\",\"ä\"]]"
  end
  it "namedEntities:Named entity: auml; with a semi-colon" do
    assert_lexes "&auml;", "[[\"Character\",\"ä\"]]"
  end
  it "namedEntities:Bad named entity: awconint without a semi-colon" do
    assert_lexes "&awconint", "[[\"Character\",\"&awconint\"]]"
  end
  it "namedEntities:Named entity: awconint; with a semi-colon" do
    assert_lexes "&awconint;", "[[\"Character\",\"∳\"]]"
  end
  it "namedEntities:Bad named entity: awint without a semi-colon" do
    assert_lexes "&awint", "[[\"Character\",\"&awint\"]]"
  end
  it "namedEntities:Named entity: awint; with a semi-colon" do
    assert_lexes "&awint;", "[[\"Character\",\"⨑\"]]"
  end
  it "namedEntities:Bad named entity: bNot without a semi-colon" do
    assert_lexes "&bNot", "[[\"Character\",\"&bNot\"]]"
  end
  it "namedEntities:Named entity: bNot; with a semi-colon" do
    assert_lexes "&bNot;", "[[\"Character\",\"⫭\"]]"
  end
  it "namedEntities:Bad named entity: backcong without a semi-colon" do
    assert_lexes "&backcong", "[[\"Character\",\"&backcong\"]]"
  end
  it "namedEntities:Named entity: backcong; with a semi-colon" do
    assert_lexes "&backcong;", "[[\"Character\",\"≌\"]]"
  end
  it "namedEntities:Bad named entity: backepsilon without a semi-colon" do
    assert_lexes "&backepsilon", "[[\"Character\",\"&backepsilon\"]]"
  end
  it "namedEntities:Named entity: backepsilon; with a semi-colon" do
    assert_lexes "&backepsilon;", "[[\"Character\",\"϶\"]]"
  end
  it "namedEntities:Bad named entity: backprime without a semi-colon" do
    assert_lexes "&backprime", "[[\"Character\",\"&backprime\"]]"
  end
  it "namedEntities:Named entity: backprime; with a semi-colon" do
    assert_lexes "&backprime;", "[[\"Character\",\"‵\"]]"
  end
  it "namedEntities:Bad named entity: backsim without a semi-colon" do
    assert_lexes "&backsim", "[[\"Character\",\"&backsim\"]]"
  end
  it "namedEntities:Named entity: backsim; with a semi-colon" do
    assert_lexes "&backsim;", "[[\"Character\",\"∽\"]]"
  end
  it "namedEntities:Bad named entity: backsimeq without a semi-colon" do
    assert_lexes "&backsimeq", "[[\"Character\",\"&backsimeq\"]]"
  end
  it "namedEntities:Named entity: backsimeq; with a semi-colon" do
    assert_lexes "&backsimeq;", "[[\"Character\",\"⋍\"]]"
  end
  it "namedEntities:Bad named entity: barvee without a semi-colon" do
    assert_lexes "&barvee", "[[\"Character\",\"&barvee\"]]"
  end
  it "namedEntities:Named entity: barvee; with a semi-colon" do
    assert_lexes "&barvee;", "[[\"Character\",\"⊽\"]]"
  end
  it "namedEntities:Bad named entity: barwed without a semi-colon" do
    assert_lexes "&barwed", "[[\"Character\",\"&barwed\"]]"
  end
  it "namedEntities:Named entity: barwed; with a semi-colon" do
    assert_lexes "&barwed;", "[[\"Character\",\"⌅\"]]"
  end
  it "namedEntities:Bad named entity: barwedge without a semi-colon" do
    assert_lexes "&barwedge", "[[\"Character\",\"&barwedge\"]]"
  end
  it "namedEntities:Named entity: barwedge; with a semi-colon" do
    assert_lexes "&barwedge;", "[[\"Character\",\"⌅\"]]"
  end
  it "namedEntities:Bad named entity: bbrk without a semi-colon" do
    assert_lexes "&bbrk", "[[\"Character\",\"&bbrk\"]]"
  end
  it "namedEntities:Named entity: bbrk; with a semi-colon" do
    assert_lexes "&bbrk;", "[[\"Character\",\"⎵\"]]"
  end
  it "namedEntities:Bad named entity: bbrktbrk without a semi-colon" do
    assert_lexes "&bbrktbrk", "[[\"Character\",\"&bbrktbrk\"]]"
  end
  it "namedEntities:Named entity: bbrktbrk; with a semi-colon" do
    assert_lexes "&bbrktbrk;", "[[\"Character\",\"⎶\"]]"
  end
  it "namedEntities:Bad named entity: bcong without a semi-colon" do
    assert_lexes "&bcong", "[[\"Character\",\"&bcong\"]]"
  end
  it "namedEntities:Named entity: bcong; with a semi-colon" do
    assert_lexes "&bcong;", "[[\"Character\",\"≌\"]]"
  end
  it "namedEntities:Bad named entity: bcy without a semi-colon" do
    assert_lexes "&bcy", "[[\"Character\",\"&bcy\"]]"
  end
  it "namedEntities:Named entity: bcy; with a semi-colon" do
    assert_lexes "&bcy;", "[[\"Character\",\"б\"]]"
  end
  it "namedEntities:Bad named entity: bdquo without a semi-colon" do
    assert_lexes "&bdquo", "[[\"Character\",\"&bdquo\"]]"
  end
  it "namedEntities:Named entity: bdquo; with a semi-colon" do
    assert_lexes "&bdquo;", "[[\"Character\",\"„\"]]"
  end
  it "namedEntities:Bad named entity: becaus without a semi-colon" do
    assert_lexes "&becaus", "[[\"Character\",\"&becaus\"]]"
  end
  it "namedEntities:Named entity: becaus; with a semi-colon" do
    assert_lexes "&becaus;", "[[\"Character\",\"∵\"]]"
  end
  it "namedEntities:Bad named entity: because without a semi-colon" do
    assert_lexes "&because", "[[\"Character\",\"&because\"]]"
  end
  it "namedEntities:Named entity: because; with a semi-colon" do
    assert_lexes "&because;", "[[\"Character\",\"∵\"]]"
  end
  it "namedEntities:Bad named entity: bemptyv without a semi-colon" do
    assert_lexes "&bemptyv", "[[\"Character\",\"&bemptyv\"]]"
  end
  it "namedEntities:Named entity: bemptyv; with a semi-colon" do
    assert_lexes "&bemptyv;", "[[\"Character\",\"⦰\"]]"
  end
  it "namedEntities:Bad named entity: bepsi without a semi-colon" do
    assert_lexes "&bepsi", "[[\"Character\",\"&bepsi\"]]"
  end
  it "namedEntities:Named entity: bepsi; with a semi-colon" do
    assert_lexes "&bepsi;", "[[\"Character\",\"϶\"]]"
  end
  it "namedEntities:Bad named entity: bernou without a semi-colon" do
    assert_lexes "&bernou", "[[\"Character\",\"&bernou\"]]"
  end
  it "namedEntities:Named entity: bernou; with a semi-colon" do
    assert_lexes "&bernou;", "[[\"Character\",\"ℬ\"]]"
  end
  it "namedEntities:Bad named entity: beta without a semi-colon" do
    assert_lexes "&beta", "[[\"Character\",\"&beta\"]]"
  end
  it "namedEntities:Named entity: beta; with a semi-colon" do
    assert_lexes "&beta;", "[[\"Character\",\"β\"]]"
  end
  it "namedEntities:Bad named entity: beth without a semi-colon" do
    assert_lexes "&beth", "[[\"Character\",\"&beth\"]]"
  end
  it "namedEntities:Named entity: beth; with a semi-colon" do
    assert_lexes "&beth;", "[[\"Character\",\"ℶ\"]]"
  end
  it "namedEntities:Bad named entity: between without a semi-colon" do
    assert_lexes "&between", "[[\"Character\",\"&between\"]]"
  end
  it "namedEntities:Named entity: between; with a semi-colon" do
    assert_lexes "&between;", "[[\"Character\",\"≬\"]]"
  end
  it "namedEntities:Bad named entity: bfr without a semi-colon" do
    assert_lexes "&bfr", "[[\"Character\",\"&bfr\"]]"
  end
  it "namedEntities:Named entity: bfr; with a semi-colon" do
    assert_lexes "&bfr;", "[[\"Character\",\"𝔟\"]]"
  end
  it "namedEntities:Bad named entity: bigcap without a semi-colon" do
    assert_lexes "&bigcap", "[[\"Character\",\"&bigcap\"]]"
  end
  it "namedEntities:Named entity: bigcap; with a semi-colon" do
    assert_lexes "&bigcap;", "[[\"Character\",\"⋂\"]]"
  end
  it "namedEntities:Bad named entity: bigcirc without a semi-colon" do
    assert_lexes "&bigcirc", "[[\"Character\",\"&bigcirc\"]]"
  end
  it "namedEntities:Named entity: bigcirc; with a semi-colon" do
    assert_lexes "&bigcirc;", "[[\"Character\",\"◯\"]]"
  end
  it "namedEntities:Bad named entity: bigcup without a semi-colon" do
    assert_lexes "&bigcup", "[[\"Character\",\"&bigcup\"]]"
  end
  it "namedEntities:Named entity: bigcup; with a semi-colon" do
    assert_lexes "&bigcup;", "[[\"Character\",\"⋃\"]]"
  end
  it "namedEntities:Bad named entity: bigodot without a semi-colon" do
    assert_lexes "&bigodot", "[[\"Character\",\"&bigodot\"]]"
  end
  it "namedEntities:Named entity: bigodot; with a semi-colon" do
    assert_lexes "&bigodot;", "[[\"Character\",\"⨀\"]]"
  end
  it "namedEntities:Bad named entity: bigoplus without a semi-colon" do
    assert_lexes "&bigoplus", "[[\"Character\",\"&bigoplus\"]]"
  end
  it "namedEntities:Named entity: bigoplus; with a semi-colon" do
    assert_lexes "&bigoplus;", "[[\"Character\",\"⨁\"]]"
  end
  it "namedEntities:Bad named entity: bigotimes without a semi-colon" do
    assert_lexes "&bigotimes", "[[\"Character\",\"&bigotimes\"]]"
  end
  it "namedEntities:Named entity: bigotimes; with a semi-colon" do
    assert_lexes "&bigotimes;", "[[\"Character\",\"⨂\"]]"
  end
  it "namedEntities:Bad named entity: bigsqcup without a semi-colon" do
    assert_lexes "&bigsqcup", "[[\"Character\",\"&bigsqcup\"]]"
  end
  it "namedEntities:Named entity: bigsqcup; with a semi-colon" do
    assert_lexes "&bigsqcup;", "[[\"Character\",\"⨆\"]]"
  end
  it "namedEntities:Bad named entity: bigstar without a semi-colon" do
    assert_lexes "&bigstar", "[[\"Character\",\"&bigstar\"]]"
  end
  it "namedEntities:Named entity: bigstar; with a semi-colon" do
    assert_lexes "&bigstar;", "[[\"Character\",\"★\"]]"
  end
  it "namedEntities:Bad named entity: bigtriangledown without a semi-colon" do
    assert_lexes "&bigtriangledown", "[[\"Character\",\"&bigtriangledown\"]]"
  end
  it "namedEntities:Named entity: bigtriangledown; with a semi-colon" do
    assert_lexes "&bigtriangledown;", "[[\"Character\",\"▽\"]]"
  end
  it "namedEntities:Bad named entity: bigtriangleup without a semi-colon" do
    assert_lexes "&bigtriangleup", "[[\"Character\",\"&bigtriangleup\"]]"
  end
  it "namedEntities:Named entity: bigtriangleup; with a semi-colon" do
    assert_lexes "&bigtriangleup;", "[[\"Character\",\"△\"]]"
  end
  it "namedEntities:Bad named entity: biguplus without a semi-colon" do
    assert_lexes "&biguplus", "[[\"Character\",\"&biguplus\"]]"
  end
  it "namedEntities:Named entity: biguplus; with a semi-colon" do
    assert_lexes "&biguplus;", "[[\"Character\",\"⨄\"]]"
  end
  it "namedEntities:Bad named entity: bigvee without a semi-colon" do
    assert_lexes "&bigvee", "[[\"Character\",\"&bigvee\"]]"
  end
  it "namedEntities:Named entity: bigvee; with a semi-colon" do
    assert_lexes "&bigvee;", "[[\"Character\",\"⋁\"]]"
  end
  it "namedEntities:Bad named entity: bigwedge without a semi-colon" do
    assert_lexes "&bigwedge", "[[\"Character\",\"&bigwedge\"]]"
  end
  it "namedEntities:Named entity: bigwedge; with a semi-colon" do
    assert_lexes "&bigwedge;", "[[\"Character\",\"⋀\"]]"
  end
  it "namedEntities:Bad named entity: bkarow without a semi-colon" do
    assert_lexes "&bkarow", "[[\"Character\",\"&bkarow\"]]"
  end
  it "namedEntities:Named entity: bkarow; with a semi-colon" do
    assert_lexes "&bkarow;", "[[\"Character\",\"⤍\"]]"
  end
  it "namedEntities:Bad named entity: blacklozenge without a semi-colon" do
    assert_lexes "&blacklozenge", "[[\"Character\",\"&blacklozenge\"]]"
  end
  it "namedEntities:Named entity: blacklozenge; with a semi-colon" do
    assert_lexes "&blacklozenge;", "[[\"Character\",\"⧫\"]]"
  end
  it "namedEntities:Bad named entity: blacksquare without a semi-colon" do
    assert_lexes "&blacksquare", "[[\"Character\",\"&blacksquare\"]]"
  end
  it "namedEntities:Named entity: blacksquare; with a semi-colon" do
    assert_lexes "&blacksquare;", "[[\"Character\",\"▪\"]]"
  end
  it "namedEntities:Bad named entity: blacktriangle without a semi-colon" do
    assert_lexes "&blacktriangle", "[[\"Character\",\"&blacktriangle\"]]"
  end
  it "namedEntities:Named entity: blacktriangle; with a semi-colon" do
    assert_lexes "&blacktriangle;", "[[\"Character\",\"▴\"]]"
  end
  it "namedEntities:Bad named entity: blacktriangledown without a semi-colon" do
    assert_lexes "&blacktriangledown", "[[\"Character\",\"&blacktriangledown\"]]"
  end
  it "namedEntities:Named entity: blacktriangledown; with a semi-colon" do
    assert_lexes "&blacktriangledown;", "[[\"Character\",\"▾\"]]"
  end
  it "namedEntities:Bad named entity: blacktriangleleft without a semi-colon" do
    assert_lexes "&blacktriangleleft", "[[\"Character\",\"&blacktriangleleft\"]]"
  end
  it "namedEntities:Named entity: blacktriangleleft; with a semi-colon" do
    assert_lexes "&blacktriangleleft;", "[[\"Character\",\"◂\"]]"
  end
  it "namedEntities:Bad named entity: blacktriangleright without a semi-colon" do
    assert_lexes "&blacktriangleright", "[[\"Character\",\"&blacktriangleright\"]]"
  end
  it "namedEntities:Named entity: blacktriangleright; with a semi-colon" do
    assert_lexes "&blacktriangleright;", "[[\"Character\",\"▸\"]]"
  end
  it "namedEntities:Bad named entity: blank without a semi-colon" do
    assert_lexes "&blank", "[[\"Character\",\"&blank\"]]"
  end
  it "namedEntities:Named entity: blank; with a semi-colon" do
    assert_lexes "&blank;", "[[\"Character\",\"␣\"]]"
  end
  it "namedEntities:Bad named entity: blk12 without a semi-colon" do
    assert_lexes "&blk12", "[[\"Character\",\"&blk12\"]]"
  end
  it "namedEntities:Named entity: blk12; with a semi-colon" do
    assert_lexes "&blk12;", "[[\"Character\",\"▒\"]]"
  end
  it "namedEntities:Bad named entity: blk14 without a semi-colon" do
    assert_lexes "&blk14", "[[\"Character\",\"&blk14\"]]"
  end
  it "namedEntities:Named entity: blk14; with a semi-colon" do
    assert_lexes "&blk14;", "[[\"Character\",\"░\"]]"
  end
  it "namedEntities:Bad named entity: blk34 without a semi-colon" do
    assert_lexes "&blk34", "[[\"Character\",\"&blk34\"]]"
  end
  it "namedEntities:Named entity: blk34; with a semi-colon" do
    assert_lexes "&blk34;", "[[\"Character\",\"▓\"]]"
  end
  it "namedEntities:Bad named entity: block without a semi-colon" do
    assert_lexes "&block", "[[\"Character\",\"&block\"]]"
  end
  it "namedEntities:Named entity: block; with a semi-colon" do
    assert_lexes "&block;", "[[\"Character\",\"█\"]]"
  end
  it "namedEntities:Bad named entity: bne without a semi-colon" do
    assert_lexes "&bne", "[[\"Character\",\"&bne\"]]"
  end
  it "namedEntities:Named entity: bne; with a semi-colon" do
    assert_lexes "&bne;", "[[\"Character\",\"=⃥\"]]"
  end
  it "namedEntities:Bad named entity: bnequiv without a semi-colon" do
    assert_lexes "&bnequiv", "[[\"Character\",\"&bnequiv\"]]"
  end
  it "namedEntities:Named entity: bnequiv; with a semi-colon" do
    assert_lexes "&bnequiv;", "[[\"Character\",\"≡⃥\"]]"
  end
  it "namedEntities:Bad named entity: bnot without a semi-colon" do
    assert_lexes "&bnot", "[[\"Character\",\"&bnot\"]]"
  end
  it "namedEntities:Named entity: bnot; with a semi-colon" do
    assert_lexes "&bnot;", "[[\"Character\",\"⌐\"]]"
  end
  it "namedEntities:Bad named entity: bopf without a semi-colon" do
    assert_lexes "&bopf", "[[\"Character\",\"&bopf\"]]"
  end
  it "namedEntities:Named entity: bopf; with a semi-colon" do
    assert_lexes "&bopf;", "[[\"Character\",\"𝕓\"]]"
  end
  it "namedEntities:Bad named entity: bot without a semi-colon" do
    assert_lexes "&bot", "[[\"Character\",\"&bot\"]]"
  end
  it "namedEntities:Named entity: bot; with a semi-colon" do
    assert_lexes "&bot;", "[[\"Character\",\"⊥\"]]"
  end
  it "namedEntities:Bad named entity: bottom without a semi-colon" do
    assert_lexes "&bottom", "[[\"Character\",\"&bottom\"]]"
  end
  it "namedEntities:Named entity: bottom; with a semi-colon" do
    assert_lexes "&bottom;", "[[\"Character\",\"⊥\"]]"
  end
  it "namedEntities:Bad named entity: bowtie without a semi-colon" do
    assert_lexes "&bowtie", "[[\"Character\",\"&bowtie\"]]"
  end
  it "namedEntities:Named entity: bowtie; with a semi-colon" do
    assert_lexes "&bowtie;", "[[\"Character\",\"⋈\"]]"
  end
  it "namedEntities:Bad named entity: boxDL without a semi-colon" do
    assert_lexes "&boxDL", "[[\"Character\",\"&boxDL\"]]"
  end
  it "namedEntities:Named entity: boxDL; with a semi-colon" do
    assert_lexes "&boxDL;", "[[\"Character\",\"╗\"]]"
  end
  it "namedEntities:Bad named entity: boxDR without a semi-colon" do
    assert_lexes "&boxDR", "[[\"Character\",\"&boxDR\"]]"
  end
  it "namedEntities:Named entity: boxDR; with a semi-colon" do
    assert_lexes "&boxDR;", "[[\"Character\",\"╔\"]]"
  end
  it "namedEntities:Bad named entity: boxDl without a semi-colon" do
    assert_lexes "&boxDl", "[[\"Character\",\"&boxDl\"]]"
  end
  it "namedEntities:Named entity: boxDl; with a semi-colon" do
    assert_lexes "&boxDl;", "[[\"Character\",\"╖\"]]"
  end
  it "namedEntities:Bad named entity: boxDr without a semi-colon" do
    assert_lexes "&boxDr", "[[\"Character\",\"&boxDr\"]]"
  end
  it "namedEntities:Named entity: boxDr; with a semi-colon" do
    assert_lexes "&boxDr;", "[[\"Character\",\"╓\"]]"
  end
  it "namedEntities:Bad named entity: boxH without a semi-colon" do
    assert_lexes "&boxH", "[[\"Character\",\"&boxH\"]]"
  end
  it "namedEntities:Named entity: boxH; with a semi-colon" do
    assert_lexes "&boxH;", "[[\"Character\",\"═\"]]"
  end
  it "namedEntities:Bad named entity: boxHD without a semi-colon" do
    assert_lexes "&boxHD", "[[\"Character\",\"&boxHD\"]]"
  end
  it "namedEntities:Named entity: boxHD; with a semi-colon" do
    assert_lexes "&boxHD;", "[[\"Character\",\"╦\"]]"
  end
  it "namedEntities:Bad named entity: boxHU without a semi-colon" do
    assert_lexes "&boxHU", "[[\"Character\",\"&boxHU\"]]"
  end
  it "namedEntities:Named entity: boxHU; with a semi-colon" do
    assert_lexes "&boxHU;", "[[\"Character\",\"╩\"]]"
  end
  it "namedEntities:Bad named entity: boxHd without a semi-colon" do
    assert_lexes "&boxHd", "[[\"Character\",\"&boxHd\"]]"
  end
  it "namedEntities:Named entity: boxHd; with a semi-colon" do
    assert_lexes "&boxHd;", "[[\"Character\",\"╤\"]]"
  end
  it "namedEntities:Bad named entity: boxHu without a semi-colon" do
    assert_lexes "&boxHu", "[[\"Character\",\"&boxHu\"]]"
  end
  it "namedEntities:Named entity: boxHu; with a semi-colon" do
    assert_lexes "&boxHu;", "[[\"Character\",\"╧\"]]"
  end
  it "namedEntities:Bad named entity: boxUL without a semi-colon" do
    assert_lexes "&boxUL", "[[\"Character\",\"&boxUL\"]]"
  end
  it "namedEntities:Named entity: boxUL; with a semi-colon" do
    assert_lexes "&boxUL;", "[[\"Character\",\"╝\"]]"
  end
  it "namedEntities:Bad named entity: boxUR without a semi-colon" do
    assert_lexes "&boxUR", "[[\"Character\",\"&boxUR\"]]"
  end
  it "namedEntities:Named entity: boxUR; with a semi-colon" do
    assert_lexes "&boxUR;", "[[\"Character\",\"╚\"]]"
  end
  it "namedEntities:Bad named entity: boxUl without a semi-colon" do
    assert_lexes "&boxUl", "[[\"Character\",\"&boxUl\"]]"
  end
  it "namedEntities:Named entity: boxUl; with a semi-colon" do
    assert_lexes "&boxUl;", "[[\"Character\",\"╜\"]]"
  end
  it "namedEntities:Bad named entity: boxUr without a semi-colon" do
    assert_lexes "&boxUr", "[[\"Character\",\"&boxUr\"]]"
  end
  it "namedEntities:Named entity: boxUr; with a semi-colon" do
    assert_lexes "&boxUr;", "[[\"Character\",\"╙\"]]"
  end
  it "namedEntities:Bad named entity: boxV without a semi-colon" do
    assert_lexes "&boxV", "[[\"Character\",\"&boxV\"]]"
  end
  it "namedEntities:Named entity: boxV; with a semi-colon" do
    assert_lexes "&boxV;", "[[\"Character\",\"║\"]]"
  end
  it "namedEntities:Bad named entity: boxVH without a semi-colon" do
    assert_lexes "&boxVH", "[[\"Character\",\"&boxVH\"]]"
  end
  it "namedEntities:Named entity: boxVH; with a semi-colon" do
    assert_lexes "&boxVH;", "[[\"Character\",\"╬\"]]"
  end
  it "namedEntities:Bad named entity: boxVL without a semi-colon" do
    assert_lexes "&boxVL", "[[\"Character\",\"&boxVL\"]]"
  end
  it "namedEntities:Named entity: boxVL; with a semi-colon" do
    assert_lexes "&boxVL;", "[[\"Character\",\"╣\"]]"
  end
  it "namedEntities:Bad named entity: boxVR without a semi-colon" do
    assert_lexes "&boxVR", "[[\"Character\",\"&boxVR\"]]"
  end
  it "namedEntities:Named entity: boxVR; with a semi-colon" do
    assert_lexes "&boxVR;", "[[\"Character\",\"╠\"]]"
  end
  it "namedEntities:Bad named entity: boxVh without a semi-colon" do
    assert_lexes "&boxVh", "[[\"Character\",\"&boxVh\"]]"
  end
  it "namedEntities:Named entity: boxVh; with a semi-colon" do
    assert_lexes "&boxVh;", "[[\"Character\",\"╫\"]]"
  end
  it "namedEntities:Bad named entity: boxVl without a semi-colon" do
    assert_lexes "&boxVl", "[[\"Character\",\"&boxVl\"]]"
  end
  it "namedEntities:Named entity: boxVl; with a semi-colon" do
    assert_lexes "&boxVl;", "[[\"Character\",\"╢\"]]"
  end
  it "namedEntities:Bad named entity: boxVr without a semi-colon" do
    assert_lexes "&boxVr", "[[\"Character\",\"&boxVr\"]]"
  end
  it "namedEntities:Named entity: boxVr; with a semi-colon" do
    assert_lexes "&boxVr;", "[[\"Character\",\"╟\"]]"
  end
  it "namedEntities:Bad named entity: boxbox without a semi-colon" do
    assert_lexes "&boxbox", "[[\"Character\",\"&boxbox\"]]"
  end
  it "namedEntities:Named entity: boxbox; with a semi-colon" do
    assert_lexes "&boxbox;", "[[\"Character\",\"⧉\"]]"
  end
  it "namedEntities:Bad named entity: boxdL without a semi-colon" do
    assert_lexes "&boxdL", "[[\"Character\",\"&boxdL\"]]"
  end
  it "namedEntities:Named entity: boxdL; with a semi-colon" do
    assert_lexes "&boxdL;", "[[\"Character\",\"╕\"]]"
  end
  it "namedEntities:Bad named entity: boxdR without a semi-colon" do
    assert_lexes "&boxdR", "[[\"Character\",\"&boxdR\"]]"
  end
  it "namedEntities:Named entity: boxdR; with a semi-colon" do
    assert_lexes "&boxdR;", "[[\"Character\",\"╒\"]]"
  end
  it "namedEntities:Bad named entity: boxdl without a semi-colon" do
    assert_lexes "&boxdl", "[[\"Character\",\"&boxdl\"]]"
  end
  it "namedEntities:Named entity: boxdl; with a semi-colon" do
    assert_lexes "&boxdl;", "[[\"Character\",\"┐\"]]"
  end
  it "namedEntities:Bad named entity: boxdr without a semi-colon" do
    assert_lexes "&boxdr", "[[\"Character\",\"&boxdr\"]]"
  end
  it "namedEntities:Named entity: boxdr; with a semi-colon" do
    assert_lexes "&boxdr;", "[[\"Character\",\"┌\"]]"
  end
  it "namedEntities:Bad named entity: boxh without a semi-colon" do
    assert_lexes "&boxh", "[[\"Character\",\"&boxh\"]]"
  end
  it "namedEntities:Named entity: boxh; with a semi-colon" do
    assert_lexes "&boxh;", "[[\"Character\",\"─\"]]"
  end
  it "namedEntities:Bad named entity: boxhD without a semi-colon" do
    assert_lexes "&boxhD", "[[\"Character\",\"&boxhD\"]]"
  end
  it "namedEntities:Named entity: boxhD; with a semi-colon" do
    assert_lexes "&boxhD;", "[[\"Character\",\"╥\"]]"
  end
  it "namedEntities:Bad named entity: boxhU without a semi-colon" do
    assert_lexes "&boxhU", "[[\"Character\",\"&boxhU\"]]"
  end
  it "namedEntities:Named entity: boxhU; with a semi-colon" do
    assert_lexes "&boxhU;", "[[\"Character\",\"╨\"]]"
  end
  it "namedEntities:Bad named entity: boxhd without a semi-colon" do
    assert_lexes "&boxhd", "[[\"Character\",\"&boxhd\"]]"
  end
  it "namedEntities:Named entity: boxhd; with a semi-colon" do
    assert_lexes "&boxhd;", "[[\"Character\",\"┬\"]]"
  end
  it "namedEntities:Bad named entity: boxhu without a semi-colon" do
    assert_lexes "&boxhu", "[[\"Character\",\"&boxhu\"]]"
  end
  it "namedEntities:Named entity: boxhu; with a semi-colon" do
    assert_lexes "&boxhu;", "[[\"Character\",\"┴\"]]"
  end
  it "namedEntities:Bad named entity: boxminus without a semi-colon" do
    assert_lexes "&boxminus", "[[\"Character\",\"&boxminus\"]]"
  end
  it "namedEntities:Named entity: boxminus; with a semi-colon" do
    assert_lexes "&boxminus;", "[[\"Character\",\"⊟\"]]"
  end
  it "namedEntities:Bad named entity: boxplus without a semi-colon" do
    assert_lexes "&boxplus", "[[\"Character\",\"&boxplus\"]]"
  end
  it "namedEntities:Named entity: boxplus; with a semi-colon" do
    assert_lexes "&boxplus;", "[[\"Character\",\"⊞\"]]"
  end
  it "namedEntities:Bad named entity: boxtimes without a semi-colon" do
    assert_lexes "&boxtimes", "[[\"Character\",\"&boxtimes\"]]"
  end
  it "namedEntities:Named entity: boxtimes; with a semi-colon" do
    assert_lexes "&boxtimes;", "[[\"Character\",\"⊠\"]]"
  end
  it "namedEntities:Bad named entity: boxuL without a semi-colon" do
    assert_lexes "&boxuL", "[[\"Character\",\"&boxuL\"]]"
  end
  it "namedEntities:Named entity: boxuL; with a semi-colon" do
    assert_lexes "&boxuL;", "[[\"Character\",\"╛\"]]"
  end
  it "namedEntities:Bad named entity: boxuR without a semi-colon" do
    assert_lexes "&boxuR", "[[\"Character\",\"&boxuR\"]]"
  end
  it "namedEntities:Named entity: boxuR; with a semi-colon" do
    assert_lexes "&boxuR;", "[[\"Character\",\"╘\"]]"
  end
  it "namedEntities:Bad named entity: boxul without a semi-colon" do
    assert_lexes "&boxul", "[[\"Character\",\"&boxul\"]]"
  end
  it "namedEntities:Named entity: boxul; with a semi-colon" do
    assert_lexes "&boxul;", "[[\"Character\",\"┘\"]]"
  end
  it "namedEntities:Bad named entity: boxur without a semi-colon" do
    assert_lexes "&boxur", "[[\"Character\",\"&boxur\"]]"
  end
  it "namedEntities:Named entity: boxur; with a semi-colon" do
    assert_lexes "&boxur;", "[[\"Character\",\"└\"]]"
  end
  it "namedEntities:Bad named entity: boxv without a semi-colon" do
    assert_lexes "&boxv", "[[\"Character\",\"&boxv\"]]"
  end
  it "namedEntities:Named entity: boxv; with a semi-colon" do
    assert_lexes "&boxv;", "[[\"Character\",\"│\"]]"
  end
  it "namedEntities:Bad named entity: boxvH without a semi-colon" do
    assert_lexes "&boxvH", "[[\"Character\",\"&boxvH\"]]"
  end
  it "namedEntities:Named entity: boxvH; with a semi-colon" do
    assert_lexes "&boxvH;", "[[\"Character\",\"╪\"]]"
  end
  it "namedEntities:Bad named entity: boxvL without a semi-colon" do
    assert_lexes "&boxvL", "[[\"Character\",\"&boxvL\"]]"
  end
  it "namedEntities:Named entity: boxvL; with a semi-colon" do
    assert_lexes "&boxvL;", "[[\"Character\",\"╡\"]]"
  end
  it "namedEntities:Bad named entity: boxvR without a semi-colon" do
    assert_lexes "&boxvR", "[[\"Character\",\"&boxvR\"]]"
  end
  it "namedEntities:Named entity: boxvR; with a semi-colon" do
    assert_lexes "&boxvR;", "[[\"Character\",\"╞\"]]"
  end
  it "namedEntities:Bad named entity: boxvh without a semi-colon" do
    assert_lexes "&boxvh", "[[\"Character\",\"&boxvh\"]]"
  end
  it "namedEntities:Named entity: boxvh; with a semi-colon" do
    assert_lexes "&boxvh;", "[[\"Character\",\"┼\"]]"
  end
  it "namedEntities:Bad named entity: boxvl without a semi-colon" do
    assert_lexes "&boxvl", "[[\"Character\",\"&boxvl\"]]"
  end
  it "namedEntities:Named entity: boxvl; with a semi-colon" do
    assert_lexes "&boxvl;", "[[\"Character\",\"┤\"]]"
  end
  it "namedEntities:Bad named entity: boxvr without a semi-colon" do
    assert_lexes "&boxvr", "[[\"Character\",\"&boxvr\"]]"
  end
  it "namedEntities:Named entity: boxvr; with a semi-colon" do
    assert_lexes "&boxvr;", "[[\"Character\",\"├\"]]"
  end
  it "namedEntities:Bad named entity: bprime without a semi-colon" do
    assert_lexes "&bprime", "[[\"Character\",\"&bprime\"]]"
  end
  it "namedEntities:Named entity: bprime; with a semi-colon" do
    assert_lexes "&bprime;", "[[\"Character\",\"‵\"]]"
  end
  it "namedEntities:Bad named entity: breve without a semi-colon" do
    assert_lexes "&breve", "[[\"Character\",\"&breve\"]]"
  end
  it "namedEntities:Named entity: breve; with a semi-colon" do
    assert_lexes "&breve;", "[[\"Character\",\"˘\"]]"
  end
  it "namedEntities:Named entity: brvbar without a semi-colon" do
    assert_lexes "&brvbar", "[[\"Character\",\"¦\"]]"
  end
  it "namedEntities:Named entity: brvbar; with a semi-colon" do
    assert_lexes "&brvbar;", "[[\"Character\",\"¦\"]]"
  end
  it "namedEntities:Bad named entity: bscr without a semi-colon" do
    assert_lexes "&bscr", "[[\"Character\",\"&bscr\"]]"
  end
  it "namedEntities:Named entity: bscr; with a semi-colon" do
    assert_lexes "&bscr;", "[[\"Character\",\"𝒷\"]]"
  end
  it "namedEntities:Bad named entity: bsemi without a semi-colon" do
    assert_lexes "&bsemi", "[[\"Character\",\"&bsemi\"]]"
  end
  it "namedEntities:Named entity: bsemi; with a semi-colon" do
    assert_lexes "&bsemi;", "[[\"Character\",\"⁏\"]]"
  end
  it "namedEntities:Bad named entity: bsim without a semi-colon" do
    assert_lexes "&bsim", "[[\"Character\",\"&bsim\"]]"
  end
  it "namedEntities:Named entity: bsim; with a semi-colon" do
    assert_lexes "&bsim;", "[[\"Character\",\"∽\"]]"
  end
  it "namedEntities:Bad named entity: bsime without a semi-colon" do
    assert_lexes "&bsime", "[[\"Character\",\"&bsime\"]]"
  end
  it "namedEntities:Named entity: bsime; with a semi-colon" do
    assert_lexes "&bsime;", "[[\"Character\",\"⋍\"]]"
  end
  it "namedEntities:Bad named entity: bsol without a semi-colon" do
    assert_lexes "&bsol", "[[\"Character\",\"&bsol\"]]"
  end
  it "namedEntities:Named entity: bsol; with a semi-colon" do
    assert_lexes "&bsol;", "[[\"Character\",\"\\\\\"]]"
  end
  it "namedEntities:Bad named entity: bsolb without a semi-colon" do
    assert_lexes "&bsolb", "[[\"Character\",\"&bsolb\"]]"
  end
  it "namedEntities:Named entity: bsolb; with a semi-colon" do
    assert_lexes "&bsolb;", "[[\"Character\",\"⧅\"]]"
  end
  it "namedEntities:Bad named entity: bsolhsub without a semi-colon" do
    assert_lexes "&bsolhsub", "[[\"Character\",\"&bsolhsub\"]]"
  end
  it "namedEntities:Named entity: bsolhsub; with a semi-colon" do
    assert_lexes "&bsolhsub;", "[[\"Character\",\"⟈\"]]"
  end
  it "namedEntities:Bad named entity: bull without a semi-colon" do
    assert_lexes "&bull", "[[\"Character\",\"&bull\"]]"
  end
  it "namedEntities:Named entity: bull; with a semi-colon" do
    assert_lexes "&bull;", "[[\"Character\",\"•\"]]"
  end
  it "namedEntities:Bad named entity: bullet without a semi-colon" do
    assert_lexes "&bullet", "[[\"Character\",\"&bullet\"]]"
  end
  it "namedEntities:Named entity: bullet; with a semi-colon" do
    assert_lexes "&bullet;", "[[\"Character\",\"•\"]]"
  end
  it "namedEntities:Bad named entity: bump without a semi-colon" do
    assert_lexes "&bump", "[[\"Character\",\"&bump\"]]"
  end
  it "namedEntities:Named entity: bump; with a semi-colon" do
    assert_lexes "&bump;", "[[\"Character\",\"≎\"]]"
  end
  it "namedEntities:Bad named entity: bumpE without a semi-colon" do
    assert_lexes "&bumpE", "[[\"Character\",\"&bumpE\"]]"
  end
  it "namedEntities:Named entity: bumpE; with a semi-colon" do
    assert_lexes "&bumpE;", "[[\"Character\",\"⪮\"]]"
  end
  it "namedEntities:Bad named entity: bumpe without a semi-colon" do
    assert_lexes "&bumpe", "[[\"Character\",\"&bumpe\"]]"
  end
  it "namedEntities:Named entity: bumpe; with a semi-colon" do
    assert_lexes "&bumpe;", "[[\"Character\",\"≏\"]]"
  end
  it "namedEntities:Bad named entity: bumpeq without a semi-colon" do
    assert_lexes "&bumpeq", "[[\"Character\",\"&bumpeq\"]]"
  end
  it "namedEntities:Named entity: bumpeq; with a semi-colon" do
    assert_lexes "&bumpeq;", "[[\"Character\",\"≏\"]]"
  end
  it "namedEntities:Bad named entity: cacute without a semi-colon" do
    assert_lexes "&cacute", "[[\"Character\",\"&cacute\"]]"
  end
  it "namedEntities:Named entity: cacute; with a semi-colon" do
    assert_lexes "&cacute;", "[[\"Character\",\"ć\"]]"
  end
  it "namedEntities:Bad named entity: cap without a semi-colon" do
    assert_lexes "&cap", "[[\"Character\",\"&cap\"]]"
  end
  it "namedEntities:Named entity: cap; with a semi-colon" do
    assert_lexes "&cap;", "[[\"Character\",\"∩\"]]"
  end
  it "namedEntities:Bad named entity: capand without a semi-colon" do
    assert_lexes "&capand", "[[\"Character\",\"&capand\"]]"
  end
  it "namedEntities:Named entity: capand; with a semi-colon" do
    assert_lexes "&capand;", "[[\"Character\",\"⩄\"]]"
  end
  it "namedEntities:Bad named entity: capbrcup without a semi-colon" do
    assert_lexes "&capbrcup", "[[\"Character\",\"&capbrcup\"]]"
  end
  it "namedEntities:Named entity: capbrcup; with a semi-colon" do
    assert_lexes "&capbrcup;", "[[\"Character\",\"⩉\"]]"
  end
  it "namedEntities:Bad named entity: capcap without a semi-colon" do
    assert_lexes "&capcap", "[[\"Character\",\"&capcap\"]]"
  end
  it "namedEntities:Named entity: capcap; with a semi-colon" do
    assert_lexes "&capcap;", "[[\"Character\",\"⩋\"]]"
  end
  it "namedEntities:Bad named entity: capcup without a semi-colon" do
    assert_lexes "&capcup", "[[\"Character\",\"&capcup\"]]"
  end
  it "namedEntities:Named entity: capcup; with a semi-colon" do
    assert_lexes "&capcup;", "[[\"Character\",\"⩇\"]]"
  end
  it "namedEntities:Bad named entity: capdot without a semi-colon" do
    assert_lexes "&capdot", "[[\"Character\",\"&capdot\"]]"
  end
  it "namedEntities:Named entity: capdot; with a semi-colon" do
    assert_lexes "&capdot;", "[[\"Character\",\"⩀\"]]"
  end
  it "namedEntities:Bad named entity: caps without a semi-colon" do
    assert_lexes "&caps", "[[\"Character\",\"&caps\"]]"
  end
  it "namedEntities:Named entity: caps; with a semi-colon" do
    assert_lexes "&caps;", "[[\"Character\",\"∩︀\"]]"
  end
  it "namedEntities:Bad named entity: caret without a semi-colon" do
    assert_lexes "&caret", "[[\"Character\",\"&caret\"]]"
  end
  it "namedEntities:Named entity: caret; with a semi-colon" do
    assert_lexes "&caret;", "[[\"Character\",\"⁁\"]]"
  end
  it "namedEntities:Bad named entity: caron without a semi-colon" do
    assert_lexes "&caron", "[[\"Character\",\"&caron\"]]"
  end
  it "namedEntities:Named entity: caron; with a semi-colon" do
    assert_lexes "&caron;", "[[\"Character\",\"ˇ\"]]"
  end
  it "namedEntities:Bad named entity: ccaps without a semi-colon" do
    assert_lexes "&ccaps", "[[\"Character\",\"&ccaps\"]]"
  end
  it "namedEntities:Named entity: ccaps; with a semi-colon" do
    assert_lexes "&ccaps;", "[[\"Character\",\"⩍\"]]"
  end
  it "namedEntities:Bad named entity: ccaron without a semi-colon" do
    assert_lexes "&ccaron", "[[\"Character\",\"&ccaron\"]]"
  end
  it "namedEntities:Named entity: ccaron; with a semi-colon" do
    assert_lexes "&ccaron;", "[[\"Character\",\"č\"]]"
  end
  it "namedEntities:Named entity: ccedil without a semi-colon" do
    assert_lexes "&ccedil", "[[\"Character\",\"ç\"]]"
  end
  it "namedEntities:Named entity: ccedil; with a semi-colon" do
    assert_lexes "&ccedil;", "[[\"Character\",\"ç\"]]"
  end
  it "namedEntities:Bad named entity: ccirc without a semi-colon" do
    assert_lexes "&ccirc", "[[\"Character\",\"&ccirc\"]]"
  end
  it "namedEntities:Named entity: ccirc; with a semi-colon" do
    assert_lexes "&ccirc;", "[[\"Character\",\"ĉ\"]]"
  end
  it "namedEntities:Bad named entity: ccups without a semi-colon" do
    assert_lexes "&ccups", "[[\"Character\",\"&ccups\"]]"
  end
  it "namedEntities:Named entity: ccups; with a semi-colon" do
    assert_lexes "&ccups;", "[[\"Character\",\"⩌\"]]"
  end
  it "namedEntities:Bad named entity: ccupssm without a semi-colon" do
    assert_lexes "&ccupssm", "[[\"Character\",\"&ccupssm\"]]"
  end
  it "namedEntities:Named entity: ccupssm; with a semi-colon" do
    assert_lexes "&ccupssm;", "[[\"Character\",\"⩐\"]]"
  end
  it "namedEntities:Bad named entity: cdot without a semi-colon" do
    assert_lexes "&cdot", "[[\"Character\",\"&cdot\"]]"
  end
  it "namedEntities:Named entity: cdot; with a semi-colon" do
    assert_lexes "&cdot;", "[[\"Character\",\"ċ\"]]"
  end
  it "namedEntities:Named entity: cedil without a semi-colon" do
    assert_lexes "&cedil", "[[\"Character\",\"¸\"]]"
  end
  it "namedEntities:Named entity: cedil; with a semi-colon" do
    assert_lexes "&cedil;", "[[\"Character\",\"¸\"]]"
  end
  it "namedEntities:Bad named entity: cemptyv without a semi-colon" do
    assert_lexes "&cemptyv", "[[\"Character\",\"&cemptyv\"]]"
  end
  it "namedEntities:Named entity: cemptyv; with a semi-colon" do
    assert_lexes "&cemptyv;", "[[\"Character\",\"⦲\"]]"
  end
  it "namedEntities:Named entity: cent without a semi-colon" do
    assert_lexes "&cent", "[[\"Character\",\"¢\"]]"
  end
  it "namedEntities:Named entity: cent; with a semi-colon" do
    assert_lexes "&cent;", "[[\"Character\",\"¢\"]]"
  end
  it "namedEntities:Named entity: centerdot; with a semi-colon" do
    assert_lexes "&centerdot;", "[[\"Character\",\"·\"]]"
  end
  it "namedEntities:Bad named entity: cfr without a semi-colon" do
    assert_lexes "&cfr", "[[\"Character\",\"&cfr\"]]"
  end
  it "namedEntities:Named entity: cfr; with a semi-colon" do
    assert_lexes "&cfr;", "[[\"Character\",\"𝔠\"]]"
  end
  it "namedEntities:Bad named entity: chcy without a semi-colon" do
    assert_lexes "&chcy", "[[\"Character\",\"&chcy\"]]"
  end
  it "namedEntities:Named entity: chcy; with a semi-colon" do
    assert_lexes "&chcy;", "[[\"Character\",\"ч\"]]"
  end
  it "namedEntities:Bad named entity: check without a semi-colon" do
    assert_lexes "&check", "[[\"Character\",\"&check\"]]"
  end
  it "namedEntities:Named entity: check; with a semi-colon" do
    assert_lexes "&check;", "[[\"Character\",\"✓\"]]"
  end
  it "namedEntities:Bad named entity: checkmark without a semi-colon" do
    assert_lexes "&checkmark", "[[\"Character\",\"&checkmark\"]]"
  end
  it "namedEntities:Named entity: checkmark; with a semi-colon" do
    assert_lexes "&checkmark;", "[[\"Character\",\"✓\"]]"
  end
  it "namedEntities:Bad named entity: chi without a semi-colon" do
    assert_lexes "&chi", "[[\"Character\",\"&chi\"]]"
  end
  it "namedEntities:Named entity: chi; with a semi-colon" do
    assert_lexes "&chi;", "[[\"Character\",\"χ\"]]"
  end
  it "namedEntities:Bad named entity: cir without a semi-colon" do
    assert_lexes "&cir", "[[\"Character\",\"&cir\"]]"
  end
  it "namedEntities:Named entity: cir; with a semi-colon" do
    assert_lexes "&cir;", "[[\"Character\",\"○\"]]"
  end
  it "namedEntities:Bad named entity: cirE without a semi-colon" do
    assert_lexes "&cirE", "[[\"Character\",\"&cirE\"]]"
  end
  it "namedEntities:Named entity: cirE; with a semi-colon" do
    assert_lexes "&cirE;", "[[\"Character\",\"⧃\"]]"
  end
  it "namedEntities:Bad named entity: circ without a semi-colon" do
    assert_lexes "&circ", "[[\"Character\",\"&circ\"]]"
  end
  it "namedEntities:Named entity: circ; with a semi-colon" do
    assert_lexes "&circ;", "[[\"Character\",\"ˆ\"]]"
  end
  it "namedEntities:Bad named entity: circeq without a semi-colon" do
    assert_lexes "&circeq", "[[\"Character\",\"&circeq\"]]"
  end
  it "namedEntities:Named entity: circeq; with a semi-colon" do
    assert_lexes "&circeq;", "[[\"Character\",\"≗\"]]"
  end
  it "namedEntities:Bad named entity: circlearrowleft without a semi-colon" do
    assert_lexes "&circlearrowleft", "[[\"Character\",\"&circlearrowleft\"]]"
  end
  it "namedEntities:Named entity: circlearrowleft; with a semi-colon" do
    assert_lexes "&circlearrowleft;", "[[\"Character\",\"↺\"]]"
  end
  it "namedEntities:Bad named entity: circlearrowright without a semi-colon" do
    assert_lexes "&circlearrowright", "[[\"Character\",\"&circlearrowright\"]]"
  end
  it "namedEntities:Named entity: circlearrowright; with a semi-colon" do
    assert_lexes "&circlearrowright;", "[[\"Character\",\"↻\"]]"
  end
  it "namedEntities:Bad named entity: circledR without a semi-colon" do
    assert_lexes "&circledR", "[[\"Character\",\"&circledR\"]]"
  end
  it "namedEntities:Named entity: circledR; with a semi-colon" do
    assert_lexes "&circledR;", "[[\"Character\",\"®\"]]"
  end
  it "namedEntities:Bad named entity: circledS without a semi-colon" do
    assert_lexes "&circledS", "[[\"Character\",\"&circledS\"]]"
  end
  it "namedEntities:Named entity: circledS; with a semi-colon" do
    assert_lexes "&circledS;", "[[\"Character\",\"Ⓢ\"]]"
  end
  it "namedEntities:Bad named entity: circledast without a semi-colon" do
    assert_lexes "&circledast", "[[\"Character\",\"&circledast\"]]"
  end
  it "namedEntities:Named entity: circledast; with a semi-colon" do
    assert_lexes "&circledast;", "[[\"Character\",\"⊛\"]]"
  end
  it "namedEntities:Bad named entity: circledcirc without a semi-colon" do
    assert_lexes "&circledcirc", "[[\"Character\",\"&circledcirc\"]]"
  end
  it "namedEntities:Named entity: circledcirc; with a semi-colon" do
    assert_lexes "&circledcirc;", "[[\"Character\",\"⊚\"]]"
  end
  it "namedEntities:Bad named entity: circleddash without a semi-colon" do
    assert_lexes "&circleddash", "[[\"Character\",\"&circleddash\"]]"
  end
  it "namedEntities:Named entity: circleddash; with a semi-colon" do
    assert_lexes "&circleddash;", "[[\"Character\",\"⊝\"]]"
  end
  it "namedEntities:Bad named entity: cire without a semi-colon" do
    assert_lexes "&cire", "[[\"Character\",\"&cire\"]]"
  end
  it "namedEntities:Named entity: cire; with a semi-colon" do
    assert_lexes "&cire;", "[[\"Character\",\"≗\"]]"
  end
  it "namedEntities:Bad named entity: cirfnint without a semi-colon" do
    assert_lexes "&cirfnint", "[[\"Character\",\"&cirfnint\"]]"
  end
  it "namedEntities:Named entity: cirfnint; with a semi-colon" do
    assert_lexes "&cirfnint;", "[[\"Character\",\"⨐\"]]"
  end
  it "namedEntities:Bad named entity: cirmid without a semi-colon" do
    assert_lexes "&cirmid", "[[\"Character\",\"&cirmid\"]]"
  end
  it "namedEntities:Named entity: cirmid; with a semi-colon" do
    assert_lexes "&cirmid;", "[[\"Character\",\"⫯\"]]"
  end
  it "namedEntities:Bad named entity: cirscir without a semi-colon" do
    assert_lexes "&cirscir", "[[\"Character\",\"&cirscir\"]]"
  end
  it "namedEntities:Named entity: cirscir; with a semi-colon" do
    assert_lexes "&cirscir;", "[[\"Character\",\"⧂\"]]"
  end
  it "namedEntities:Bad named entity: clubs without a semi-colon" do
    assert_lexes "&clubs", "[[\"Character\",\"&clubs\"]]"
  end
  it "namedEntities:Named entity: clubs; with a semi-colon" do
    assert_lexes "&clubs;", "[[\"Character\",\"♣\"]]"
  end
  it "namedEntities:Bad named entity: clubsuit without a semi-colon" do
    assert_lexes "&clubsuit", "[[\"Character\",\"&clubsuit\"]]"
  end
  it "namedEntities:Named entity: clubsuit; with a semi-colon" do
    assert_lexes "&clubsuit;", "[[\"Character\",\"♣\"]]"
  end
  it "namedEntities:Bad named entity: colon without a semi-colon" do
    assert_lexes "&colon", "[[\"Character\",\"&colon\"]]"
  end
  it "namedEntities:Named entity: colon; with a semi-colon" do
    assert_lexes "&colon;", "[[\"Character\",\":\"]]"
  end
  it "namedEntities:Bad named entity: colone without a semi-colon" do
    assert_lexes "&colone", "[[\"Character\",\"&colone\"]]"
  end
  it "namedEntities:Named entity: colone; with a semi-colon" do
    assert_lexes "&colone;", "[[\"Character\",\"≔\"]]"
  end
  it "namedEntities:Bad named entity: coloneq without a semi-colon" do
    assert_lexes "&coloneq", "[[\"Character\",\"&coloneq\"]]"
  end
  it "namedEntities:Named entity: coloneq; with a semi-colon" do
    assert_lexes "&coloneq;", "[[\"Character\",\"≔\"]]"
  end
  it "namedEntities:Bad named entity: comma without a semi-colon" do
    assert_lexes "&comma", "[[\"Character\",\"&comma\"]]"
  end
  it "namedEntities:Named entity: comma; with a semi-colon" do
    assert_lexes "&comma;", "[[\"Character\",\",\"]]"
  end
  it "namedEntities:Bad named entity: commat without a semi-colon" do
    assert_lexes "&commat", "[[\"Character\",\"&commat\"]]"
  end
  it "namedEntities:Named entity: commat; with a semi-colon" do
    assert_lexes "&commat;", "[[\"Character\",\"@\"]]"
  end
  it "namedEntities:Bad named entity: comp without a semi-colon" do
    assert_lexes "&comp", "[[\"Character\",\"&comp\"]]"
  end
  it "namedEntities:Named entity: comp; with a semi-colon" do
    assert_lexes "&comp;", "[[\"Character\",\"∁\"]]"
  end
  it "namedEntities:Bad named entity: compfn without a semi-colon" do
    assert_lexes "&compfn", "[[\"Character\",\"&compfn\"]]"
  end
  it "namedEntities:Named entity: compfn; with a semi-colon" do
    assert_lexes "&compfn;", "[[\"Character\",\"∘\"]]"
  end
  it "namedEntities:Bad named entity: complement without a semi-colon" do
    assert_lexes "&complement", "[[\"Character\",\"&complement\"]]"
  end
  it "namedEntities:Named entity: complement; with a semi-colon" do
    assert_lexes "&complement;", "[[\"Character\",\"∁\"]]"
  end
  it "namedEntities:Bad named entity: complexes without a semi-colon" do
    assert_lexes "&complexes", "[[\"Character\",\"&complexes\"]]"
  end
  it "namedEntities:Named entity: complexes; with a semi-colon" do
    assert_lexes "&complexes;", "[[\"Character\",\"ℂ\"]]"
  end
  it "namedEntities:Bad named entity: cong without a semi-colon" do
    assert_lexes "&cong", "[[\"Character\",\"&cong\"]]"
  end
  it "namedEntities:Named entity: cong; with a semi-colon" do
    assert_lexes "&cong;", "[[\"Character\",\"≅\"]]"
  end
  it "namedEntities:Bad named entity: congdot without a semi-colon" do
    assert_lexes "&congdot", "[[\"Character\",\"&congdot\"]]"
  end
  it "namedEntities:Named entity: congdot; with a semi-colon" do
    assert_lexes "&congdot;", "[[\"Character\",\"⩭\"]]"
  end
  it "namedEntities:Bad named entity: conint without a semi-colon" do
    assert_lexes "&conint", "[[\"Character\",\"&conint\"]]"
  end
  it "namedEntities:Named entity: conint; with a semi-colon" do
    assert_lexes "&conint;", "[[\"Character\",\"∮\"]]"
  end
  it "namedEntities:Bad named entity: copf without a semi-colon" do
    assert_lexes "&copf", "[[\"Character\",\"&copf\"]]"
  end
  it "namedEntities:Named entity: copf; with a semi-colon" do
    assert_lexes "&copf;", "[[\"Character\",\"𝕔\"]]"
  end
  it "namedEntities:Bad named entity: coprod without a semi-colon" do
    assert_lexes "&coprod", "[[\"Character\",\"&coprod\"]]"
  end
  it "namedEntities:Named entity: coprod; with a semi-colon" do
    assert_lexes "&coprod;", "[[\"Character\",\"∐\"]]"
  end
  it "namedEntities:Named entity: copy without a semi-colon" do
    assert_lexes "&copy", "[[\"Character\",\"©\"]]"
  end
  it "namedEntities:Named entity: copy; with a semi-colon" do
    assert_lexes "&copy;", "[[\"Character\",\"©\"]]"
  end
  it "namedEntities:Named entity: copysr; with a semi-colon" do
    assert_lexes "&copysr;", "[[\"Character\",\"℗\"]]"
  end
  it "namedEntities:Bad named entity: crarr without a semi-colon" do
    assert_lexes "&crarr", "[[\"Character\",\"&crarr\"]]"
  end
  it "namedEntities:Named entity: crarr; with a semi-colon" do
    assert_lexes "&crarr;", "[[\"Character\",\"↵\"]]"
  end
  it "namedEntities:Bad named entity: cross without a semi-colon" do
    assert_lexes "&cross", "[[\"Character\",\"&cross\"]]"
  end
  it "namedEntities:Named entity: cross; with a semi-colon" do
    assert_lexes "&cross;", "[[\"Character\",\"✗\"]]"
  end
  it "namedEntities:Bad named entity: cscr without a semi-colon" do
    assert_lexes "&cscr", "[[\"Character\",\"&cscr\"]]"
  end
  it "namedEntities:Named entity: cscr; with a semi-colon" do
    assert_lexes "&cscr;", "[[\"Character\",\"𝒸\"]]"
  end
  it "namedEntities:Bad named entity: csub without a semi-colon" do
    assert_lexes "&csub", "[[\"Character\",\"&csub\"]]"
  end
  it "namedEntities:Named entity: csub; with a semi-colon" do
    assert_lexes "&csub;", "[[\"Character\",\"⫏\"]]"
  end
  it "namedEntities:Bad named entity: csube without a semi-colon" do
    assert_lexes "&csube", "[[\"Character\",\"&csube\"]]"
  end
  it "namedEntities:Named entity: csube; with a semi-colon" do
    assert_lexes "&csube;", "[[\"Character\",\"⫑\"]]"
  end
  it "namedEntities:Bad named entity: csup without a semi-colon" do
    assert_lexes "&csup", "[[\"Character\",\"&csup\"]]"
  end
  it "namedEntities:Named entity: csup; with a semi-colon" do
    assert_lexes "&csup;", "[[\"Character\",\"⫐\"]]"
  end
  it "namedEntities:Bad named entity: csupe without a semi-colon" do
    assert_lexes "&csupe", "[[\"Character\",\"&csupe\"]]"
  end
  it "namedEntities:Named entity: csupe; with a semi-colon" do
    assert_lexes "&csupe;", "[[\"Character\",\"⫒\"]]"
  end
  it "namedEntities:Bad named entity: ctdot without a semi-colon" do
    assert_lexes "&ctdot", "[[\"Character\",\"&ctdot\"]]"
  end
  it "namedEntities:Named entity: ctdot; with a semi-colon" do
    assert_lexes "&ctdot;", "[[\"Character\",\"⋯\"]]"
  end
  it "namedEntities:Bad named entity: cudarrl without a semi-colon" do
    assert_lexes "&cudarrl", "[[\"Character\",\"&cudarrl\"]]"
  end
  it "namedEntities:Named entity: cudarrl; with a semi-colon" do
    assert_lexes "&cudarrl;", "[[\"Character\",\"⤸\"]]"
  end
  it "namedEntities:Bad named entity: cudarrr without a semi-colon" do
    assert_lexes "&cudarrr", "[[\"Character\",\"&cudarrr\"]]"
  end
  it "namedEntities:Named entity: cudarrr; with a semi-colon" do
    assert_lexes "&cudarrr;", "[[\"Character\",\"⤵\"]]"
  end
  it "namedEntities:Bad named entity: cuepr without a semi-colon" do
    assert_lexes "&cuepr", "[[\"Character\",\"&cuepr\"]]"
  end
  it "namedEntities:Named entity: cuepr; with a semi-colon" do
    assert_lexes "&cuepr;", "[[\"Character\",\"⋞\"]]"
  end
  it "namedEntities:Bad named entity: cuesc without a semi-colon" do
    assert_lexes "&cuesc", "[[\"Character\",\"&cuesc\"]]"
  end
  it "namedEntities:Named entity: cuesc; with a semi-colon" do
    assert_lexes "&cuesc;", "[[\"Character\",\"⋟\"]]"
  end
  it "namedEntities:Bad named entity: cularr without a semi-colon" do
    assert_lexes "&cularr", "[[\"Character\",\"&cularr\"]]"
  end
  it "namedEntities:Named entity: cularr; with a semi-colon" do
    assert_lexes "&cularr;", "[[\"Character\",\"↶\"]]"
  end
  it "namedEntities:Bad named entity: cularrp without a semi-colon" do
    assert_lexes "&cularrp", "[[\"Character\",\"&cularrp\"]]"
  end
  it "namedEntities:Named entity: cularrp; with a semi-colon" do
    assert_lexes "&cularrp;", "[[\"Character\",\"⤽\"]]"
  end
  it "namedEntities:Bad named entity: cup without a semi-colon" do
    assert_lexes "&cup", "[[\"Character\",\"&cup\"]]"
  end
  it "namedEntities:Named entity: cup; with a semi-colon" do
    assert_lexes "&cup;", "[[\"Character\",\"∪\"]]"
  end
  it "namedEntities:Bad named entity: cupbrcap without a semi-colon" do
    assert_lexes "&cupbrcap", "[[\"Character\",\"&cupbrcap\"]]"
  end
  it "namedEntities:Named entity: cupbrcap; with a semi-colon" do
    assert_lexes "&cupbrcap;", "[[\"Character\",\"⩈\"]]"
  end
  it "namedEntities:Bad named entity: cupcap without a semi-colon" do
    assert_lexes "&cupcap", "[[\"Character\",\"&cupcap\"]]"
  end
  it "namedEntities:Named entity: cupcap; with a semi-colon" do
    assert_lexes "&cupcap;", "[[\"Character\",\"⩆\"]]"
  end
  it "namedEntities:Bad named entity: cupcup without a semi-colon" do
    assert_lexes "&cupcup", "[[\"Character\",\"&cupcup\"]]"
  end
  it "namedEntities:Named entity: cupcup; with a semi-colon" do
    assert_lexes "&cupcup;", "[[\"Character\",\"⩊\"]]"
  end
  it "namedEntities:Bad named entity: cupdot without a semi-colon" do
    assert_lexes "&cupdot", "[[\"Character\",\"&cupdot\"]]"
  end
  it "namedEntities:Named entity: cupdot; with a semi-colon" do
    assert_lexes "&cupdot;", "[[\"Character\",\"⊍\"]]"
  end
  it "namedEntities:Bad named entity: cupor without a semi-colon" do
    assert_lexes "&cupor", "[[\"Character\",\"&cupor\"]]"
  end
  it "namedEntities:Named entity: cupor; with a semi-colon" do
    assert_lexes "&cupor;", "[[\"Character\",\"⩅\"]]"
  end
  it "namedEntities:Bad named entity: cups without a semi-colon" do
    assert_lexes "&cups", "[[\"Character\",\"&cups\"]]"
  end
  it "namedEntities:Named entity: cups; with a semi-colon" do
    assert_lexes "&cups;", "[[\"Character\",\"∪︀\"]]"
  end
  it "namedEntities:Bad named entity: curarr without a semi-colon" do
    assert_lexes "&curarr", "[[\"Character\",\"&curarr\"]]"
  end
  it "namedEntities:Named entity: curarr; with a semi-colon" do
    assert_lexes "&curarr;", "[[\"Character\",\"↷\"]]"
  end
  it "namedEntities:Bad named entity: curarrm without a semi-colon" do
    assert_lexes "&curarrm", "[[\"Character\",\"&curarrm\"]]"
  end
  it "namedEntities:Named entity: curarrm; with a semi-colon" do
    assert_lexes "&curarrm;", "[[\"Character\",\"⤼\"]]"
  end
  it "namedEntities:Bad named entity: curlyeqprec without a semi-colon" do
    assert_lexes "&curlyeqprec", "[[\"Character\",\"&curlyeqprec\"]]"
  end
  it "namedEntities:Named entity: curlyeqprec; with a semi-colon" do
    assert_lexes "&curlyeqprec;", "[[\"Character\",\"⋞\"]]"
  end
  it "namedEntities:Bad named entity: curlyeqsucc without a semi-colon" do
    assert_lexes "&curlyeqsucc", "[[\"Character\",\"&curlyeqsucc\"]]"
  end
  it "namedEntities:Named entity: curlyeqsucc; with a semi-colon" do
    assert_lexes "&curlyeqsucc;", "[[\"Character\",\"⋟\"]]"
  end
  it "namedEntities:Bad named entity: curlyvee without a semi-colon" do
    assert_lexes "&curlyvee", "[[\"Character\",\"&curlyvee\"]]"
  end
  it "namedEntities:Named entity: curlyvee; with a semi-colon" do
    assert_lexes "&curlyvee;", "[[\"Character\",\"⋎\"]]"
  end
  it "namedEntities:Bad named entity: curlywedge without a semi-colon" do
    assert_lexes "&curlywedge", "[[\"Character\",\"&curlywedge\"]]"
  end
  it "namedEntities:Named entity: curlywedge; with a semi-colon" do
    assert_lexes "&curlywedge;", "[[\"Character\",\"⋏\"]]"
  end
  it "namedEntities:Named entity: curren without a semi-colon" do
    assert_lexes "&curren", "[[\"Character\",\"¤\"]]"
  end
  it "namedEntities:Named entity: curren; with a semi-colon" do
    assert_lexes "&curren;", "[[\"Character\",\"¤\"]]"
  end
  it "namedEntities:Bad named entity: curvearrowleft without a semi-colon" do
    assert_lexes "&curvearrowleft", "[[\"Character\",\"&curvearrowleft\"]]"
  end
  it "namedEntities:Named entity: curvearrowleft; with a semi-colon" do
    assert_lexes "&curvearrowleft;", "[[\"Character\",\"↶\"]]"
  end
  it "namedEntities:Bad named entity: curvearrowright without a semi-colon" do
    assert_lexes "&curvearrowright", "[[\"Character\",\"&curvearrowright\"]]"
  end
  it "namedEntities:Named entity: curvearrowright; with a semi-colon" do
    assert_lexes "&curvearrowright;", "[[\"Character\",\"↷\"]]"
  end
  it "namedEntities:Bad named entity: cuvee without a semi-colon" do
    assert_lexes "&cuvee", "[[\"Character\",\"&cuvee\"]]"
  end
  it "namedEntities:Named entity: cuvee; with a semi-colon" do
    assert_lexes "&cuvee;", "[[\"Character\",\"⋎\"]]"
  end
  it "namedEntities:Bad named entity: cuwed without a semi-colon" do
    assert_lexes "&cuwed", "[[\"Character\",\"&cuwed\"]]"
  end
  it "namedEntities:Named entity: cuwed; with a semi-colon" do
    assert_lexes "&cuwed;", "[[\"Character\",\"⋏\"]]"
  end
  it "namedEntities:Bad named entity: cwconint without a semi-colon" do
    assert_lexes "&cwconint", "[[\"Character\",\"&cwconint\"]]"
  end
  it "namedEntities:Named entity: cwconint; with a semi-colon" do
    assert_lexes "&cwconint;", "[[\"Character\",\"∲\"]]"
  end
  it "namedEntities:Bad named entity: cwint without a semi-colon" do
    assert_lexes "&cwint", "[[\"Character\",\"&cwint\"]]"
  end
  it "namedEntities:Named entity: cwint; with a semi-colon" do
    assert_lexes "&cwint;", "[[\"Character\",\"∱\"]]"
  end
  it "namedEntities:Bad named entity: cylcty without a semi-colon" do
    assert_lexes "&cylcty", "[[\"Character\",\"&cylcty\"]]"
  end
  it "namedEntities:Named entity: cylcty; with a semi-colon" do
    assert_lexes "&cylcty;", "[[\"Character\",\"⌭\"]]"
  end
  it "namedEntities:Bad named entity: dArr without a semi-colon" do
    assert_lexes "&dArr", "[[\"Character\",\"&dArr\"]]"
  end
  it "namedEntities:Named entity: dArr; with a semi-colon" do
    assert_lexes "&dArr;", "[[\"Character\",\"⇓\"]]"
  end
  it "namedEntities:Bad named entity: dHar without a semi-colon" do
    assert_lexes "&dHar", "[[\"Character\",\"&dHar\"]]"
  end
  it "namedEntities:Named entity: dHar; with a semi-colon" do
    assert_lexes "&dHar;", "[[\"Character\",\"⥥\"]]"
  end
  it "namedEntities:Bad named entity: dagger without a semi-colon" do
    assert_lexes "&dagger", "[[\"Character\",\"&dagger\"]]"
  end
  it "namedEntities:Named entity: dagger; with a semi-colon" do
    assert_lexes "&dagger;", "[[\"Character\",\"†\"]]"
  end
  it "namedEntities:Bad named entity: daleth without a semi-colon" do
    assert_lexes "&daleth", "[[\"Character\",\"&daleth\"]]"
  end
  it "namedEntities:Named entity: daleth; with a semi-colon" do
    assert_lexes "&daleth;", "[[\"Character\",\"ℸ\"]]"
  end
  it "namedEntities:Bad named entity: darr without a semi-colon" do
    assert_lexes "&darr", "[[\"Character\",\"&darr\"]]"
  end
  it "namedEntities:Named entity: darr; with a semi-colon" do
    assert_lexes "&darr;", "[[\"Character\",\"↓\"]]"
  end
  it "namedEntities:Bad named entity: dash without a semi-colon" do
    assert_lexes "&dash", "[[\"Character\",\"&dash\"]]"
  end
  it "namedEntities:Named entity: dash; with a semi-colon" do
    assert_lexes "&dash;", "[[\"Character\",\"‐\"]]"
  end
  it "namedEntities:Bad named entity: dashv without a semi-colon" do
    assert_lexes "&dashv", "[[\"Character\",\"&dashv\"]]"
  end
  it "namedEntities:Named entity: dashv; with a semi-colon" do
    assert_lexes "&dashv;", "[[\"Character\",\"⊣\"]]"
  end
  it "namedEntities:Bad named entity: dbkarow without a semi-colon" do
    assert_lexes "&dbkarow", "[[\"Character\",\"&dbkarow\"]]"
  end
  it "namedEntities:Named entity: dbkarow; with a semi-colon" do
    assert_lexes "&dbkarow;", "[[\"Character\",\"⤏\"]]"
  end
  it "namedEntities:Bad named entity: dblac without a semi-colon" do
    assert_lexes "&dblac", "[[\"Character\",\"&dblac\"]]"
  end
  it "namedEntities:Named entity: dblac; with a semi-colon" do
    assert_lexes "&dblac;", "[[\"Character\",\"˝\"]]"
  end
  it "namedEntities:Bad named entity: dcaron without a semi-colon" do
    assert_lexes "&dcaron", "[[\"Character\",\"&dcaron\"]]"
  end
  it "namedEntities:Named entity: dcaron; with a semi-colon" do
    assert_lexes "&dcaron;", "[[\"Character\",\"ď\"]]"
  end
  it "namedEntities:Bad named entity: dcy without a semi-colon" do
    assert_lexes "&dcy", "[[\"Character\",\"&dcy\"]]"
  end
  it "namedEntities:Named entity: dcy; with a semi-colon" do
    assert_lexes "&dcy;", "[[\"Character\",\"д\"]]"
  end
  it "namedEntities:Bad named entity: dd without a semi-colon" do
    assert_lexes "&dd", "[[\"Character\",\"&dd\"]]"
  end
  it "namedEntities:Named entity: dd; with a semi-colon" do
    assert_lexes "&dd;", "[[\"Character\",\"ⅆ\"]]"
  end
  it "namedEntities:Bad named entity: ddagger without a semi-colon" do
    assert_lexes "&ddagger", "[[\"Character\",\"&ddagger\"]]"
  end
  it "namedEntities:Named entity: ddagger; with a semi-colon" do
    assert_lexes "&ddagger;", "[[\"Character\",\"‡\"]]"
  end
  it "namedEntities:Bad named entity: ddarr without a semi-colon" do
    assert_lexes "&ddarr", "[[\"Character\",\"&ddarr\"]]"
  end
  it "namedEntities:Named entity: ddarr; with a semi-colon" do
    assert_lexes "&ddarr;", "[[\"Character\",\"⇊\"]]"
  end
  it "namedEntities:Bad named entity: ddotseq without a semi-colon" do
    assert_lexes "&ddotseq", "[[\"Character\",\"&ddotseq\"]]"
  end
  it "namedEntities:Named entity: ddotseq; with a semi-colon" do
    assert_lexes "&ddotseq;", "[[\"Character\",\"⩷\"]]"
  end
  it "namedEntities:Named entity: deg without a semi-colon" do
    assert_lexes "&deg", "[[\"Character\",\"°\"]]"
  end
  it "namedEntities:Named entity: deg; with a semi-colon" do
    assert_lexes "&deg;", "[[\"Character\",\"°\"]]"
  end
  it "namedEntities:Bad named entity: delta without a semi-colon" do
    assert_lexes "&delta", "[[\"Character\",\"&delta\"]]"
  end
  it "namedEntities:Named entity: delta; with a semi-colon" do
    assert_lexes "&delta;", "[[\"Character\",\"δ\"]]"
  end
  it "namedEntities:Bad named entity: demptyv without a semi-colon" do
    assert_lexes "&demptyv", "[[\"Character\",\"&demptyv\"]]"
  end
  it "namedEntities:Named entity: demptyv; with a semi-colon" do
    assert_lexes "&demptyv;", "[[\"Character\",\"⦱\"]]"
  end
  it "namedEntities:Bad named entity: dfisht without a semi-colon" do
    assert_lexes "&dfisht", "[[\"Character\",\"&dfisht\"]]"
  end
  it "namedEntities:Named entity: dfisht; with a semi-colon" do
    assert_lexes "&dfisht;", "[[\"Character\",\"⥿\"]]"
  end
  it "namedEntities:Bad named entity: dfr without a semi-colon" do
    assert_lexes "&dfr", "[[\"Character\",\"&dfr\"]]"
  end
  it "namedEntities:Named entity: dfr; with a semi-colon" do
    assert_lexes "&dfr;", "[[\"Character\",\"𝔡\"]]"
  end
  it "namedEntities:Bad named entity: dharl without a semi-colon" do
    assert_lexes "&dharl", "[[\"Character\",\"&dharl\"]]"
  end
  it "namedEntities:Named entity: dharl; with a semi-colon" do
    assert_lexes "&dharl;", "[[\"Character\",\"⇃\"]]"
  end
  it "namedEntities:Bad named entity: dharr without a semi-colon" do
    assert_lexes "&dharr", "[[\"Character\",\"&dharr\"]]"
  end
  it "namedEntities:Named entity: dharr; with a semi-colon" do
    assert_lexes "&dharr;", "[[\"Character\",\"⇂\"]]"
  end
  it "namedEntities:Bad named entity: diam without a semi-colon" do
    assert_lexes "&diam", "[[\"Character\",\"&diam\"]]"
  end
  it "namedEntities:Named entity: diam; with a semi-colon" do
    assert_lexes "&diam;", "[[\"Character\",\"⋄\"]]"
  end
  it "namedEntities:Bad named entity: diamond without a semi-colon" do
    assert_lexes "&diamond", "[[\"Character\",\"&diamond\"]]"
  end
  it "namedEntities:Named entity: diamond; with a semi-colon" do
    assert_lexes "&diamond;", "[[\"Character\",\"⋄\"]]"
  end
  it "namedEntities:Bad named entity: diamondsuit without a semi-colon" do
    assert_lexes "&diamondsuit", "[[\"Character\",\"&diamondsuit\"]]"
  end
  it "namedEntities:Named entity: diamondsuit; with a semi-colon" do
    assert_lexes "&diamondsuit;", "[[\"Character\",\"♦\"]]"
  end
  it "namedEntities:Bad named entity: diams without a semi-colon" do
    assert_lexes "&diams", "[[\"Character\",\"&diams\"]]"
  end
  it "namedEntities:Named entity: diams; with a semi-colon" do
    assert_lexes "&diams;", "[[\"Character\",\"♦\"]]"
  end
  it "namedEntities:Bad named entity: die without a semi-colon" do
    assert_lexes "&die", "[[\"Character\",\"&die\"]]"
  end
  it "namedEntities:Named entity: die; with a semi-colon" do
    assert_lexes "&die;", "[[\"Character\",\"¨\"]]"
  end
  it "namedEntities:Bad named entity: digamma without a semi-colon" do
    assert_lexes "&digamma", "[[\"Character\",\"&digamma\"]]"
  end
  it "namedEntities:Named entity: digamma; with a semi-colon" do
    assert_lexes "&digamma;", "[[\"Character\",\"ϝ\"]]"
  end
  it "namedEntities:Bad named entity: disin without a semi-colon" do
    assert_lexes "&disin", "[[\"Character\",\"&disin\"]]"
  end
  it "namedEntities:Named entity: disin; with a semi-colon" do
    assert_lexes "&disin;", "[[\"Character\",\"⋲\"]]"
  end
  it "namedEntities:Bad named entity: div without a semi-colon" do
    assert_lexes "&div", "[[\"Character\",\"&div\"]]"
  end
  it "namedEntities:Named entity: div; with a semi-colon" do
    assert_lexes "&div;", "[[\"Character\",\"÷\"]]"
  end
  it "namedEntities:Named entity: divide without a semi-colon" do
    assert_lexes "&divide", "[[\"Character\",\"÷\"]]"
  end
  it "namedEntities:Named entity: divide; with a semi-colon" do
    assert_lexes "&divide;", "[[\"Character\",\"÷\"]]"
  end
  it "namedEntities:Named entity: divideontimes; with a semi-colon" do
    assert_lexes "&divideontimes;", "[[\"Character\",\"⋇\"]]"
  end
  it "namedEntities:Bad named entity: divonx without a semi-colon" do
    assert_lexes "&divonx", "[[\"Character\",\"&divonx\"]]"
  end
  it "namedEntities:Named entity: divonx; with a semi-colon" do
    assert_lexes "&divonx;", "[[\"Character\",\"⋇\"]]"
  end
  it "namedEntities:Bad named entity: djcy without a semi-colon" do
    assert_lexes "&djcy", "[[\"Character\",\"&djcy\"]]"
  end
  it "namedEntities:Named entity: djcy; with a semi-colon" do
    assert_lexes "&djcy;", "[[\"Character\",\"ђ\"]]"
  end
  it "namedEntities:Bad named entity: dlcorn without a semi-colon" do
    assert_lexes "&dlcorn", "[[\"Character\",\"&dlcorn\"]]"
  end
  it "namedEntities:Named entity: dlcorn; with a semi-colon" do
    assert_lexes "&dlcorn;", "[[\"Character\",\"⌞\"]]"
  end
  it "namedEntities:Bad named entity: dlcrop without a semi-colon" do
    assert_lexes "&dlcrop", "[[\"Character\",\"&dlcrop\"]]"
  end
  it "namedEntities:Named entity: dlcrop; with a semi-colon" do
    assert_lexes "&dlcrop;", "[[\"Character\",\"⌍\"]]"
  end
  it "namedEntities:Bad named entity: dollar without a semi-colon" do
    assert_lexes "&dollar", "[[\"Character\",\"&dollar\"]]"
  end
  it "namedEntities:Named entity: dollar; with a semi-colon" do
    assert_lexes "&dollar;", "[[\"Character\",\"$\"]]"
  end
  it "namedEntities:Bad named entity: dopf without a semi-colon" do
    assert_lexes "&dopf", "[[\"Character\",\"&dopf\"]]"
  end
  it "namedEntities:Named entity: dopf; with a semi-colon" do
    assert_lexes "&dopf;", "[[\"Character\",\"𝕕\"]]"
  end
  it "namedEntities:Bad named entity: dot without a semi-colon" do
    assert_lexes "&dot", "[[\"Character\",\"&dot\"]]"
  end
  it "namedEntities:Named entity: dot; with a semi-colon" do
    assert_lexes "&dot;", "[[\"Character\",\"˙\"]]"
  end
  it "namedEntities:Bad named entity: doteq without a semi-colon" do
    assert_lexes "&doteq", "[[\"Character\",\"&doteq\"]]"
  end
  it "namedEntities:Named entity: doteq; with a semi-colon" do
    assert_lexes "&doteq;", "[[\"Character\",\"≐\"]]"
  end
  it "namedEntities:Bad named entity: doteqdot without a semi-colon" do
    assert_lexes "&doteqdot", "[[\"Character\",\"&doteqdot\"]]"
  end
  it "namedEntities:Named entity: doteqdot; with a semi-colon" do
    assert_lexes "&doteqdot;", "[[\"Character\",\"≑\"]]"
  end
  it "namedEntities:Bad named entity: dotminus without a semi-colon" do
    assert_lexes "&dotminus", "[[\"Character\",\"&dotminus\"]]"
  end
  it "namedEntities:Named entity: dotminus; with a semi-colon" do
    assert_lexes "&dotminus;", "[[\"Character\",\"∸\"]]"
  end
  it "namedEntities:Bad named entity: dotplus without a semi-colon" do
    assert_lexes "&dotplus", "[[\"Character\",\"&dotplus\"]]"
  end
  it "namedEntities:Named entity: dotplus; with a semi-colon" do
    assert_lexes "&dotplus;", "[[\"Character\",\"∔\"]]"
  end
  it "namedEntities:Bad named entity: dotsquare without a semi-colon" do
    assert_lexes "&dotsquare", "[[\"Character\",\"&dotsquare\"]]"
  end
  it "namedEntities:Named entity: dotsquare; with a semi-colon" do
    assert_lexes "&dotsquare;", "[[\"Character\",\"⊡\"]]"
  end
  it "namedEntities:Bad named entity: doublebarwedge without a semi-colon" do
    assert_lexes "&doublebarwedge", "[[\"Character\",\"&doublebarwedge\"]]"
  end
  it "namedEntities:Named entity: doublebarwedge; with a semi-colon" do
    assert_lexes "&doublebarwedge;", "[[\"Character\",\"⌆\"]]"
  end
  it "namedEntities:Bad named entity: downarrow without a semi-colon" do
    assert_lexes "&downarrow", "[[\"Character\",\"&downarrow\"]]"
  end
  it "namedEntities:Named entity: downarrow; with a semi-colon" do
    assert_lexes "&downarrow;", "[[\"Character\",\"↓\"]]"
  end
  it "namedEntities:Bad named entity: downdownarrows without a semi-colon" do
    assert_lexes "&downdownarrows", "[[\"Character\",\"&downdownarrows\"]]"
  end
  it "namedEntities:Named entity: downdownarrows; with a semi-colon" do
    assert_lexes "&downdownarrows;", "[[\"Character\",\"⇊\"]]"
  end
  it "namedEntities:Bad named entity: downharpoonleft without a semi-colon" do
    assert_lexes "&downharpoonleft", "[[\"Character\",\"&downharpoonleft\"]]"
  end
  it "namedEntities:Named entity: downharpoonleft; with a semi-colon" do
    assert_lexes "&downharpoonleft;", "[[\"Character\",\"⇃\"]]"
  end
  it "namedEntities:Bad named entity: downharpoonright without a semi-colon" do
    assert_lexes "&downharpoonright", "[[\"Character\",\"&downharpoonright\"]]"
  end
  it "namedEntities:Named entity: downharpoonright; with a semi-colon" do
    assert_lexes "&downharpoonright;", "[[\"Character\",\"⇂\"]]"
  end
  it "namedEntities:Bad named entity: drbkarow without a semi-colon" do
    assert_lexes "&drbkarow", "[[\"Character\",\"&drbkarow\"]]"
  end
  it "namedEntities:Named entity: drbkarow; with a semi-colon" do
    assert_lexes "&drbkarow;", "[[\"Character\",\"⤐\"]]"
  end
  it "namedEntities:Bad named entity: drcorn without a semi-colon" do
    assert_lexes "&drcorn", "[[\"Character\",\"&drcorn\"]]"
  end
  it "namedEntities:Named entity: drcorn; with a semi-colon" do
    assert_lexes "&drcorn;", "[[\"Character\",\"⌟\"]]"
  end
  it "namedEntities:Bad named entity: drcrop without a semi-colon" do
    assert_lexes "&drcrop", "[[\"Character\",\"&drcrop\"]]"
  end
  it "namedEntities:Named entity: drcrop; with a semi-colon" do
    assert_lexes "&drcrop;", "[[\"Character\",\"⌌\"]]"
  end
  it "namedEntities:Bad named entity: dscr without a semi-colon" do
    assert_lexes "&dscr", "[[\"Character\",\"&dscr\"]]"
  end
  it "namedEntities:Named entity: dscr; with a semi-colon" do
    assert_lexes "&dscr;", "[[\"Character\",\"𝒹\"]]"
  end
  it "namedEntities:Bad named entity: dscy without a semi-colon" do
    assert_lexes "&dscy", "[[\"Character\",\"&dscy\"]]"
  end
  it "namedEntities:Named entity: dscy; with a semi-colon" do
    assert_lexes "&dscy;", "[[\"Character\",\"ѕ\"]]"
  end
  it "namedEntities:Bad named entity: dsol without a semi-colon" do
    assert_lexes "&dsol", "[[\"Character\",\"&dsol\"]]"
  end
  it "namedEntities:Named entity: dsol; with a semi-colon" do
    assert_lexes "&dsol;", "[[\"Character\",\"⧶\"]]"
  end
  it "namedEntities:Bad named entity: dstrok without a semi-colon" do
    assert_lexes "&dstrok", "[[\"Character\",\"&dstrok\"]]"
  end
  it "namedEntities:Named entity: dstrok; with a semi-colon" do
    assert_lexes "&dstrok;", "[[\"Character\",\"đ\"]]"
  end
  it "namedEntities:Bad named entity: dtdot without a semi-colon" do
    assert_lexes "&dtdot", "[[\"Character\",\"&dtdot\"]]"
  end
  it "namedEntities:Named entity: dtdot; with a semi-colon" do
    assert_lexes "&dtdot;", "[[\"Character\",\"⋱\"]]"
  end
  it "namedEntities:Bad named entity: dtri without a semi-colon" do
    assert_lexes "&dtri", "[[\"Character\",\"&dtri\"]]"
  end
  it "namedEntities:Named entity: dtri; with a semi-colon" do
    assert_lexes "&dtri;", "[[\"Character\",\"▿\"]]"
  end
  it "namedEntities:Bad named entity: dtrif without a semi-colon" do
    assert_lexes "&dtrif", "[[\"Character\",\"&dtrif\"]]"
  end
  it "namedEntities:Named entity: dtrif; with a semi-colon" do
    assert_lexes "&dtrif;", "[[\"Character\",\"▾\"]]"
  end
  it "namedEntities:Bad named entity: duarr without a semi-colon" do
    assert_lexes "&duarr", "[[\"Character\",\"&duarr\"]]"
  end
  it "namedEntities:Named entity: duarr; with a semi-colon" do
    assert_lexes "&duarr;", "[[\"Character\",\"⇵\"]]"
  end
  it "namedEntities:Bad named entity: duhar without a semi-colon" do
    assert_lexes "&duhar", "[[\"Character\",\"&duhar\"]]"
  end
  it "namedEntities:Named entity: duhar; with a semi-colon" do
    assert_lexes "&duhar;", "[[\"Character\",\"⥯\"]]"
  end
  it "namedEntities:Bad named entity: dwangle without a semi-colon" do
    assert_lexes "&dwangle", "[[\"Character\",\"&dwangle\"]]"
  end
  it "namedEntities:Named entity: dwangle; with a semi-colon" do
    assert_lexes "&dwangle;", "[[\"Character\",\"⦦\"]]"
  end
  it "namedEntities:Bad named entity: dzcy without a semi-colon" do
    assert_lexes "&dzcy", "[[\"Character\",\"&dzcy\"]]"
  end
  it "namedEntities:Named entity: dzcy; with a semi-colon" do
    assert_lexes "&dzcy;", "[[\"Character\",\"џ\"]]"
  end
  it "namedEntities:Bad named entity: dzigrarr without a semi-colon" do
    assert_lexes "&dzigrarr", "[[\"Character\",\"&dzigrarr\"]]"
  end
  it "namedEntities:Named entity: dzigrarr; with a semi-colon" do
    assert_lexes "&dzigrarr;", "[[\"Character\",\"⟿\"]]"
  end
  it "namedEntities:Bad named entity: eDDot without a semi-colon" do
    assert_lexes "&eDDot", "[[\"Character\",\"&eDDot\"]]"
  end
  it "namedEntities:Named entity: eDDot; with a semi-colon" do
    assert_lexes "&eDDot;", "[[\"Character\",\"⩷\"]]"
  end
  it "namedEntities:Bad named entity: eDot without a semi-colon" do
    assert_lexes "&eDot", "[[\"Character\",\"&eDot\"]]"
  end
  it "namedEntities:Named entity: eDot; with a semi-colon" do
    assert_lexes "&eDot;", "[[\"Character\",\"≑\"]]"
  end
  it "namedEntities:Named entity: eacute without a semi-colon" do
    assert_lexes "&eacute", "[[\"Character\",\"é\"]]"
  end
  it "namedEntities:Named entity: eacute; with a semi-colon" do
    assert_lexes "&eacute;", "[[\"Character\",\"é\"]]"
  end
  it "namedEntities:Bad named entity: easter without a semi-colon" do
    assert_lexes "&easter", "[[\"Character\",\"&easter\"]]"
  end
  it "namedEntities:Named entity: easter; with a semi-colon" do
    assert_lexes "&easter;", "[[\"Character\",\"⩮\"]]"
  end
  it "namedEntities:Bad named entity: ecaron without a semi-colon" do
    assert_lexes "&ecaron", "[[\"Character\",\"&ecaron\"]]"
  end
  it "namedEntities:Named entity: ecaron; with a semi-colon" do
    assert_lexes "&ecaron;", "[[\"Character\",\"ě\"]]"
  end
  it "namedEntities:Bad named entity: ecir without a semi-colon" do
    assert_lexes "&ecir", "[[\"Character\",\"&ecir\"]]"
  end
  it "namedEntities:Named entity: ecir; with a semi-colon" do
    assert_lexes "&ecir;", "[[\"Character\",\"≖\"]]"
  end
  it "namedEntities:Named entity: ecirc without a semi-colon" do
    assert_lexes "&ecirc", "[[\"Character\",\"ê\"]]"
  end
  it "namedEntities:Named entity: ecirc; with a semi-colon" do
    assert_lexes "&ecirc;", "[[\"Character\",\"ê\"]]"
  end
  it "namedEntities:Bad named entity: ecolon without a semi-colon" do
    assert_lexes "&ecolon", "[[\"Character\",\"&ecolon\"]]"
  end
  it "namedEntities:Named entity: ecolon; with a semi-colon" do
    assert_lexes "&ecolon;", "[[\"Character\",\"≕\"]]"
  end
  it "namedEntities:Bad named entity: ecy without a semi-colon" do
    assert_lexes "&ecy", "[[\"Character\",\"&ecy\"]]"
  end
  it "namedEntities:Named entity: ecy; with a semi-colon" do
    assert_lexes "&ecy;", "[[\"Character\",\"э\"]]"
  end
  it "namedEntities:Bad named entity: edot without a semi-colon" do
    assert_lexes "&edot", "[[\"Character\",\"&edot\"]]"
  end
  it "namedEntities:Named entity: edot; with a semi-colon" do
    assert_lexes "&edot;", "[[\"Character\",\"ė\"]]"
  end
  it "namedEntities:Bad named entity: ee without a semi-colon" do
    assert_lexes "&ee", "[[\"Character\",\"&ee\"]]"
  end
  it "namedEntities:Named entity: ee; with a semi-colon" do
    assert_lexes "&ee;", "[[\"Character\",\"ⅇ\"]]"
  end
  it "namedEntities:Bad named entity: efDot without a semi-colon" do
    assert_lexes "&efDot", "[[\"Character\",\"&efDot\"]]"
  end
  it "namedEntities:Named entity: efDot; with a semi-colon" do
    assert_lexes "&efDot;", "[[\"Character\",\"≒\"]]"
  end
  it "namedEntities:Bad named entity: efr without a semi-colon" do
    assert_lexes "&efr", "[[\"Character\",\"&efr\"]]"
  end
  it "namedEntities:Named entity: efr; with a semi-colon" do
    assert_lexes "&efr;", "[[\"Character\",\"𝔢\"]]"
  end
  it "namedEntities:Bad named entity: eg without a semi-colon" do
    assert_lexes "&eg", "[[\"Character\",\"&eg\"]]"
  end
  it "namedEntities:Named entity: eg; with a semi-colon" do
    assert_lexes "&eg;", "[[\"Character\",\"⪚\"]]"
  end
  it "namedEntities:Named entity: egrave without a semi-colon" do
    assert_lexes "&egrave", "[[\"Character\",\"è\"]]"
  end
  it "namedEntities:Named entity: egrave; with a semi-colon" do
    assert_lexes "&egrave;", "[[\"Character\",\"è\"]]"
  end
  it "namedEntities:Bad named entity: egs without a semi-colon" do
    assert_lexes "&egs", "[[\"Character\",\"&egs\"]]"
  end
  it "namedEntities:Named entity: egs; with a semi-colon" do
    assert_lexes "&egs;", "[[\"Character\",\"⪖\"]]"
  end
  it "namedEntities:Bad named entity: egsdot without a semi-colon" do
    assert_lexes "&egsdot", "[[\"Character\",\"&egsdot\"]]"
  end
  it "namedEntities:Named entity: egsdot; with a semi-colon" do
    assert_lexes "&egsdot;", "[[\"Character\",\"⪘\"]]"
  end
  it "namedEntities:Bad named entity: el without a semi-colon" do
    assert_lexes "&el", "[[\"Character\",\"&el\"]]"
  end
  it "namedEntities:Named entity: el; with a semi-colon" do
    assert_lexes "&el;", "[[\"Character\",\"⪙\"]]"
  end
  it "namedEntities:Bad named entity: elinters without a semi-colon" do
    assert_lexes "&elinters", "[[\"Character\",\"&elinters\"]]"
  end
  it "namedEntities:Named entity: elinters; with a semi-colon" do
    assert_lexes "&elinters;", "[[\"Character\",\"⏧\"]]"
  end
  it "namedEntities:Bad named entity: ell without a semi-colon" do
    assert_lexes "&ell", "[[\"Character\",\"&ell\"]]"
  end
  it "namedEntities:Named entity: ell; with a semi-colon" do
    assert_lexes "&ell;", "[[\"Character\",\"ℓ\"]]"
  end
  it "namedEntities:Bad named entity: els without a semi-colon" do
    assert_lexes "&els", "[[\"Character\",\"&els\"]]"
  end
  it "namedEntities:Named entity: els; with a semi-colon" do
    assert_lexes "&els;", "[[\"Character\",\"⪕\"]]"
  end
  it "namedEntities:Bad named entity: elsdot without a semi-colon" do
    assert_lexes "&elsdot", "[[\"Character\",\"&elsdot\"]]"
  end
  it "namedEntities:Named entity: elsdot; with a semi-colon" do
    assert_lexes "&elsdot;", "[[\"Character\",\"⪗\"]]"
  end
  it "namedEntities:Bad named entity: emacr without a semi-colon" do
    assert_lexes "&emacr", "[[\"Character\",\"&emacr\"]]"
  end
  it "namedEntities:Named entity: emacr; with a semi-colon" do
    assert_lexes "&emacr;", "[[\"Character\",\"ē\"]]"
  end
  it "namedEntities:Bad named entity: empty without a semi-colon" do
    assert_lexes "&empty", "[[\"Character\",\"&empty\"]]"
  end
  it "namedEntities:Named entity: empty; with a semi-colon" do
    assert_lexes "&empty;", "[[\"Character\",\"∅\"]]"
  end
  it "namedEntities:Bad named entity: emptyset without a semi-colon" do
    assert_lexes "&emptyset", "[[\"Character\",\"&emptyset\"]]"
  end
  it "namedEntities:Named entity: emptyset; with a semi-colon" do
    assert_lexes "&emptyset;", "[[\"Character\",\"∅\"]]"
  end
  it "namedEntities:Bad named entity: emptyv without a semi-colon" do
    assert_lexes "&emptyv", "[[\"Character\",\"&emptyv\"]]"
  end
  it "namedEntities:Named entity: emptyv; with a semi-colon" do
    assert_lexes "&emptyv;", "[[\"Character\",\"∅\"]]"
  end
  it "namedEntities:Bad named entity: emsp without a semi-colon" do
    assert_lexes "&emsp", "[[\"Character\",\"&emsp\"]]"
  end
  it "namedEntities:Bad named entity: emsp13 without a semi-colon" do
    assert_lexes "&emsp13", "[[\"Character\",\"&emsp13\"]]"
  end
  it "namedEntities:Named entity: emsp13; with a semi-colon" do
    assert_lexes "&emsp13;", "[[\"Character\",\"\u2004\"]]"
  end
  it "namedEntities:Bad named entity: emsp14 without a semi-colon" do
    assert_lexes "&emsp14", "[[\"Character\",\"&emsp14\"]]"
  end
  it "namedEntities:Named entity: emsp14; with a semi-colon" do
    assert_lexes "&emsp14;", "[[\"Character\",\"\u2005\"]]"
  end
  it "namedEntities:Named entity: emsp; with a semi-colon" do
    assert_lexes "&emsp;", "[[\"Character\",\"\u2003\"]]"
  end
  it "namedEntities:Bad named entity: eng without a semi-colon" do
    assert_lexes "&eng", "[[\"Character\",\"&eng\"]]"
  end
  it "namedEntities:Named entity: eng; with a semi-colon" do
    assert_lexes "&eng;", "[[\"Character\",\"ŋ\"]]"
  end
  it "namedEntities:Bad named entity: ensp without a semi-colon" do
    assert_lexes "&ensp", "[[\"Character\",\"&ensp\"]]"
  end
  it "namedEntities:Named entity: ensp; with a semi-colon" do
    assert_lexes "&ensp;", "[[\"Character\",\"\u2002\"]]"
  end
  it "namedEntities:Bad named entity: eogon without a semi-colon" do
    assert_lexes "&eogon", "[[\"Character\",\"&eogon\"]]"
  end
  it "namedEntities:Named entity: eogon; with a semi-colon" do
    assert_lexes "&eogon;", "[[\"Character\",\"ę\"]]"
  end
  it "namedEntities:Bad named entity: eopf without a semi-colon" do
    assert_lexes "&eopf", "[[\"Character\",\"&eopf\"]]"
  end
  it "namedEntities:Named entity: eopf; with a semi-colon" do
    assert_lexes "&eopf;", "[[\"Character\",\"𝕖\"]]"
  end
  it "namedEntities:Bad named entity: epar without a semi-colon" do
    assert_lexes "&epar", "[[\"Character\",\"&epar\"]]"
  end
  it "namedEntities:Named entity: epar; with a semi-colon" do
    assert_lexes "&epar;", "[[\"Character\",\"⋕\"]]"
  end
  it "namedEntities:Bad named entity: eparsl without a semi-colon" do
    assert_lexes "&eparsl", "[[\"Character\",\"&eparsl\"]]"
  end
  it "namedEntities:Named entity: eparsl; with a semi-colon" do
    assert_lexes "&eparsl;", "[[\"Character\",\"⧣\"]]"
  end
  it "namedEntities:Bad named entity: eplus without a semi-colon" do
    assert_lexes "&eplus", "[[\"Character\",\"&eplus\"]]"
  end
  it "namedEntities:Named entity: eplus; with a semi-colon" do
    assert_lexes "&eplus;", "[[\"Character\",\"⩱\"]]"
  end
  it "namedEntities:Bad named entity: epsi without a semi-colon" do
    assert_lexes "&epsi", "[[\"Character\",\"&epsi\"]]"
  end
  it "namedEntities:Named entity: epsi; with a semi-colon" do
    assert_lexes "&epsi;", "[[\"Character\",\"ε\"]]"
  end
  it "namedEntities:Bad named entity: epsilon without a semi-colon" do
    assert_lexes "&epsilon", "[[\"Character\",\"&epsilon\"]]"
  end
  it "namedEntities:Named entity: epsilon; with a semi-colon" do
    assert_lexes "&epsilon;", "[[\"Character\",\"ε\"]]"
  end
  it "namedEntities:Bad named entity: epsiv without a semi-colon" do
    assert_lexes "&epsiv", "[[\"Character\",\"&epsiv\"]]"
  end
  it "namedEntities:Named entity: epsiv; with a semi-colon" do
    assert_lexes "&epsiv;", "[[\"Character\",\"ϵ\"]]"
  end
  it "namedEntities:Bad named entity: eqcirc without a semi-colon" do
    assert_lexes "&eqcirc", "[[\"Character\",\"&eqcirc\"]]"
  end
  it "namedEntities:Named entity: eqcirc; with a semi-colon" do
    assert_lexes "&eqcirc;", "[[\"Character\",\"≖\"]]"
  end
  it "namedEntities:Bad named entity: eqcolon without a semi-colon" do
    assert_lexes "&eqcolon", "[[\"Character\",\"&eqcolon\"]]"
  end
  it "namedEntities:Named entity: eqcolon; with a semi-colon" do
    assert_lexes "&eqcolon;", "[[\"Character\",\"≕\"]]"
  end
  it "namedEntities:Bad named entity: eqsim without a semi-colon" do
    assert_lexes "&eqsim", "[[\"Character\",\"&eqsim\"]]"
  end
  it "namedEntities:Named entity: eqsim; with a semi-colon" do
    assert_lexes "&eqsim;", "[[\"Character\",\"≂\"]]"
  end
  it "namedEntities:Bad named entity: eqslantgtr without a semi-colon" do
    assert_lexes "&eqslantgtr", "[[\"Character\",\"&eqslantgtr\"]]"
  end
  it "namedEntities:Named entity: eqslantgtr; with a semi-colon" do
    assert_lexes "&eqslantgtr;", "[[\"Character\",\"⪖\"]]"
  end
  it "namedEntities:Bad named entity: eqslantless without a semi-colon" do
    assert_lexes "&eqslantless", "[[\"Character\",\"&eqslantless\"]]"
  end
  it "namedEntities:Named entity: eqslantless; with a semi-colon" do
    assert_lexes "&eqslantless;", "[[\"Character\",\"⪕\"]]"
  end
  it "namedEntities:Bad named entity: equals without a semi-colon" do
    assert_lexes "&equals", "[[\"Character\",\"&equals\"]]"
  end
  it "namedEntities:Named entity: equals; with a semi-colon" do
    assert_lexes "&equals;", "[[\"Character\",\"=\"]]"
  end
  it "namedEntities:Bad named entity: equest without a semi-colon" do
    assert_lexes "&equest", "[[\"Character\",\"&equest\"]]"
  end
  it "namedEntities:Named entity: equest; with a semi-colon" do
    assert_lexes "&equest;", "[[\"Character\",\"≟\"]]"
  end
  it "namedEntities:Bad named entity: equiv without a semi-colon" do
    assert_lexes "&equiv", "[[\"Character\",\"&equiv\"]]"
  end
  it "namedEntities:Named entity: equiv; with a semi-colon" do
    assert_lexes "&equiv;", "[[\"Character\",\"≡\"]]"
  end
  it "namedEntities:Bad named entity: equivDD without a semi-colon" do
    assert_lexes "&equivDD", "[[\"Character\",\"&equivDD\"]]"
  end
  it "namedEntities:Named entity: equivDD; with a semi-colon" do
    assert_lexes "&equivDD;", "[[\"Character\",\"⩸\"]]"
  end
  it "namedEntities:Bad named entity: eqvparsl without a semi-colon" do
    assert_lexes "&eqvparsl", "[[\"Character\",\"&eqvparsl\"]]"
  end
  it "namedEntities:Named entity: eqvparsl; with a semi-colon" do
    assert_lexes "&eqvparsl;", "[[\"Character\",\"⧥\"]]"
  end
  it "namedEntities:Bad named entity: erDot without a semi-colon" do
    assert_lexes "&erDot", "[[\"Character\",\"&erDot\"]]"
  end
  it "namedEntities:Named entity: erDot; with a semi-colon" do
    assert_lexes "&erDot;", "[[\"Character\",\"≓\"]]"
  end
  it "namedEntities:Bad named entity: erarr without a semi-colon" do
    assert_lexes "&erarr", "[[\"Character\",\"&erarr\"]]"
  end
  it "namedEntities:Named entity: erarr; with a semi-colon" do
    assert_lexes "&erarr;", "[[\"Character\",\"⥱\"]]"
  end
  it "namedEntities:Bad named entity: escr without a semi-colon" do
    assert_lexes "&escr", "[[\"Character\",\"&escr\"]]"
  end
  it "namedEntities:Named entity: escr; with a semi-colon" do
    assert_lexes "&escr;", "[[\"Character\",\"ℯ\"]]"
  end
  it "namedEntities:Bad named entity: esdot without a semi-colon" do
    assert_lexes "&esdot", "[[\"Character\",\"&esdot\"]]"
  end
  it "namedEntities:Named entity: esdot; with a semi-colon" do
    assert_lexes "&esdot;", "[[\"Character\",\"≐\"]]"
  end
  it "namedEntities:Bad named entity: esim without a semi-colon" do
    assert_lexes "&esim", "[[\"Character\",\"&esim\"]]"
  end
  it "namedEntities:Named entity: esim; with a semi-colon" do
    assert_lexes "&esim;", "[[\"Character\",\"≂\"]]"
  end
  it "namedEntities:Bad named entity: eta without a semi-colon" do
    assert_lexes "&eta", "[[\"Character\",\"&eta\"]]"
  end
  it "namedEntities:Named entity: eta; with a semi-colon" do
    assert_lexes "&eta;", "[[\"Character\",\"η\"]]"
  end
  it "namedEntities:Named entity: eth without a semi-colon" do
    assert_lexes "&eth", "[[\"Character\",\"ð\"]]"
  end
  it "namedEntities:Named entity: eth; with a semi-colon" do
    assert_lexes "&eth;", "[[\"Character\",\"ð\"]]"
  end
  it "namedEntities:Named entity: euml without a semi-colon" do
    assert_lexes "&euml", "[[\"Character\",\"ë\"]]"
  end
  it "namedEntities:Named entity: euml; with a semi-colon" do
    assert_lexes "&euml;", "[[\"Character\",\"ë\"]]"
  end
  it "namedEntities:Bad named entity: euro without a semi-colon" do
    assert_lexes "&euro", "[[\"Character\",\"&euro\"]]"
  end
  it "namedEntities:Named entity: euro; with a semi-colon" do
    assert_lexes "&euro;", "[[\"Character\",\"€\"]]"
  end
  it "namedEntities:Bad named entity: excl without a semi-colon" do
    assert_lexes "&excl", "[[\"Character\",\"&excl\"]]"
  end
  it "namedEntities:Named entity: excl; with a semi-colon" do
    assert_lexes "&excl;", "[[\"Character\",\"!\"]]"
  end
  it "namedEntities:Bad named entity: exist without a semi-colon" do
    assert_lexes "&exist", "[[\"Character\",\"&exist\"]]"
  end
  it "namedEntities:Named entity: exist; with a semi-colon" do
    assert_lexes "&exist;", "[[\"Character\",\"∃\"]]"
  end
  it "namedEntities:Bad named entity: expectation without a semi-colon" do
    assert_lexes "&expectation", "[[\"Character\",\"&expectation\"]]"
  end
  it "namedEntities:Named entity: expectation; with a semi-colon" do
    assert_lexes "&expectation;", "[[\"Character\",\"ℰ\"]]"
  end
  it "namedEntities:Bad named entity: exponentiale without a semi-colon" do
    assert_lexes "&exponentiale", "[[\"Character\",\"&exponentiale\"]]"
  end
  it "namedEntities:Named entity: exponentiale; with a semi-colon" do
    assert_lexes "&exponentiale;", "[[\"Character\",\"ⅇ\"]]"
  end
  it "namedEntities:Bad named entity: fallingdotseq without a semi-colon" do
    assert_lexes "&fallingdotseq", "[[\"Character\",\"&fallingdotseq\"]]"
  end
  it "namedEntities:Named entity: fallingdotseq; with a semi-colon" do
    assert_lexes "&fallingdotseq;", "[[\"Character\",\"≒\"]]"
  end
  it "namedEntities:Bad named entity: fcy without a semi-colon" do
    assert_lexes "&fcy", "[[\"Character\",\"&fcy\"]]"
  end
  it "namedEntities:Named entity: fcy; with a semi-colon" do
    assert_lexes "&fcy;", "[[\"Character\",\"ф\"]]"
  end
  it "namedEntities:Bad named entity: female without a semi-colon" do
    assert_lexes "&female", "[[\"Character\",\"&female\"]]"
  end
  it "namedEntities:Named entity: female; with a semi-colon" do
    assert_lexes "&female;", "[[\"Character\",\"♀\"]]"
  end
  it "namedEntities:Bad named entity: ffilig without a semi-colon" do
    assert_lexes "&ffilig", "[[\"Character\",\"&ffilig\"]]"
  end
  it "namedEntities:Named entity: ffilig; with a semi-colon" do
    assert_lexes "&ffilig;", "[[\"Character\",\"ﬃ\"]]"
  end
  it "namedEntities:Bad named entity: fflig without a semi-colon" do
    assert_lexes "&fflig", "[[\"Character\",\"&fflig\"]]"
  end
  it "namedEntities:Named entity: fflig; with a semi-colon" do
    assert_lexes "&fflig;", "[[\"Character\",\"ﬀ\"]]"
  end
  it "namedEntities:Bad named entity: ffllig without a semi-colon" do
    assert_lexes "&ffllig", "[[\"Character\",\"&ffllig\"]]"
  end
  it "namedEntities:Named entity: ffllig; with a semi-colon" do
    assert_lexes "&ffllig;", "[[\"Character\",\"ﬄ\"]]"
  end
  it "namedEntities:Bad named entity: ffr without a semi-colon" do
    assert_lexes "&ffr", "[[\"Character\",\"&ffr\"]]"
  end
  it "namedEntities:Named entity: ffr; with a semi-colon" do
    assert_lexes "&ffr;", "[[\"Character\",\"𝔣\"]]"
  end
  it "namedEntities:Bad named entity: filig without a semi-colon" do
    assert_lexes "&filig", "[[\"Character\",\"&filig\"]]"
  end
  it "namedEntities:Named entity: filig; with a semi-colon" do
    assert_lexes "&filig;", "[[\"Character\",\"ﬁ\"]]"
  end
  it "namedEntities:Bad named entity: fjlig without a semi-colon" do
    assert_lexes "&fjlig", "[[\"Character\",\"&fjlig\"]]"
  end
  it "namedEntities:Named entity: fjlig; with a semi-colon" do
    assert_lexes "&fjlig;", "[[\"Character\",\"fj\"]]"
  end
  it "namedEntities:Bad named entity: flat without a semi-colon" do
    assert_lexes "&flat", "[[\"Character\",\"&flat\"]]"
  end
  it "namedEntities:Named entity: flat; with a semi-colon" do
    assert_lexes "&flat;", "[[\"Character\",\"♭\"]]"
  end
  it "namedEntities:Bad named entity: fllig without a semi-colon" do
    assert_lexes "&fllig", "[[\"Character\",\"&fllig\"]]"
  end
  it "namedEntities:Named entity: fllig; with a semi-colon" do
    assert_lexes "&fllig;", "[[\"Character\",\"ﬂ\"]]"
  end
  it "namedEntities:Bad named entity: fltns without a semi-colon" do
    assert_lexes "&fltns", "[[\"Character\",\"&fltns\"]]"
  end
  it "namedEntities:Named entity: fltns; with a semi-colon" do
    assert_lexes "&fltns;", "[[\"Character\",\"▱\"]]"
  end
  it "namedEntities:Bad named entity: fnof without a semi-colon" do
    assert_lexes "&fnof", "[[\"Character\",\"&fnof\"]]"
  end
  it "namedEntities:Named entity: fnof; with a semi-colon" do
    assert_lexes "&fnof;", "[[\"Character\",\"ƒ\"]]"
  end
  it "namedEntities:Bad named entity: fopf without a semi-colon" do
    assert_lexes "&fopf", "[[\"Character\",\"&fopf\"]]"
  end
  it "namedEntities:Named entity: fopf; with a semi-colon" do
    assert_lexes "&fopf;", "[[\"Character\",\"𝕗\"]]"
  end
  it "namedEntities:Bad named entity: forall without a semi-colon" do
    assert_lexes "&forall", "[[\"Character\",\"&forall\"]]"
  end
  it "namedEntities:Named entity: forall; with a semi-colon" do
    assert_lexes "&forall;", "[[\"Character\",\"∀\"]]"
  end
  it "namedEntities:Bad named entity: fork without a semi-colon" do
    assert_lexes "&fork", "[[\"Character\",\"&fork\"]]"
  end
  it "namedEntities:Named entity: fork; with a semi-colon" do
    assert_lexes "&fork;", "[[\"Character\",\"⋔\"]]"
  end
  it "namedEntities:Bad named entity: forkv without a semi-colon" do
    assert_lexes "&forkv", "[[\"Character\",\"&forkv\"]]"
  end
  it "namedEntities:Named entity: forkv; with a semi-colon" do
    assert_lexes "&forkv;", "[[\"Character\",\"⫙\"]]"
  end
  it "namedEntities:Bad named entity: fpartint without a semi-colon" do
    assert_lexes "&fpartint", "[[\"Character\",\"&fpartint\"]]"
  end
  it "namedEntities:Named entity: fpartint; with a semi-colon" do
    assert_lexes "&fpartint;", "[[\"Character\",\"⨍\"]]"
  end
  it "namedEntities:Named entity: frac12 without a semi-colon" do
    assert_lexes "&frac12", "[[\"Character\",\"½\"]]"
  end
  it "namedEntities:Named entity: frac12; with a semi-colon" do
    assert_lexes "&frac12;", "[[\"Character\",\"½\"]]"
  end
  it "namedEntities:Bad named entity: frac13 without a semi-colon" do
    assert_lexes "&frac13", "[[\"Character\",\"&frac13\"]]"
  end
  it "namedEntities:Named entity: frac13; with a semi-colon" do
    assert_lexes "&frac13;", "[[\"Character\",\"⅓\"]]"
  end
  it "namedEntities:Named entity: frac14 without a semi-colon" do
    assert_lexes "&frac14", "[[\"Character\",\"¼\"]]"
  end
  it "namedEntities:Named entity: frac14; with a semi-colon" do
    assert_lexes "&frac14;", "[[\"Character\",\"¼\"]]"
  end
  it "namedEntities:Bad named entity: frac15 without a semi-colon" do
    assert_lexes "&frac15", "[[\"Character\",\"&frac15\"]]"
  end
  it "namedEntities:Named entity: frac15; with a semi-colon" do
    assert_lexes "&frac15;", "[[\"Character\",\"⅕\"]]"
  end
  it "namedEntities:Bad named entity: frac16 without a semi-colon" do
    assert_lexes "&frac16", "[[\"Character\",\"&frac16\"]]"
  end
  it "namedEntities:Named entity: frac16; with a semi-colon" do
    assert_lexes "&frac16;", "[[\"Character\",\"⅙\"]]"
  end
  it "namedEntities:Bad named entity: frac18 without a semi-colon" do
    assert_lexes "&frac18", "[[\"Character\",\"&frac18\"]]"
  end
  it "namedEntities:Named entity: frac18; with a semi-colon" do
    assert_lexes "&frac18;", "[[\"Character\",\"⅛\"]]"
  end
  it "namedEntities:Bad named entity: frac23 without a semi-colon" do
    assert_lexes "&frac23", "[[\"Character\",\"&frac23\"]]"
  end
  it "namedEntities:Named entity: frac23; with a semi-colon" do
    assert_lexes "&frac23;", "[[\"Character\",\"⅔\"]]"
  end
  it "namedEntities:Bad named entity: frac25 without a semi-colon" do
    assert_lexes "&frac25", "[[\"Character\",\"&frac25\"]]"
  end
  it "namedEntities:Named entity: frac25; with a semi-colon" do
    assert_lexes "&frac25;", "[[\"Character\",\"⅖\"]]"
  end
  it "namedEntities:Named entity: frac34 without a semi-colon" do
    assert_lexes "&frac34", "[[\"Character\",\"¾\"]]"
  end
  it "namedEntities:Named entity: frac34; with a semi-colon" do
    assert_lexes "&frac34;", "[[\"Character\",\"¾\"]]"
  end
  it "namedEntities:Bad named entity: frac35 without a semi-colon" do
    assert_lexes "&frac35", "[[\"Character\",\"&frac35\"]]"
  end
  it "namedEntities:Named entity: frac35; with a semi-colon" do
    assert_lexes "&frac35;", "[[\"Character\",\"⅗\"]]"
  end
  it "namedEntities:Bad named entity: frac38 without a semi-colon" do
    assert_lexes "&frac38", "[[\"Character\",\"&frac38\"]]"
  end
  it "namedEntities:Named entity: frac38; with a semi-colon" do
    assert_lexes "&frac38;", "[[\"Character\",\"⅜\"]]"
  end
  it "namedEntities:Bad named entity: frac45 without a semi-colon" do
    assert_lexes "&frac45", "[[\"Character\",\"&frac45\"]]"
  end
  it "namedEntities:Named entity: frac45; with a semi-colon" do
    assert_lexes "&frac45;", "[[\"Character\",\"⅘\"]]"
  end
  it "namedEntities:Bad named entity: frac56 without a semi-colon" do
    assert_lexes "&frac56", "[[\"Character\",\"&frac56\"]]"
  end
  it "namedEntities:Named entity: frac56; with a semi-colon" do
    assert_lexes "&frac56;", "[[\"Character\",\"⅚\"]]"
  end
  it "namedEntities:Bad named entity: frac58 without a semi-colon" do
    assert_lexes "&frac58", "[[\"Character\",\"&frac58\"]]"
  end
  it "namedEntities:Named entity: frac58; with a semi-colon" do
    assert_lexes "&frac58;", "[[\"Character\",\"⅝\"]]"
  end
  it "namedEntities:Bad named entity: frac78 without a semi-colon" do
    assert_lexes "&frac78", "[[\"Character\",\"&frac78\"]]"
  end
  it "namedEntities:Named entity: frac78; with a semi-colon" do
    assert_lexes "&frac78;", "[[\"Character\",\"⅞\"]]"
  end
  it "namedEntities:Bad named entity: frasl without a semi-colon" do
    assert_lexes "&frasl", "[[\"Character\",\"&frasl\"]]"
  end
  it "namedEntities:Named entity: frasl; with a semi-colon" do
    assert_lexes "&frasl;", "[[\"Character\",\"⁄\"]]"
  end
  it "namedEntities:Bad named entity: frown without a semi-colon" do
    assert_lexes "&frown", "[[\"Character\",\"&frown\"]]"
  end
  it "namedEntities:Named entity: frown; with a semi-colon" do
    assert_lexes "&frown;", "[[\"Character\",\"⌢\"]]"
  end
  it "namedEntities:Bad named entity: fscr without a semi-colon" do
    assert_lexes "&fscr", "[[\"Character\",\"&fscr\"]]"
  end
  it "namedEntities:Named entity: fscr; with a semi-colon" do
    assert_lexes "&fscr;", "[[\"Character\",\"𝒻\"]]"
  end
  it "namedEntities:Bad named entity: gE without a semi-colon" do
    assert_lexes "&gE", "[[\"Character\",\"&gE\"]]"
  end
  it "namedEntities:Named entity: gE; with a semi-colon" do
    assert_lexes "&gE;", "[[\"Character\",\"≧\"]]"
  end
  it "namedEntities:Bad named entity: gEl without a semi-colon" do
    assert_lexes "&gEl", "[[\"Character\",\"&gEl\"]]"
  end
  it "namedEntities:Named entity: gEl; with a semi-colon" do
    assert_lexes "&gEl;", "[[\"Character\",\"⪌\"]]"
  end
  it "namedEntities:Bad named entity: gacute without a semi-colon" do
    assert_lexes "&gacute", "[[\"Character\",\"&gacute\"]]"
  end
  it "namedEntities:Named entity: gacute; with a semi-colon" do
    assert_lexes "&gacute;", "[[\"Character\",\"ǵ\"]]"
  end
  it "namedEntities:Bad named entity: gamma without a semi-colon" do
    assert_lexes "&gamma", "[[\"Character\",\"&gamma\"]]"
  end
  it "namedEntities:Named entity: gamma; with a semi-colon" do
    assert_lexes "&gamma;", "[[\"Character\",\"γ\"]]"
  end
  it "namedEntities:Bad named entity: gammad without a semi-colon" do
    assert_lexes "&gammad", "[[\"Character\",\"&gammad\"]]"
  end
  it "namedEntities:Named entity: gammad; with a semi-colon" do
    assert_lexes "&gammad;", "[[\"Character\",\"ϝ\"]]"
  end
  it "namedEntities:Bad named entity: gap without a semi-colon" do
    assert_lexes "&gap", "[[\"Character\",\"&gap\"]]"
  end
  it "namedEntities:Named entity: gap; with a semi-colon" do
    assert_lexes "&gap;", "[[\"Character\",\"⪆\"]]"
  end
  it "namedEntities:Bad named entity: gbreve without a semi-colon" do
    assert_lexes "&gbreve", "[[\"Character\",\"&gbreve\"]]"
  end
  it "namedEntities:Named entity: gbreve; with a semi-colon" do
    assert_lexes "&gbreve;", "[[\"Character\",\"ğ\"]]"
  end
  it "namedEntities:Bad named entity: gcirc without a semi-colon" do
    assert_lexes "&gcirc", "[[\"Character\",\"&gcirc\"]]"
  end
  it "namedEntities:Named entity: gcirc; with a semi-colon" do
    assert_lexes "&gcirc;", "[[\"Character\",\"ĝ\"]]"
  end
  it "namedEntities:Bad named entity: gcy without a semi-colon" do
    assert_lexes "&gcy", "[[\"Character\",\"&gcy\"]]"
  end
  it "namedEntities:Named entity: gcy; with a semi-colon" do
    assert_lexes "&gcy;", "[[\"Character\",\"г\"]]"
  end
  it "namedEntities:Bad named entity: gdot without a semi-colon" do
    assert_lexes "&gdot", "[[\"Character\",\"&gdot\"]]"
  end
  it "namedEntities:Named entity: gdot; with a semi-colon" do
    assert_lexes "&gdot;", "[[\"Character\",\"ġ\"]]"
  end
  it "namedEntities:Bad named entity: ge without a semi-colon" do
    assert_lexes "&ge", "[[\"Character\",\"&ge\"]]"
  end
  it "namedEntities:Named entity: ge; with a semi-colon" do
    assert_lexes "&ge;", "[[\"Character\",\"≥\"]]"
  end
  it "namedEntities:Bad named entity: gel without a semi-colon" do
    assert_lexes "&gel", "[[\"Character\",\"&gel\"]]"
  end
  it "namedEntities:Named entity: gel; with a semi-colon" do
    assert_lexes "&gel;", "[[\"Character\",\"⋛\"]]"
  end
  it "namedEntities:Bad named entity: geq without a semi-colon" do
    assert_lexes "&geq", "[[\"Character\",\"&geq\"]]"
  end
  it "namedEntities:Named entity: geq; with a semi-colon" do
    assert_lexes "&geq;", "[[\"Character\",\"≥\"]]"
  end
  it "namedEntities:Bad named entity: geqq without a semi-colon" do
    assert_lexes "&geqq", "[[\"Character\",\"&geqq\"]]"
  end
  it "namedEntities:Named entity: geqq; with a semi-colon" do
    assert_lexes "&geqq;", "[[\"Character\",\"≧\"]]"
  end
  it "namedEntities:Bad named entity: geqslant without a semi-colon" do
    assert_lexes "&geqslant", "[[\"Character\",\"&geqslant\"]]"
  end
  it "namedEntities:Named entity: geqslant; with a semi-colon" do
    assert_lexes "&geqslant;", "[[\"Character\",\"⩾\"]]"
  end
  it "namedEntities:Bad named entity: ges without a semi-colon" do
    assert_lexes "&ges", "[[\"Character\",\"&ges\"]]"
  end
  it "namedEntities:Named entity: ges; with a semi-colon" do
    assert_lexes "&ges;", "[[\"Character\",\"⩾\"]]"
  end
  it "namedEntities:Bad named entity: gescc without a semi-colon" do
    assert_lexes "&gescc", "[[\"Character\",\"&gescc\"]]"
  end
  it "namedEntities:Named entity: gescc; with a semi-colon" do
    assert_lexes "&gescc;", "[[\"Character\",\"⪩\"]]"
  end
  it "namedEntities:Bad named entity: gesdot without a semi-colon" do
    assert_lexes "&gesdot", "[[\"Character\",\"&gesdot\"]]"
  end
  it "namedEntities:Named entity: gesdot; with a semi-colon" do
    assert_lexes "&gesdot;", "[[\"Character\",\"⪀\"]]"
  end
  it "namedEntities:Bad named entity: gesdoto without a semi-colon" do
    assert_lexes "&gesdoto", "[[\"Character\",\"&gesdoto\"]]"
  end
  it "namedEntities:Named entity: gesdoto; with a semi-colon" do
    assert_lexes "&gesdoto;", "[[\"Character\",\"⪂\"]]"
  end
  it "namedEntities:Bad named entity: gesdotol without a semi-colon" do
    assert_lexes "&gesdotol", "[[\"Character\",\"&gesdotol\"]]"
  end
  it "namedEntities:Named entity: gesdotol; with a semi-colon" do
    assert_lexes "&gesdotol;", "[[\"Character\",\"⪄\"]]"
  end
  it "namedEntities:Bad named entity: gesl without a semi-colon" do
    assert_lexes "&gesl", "[[\"Character\",\"&gesl\"]]"
  end
  it "namedEntities:Named entity: gesl; with a semi-colon" do
    assert_lexes "&gesl;", "[[\"Character\",\"⋛︀\"]]"
  end
  it "namedEntities:Bad named entity: gesles without a semi-colon" do
    assert_lexes "&gesles", "[[\"Character\",\"&gesles\"]]"
  end
  it "namedEntities:Named entity: gesles; with a semi-colon" do
    assert_lexes "&gesles;", "[[\"Character\",\"⪔\"]]"
  end
  it "namedEntities:Bad named entity: gfr without a semi-colon" do
    assert_lexes "&gfr", "[[\"Character\",\"&gfr\"]]"
  end
  it "namedEntities:Named entity: gfr; with a semi-colon" do
    assert_lexes "&gfr;", "[[\"Character\",\"𝔤\"]]"
  end
  it "namedEntities:Bad named entity: gg without a semi-colon" do
    assert_lexes "&gg", "[[\"Character\",\"&gg\"]]"
  end
  it "namedEntities:Named entity: gg; with a semi-colon" do
    assert_lexes "&gg;", "[[\"Character\",\"≫\"]]"
  end
  it "namedEntities:Bad named entity: ggg without a semi-colon" do
    assert_lexes "&ggg", "[[\"Character\",\"&ggg\"]]"
  end
  it "namedEntities:Named entity: ggg; with a semi-colon" do
    assert_lexes "&ggg;", "[[\"Character\",\"⋙\"]]"
  end
  it "namedEntities:Bad named entity: gimel without a semi-colon" do
    assert_lexes "&gimel", "[[\"Character\",\"&gimel\"]]"
  end
  it "namedEntities:Named entity: gimel; with a semi-colon" do
    assert_lexes "&gimel;", "[[\"Character\",\"ℷ\"]]"
  end
  it "namedEntities:Bad named entity: gjcy without a semi-colon" do
    assert_lexes "&gjcy", "[[\"Character\",\"&gjcy\"]]"
  end
  it "namedEntities:Named entity: gjcy; with a semi-colon" do
    assert_lexes "&gjcy;", "[[\"Character\",\"ѓ\"]]"
  end
  it "namedEntities:Bad named entity: gl without a semi-colon" do
    assert_lexes "&gl", "[[\"Character\",\"&gl\"]]"
  end
  it "namedEntities:Named entity: gl; with a semi-colon" do
    assert_lexes "&gl;", "[[\"Character\",\"≷\"]]"
  end
  it "namedEntities:Bad named entity: glE without a semi-colon" do
    assert_lexes "&glE", "[[\"Character\",\"&glE\"]]"
  end
  it "namedEntities:Named entity: glE; with a semi-colon" do
    assert_lexes "&glE;", "[[\"Character\",\"⪒\"]]"
  end
  it "namedEntities:Bad named entity: gla without a semi-colon" do
    assert_lexes "&gla", "[[\"Character\",\"&gla\"]]"
  end
  it "namedEntities:Named entity: gla; with a semi-colon" do
    assert_lexes "&gla;", "[[\"Character\",\"⪥\"]]"
  end
  it "namedEntities:Bad named entity: glj without a semi-colon" do
    assert_lexes "&glj", "[[\"Character\",\"&glj\"]]"
  end
  it "namedEntities:Named entity: glj; with a semi-colon" do
    assert_lexes "&glj;", "[[\"Character\",\"⪤\"]]"
  end
  it "namedEntities:Bad named entity: gnE without a semi-colon" do
    assert_lexes "&gnE", "[[\"Character\",\"&gnE\"]]"
  end
  it "namedEntities:Named entity: gnE; with a semi-colon" do
    assert_lexes "&gnE;", "[[\"Character\",\"≩\"]]"
  end
  it "namedEntities:Bad named entity: gnap without a semi-colon" do
    assert_lexes "&gnap", "[[\"Character\",\"&gnap\"]]"
  end
  it "namedEntities:Named entity: gnap; with a semi-colon" do
    assert_lexes "&gnap;", "[[\"Character\",\"⪊\"]]"
  end
  it "namedEntities:Bad named entity: gnapprox without a semi-colon" do
    assert_lexes "&gnapprox", "[[\"Character\",\"&gnapprox\"]]"
  end
  it "namedEntities:Named entity: gnapprox; with a semi-colon" do
    assert_lexes "&gnapprox;", "[[\"Character\",\"⪊\"]]"
  end
  it "namedEntities:Bad named entity: gne without a semi-colon" do
    assert_lexes "&gne", "[[\"Character\",\"&gne\"]]"
  end
  it "namedEntities:Named entity: gne; with a semi-colon" do
    assert_lexes "&gne;", "[[\"Character\",\"⪈\"]]"
  end
  it "namedEntities:Bad named entity: gneq without a semi-colon" do
    assert_lexes "&gneq", "[[\"Character\",\"&gneq\"]]"
  end
  it "namedEntities:Named entity: gneq; with a semi-colon" do
    assert_lexes "&gneq;", "[[\"Character\",\"⪈\"]]"
  end
  it "namedEntities:Bad named entity: gneqq without a semi-colon" do
    assert_lexes "&gneqq", "[[\"Character\",\"&gneqq\"]]"
  end
  it "namedEntities:Named entity: gneqq; with a semi-colon" do
    assert_lexes "&gneqq;", "[[\"Character\",\"≩\"]]"
  end
  it "namedEntities:Bad named entity: gnsim without a semi-colon" do
    assert_lexes "&gnsim", "[[\"Character\",\"&gnsim\"]]"
  end
  it "namedEntities:Named entity: gnsim; with a semi-colon" do
    assert_lexes "&gnsim;", "[[\"Character\",\"⋧\"]]"
  end
  it "namedEntities:Bad named entity: gopf without a semi-colon" do
    assert_lexes "&gopf", "[[\"Character\",\"&gopf\"]]"
  end
  it "namedEntities:Named entity: gopf; with a semi-colon" do
    assert_lexes "&gopf;", "[[\"Character\",\"𝕘\"]]"
  end
  it "namedEntities:Bad named entity: grave without a semi-colon" do
    assert_lexes "&grave", "[[\"Character\",\"&grave\"]]"
  end
  it "namedEntities:Named entity: grave; with a semi-colon" do
    assert_lexes "&grave;", "[[\"Character\",\"`\"]]"
  end
  it "namedEntities:Bad named entity: gscr without a semi-colon" do
    assert_lexes "&gscr", "[[\"Character\",\"&gscr\"]]"
  end
  it "namedEntities:Named entity: gscr; with a semi-colon" do
    assert_lexes "&gscr;", "[[\"Character\",\"ℊ\"]]"
  end
  it "namedEntities:Bad named entity: gsim without a semi-colon" do
    assert_lexes "&gsim", "[[\"Character\",\"&gsim\"]]"
  end
  it "namedEntities:Named entity: gsim; with a semi-colon" do
    assert_lexes "&gsim;", "[[\"Character\",\"≳\"]]"
  end
  it "namedEntities:Bad named entity: gsime without a semi-colon" do
    assert_lexes "&gsime", "[[\"Character\",\"&gsime\"]]"
  end
  it "namedEntities:Named entity: gsime; with a semi-colon" do
    assert_lexes "&gsime;", "[[\"Character\",\"⪎\"]]"
  end
  it "namedEntities:Bad named entity: gsiml without a semi-colon" do
    assert_lexes "&gsiml", "[[\"Character\",\"&gsiml\"]]"
  end
  it "namedEntities:Named entity: gsiml; with a semi-colon" do
    assert_lexes "&gsiml;", "[[\"Character\",\"⪐\"]]"
  end
  it "namedEntities:Named entity: gt without a semi-colon" do
    assert_lexes "&gt", "[[\"Character\",\">\"]]"
  end
  it "namedEntities:Named entity: gt; with a semi-colon" do
    assert_lexes "&gt;", "[[\"Character\",\">\"]]"
  end
  it "namedEntities:Named entity: gtcc; with a semi-colon" do
    assert_lexes "&gtcc;", "[[\"Character\",\"⪧\"]]"
  end
  it "namedEntities:Named entity: gtcir; with a semi-colon" do
    assert_lexes "&gtcir;", "[[\"Character\",\"⩺\"]]"
  end
  it "namedEntities:Named entity: gtdot; with a semi-colon" do
    assert_lexes "&gtdot;", "[[\"Character\",\"⋗\"]]"
  end
  it "namedEntities:Named entity: gtlPar; with a semi-colon" do
    assert_lexes "&gtlPar;", "[[\"Character\",\"⦕\"]]"
  end
  it "namedEntities:Named entity: gtquest; with a semi-colon" do
    assert_lexes "&gtquest;", "[[\"Character\",\"⩼\"]]"
  end
  it "namedEntities:Named entity: gtrapprox; with a semi-colon" do
    assert_lexes "&gtrapprox;", "[[\"Character\",\"⪆\"]]"
  end
  it "namedEntities:Named entity: gtrarr; with a semi-colon" do
    assert_lexes "&gtrarr;", "[[\"Character\",\"⥸\"]]"
  end
  it "namedEntities:Named entity: gtrdot; with a semi-colon" do
    assert_lexes "&gtrdot;", "[[\"Character\",\"⋗\"]]"
  end
  it "namedEntities:Named entity: gtreqless; with a semi-colon" do
    assert_lexes "&gtreqless;", "[[\"Character\",\"⋛\"]]"
  end
  it "namedEntities:Named entity: gtreqqless; with a semi-colon" do
    assert_lexes "&gtreqqless;", "[[\"Character\",\"⪌\"]]"
  end
  it "namedEntities:Named entity: gtrless; with a semi-colon" do
    assert_lexes "&gtrless;", "[[\"Character\",\"≷\"]]"
  end
  it "namedEntities:Named entity: gtrsim; with a semi-colon" do
    assert_lexes "&gtrsim;", "[[\"Character\",\"≳\"]]"
  end
  it "namedEntities:Bad named entity: gvertneqq without a semi-colon" do
    assert_lexes "&gvertneqq", "[[\"Character\",\"&gvertneqq\"]]"
  end
  it "namedEntities:Named entity: gvertneqq; with a semi-colon" do
    assert_lexes "&gvertneqq;", "[[\"Character\",\"≩︀\"]]"
  end
  it "namedEntities:Bad named entity: gvnE without a semi-colon" do
    assert_lexes "&gvnE", "[[\"Character\",\"&gvnE\"]]"
  end
  it "namedEntities:Named entity: gvnE; with a semi-colon" do
    assert_lexes "&gvnE;", "[[\"Character\",\"≩︀\"]]"
  end
  it "namedEntities:Bad named entity: hArr without a semi-colon" do
    assert_lexes "&hArr", "[[\"Character\",\"&hArr\"]]"
  end
  it "namedEntities:Named entity: hArr; with a semi-colon" do
    assert_lexes "&hArr;", "[[\"Character\",\"⇔\"]]"
  end
  it "namedEntities:Bad named entity: hairsp without a semi-colon" do
    assert_lexes "&hairsp", "[[\"Character\",\"&hairsp\"]]"
  end
  it "namedEntities:Named entity: hairsp; with a semi-colon" do
    assert_lexes "&hairsp;", "[[\"Character\",\"\u200A\"]]"
  end
  it "namedEntities:Bad named entity: half without a semi-colon" do
    assert_lexes "&half", "[[\"Character\",\"&half\"]]"
  end
  it "namedEntities:Named entity: half; with a semi-colon" do
    assert_lexes "&half;", "[[\"Character\",\"½\"]]"
  end
  it "namedEntities:Bad named entity: hamilt without a semi-colon" do
    assert_lexes "&hamilt", "[[\"Character\",\"&hamilt\"]]"
  end
  it "namedEntities:Named entity: hamilt; with a semi-colon" do
    assert_lexes "&hamilt;", "[[\"Character\",\"ℋ\"]]"
  end
  it "namedEntities:Bad named entity: hardcy without a semi-colon" do
    assert_lexes "&hardcy", "[[\"Character\",\"&hardcy\"]]"
  end
  it "namedEntities:Named entity: hardcy; with a semi-colon" do
    assert_lexes "&hardcy;", "[[\"Character\",\"ъ\"]]"
  end
  it "namedEntities:Bad named entity: harr without a semi-colon" do
    assert_lexes "&harr", "[[\"Character\",\"&harr\"]]"
  end
  it "namedEntities:Named entity: harr; with a semi-colon" do
    assert_lexes "&harr;", "[[\"Character\",\"↔\"]]"
  end
  it "namedEntities:Bad named entity: harrcir without a semi-colon" do
    assert_lexes "&harrcir", "[[\"Character\",\"&harrcir\"]]"
  end
  it "namedEntities:Named entity: harrcir; with a semi-colon" do
    assert_lexes "&harrcir;", "[[\"Character\",\"⥈\"]]"
  end
  it "namedEntities:Bad named entity: harrw without a semi-colon" do
    assert_lexes "&harrw", "[[\"Character\",\"&harrw\"]]"
  end
  it "namedEntities:Named entity: harrw; with a semi-colon" do
    assert_lexes "&harrw;", "[[\"Character\",\"↭\"]]"
  end
  it "namedEntities:Bad named entity: hbar without a semi-colon" do
    assert_lexes "&hbar", "[[\"Character\",\"&hbar\"]]"
  end
  it "namedEntities:Named entity: hbar; with a semi-colon" do
    assert_lexes "&hbar;", "[[\"Character\",\"ℏ\"]]"
  end
  it "namedEntities:Bad named entity: hcirc without a semi-colon" do
    assert_lexes "&hcirc", "[[\"Character\",\"&hcirc\"]]"
  end
  it "namedEntities:Named entity: hcirc; with a semi-colon" do
    assert_lexes "&hcirc;", "[[\"Character\",\"ĥ\"]]"
  end
  it "namedEntities:Bad named entity: hearts without a semi-colon" do
    assert_lexes "&hearts", "[[\"Character\",\"&hearts\"]]"
  end
  it "namedEntities:Named entity: hearts; with a semi-colon" do
    assert_lexes "&hearts;", "[[\"Character\",\"♥\"]]"
  end
  it "namedEntities:Bad named entity: heartsuit without a semi-colon" do
    assert_lexes "&heartsuit", "[[\"Character\",\"&heartsuit\"]]"
  end
  it "namedEntities:Named entity: heartsuit; with a semi-colon" do
    assert_lexes "&heartsuit;", "[[\"Character\",\"♥\"]]"
  end
  it "namedEntities:Bad named entity: hellip without a semi-colon" do
    assert_lexes "&hellip", "[[\"Character\",\"&hellip\"]]"
  end
  it "namedEntities:Named entity: hellip; with a semi-colon" do
    assert_lexes "&hellip;", "[[\"Character\",\"…\"]]"
  end
  it "namedEntities:Bad named entity: hercon without a semi-colon" do
    assert_lexes "&hercon", "[[\"Character\",\"&hercon\"]]"
  end
  it "namedEntities:Named entity: hercon; with a semi-colon" do
    assert_lexes "&hercon;", "[[\"Character\",\"⊹\"]]"
  end
  it "namedEntities:Bad named entity: hfr without a semi-colon" do
    assert_lexes "&hfr", "[[\"Character\",\"&hfr\"]]"
  end
  it "namedEntities:Named entity: hfr; with a semi-colon" do
    assert_lexes "&hfr;", "[[\"Character\",\"𝔥\"]]"
  end
  it "namedEntities:Bad named entity: hksearow without a semi-colon" do
    assert_lexes "&hksearow", "[[\"Character\",\"&hksearow\"]]"
  end
  it "namedEntities:Named entity: hksearow; with a semi-colon" do
    assert_lexes "&hksearow;", "[[\"Character\",\"⤥\"]]"
  end
  it "namedEntities:Bad named entity: hkswarow without a semi-colon" do
    assert_lexes "&hkswarow", "[[\"Character\",\"&hkswarow\"]]"
  end
  it "namedEntities:Named entity: hkswarow; with a semi-colon" do
    assert_lexes "&hkswarow;", "[[\"Character\",\"⤦\"]]"
  end
  it "namedEntities:Bad named entity: hoarr without a semi-colon" do
    assert_lexes "&hoarr", "[[\"Character\",\"&hoarr\"]]"
  end
  it "namedEntities:Named entity: hoarr; with a semi-colon" do
    assert_lexes "&hoarr;", "[[\"Character\",\"⇿\"]]"
  end
  it "namedEntities:Bad named entity: homtht without a semi-colon" do
    assert_lexes "&homtht", "[[\"Character\",\"&homtht\"]]"
  end
  it "namedEntities:Named entity: homtht; with a semi-colon" do
    assert_lexes "&homtht;", "[[\"Character\",\"∻\"]]"
  end
  it "namedEntities:Bad named entity: hookleftarrow without a semi-colon" do
    assert_lexes "&hookleftarrow", "[[\"Character\",\"&hookleftarrow\"]]"
  end
  it "namedEntities:Named entity: hookleftarrow; with a semi-colon" do
    assert_lexes "&hookleftarrow;", "[[\"Character\",\"↩\"]]"
  end
  it "namedEntities:Bad named entity: hookrightarrow without a semi-colon" do
    assert_lexes "&hookrightarrow", "[[\"Character\",\"&hookrightarrow\"]]"
  end
  it "namedEntities:Named entity: hookrightarrow; with a semi-colon" do
    assert_lexes "&hookrightarrow;", "[[\"Character\",\"↪\"]]"
  end
  it "namedEntities:Bad named entity: hopf without a semi-colon" do
    assert_lexes "&hopf", "[[\"Character\",\"&hopf\"]]"
  end
  it "namedEntities:Named entity: hopf; with a semi-colon" do
    assert_lexes "&hopf;", "[[\"Character\",\"𝕙\"]]"
  end
  it "namedEntities:Bad named entity: horbar without a semi-colon" do
    assert_lexes "&horbar", "[[\"Character\",\"&horbar\"]]"
  end
  it "namedEntities:Named entity: horbar; with a semi-colon" do
    assert_lexes "&horbar;", "[[\"Character\",\"―\"]]"
  end
  it "namedEntities:Bad named entity: hscr without a semi-colon" do
    assert_lexes "&hscr", "[[\"Character\",\"&hscr\"]]"
  end
  it "namedEntities:Named entity: hscr; with a semi-colon" do
    assert_lexes "&hscr;", "[[\"Character\",\"𝒽\"]]"
  end
  it "namedEntities:Bad named entity: hslash without a semi-colon" do
    assert_lexes "&hslash", "[[\"Character\",\"&hslash\"]]"
  end
  it "namedEntities:Named entity: hslash; with a semi-colon" do
    assert_lexes "&hslash;", "[[\"Character\",\"ℏ\"]]"
  end
  it "namedEntities:Bad named entity: hstrok without a semi-colon" do
    assert_lexes "&hstrok", "[[\"Character\",\"&hstrok\"]]"
  end
  it "namedEntities:Named entity: hstrok; with a semi-colon" do
    assert_lexes "&hstrok;", "[[\"Character\",\"ħ\"]]"
  end
  it "namedEntities:Bad named entity: hybull without a semi-colon" do
    assert_lexes "&hybull", "[[\"Character\",\"&hybull\"]]"
  end
  it "namedEntities:Named entity: hybull; with a semi-colon" do
    assert_lexes "&hybull;", "[[\"Character\",\"⁃\"]]"
  end
  it "namedEntities:Bad named entity: hyphen without a semi-colon" do
    assert_lexes "&hyphen", "[[\"Character\",\"&hyphen\"]]"
  end
  it "namedEntities:Named entity: hyphen; with a semi-colon" do
    assert_lexes "&hyphen;", "[[\"Character\",\"‐\"]]"
  end
  it "namedEntities:Named entity: iacute without a semi-colon" do
    assert_lexes "&iacute", "[[\"Character\",\"í\"]]"
  end
  it "namedEntities:Named entity: iacute; with a semi-colon" do
    assert_lexes "&iacute;", "[[\"Character\",\"í\"]]"
  end
  it "namedEntities:Bad named entity: ic without a semi-colon" do
    assert_lexes "&ic", "[[\"Character\",\"&ic\"]]"
  end
  it "namedEntities:Named entity: ic; with a semi-colon" do
    assert_lexes "&ic;", "[[\"Character\",\"\u2063\"]]"
  end
  it "namedEntities:Named entity: icirc without a semi-colon" do
    assert_lexes "&icirc", "[[\"Character\",\"î\"]]"
  end
  it "namedEntities:Named entity: icirc; with a semi-colon" do
    assert_lexes "&icirc;", "[[\"Character\",\"î\"]]"
  end
  it "namedEntities:Bad named entity: icy without a semi-colon" do
    assert_lexes "&icy", "[[\"Character\",\"&icy\"]]"
  end
  it "namedEntities:Named entity: icy; with a semi-colon" do
    assert_lexes "&icy;", "[[\"Character\",\"и\"]]"
  end
  it "namedEntities:Bad named entity: iecy without a semi-colon" do
    assert_lexes "&iecy", "[[\"Character\",\"&iecy\"]]"
  end
  it "namedEntities:Named entity: iecy; with a semi-colon" do
    assert_lexes "&iecy;", "[[\"Character\",\"е\"]]"
  end
  it "namedEntities:Named entity: iexcl without a semi-colon" do
    assert_lexes "&iexcl", "[[\"Character\",\"¡\"]]"
  end
  it "namedEntities:Named entity: iexcl; with a semi-colon" do
    assert_lexes "&iexcl;", "[[\"Character\",\"¡\"]]"
  end
  it "namedEntities:Bad named entity: iff without a semi-colon" do
    assert_lexes "&iff", "[[\"Character\",\"&iff\"]]"
  end
  it "namedEntities:Named entity: iff; with a semi-colon" do
    assert_lexes "&iff;", "[[\"Character\",\"⇔\"]]"
  end
  it "namedEntities:Bad named entity: ifr without a semi-colon" do
    assert_lexes "&ifr", "[[\"Character\",\"&ifr\"]]"
  end
  it "namedEntities:Named entity: ifr; with a semi-colon" do
    assert_lexes "&ifr;", "[[\"Character\",\"𝔦\"]]"
  end
  it "namedEntities:Named entity: igrave without a semi-colon" do
    assert_lexes "&igrave", "[[\"Character\",\"ì\"]]"
  end
  it "namedEntities:Named entity: igrave; with a semi-colon" do
    assert_lexes "&igrave;", "[[\"Character\",\"ì\"]]"
  end
  it "namedEntities:Bad named entity: ii without a semi-colon" do
    assert_lexes "&ii", "[[\"Character\",\"&ii\"]]"
  end
  it "namedEntities:Named entity: ii; with a semi-colon" do
    assert_lexes "&ii;", "[[\"Character\",\"ⅈ\"]]"
  end
  it "namedEntities:Bad named entity: iiiint without a semi-colon" do
    assert_lexes "&iiiint", "[[\"Character\",\"&iiiint\"]]"
  end
  it "namedEntities:Named entity: iiiint; with a semi-colon" do
    assert_lexes "&iiiint;", "[[\"Character\",\"⨌\"]]"
  end
  it "namedEntities:Bad named entity: iiint without a semi-colon" do
    assert_lexes "&iiint", "[[\"Character\",\"&iiint\"]]"
  end
  it "namedEntities:Named entity: iiint; with a semi-colon" do
    assert_lexes "&iiint;", "[[\"Character\",\"∭\"]]"
  end
  it "namedEntities:Bad named entity: iinfin without a semi-colon" do
    assert_lexes "&iinfin", "[[\"Character\",\"&iinfin\"]]"
  end
  it "namedEntities:Named entity: iinfin; with a semi-colon" do
    assert_lexes "&iinfin;", "[[\"Character\",\"⧜\"]]"
  end
  it "namedEntities:Bad named entity: iiota without a semi-colon" do
    assert_lexes "&iiota", "[[\"Character\",\"&iiota\"]]"
  end
  it "namedEntities:Named entity: iiota; with a semi-colon" do
    assert_lexes "&iiota;", "[[\"Character\",\"℩\"]]"
  end
  it "namedEntities:Bad named entity: ijlig without a semi-colon" do
    assert_lexes "&ijlig", "[[\"Character\",\"&ijlig\"]]"
  end
  it "namedEntities:Named entity: ijlig; with a semi-colon" do
    assert_lexes "&ijlig;", "[[\"Character\",\"ĳ\"]]"
  end
  it "namedEntities:Bad named entity: imacr without a semi-colon" do
    assert_lexes "&imacr", "[[\"Character\",\"&imacr\"]]"
  end
  it "namedEntities:Named entity: imacr; with a semi-colon" do
    assert_lexes "&imacr;", "[[\"Character\",\"ī\"]]"
  end
  it "namedEntities:Bad named entity: image without a semi-colon" do
    assert_lexes "&image", "[[\"Character\",\"&image\"]]"
  end
  it "namedEntities:Named entity: image; with a semi-colon" do
    assert_lexes "&image;", "[[\"Character\",\"ℑ\"]]"
  end
  it "namedEntities:Bad named entity: imagline without a semi-colon" do
    assert_lexes "&imagline", "[[\"Character\",\"&imagline\"]]"
  end
  it "namedEntities:Named entity: imagline; with a semi-colon" do
    assert_lexes "&imagline;", "[[\"Character\",\"ℐ\"]]"
  end
  it "namedEntities:Bad named entity: imagpart without a semi-colon" do
    assert_lexes "&imagpart", "[[\"Character\",\"&imagpart\"]]"
  end
  it "namedEntities:Named entity: imagpart; with a semi-colon" do
    assert_lexes "&imagpart;", "[[\"Character\",\"ℑ\"]]"
  end
  it "namedEntities:Bad named entity: imath without a semi-colon" do
    assert_lexes "&imath", "[[\"Character\",\"&imath\"]]"
  end
  it "namedEntities:Named entity: imath; with a semi-colon" do
    assert_lexes "&imath;", "[[\"Character\",\"ı\"]]"
  end
  it "namedEntities:Bad named entity: imof without a semi-colon" do
    assert_lexes "&imof", "[[\"Character\",\"&imof\"]]"
  end
  it "namedEntities:Named entity: imof; with a semi-colon" do
    assert_lexes "&imof;", "[[\"Character\",\"⊷\"]]"
  end
  it "namedEntities:Bad named entity: imped without a semi-colon" do
    assert_lexes "&imped", "[[\"Character\",\"&imped\"]]"
  end
  it "namedEntities:Named entity: imped; with a semi-colon" do
    assert_lexes "&imped;", "[[\"Character\",\"Ƶ\"]]"
  end
  it "namedEntities:Bad named entity: in without a semi-colon" do
    assert_lexes "&in", "[[\"Character\",\"&in\"]]"
  end
  it "namedEntities:Named entity: in; with a semi-colon" do
    assert_lexes "&in;", "[[\"Character\",\"∈\"]]"
  end
  it "namedEntities:Bad named entity: incare without a semi-colon" do
    assert_lexes "&incare", "[[\"Character\",\"&incare\"]]"
  end
  it "namedEntities:Named entity: incare; with a semi-colon" do
    assert_lexes "&incare;", "[[\"Character\",\"℅\"]]"
  end
  it "namedEntities:Bad named entity: infin without a semi-colon" do
    assert_lexes "&infin", "[[\"Character\",\"&infin\"]]"
  end
  it "namedEntities:Named entity: infin; with a semi-colon" do
    assert_lexes "&infin;", "[[\"Character\",\"∞\"]]"
  end
  it "namedEntities:Bad named entity: infintie without a semi-colon" do
    assert_lexes "&infintie", "[[\"Character\",\"&infintie\"]]"
  end
  it "namedEntities:Named entity: infintie; with a semi-colon" do
    assert_lexes "&infintie;", "[[\"Character\",\"⧝\"]]"
  end
  it "namedEntities:Bad named entity: inodot without a semi-colon" do
    assert_lexes "&inodot", "[[\"Character\",\"&inodot\"]]"
  end
  it "namedEntities:Named entity: inodot; with a semi-colon" do
    assert_lexes "&inodot;", "[[\"Character\",\"ı\"]]"
  end
  it "namedEntities:Bad named entity: int without a semi-colon" do
    assert_lexes "&int", "[[\"Character\",\"&int\"]]"
  end
  it "namedEntities:Named entity: int; with a semi-colon" do
    assert_lexes "&int;", "[[\"Character\",\"∫\"]]"
  end
  it "namedEntities:Bad named entity: intcal without a semi-colon" do
    assert_lexes "&intcal", "[[\"Character\",\"&intcal\"]]"
  end
  it "namedEntities:Named entity: intcal; with a semi-colon" do
    assert_lexes "&intcal;", "[[\"Character\",\"⊺\"]]"
  end
  it "namedEntities:Bad named entity: integers without a semi-colon" do
    assert_lexes "&integers", "[[\"Character\",\"&integers\"]]"
  end
  it "namedEntities:Named entity: integers; with a semi-colon" do
    assert_lexes "&integers;", "[[\"Character\",\"ℤ\"]]"
  end
  it "namedEntities:Bad named entity: intercal without a semi-colon" do
    assert_lexes "&intercal", "[[\"Character\",\"&intercal\"]]"
  end
  it "namedEntities:Named entity: intercal; with a semi-colon" do
    assert_lexes "&intercal;", "[[\"Character\",\"⊺\"]]"
  end
  it "namedEntities:Bad named entity: intlarhk without a semi-colon" do
    assert_lexes "&intlarhk", "[[\"Character\",\"&intlarhk\"]]"
  end
  it "namedEntities:Named entity: intlarhk; with a semi-colon" do
    assert_lexes "&intlarhk;", "[[\"Character\",\"⨗\"]]"
  end
  it "namedEntities:Bad named entity: intprod without a semi-colon" do
    assert_lexes "&intprod", "[[\"Character\",\"&intprod\"]]"
  end
  it "namedEntities:Named entity: intprod; with a semi-colon" do
    assert_lexes "&intprod;", "[[\"Character\",\"⨼\"]]"
  end
  it "namedEntities:Bad named entity: iocy without a semi-colon" do
    assert_lexes "&iocy", "[[\"Character\",\"&iocy\"]]"
  end
  it "namedEntities:Named entity: iocy; with a semi-colon" do
    assert_lexes "&iocy;", "[[\"Character\",\"ё\"]]"
  end
  it "namedEntities:Bad named entity: iogon without a semi-colon" do
    assert_lexes "&iogon", "[[\"Character\",\"&iogon\"]]"
  end
  it "namedEntities:Named entity: iogon; with a semi-colon" do
    assert_lexes "&iogon;", "[[\"Character\",\"į\"]]"
  end
  it "namedEntities:Bad named entity: iopf without a semi-colon" do
    assert_lexes "&iopf", "[[\"Character\",\"&iopf\"]]"
  end
  it "namedEntities:Named entity: iopf; with a semi-colon" do
    assert_lexes "&iopf;", "[[\"Character\",\"𝕚\"]]"
  end
  it "namedEntities:Bad named entity: iota without a semi-colon" do
    assert_lexes "&iota", "[[\"Character\",\"&iota\"]]"
  end
  it "namedEntities:Named entity: iota; with a semi-colon" do
    assert_lexes "&iota;", "[[\"Character\",\"ι\"]]"
  end
  it "namedEntities:Bad named entity: iprod without a semi-colon" do
    assert_lexes "&iprod", "[[\"Character\",\"&iprod\"]]"
  end
  it "namedEntities:Named entity: iprod; with a semi-colon" do
    assert_lexes "&iprod;", "[[\"Character\",\"⨼\"]]"
  end
  it "namedEntities:Named entity: iquest without a semi-colon" do
    assert_lexes "&iquest", "[[\"Character\",\"¿\"]]"
  end
  it "namedEntities:Named entity: iquest; with a semi-colon" do
    assert_lexes "&iquest;", "[[\"Character\",\"¿\"]]"
  end
  it "namedEntities:Bad named entity: iscr without a semi-colon" do
    assert_lexes "&iscr", "[[\"Character\",\"&iscr\"]]"
  end
  it "namedEntities:Named entity: iscr; with a semi-colon" do
    assert_lexes "&iscr;", "[[\"Character\",\"𝒾\"]]"
  end
  it "namedEntities:Bad named entity: isin without a semi-colon" do
    assert_lexes "&isin", "[[\"Character\",\"&isin\"]]"
  end
  it "namedEntities:Named entity: isin; with a semi-colon" do
    assert_lexes "&isin;", "[[\"Character\",\"∈\"]]"
  end
  it "namedEntities:Bad named entity: isinE without a semi-colon" do
    assert_lexes "&isinE", "[[\"Character\",\"&isinE\"]]"
  end
  it "namedEntities:Named entity: isinE; with a semi-colon" do
    assert_lexes "&isinE;", "[[\"Character\",\"⋹\"]]"
  end
  it "namedEntities:Bad named entity: isindot without a semi-colon" do
    assert_lexes "&isindot", "[[\"Character\",\"&isindot\"]]"
  end
  it "namedEntities:Named entity: isindot; with a semi-colon" do
    assert_lexes "&isindot;", "[[\"Character\",\"⋵\"]]"
  end
  it "namedEntities:Bad named entity: isins without a semi-colon" do
    assert_lexes "&isins", "[[\"Character\",\"&isins\"]]"
  end
  it "namedEntities:Named entity: isins; with a semi-colon" do
    assert_lexes "&isins;", "[[\"Character\",\"⋴\"]]"
  end
  it "namedEntities:Bad named entity: isinsv without a semi-colon" do
    assert_lexes "&isinsv", "[[\"Character\",\"&isinsv\"]]"
  end
  it "namedEntities:Named entity: isinsv; with a semi-colon" do
    assert_lexes "&isinsv;", "[[\"Character\",\"⋳\"]]"
  end
  it "namedEntities:Bad named entity: isinv without a semi-colon" do
    assert_lexes "&isinv", "[[\"Character\",\"&isinv\"]]"
  end
  it "namedEntities:Named entity: isinv; with a semi-colon" do
    assert_lexes "&isinv;", "[[\"Character\",\"∈\"]]"
  end
  it "namedEntities:Bad named entity: it without a semi-colon" do
    assert_lexes "&it", "[[\"Character\",\"&it\"]]"
  end
  it "namedEntities:Named entity: it; with a semi-colon" do
    assert_lexes "&it;", "[[\"Character\",\"\u2062\"]]"
  end
  it "namedEntities:Bad named entity: itilde without a semi-colon" do
    assert_lexes "&itilde", "[[\"Character\",\"&itilde\"]]"
  end
  it "namedEntities:Named entity: itilde; with a semi-colon" do
    assert_lexes "&itilde;", "[[\"Character\",\"ĩ\"]]"
  end
  it "namedEntities:Bad named entity: iukcy without a semi-colon" do
    assert_lexes "&iukcy", "[[\"Character\",\"&iukcy\"]]"
  end
  it "namedEntities:Named entity: iukcy; with a semi-colon" do
    assert_lexes "&iukcy;", "[[\"Character\",\"і\"]]"
  end
  it "namedEntities:Named entity: iuml without a semi-colon" do
    assert_lexes "&iuml", "[[\"Character\",\"ï\"]]"
  end
  it "namedEntities:Named entity: iuml; with a semi-colon" do
    assert_lexes "&iuml;", "[[\"Character\",\"ï\"]]"
  end
  it "namedEntities:Bad named entity: jcirc without a semi-colon" do
    assert_lexes "&jcirc", "[[\"Character\",\"&jcirc\"]]"
  end
  it "namedEntities:Named entity: jcirc; with a semi-colon" do
    assert_lexes "&jcirc;", "[[\"Character\",\"ĵ\"]]"
  end
  it "namedEntities:Bad named entity: jcy without a semi-colon" do
    assert_lexes "&jcy", "[[\"Character\",\"&jcy\"]]"
  end
  it "namedEntities:Named entity: jcy; with a semi-colon" do
    assert_lexes "&jcy;", "[[\"Character\",\"й\"]]"
  end
  it "namedEntities:Bad named entity: jfr without a semi-colon" do
    assert_lexes "&jfr", "[[\"Character\",\"&jfr\"]]"
  end
  it "namedEntities:Named entity: jfr; with a semi-colon" do
    assert_lexes "&jfr;", "[[\"Character\",\"𝔧\"]]"
  end
  it "namedEntities:Bad named entity: jmath without a semi-colon" do
    assert_lexes "&jmath", "[[\"Character\",\"&jmath\"]]"
  end
  it "namedEntities:Named entity: jmath; with a semi-colon" do
    assert_lexes "&jmath;", "[[\"Character\",\"ȷ\"]]"
  end
  it "namedEntities:Bad named entity: jopf without a semi-colon" do
    assert_lexes "&jopf", "[[\"Character\",\"&jopf\"]]"
  end
  it "namedEntities:Named entity: jopf; with a semi-colon" do
    assert_lexes "&jopf;", "[[\"Character\",\"𝕛\"]]"
  end
  it "namedEntities:Bad named entity: jscr without a semi-colon" do
    assert_lexes "&jscr", "[[\"Character\",\"&jscr\"]]"
  end
  it "namedEntities:Named entity: jscr; with a semi-colon" do
    assert_lexes "&jscr;", "[[\"Character\",\"𝒿\"]]"
  end
  it "namedEntities:Bad named entity: jsercy without a semi-colon" do
    assert_lexes "&jsercy", "[[\"Character\",\"&jsercy\"]]"
  end
  it "namedEntities:Named entity: jsercy; with a semi-colon" do
    assert_lexes "&jsercy;", "[[\"Character\",\"ј\"]]"
  end
  it "namedEntities:Bad named entity: jukcy without a semi-colon" do
    assert_lexes "&jukcy", "[[\"Character\",\"&jukcy\"]]"
  end
  it "namedEntities:Named entity: jukcy; with a semi-colon" do
    assert_lexes "&jukcy;", "[[\"Character\",\"є\"]]"
  end
  it "namedEntities:Bad named entity: kappa without a semi-colon" do
    assert_lexes "&kappa", "[[\"Character\",\"&kappa\"]]"
  end
  it "namedEntities:Named entity: kappa; with a semi-colon" do
    assert_lexes "&kappa;", "[[\"Character\",\"κ\"]]"
  end
  it "namedEntities:Bad named entity: kappav without a semi-colon" do
    assert_lexes "&kappav", "[[\"Character\",\"&kappav\"]]"
  end
  it "namedEntities:Named entity: kappav; with a semi-colon" do
    assert_lexes "&kappav;", "[[\"Character\",\"ϰ\"]]"
  end
  it "namedEntities:Bad named entity: kcedil without a semi-colon" do
    assert_lexes "&kcedil", "[[\"Character\",\"&kcedil\"]]"
  end
  it "namedEntities:Named entity: kcedil; with a semi-colon" do
    assert_lexes "&kcedil;", "[[\"Character\",\"ķ\"]]"
  end
  it "namedEntities:Bad named entity: kcy without a semi-colon" do
    assert_lexes "&kcy", "[[\"Character\",\"&kcy\"]]"
  end
  it "namedEntities:Named entity: kcy; with a semi-colon" do
    assert_lexes "&kcy;", "[[\"Character\",\"к\"]]"
  end
  it "namedEntities:Bad named entity: kfr without a semi-colon" do
    assert_lexes "&kfr", "[[\"Character\",\"&kfr\"]]"
  end
  it "namedEntities:Named entity: kfr; with a semi-colon" do
    assert_lexes "&kfr;", "[[\"Character\",\"𝔨\"]]"
  end
  it "namedEntities:Bad named entity: kgreen without a semi-colon" do
    assert_lexes "&kgreen", "[[\"Character\",\"&kgreen\"]]"
  end
  it "namedEntities:Named entity: kgreen; with a semi-colon" do
    assert_lexes "&kgreen;", "[[\"Character\",\"ĸ\"]]"
  end
  it "namedEntities:Bad named entity: khcy without a semi-colon" do
    assert_lexes "&khcy", "[[\"Character\",\"&khcy\"]]"
  end
  it "namedEntities:Named entity: khcy; with a semi-colon" do
    assert_lexes "&khcy;", "[[\"Character\",\"х\"]]"
  end
  it "namedEntities:Bad named entity: kjcy without a semi-colon" do
    assert_lexes "&kjcy", "[[\"Character\",\"&kjcy\"]]"
  end
  it "namedEntities:Named entity: kjcy; with a semi-colon" do
    assert_lexes "&kjcy;", "[[\"Character\",\"ќ\"]]"
  end
  it "namedEntities:Bad named entity: kopf without a semi-colon" do
    assert_lexes "&kopf", "[[\"Character\",\"&kopf\"]]"
  end
  it "namedEntities:Named entity: kopf; with a semi-colon" do
    assert_lexes "&kopf;", "[[\"Character\",\"𝕜\"]]"
  end
  it "namedEntities:Bad named entity: kscr without a semi-colon" do
    assert_lexes "&kscr", "[[\"Character\",\"&kscr\"]]"
  end
  it "namedEntities:Named entity: kscr; with a semi-colon" do
    assert_lexes "&kscr;", "[[\"Character\",\"𝓀\"]]"
  end
  it "namedEntities:Bad named entity: lAarr without a semi-colon" do
    assert_lexes "&lAarr", "[[\"Character\",\"&lAarr\"]]"
  end
  it "namedEntities:Named entity: lAarr; with a semi-colon" do
    assert_lexes "&lAarr;", "[[\"Character\",\"⇚\"]]"
  end
  it "namedEntities:Bad named entity: lArr without a semi-colon" do
    assert_lexes "&lArr", "[[\"Character\",\"&lArr\"]]"
  end
  it "namedEntities:Named entity: lArr; with a semi-colon" do
    assert_lexes "&lArr;", "[[\"Character\",\"⇐\"]]"
  end
  it "namedEntities:Bad named entity: lAtail without a semi-colon" do
    assert_lexes "&lAtail", "[[\"Character\",\"&lAtail\"]]"
  end
  it "namedEntities:Named entity: lAtail; with a semi-colon" do
    assert_lexes "&lAtail;", "[[\"Character\",\"⤛\"]]"
  end
  it "namedEntities:Bad named entity: lBarr without a semi-colon" do
    assert_lexes "&lBarr", "[[\"Character\",\"&lBarr\"]]"
  end
  it "namedEntities:Named entity: lBarr; with a semi-colon" do
    assert_lexes "&lBarr;", "[[\"Character\",\"⤎\"]]"
  end
  it "namedEntities:Bad named entity: lE without a semi-colon" do
    assert_lexes "&lE", "[[\"Character\",\"&lE\"]]"
  end
  it "namedEntities:Named entity: lE; with a semi-colon" do
    assert_lexes "&lE;", "[[\"Character\",\"≦\"]]"
  end
  it "namedEntities:Bad named entity: lEg without a semi-colon" do
    assert_lexes "&lEg", "[[\"Character\",\"&lEg\"]]"
  end
  it "namedEntities:Named entity: lEg; with a semi-colon" do
    assert_lexes "&lEg;", "[[\"Character\",\"⪋\"]]"
  end
  it "namedEntities:Bad named entity: lHar without a semi-colon" do
    assert_lexes "&lHar", "[[\"Character\",\"&lHar\"]]"
  end
  it "namedEntities:Named entity: lHar; with a semi-colon" do
    assert_lexes "&lHar;", "[[\"Character\",\"⥢\"]]"
  end
  it "namedEntities:Bad named entity: lacute without a semi-colon" do
    assert_lexes "&lacute", "[[\"Character\",\"&lacute\"]]"
  end
  it "namedEntities:Named entity: lacute; with a semi-colon" do
    assert_lexes "&lacute;", "[[\"Character\",\"ĺ\"]]"
  end
  it "namedEntities:Bad named entity: laemptyv without a semi-colon" do
    assert_lexes "&laemptyv", "[[\"Character\",\"&laemptyv\"]]"
  end
  it "namedEntities:Named entity: laemptyv; with a semi-colon" do
    assert_lexes "&laemptyv;", "[[\"Character\",\"⦴\"]]"
  end
  it "namedEntities:Bad named entity: lagran without a semi-colon" do
    assert_lexes "&lagran", "[[\"Character\",\"&lagran\"]]"
  end
  it "namedEntities:Named entity: lagran; with a semi-colon" do
    assert_lexes "&lagran;", "[[\"Character\",\"ℒ\"]]"
  end
  it "namedEntities:Bad named entity: lambda without a semi-colon" do
    assert_lexes "&lambda", "[[\"Character\",\"&lambda\"]]"
  end
  it "namedEntities:Named entity: lambda; with a semi-colon" do
    assert_lexes "&lambda;", "[[\"Character\",\"λ\"]]"
  end
  it "namedEntities:Bad named entity: lang without a semi-colon" do
    assert_lexes "&lang", "[[\"Character\",\"&lang\"]]"
  end
  it "namedEntities:Named entity: lang; with a semi-colon" do
    assert_lexes "&lang;", "[[\"Character\",\"⟨\"]]"
  end
  it "namedEntities:Bad named entity: langd without a semi-colon" do
    assert_lexes "&langd", "[[\"Character\",\"&langd\"]]"
  end
  it "namedEntities:Named entity: langd; with a semi-colon" do
    assert_lexes "&langd;", "[[\"Character\",\"⦑\"]]"
  end
  it "namedEntities:Bad named entity: langle without a semi-colon" do
    assert_lexes "&langle", "[[\"Character\",\"&langle\"]]"
  end
  it "namedEntities:Named entity: langle; with a semi-colon" do
    assert_lexes "&langle;", "[[\"Character\",\"⟨\"]]"
  end
  it "namedEntities:Bad named entity: lap without a semi-colon" do
    assert_lexes "&lap", "[[\"Character\",\"&lap\"]]"
  end
  it "namedEntities:Named entity: lap; with a semi-colon" do
    assert_lexes "&lap;", "[[\"Character\",\"⪅\"]]"
  end
  it "namedEntities:Named entity: laquo without a semi-colon" do
    assert_lexes "&laquo", "[[\"Character\",\"«\"]]"
  end
  it "namedEntities:Named entity: laquo; with a semi-colon" do
    assert_lexes "&laquo;", "[[\"Character\",\"«\"]]"
  end
  it "namedEntities:Bad named entity: larr without a semi-colon" do
    assert_lexes "&larr", "[[\"Character\",\"&larr\"]]"
  end
  it "namedEntities:Named entity: larr; with a semi-colon" do
    assert_lexes "&larr;", "[[\"Character\",\"←\"]]"
  end
  it "namedEntities:Bad named entity: larrb without a semi-colon" do
    assert_lexes "&larrb", "[[\"Character\",\"&larrb\"]]"
  end
  it "namedEntities:Named entity: larrb; with a semi-colon" do
    assert_lexes "&larrb;", "[[\"Character\",\"⇤\"]]"
  end
  it "namedEntities:Bad named entity: larrbfs without a semi-colon" do
    assert_lexes "&larrbfs", "[[\"Character\",\"&larrbfs\"]]"
  end
  it "namedEntities:Named entity: larrbfs; with a semi-colon" do
    assert_lexes "&larrbfs;", "[[\"Character\",\"⤟\"]]"
  end
  it "namedEntities:Bad named entity: larrfs without a semi-colon" do
    assert_lexes "&larrfs", "[[\"Character\",\"&larrfs\"]]"
  end
  it "namedEntities:Named entity: larrfs; with a semi-colon" do
    assert_lexes "&larrfs;", "[[\"Character\",\"⤝\"]]"
  end
  it "namedEntities:Bad named entity: larrhk without a semi-colon" do
    assert_lexes "&larrhk", "[[\"Character\",\"&larrhk\"]]"
  end
  it "namedEntities:Named entity: larrhk; with a semi-colon" do
    assert_lexes "&larrhk;", "[[\"Character\",\"↩\"]]"
  end
  it "namedEntities:Bad named entity: larrlp without a semi-colon" do
    assert_lexes "&larrlp", "[[\"Character\",\"&larrlp\"]]"
  end
  it "namedEntities:Named entity: larrlp; with a semi-colon" do
    assert_lexes "&larrlp;", "[[\"Character\",\"↫\"]]"
  end
  it "namedEntities:Bad named entity: larrpl without a semi-colon" do
    assert_lexes "&larrpl", "[[\"Character\",\"&larrpl\"]]"
  end
  it "namedEntities:Named entity: larrpl; with a semi-colon" do
    assert_lexes "&larrpl;", "[[\"Character\",\"⤹\"]]"
  end
  it "namedEntities:Bad named entity: larrsim without a semi-colon" do
    assert_lexes "&larrsim", "[[\"Character\",\"&larrsim\"]]"
  end
  it "namedEntities:Named entity: larrsim; with a semi-colon" do
    assert_lexes "&larrsim;", "[[\"Character\",\"⥳\"]]"
  end
  it "namedEntities:Bad named entity: larrtl without a semi-colon" do
    assert_lexes "&larrtl", "[[\"Character\",\"&larrtl\"]]"
  end
  it "namedEntities:Named entity: larrtl; with a semi-colon" do
    assert_lexes "&larrtl;", "[[\"Character\",\"↢\"]]"
  end
  it "namedEntities:Bad named entity: lat without a semi-colon" do
    assert_lexes "&lat", "[[\"Character\",\"&lat\"]]"
  end
  it "namedEntities:Named entity: lat; with a semi-colon" do
    assert_lexes "&lat;", "[[\"Character\",\"⪫\"]]"
  end
  it "namedEntities:Bad named entity: latail without a semi-colon" do
    assert_lexes "&latail", "[[\"Character\",\"&latail\"]]"
  end
  it "namedEntities:Named entity: latail; with a semi-colon" do
    assert_lexes "&latail;", "[[\"Character\",\"⤙\"]]"
  end
  it "namedEntities:Bad named entity: late without a semi-colon" do
    assert_lexes "&late", "[[\"Character\",\"&late\"]]"
  end
  it "namedEntities:Named entity: late; with a semi-colon" do
    assert_lexes "&late;", "[[\"Character\",\"⪭\"]]"
  end
  it "namedEntities:Bad named entity: lates without a semi-colon" do
    assert_lexes "&lates", "[[\"Character\",\"&lates\"]]"
  end
  it "namedEntities:Named entity: lates; with a semi-colon" do
    assert_lexes "&lates;", "[[\"Character\",\"⪭︀\"]]"
  end
  it "namedEntities:Bad named entity: lbarr without a semi-colon" do
    assert_lexes "&lbarr", "[[\"Character\",\"&lbarr\"]]"
  end
  it "namedEntities:Named entity: lbarr; with a semi-colon" do
    assert_lexes "&lbarr;", "[[\"Character\",\"⤌\"]]"
  end
  it "namedEntities:Bad named entity: lbbrk without a semi-colon" do
    assert_lexes "&lbbrk", "[[\"Character\",\"&lbbrk\"]]"
  end
  it "namedEntities:Named entity: lbbrk; with a semi-colon" do
    assert_lexes "&lbbrk;", "[[\"Character\",\"❲\"]]"
  end
  it "namedEntities:Bad named entity: lbrace without a semi-colon" do
    assert_lexes "&lbrace", "[[\"Character\",\"&lbrace\"]]"
  end
  it "namedEntities:Named entity: lbrace; with a semi-colon" do
    assert_lexes "&lbrace;", "[[\"Character\",\"{\"]]"
  end
  it "namedEntities:Bad named entity: lbrack without a semi-colon" do
    assert_lexes "&lbrack", "[[\"Character\",\"&lbrack\"]]"
  end
  it "namedEntities:Named entity: lbrack; with a semi-colon" do
    assert_lexes "&lbrack;", "[[\"Character\",\"[\"]]"
  end
  it "namedEntities:Bad named entity: lbrke without a semi-colon" do
    assert_lexes "&lbrke", "[[\"Character\",\"&lbrke\"]]"
  end
  it "namedEntities:Named entity: lbrke; with a semi-colon" do
    assert_lexes "&lbrke;", "[[\"Character\",\"⦋\"]]"
  end
  it "namedEntities:Bad named entity: lbrksld without a semi-colon" do
    assert_lexes "&lbrksld", "[[\"Character\",\"&lbrksld\"]]"
  end
  it "namedEntities:Named entity: lbrksld; with a semi-colon" do
    assert_lexes "&lbrksld;", "[[\"Character\",\"⦏\"]]"
  end
  it "namedEntities:Bad named entity: lbrkslu without a semi-colon" do
    assert_lexes "&lbrkslu", "[[\"Character\",\"&lbrkslu\"]]"
  end
  it "namedEntities:Named entity: lbrkslu; with a semi-colon" do
    assert_lexes "&lbrkslu;", "[[\"Character\",\"⦍\"]]"
  end
  it "namedEntities:Bad named entity: lcaron without a semi-colon" do
    assert_lexes "&lcaron", "[[\"Character\",\"&lcaron\"]]"
  end
  it "namedEntities:Named entity: lcaron; with a semi-colon" do
    assert_lexes "&lcaron;", "[[\"Character\",\"ľ\"]]"
  end
  it "namedEntities:Bad named entity: lcedil without a semi-colon" do
    assert_lexes "&lcedil", "[[\"Character\",\"&lcedil\"]]"
  end
  it "namedEntities:Named entity: lcedil; with a semi-colon" do
    assert_lexes "&lcedil;", "[[\"Character\",\"ļ\"]]"
  end
  it "namedEntities:Bad named entity: lceil without a semi-colon" do
    assert_lexes "&lceil", "[[\"Character\",\"&lceil\"]]"
  end
  it "namedEntities:Named entity: lceil; with a semi-colon" do
    assert_lexes "&lceil;", "[[\"Character\",\"⌈\"]]"
  end
  it "namedEntities:Bad named entity: lcub without a semi-colon" do
    assert_lexes "&lcub", "[[\"Character\",\"&lcub\"]]"
  end
  it "namedEntities:Named entity: lcub; with a semi-colon" do
    assert_lexes "&lcub;", "[[\"Character\",\"{\"]]"
  end
  it "namedEntities:Bad named entity: lcy without a semi-colon" do
    assert_lexes "&lcy", "[[\"Character\",\"&lcy\"]]"
  end
  it "namedEntities:Named entity: lcy; with a semi-colon" do
    assert_lexes "&lcy;", "[[\"Character\",\"л\"]]"
  end
  it "namedEntities:Bad named entity: ldca without a semi-colon" do
    assert_lexes "&ldca", "[[\"Character\",\"&ldca\"]]"
  end
  it "namedEntities:Named entity: ldca; with a semi-colon" do
    assert_lexes "&ldca;", "[[\"Character\",\"⤶\"]]"
  end
  it "namedEntities:Bad named entity: ldquo without a semi-colon" do
    assert_lexes "&ldquo", "[[\"Character\",\"&ldquo\"]]"
  end
  it "namedEntities:Named entity: ldquo; with a semi-colon" do
    assert_lexes "&ldquo;", "[[\"Character\",\"“\"]]"
  end
  it "namedEntities:Bad named entity: ldquor without a semi-colon" do
    assert_lexes "&ldquor", "[[\"Character\",\"&ldquor\"]]"
  end
  it "namedEntities:Named entity: ldquor; with a semi-colon" do
    assert_lexes "&ldquor;", "[[\"Character\",\"„\"]]"
  end
  it "namedEntities:Bad named entity: ldrdhar without a semi-colon" do
    assert_lexes "&ldrdhar", "[[\"Character\",\"&ldrdhar\"]]"
  end
  it "namedEntities:Named entity: ldrdhar; with a semi-colon" do
    assert_lexes "&ldrdhar;", "[[\"Character\",\"⥧\"]]"
  end
  it "namedEntities:Bad named entity: ldrushar without a semi-colon" do
    assert_lexes "&ldrushar", "[[\"Character\",\"&ldrushar\"]]"
  end
  it "namedEntities:Named entity: ldrushar; with a semi-colon" do
    assert_lexes "&ldrushar;", "[[\"Character\",\"⥋\"]]"
  end
  it "namedEntities:Bad named entity: ldsh without a semi-colon" do
    assert_lexes "&ldsh", "[[\"Character\",\"&ldsh\"]]"
  end
  it "namedEntities:Named entity: ldsh; with a semi-colon" do
    assert_lexes "&ldsh;", "[[\"Character\",\"↲\"]]"
  end
  it "namedEntities:Bad named entity: le without a semi-colon" do
    assert_lexes "&le", "[[\"Character\",\"&le\"]]"
  end
  it "namedEntities:Named entity: le; with a semi-colon" do
    assert_lexes "&le;", "[[\"Character\",\"≤\"]]"
  end
  it "namedEntities:Bad named entity: leftarrow without a semi-colon" do
    assert_lexes "&leftarrow", "[[\"Character\",\"&leftarrow\"]]"
  end
  it "namedEntities:Named entity: leftarrow; with a semi-colon" do
    assert_lexes "&leftarrow;", "[[\"Character\",\"←\"]]"
  end
  it "namedEntities:Bad named entity: leftarrowtail without a semi-colon" do
    assert_lexes "&leftarrowtail", "[[\"Character\",\"&leftarrowtail\"]]"
  end
  it "namedEntities:Named entity: leftarrowtail; with a semi-colon" do
    assert_lexes "&leftarrowtail;", "[[\"Character\",\"↢\"]]"
  end
  it "namedEntities:Bad named entity: leftharpoondown without a semi-colon" do
    assert_lexes "&leftharpoondown", "[[\"Character\",\"&leftharpoondown\"]]"
  end
  it "namedEntities:Named entity: leftharpoondown; with a semi-colon" do
    assert_lexes "&leftharpoondown;", "[[\"Character\",\"↽\"]]"
  end
  it "namedEntities:Bad named entity: leftharpoonup without a semi-colon" do
    assert_lexes "&leftharpoonup", "[[\"Character\",\"&leftharpoonup\"]]"
  end
  it "namedEntities:Named entity: leftharpoonup; with a semi-colon" do
    assert_lexes "&leftharpoonup;", "[[\"Character\",\"↼\"]]"
  end
  it "namedEntities:Bad named entity: leftleftarrows without a semi-colon" do
    assert_lexes "&leftleftarrows", "[[\"Character\",\"&leftleftarrows\"]]"
  end
  it "namedEntities:Named entity: leftleftarrows; with a semi-colon" do
    assert_lexes "&leftleftarrows;", "[[\"Character\",\"⇇\"]]"
  end
  it "namedEntities:Bad named entity: leftrightarrow without a semi-colon" do
    assert_lexes "&leftrightarrow", "[[\"Character\",\"&leftrightarrow\"]]"
  end
  it "namedEntities:Named entity: leftrightarrow; with a semi-colon" do
    assert_lexes "&leftrightarrow;", "[[\"Character\",\"↔\"]]"
  end
  it "namedEntities:Bad named entity: leftrightarrows without a semi-colon" do
    assert_lexes "&leftrightarrows", "[[\"Character\",\"&leftrightarrows\"]]"
  end
  it "namedEntities:Named entity: leftrightarrows; with a semi-colon" do
    assert_lexes "&leftrightarrows;", "[[\"Character\",\"⇆\"]]"
  end
  it "namedEntities:Bad named entity: leftrightharpoons without a semi-colon" do
    assert_lexes "&leftrightharpoons", "[[\"Character\",\"&leftrightharpoons\"]]"
  end
  it "namedEntities:Named entity: leftrightharpoons; with a semi-colon" do
    assert_lexes "&leftrightharpoons;", "[[\"Character\",\"⇋\"]]"
  end
  it "namedEntities:Bad named entity: leftrightsquigarrow without a semi-colon" do
    assert_lexes "&leftrightsquigarrow", "[[\"Character\",\"&leftrightsquigarrow\"]]"
  end
  it "namedEntities:Named entity: leftrightsquigarrow; with a semi-colon" do
    assert_lexes "&leftrightsquigarrow;", "[[\"Character\",\"↭\"]]"
  end
  it "namedEntities:Bad named entity: leftthreetimes without a semi-colon" do
    assert_lexes "&leftthreetimes", "[[\"Character\",\"&leftthreetimes\"]]"
  end
  it "namedEntities:Named entity: leftthreetimes; with a semi-colon" do
    assert_lexes "&leftthreetimes;", "[[\"Character\",\"⋋\"]]"
  end
  it "namedEntities:Bad named entity: leg without a semi-colon" do
    assert_lexes "&leg", "[[\"Character\",\"&leg\"]]"
  end
  it "namedEntities:Named entity: leg; with a semi-colon" do
    assert_lexes "&leg;", "[[\"Character\",\"⋚\"]]"
  end
  it "namedEntities:Bad named entity: leq without a semi-colon" do
    assert_lexes "&leq", "[[\"Character\",\"&leq\"]]"
  end
  it "namedEntities:Named entity: leq; with a semi-colon" do
    assert_lexes "&leq;", "[[\"Character\",\"≤\"]]"
  end
  it "namedEntities:Bad named entity: leqq without a semi-colon" do
    assert_lexes "&leqq", "[[\"Character\",\"&leqq\"]]"
  end
  it "namedEntities:Named entity: leqq; with a semi-colon" do
    assert_lexes "&leqq;", "[[\"Character\",\"≦\"]]"
  end
  it "namedEntities:Bad named entity: leqslant without a semi-colon" do
    assert_lexes "&leqslant", "[[\"Character\",\"&leqslant\"]]"
  end
  it "namedEntities:Named entity: leqslant; with a semi-colon" do
    assert_lexes "&leqslant;", "[[\"Character\",\"⩽\"]]"
  end
  it "namedEntities:Bad named entity: les without a semi-colon" do
    assert_lexes "&les", "[[\"Character\",\"&les\"]]"
  end
  it "namedEntities:Named entity: les; with a semi-colon" do
    assert_lexes "&les;", "[[\"Character\",\"⩽\"]]"
  end
  it "namedEntities:Bad named entity: lescc without a semi-colon" do
    assert_lexes "&lescc", "[[\"Character\",\"&lescc\"]]"
  end
  it "namedEntities:Named entity: lescc; with a semi-colon" do
    assert_lexes "&lescc;", "[[\"Character\",\"⪨\"]]"
  end
  it "namedEntities:Bad named entity: lesdot without a semi-colon" do
    assert_lexes "&lesdot", "[[\"Character\",\"&lesdot\"]]"
  end
  it "namedEntities:Named entity: lesdot; with a semi-colon" do
    assert_lexes "&lesdot;", "[[\"Character\",\"⩿\"]]"
  end
  it "namedEntities:Bad named entity: lesdoto without a semi-colon" do
    assert_lexes "&lesdoto", "[[\"Character\",\"&lesdoto\"]]"
  end
  it "namedEntities:Named entity: lesdoto; with a semi-colon" do
    assert_lexes "&lesdoto;", "[[\"Character\",\"⪁\"]]"
  end
  it "namedEntities:Bad named entity: lesdotor without a semi-colon" do
    assert_lexes "&lesdotor", "[[\"Character\",\"&lesdotor\"]]"
  end
  it "namedEntities:Named entity: lesdotor; with a semi-colon" do
    assert_lexes "&lesdotor;", "[[\"Character\",\"⪃\"]]"
  end
  it "namedEntities:Bad named entity: lesg without a semi-colon" do
    assert_lexes "&lesg", "[[\"Character\",\"&lesg\"]]"
  end
  it "namedEntities:Named entity: lesg; with a semi-colon" do
    assert_lexes "&lesg;", "[[\"Character\",\"⋚︀\"]]"
  end
  it "namedEntities:Bad named entity: lesges without a semi-colon" do
    assert_lexes "&lesges", "[[\"Character\",\"&lesges\"]]"
  end
  it "namedEntities:Named entity: lesges; with a semi-colon" do
    assert_lexes "&lesges;", "[[\"Character\",\"⪓\"]]"
  end
  it "namedEntities:Bad named entity: lessapprox without a semi-colon" do
    assert_lexes "&lessapprox", "[[\"Character\",\"&lessapprox\"]]"
  end
  it "namedEntities:Named entity: lessapprox; with a semi-colon" do
    assert_lexes "&lessapprox;", "[[\"Character\",\"⪅\"]]"
  end
  it "namedEntities:Bad named entity: lessdot without a semi-colon" do
    assert_lexes "&lessdot", "[[\"Character\",\"&lessdot\"]]"
  end
  it "namedEntities:Named entity: lessdot; with a semi-colon" do
    assert_lexes "&lessdot;", "[[\"Character\",\"⋖\"]]"
  end
  it "namedEntities:Bad named entity: lesseqgtr without a semi-colon" do
    assert_lexes "&lesseqgtr", "[[\"Character\",\"&lesseqgtr\"]]"
  end
  it "namedEntities:Named entity: lesseqgtr; with a semi-colon" do
    assert_lexes "&lesseqgtr;", "[[\"Character\",\"⋚\"]]"
  end
  it "namedEntities:Bad named entity: lesseqqgtr without a semi-colon" do
    assert_lexes "&lesseqqgtr", "[[\"Character\",\"&lesseqqgtr\"]]"
  end
  it "namedEntities:Named entity: lesseqqgtr; with a semi-colon" do
    assert_lexes "&lesseqqgtr;", "[[\"Character\",\"⪋\"]]"
  end
  it "namedEntities:Bad named entity: lessgtr without a semi-colon" do
    assert_lexes "&lessgtr", "[[\"Character\",\"&lessgtr\"]]"
  end
  it "namedEntities:Named entity: lessgtr; with a semi-colon" do
    assert_lexes "&lessgtr;", "[[\"Character\",\"≶\"]]"
  end
  it "namedEntities:Bad named entity: lesssim without a semi-colon" do
    assert_lexes "&lesssim", "[[\"Character\",\"&lesssim\"]]"
  end
  it "namedEntities:Named entity: lesssim; with a semi-colon" do
    assert_lexes "&lesssim;", "[[\"Character\",\"≲\"]]"
  end
  it "namedEntities:Bad named entity: lfisht without a semi-colon" do
    assert_lexes "&lfisht", "[[\"Character\",\"&lfisht\"]]"
  end
  it "namedEntities:Named entity: lfisht; with a semi-colon" do
    assert_lexes "&lfisht;", "[[\"Character\",\"⥼\"]]"
  end
  it "namedEntities:Bad named entity: lfloor without a semi-colon" do
    assert_lexes "&lfloor", "[[\"Character\",\"&lfloor\"]]"
  end
  it "namedEntities:Named entity: lfloor; with a semi-colon" do
    assert_lexes "&lfloor;", "[[\"Character\",\"⌊\"]]"
  end
  it "namedEntities:Bad named entity: lfr without a semi-colon" do
    assert_lexes "&lfr", "[[\"Character\",\"&lfr\"]]"
  end
  it "namedEntities:Named entity: lfr; with a semi-colon" do
    assert_lexes "&lfr;", "[[\"Character\",\"𝔩\"]]"
  end
  it "namedEntities:Bad named entity: lg without a semi-colon" do
    assert_lexes "&lg", "[[\"Character\",\"&lg\"]]"
  end
  it "namedEntities:Named entity: lg; with a semi-colon" do
    assert_lexes "&lg;", "[[\"Character\",\"≶\"]]"
  end
  it "namedEntities:Bad named entity: lgE without a semi-colon" do
    assert_lexes "&lgE", "[[\"Character\",\"&lgE\"]]"
  end
  it "namedEntities:Named entity: lgE; with a semi-colon" do
    assert_lexes "&lgE;", "[[\"Character\",\"⪑\"]]"
  end
  it "namedEntities:Bad named entity: lhard without a semi-colon" do
    assert_lexes "&lhard", "[[\"Character\",\"&lhard\"]]"
  end
  it "namedEntities:Named entity: lhard; with a semi-colon" do
    assert_lexes "&lhard;", "[[\"Character\",\"↽\"]]"
  end
  it "namedEntities:Bad named entity: lharu without a semi-colon" do
    assert_lexes "&lharu", "[[\"Character\",\"&lharu\"]]"
  end
  it "namedEntities:Named entity: lharu; with a semi-colon" do
    assert_lexes "&lharu;", "[[\"Character\",\"↼\"]]"
  end
  it "namedEntities:Bad named entity: lharul without a semi-colon" do
    assert_lexes "&lharul", "[[\"Character\",\"&lharul\"]]"
  end
  it "namedEntities:Named entity: lharul; with a semi-colon" do
    assert_lexes "&lharul;", "[[\"Character\",\"⥪\"]]"
  end
  it "namedEntities:Bad named entity: lhblk without a semi-colon" do
    assert_lexes "&lhblk", "[[\"Character\",\"&lhblk\"]]"
  end
  it "namedEntities:Named entity: lhblk; with a semi-colon" do
    assert_lexes "&lhblk;", "[[\"Character\",\"▄\"]]"
  end
  it "namedEntities:Bad named entity: ljcy without a semi-colon" do
    assert_lexes "&ljcy", "[[\"Character\",\"&ljcy\"]]"
  end
  it "namedEntities:Named entity: ljcy; with a semi-colon" do
    assert_lexes "&ljcy;", "[[\"Character\",\"љ\"]]"
  end
  it "namedEntities:Bad named entity: ll without a semi-colon" do
    assert_lexes "&ll", "[[\"Character\",\"&ll\"]]"
  end
  it "namedEntities:Named entity: ll; with a semi-colon" do
    assert_lexes "&ll;", "[[\"Character\",\"≪\"]]"
  end
  it "namedEntities:Bad named entity: llarr without a semi-colon" do
    assert_lexes "&llarr", "[[\"Character\",\"&llarr\"]]"
  end
  it "namedEntities:Named entity: llarr; with a semi-colon" do
    assert_lexes "&llarr;", "[[\"Character\",\"⇇\"]]"
  end
  it "namedEntities:Bad named entity: llcorner without a semi-colon" do
    assert_lexes "&llcorner", "[[\"Character\",\"&llcorner\"]]"
  end
  it "namedEntities:Named entity: llcorner; with a semi-colon" do
    assert_lexes "&llcorner;", "[[\"Character\",\"⌞\"]]"
  end
  it "namedEntities:Bad named entity: llhard without a semi-colon" do
    assert_lexes "&llhard", "[[\"Character\",\"&llhard\"]]"
  end
  it "namedEntities:Named entity: llhard; with a semi-colon" do
    assert_lexes "&llhard;", "[[\"Character\",\"⥫\"]]"
  end
  it "namedEntities:Bad named entity: lltri without a semi-colon" do
    assert_lexes "&lltri", "[[\"Character\",\"&lltri\"]]"
  end
  it "namedEntities:Named entity: lltri; with a semi-colon" do
    assert_lexes "&lltri;", "[[\"Character\",\"◺\"]]"
  end
  it "namedEntities:Bad named entity: lmidot without a semi-colon" do
    assert_lexes "&lmidot", "[[\"Character\",\"&lmidot\"]]"
  end
  it "namedEntities:Named entity: lmidot; with a semi-colon" do
    assert_lexes "&lmidot;", "[[\"Character\",\"ŀ\"]]"
  end
  it "namedEntities:Bad named entity: lmoust without a semi-colon" do
    assert_lexes "&lmoust", "[[\"Character\",\"&lmoust\"]]"
  end
  it "namedEntities:Named entity: lmoust; with a semi-colon" do
    assert_lexes "&lmoust;", "[[\"Character\",\"⎰\"]]"
  end
  it "namedEntities:Bad named entity: lmoustache without a semi-colon" do
    assert_lexes "&lmoustache", "[[\"Character\",\"&lmoustache\"]]"
  end
  it "namedEntities:Named entity: lmoustache; with a semi-colon" do
    assert_lexes "&lmoustache;", "[[\"Character\",\"⎰\"]]"
  end
  it "namedEntities:Bad named entity: lnE without a semi-colon" do
    assert_lexes "&lnE", "[[\"Character\",\"&lnE\"]]"
  end
  it "namedEntities:Named entity: lnE; with a semi-colon" do
    assert_lexes "&lnE;", "[[\"Character\",\"≨\"]]"
  end
  it "namedEntities:Bad named entity: lnap without a semi-colon" do
    assert_lexes "&lnap", "[[\"Character\",\"&lnap\"]]"
  end
  it "namedEntities:Named entity: lnap; with a semi-colon" do
    assert_lexes "&lnap;", "[[\"Character\",\"⪉\"]]"
  end
  it "namedEntities:Bad named entity: lnapprox without a semi-colon" do
    assert_lexes "&lnapprox", "[[\"Character\",\"&lnapprox\"]]"
  end
  it "namedEntities:Named entity: lnapprox; with a semi-colon" do
    assert_lexes "&lnapprox;", "[[\"Character\",\"⪉\"]]"
  end
  it "namedEntities:Bad named entity: lne without a semi-colon" do
    assert_lexes "&lne", "[[\"Character\",\"&lne\"]]"
  end
  it "namedEntities:Named entity: lne; with a semi-colon" do
    assert_lexes "&lne;", "[[\"Character\",\"⪇\"]]"
  end
  it "namedEntities:Bad named entity: lneq without a semi-colon" do
    assert_lexes "&lneq", "[[\"Character\",\"&lneq\"]]"
  end
  it "namedEntities:Named entity: lneq; with a semi-colon" do
    assert_lexes "&lneq;", "[[\"Character\",\"⪇\"]]"
  end
  it "namedEntities:Bad named entity: lneqq without a semi-colon" do
    assert_lexes "&lneqq", "[[\"Character\",\"&lneqq\"]]"
  end
  it "namedEntities:Named entity: lneqq; with a semi-colon" do
    assert_lexes "&lneqq;", "[[\"Character\",\"≨\"]]"
  end
  it "namedEntities:Bad named entity: lnsim without a semi-colon" do
    assert_lexes "&lnsim", "[[\"Character\",\"&lnsim\"]]"
  end
  it "namedEntities:Named entity: lnsim; with a semi-colon" do
    assert_lexes "&lnsim;", "[[\"Character\",\"⋦\"]]"
  end
  it "namedEntities:Bad named entity: loang without a semi-colon" do
    assert_lexes "&loang", "[[\"Character\",\"&loang\"]]"
  end
  it "namedEntities:Named entity: loang; with a semi-colon" do
    assert_lexes "&loang;", "[[\"Character\",\"⟬\"]]"
  end
  it "namedEntities:Bad named entity: loarr without a semi-colon" do
    assert_lexes "&loarr", "[[\"Character\",\"&loarr\"]]"
  end
  it "namedEntities:Named entity: loarr; with a semi-colon" do
    assert_lexes "&loarr;", "[[\"Character\",\"⇽\"]]"
  end
  it "namedEntities:Bad named entity: lobrk without a semi-colon" do
    assert_lexes "&lobrk", "[[\"Character\",\"&lobrk\"]]"
  end
  it "namedEntities:Named entity: lobrk; with a semi-colon" do
    assert_lexes "&lobrk;", "[[\"Character\",\"⟦\"]]"
  end
  it "namedEntities:Bad named entity: longleftarrow without a semi-colon" do
    assert_lexes "&longleftarrow", "[[\"Character\",\"&longleftarrow\"]]"
  end
  it "namedEntities:Named entity: longleftarrow; with a semi-colon" do
    assert_lexes "&longleftarrow;", "[[\"Character\",\"⟵\"]]"
  end
  it "namedEntities:Bad named entity: longleftrightarrow without a semi-colon" do
    assert_lexes "&longleftrightarrow", "[[\"Character\",\"&longleftrightarrow\"]]"
  end
  it "namedEntities:Named entity: longleftrightarrow; with a semi-colon" do
    assert_lexes "&longleftrightarrow;", "[[\"Character\",\"⟷\"]]"
  end
  it "namedEntities:Bad named entity: longmapsto without a semi-colon" do
    assert_lexes "&longmapsto", "[[\"Character\",\"&longmapsto\"]]"
  end
  it "namedEntities:Named entity: longmapsto; with a semi-colon" do
    assert_lexes "&longmapsto;", "[[\"Character\",\"⟼\"]]"
  end
  it "namedEntities:Bad named entity: longrightarrow without a semi-colon" do
    assert_lexes "&longrightarrow", "[[\"Character\",\"&longrightarrow\"]]"
  end
  it "namedEntities:Named entity: longrightarrow; with a semi-colon" do
    assert_lexes "&longrightarrow;", "[[\"Character\",\"⟶\"]]"
  end
  it "namedEntities:Bad named entity: looparrowleft without a semi-colon" do
    assert_lexes "&looparrowleft", "[[\"Character\",\"&looparrowleft\"]]"
  end
  it "namedEntities:Named entity: looparrowleft; with a semi-colon" do
    assert_lexes "&looparrowleft;", "[[\"Character\",\"↫\"]]"
  end
  it "namedEntities:Bad named entity: looparrowright without a semi-colon" do
    assert_lexes "&looparrowright", "[[\"Character\",\"&looparrowright\"]]"
  end
  it "namedEntities:Named entity: looparrowright; with a semi-colon" do
    assert_lexes "&looparrowright;", "[[\"Character\",\"↬\"]]"
  end
  it "namedEntities:Bad named entity: lopar without a semi-colon" do
    assert_lexes "&lopar", "[[\"Character\",\"&lopar\"]]"
  end
  it "namedEntities:Named entity: lopar; with a semi-colon" do
    assert_lexes "&lopar;", "[[\"Character\",\"⦅\"]]"
  end
  it "namedEntities:Bad named entity: lopf without a semi-colon" do
    assert_lexes "&lopf", "[[\"Character\",\"&lopf\"]]"
  end
  it "namedEntities:Named entity: lopf; with a semi-colon" do
    assert_lexes "&lopf;", "[[\"Character\",\"𝕝\"]]"
  end
  it "namedEntities:Bad named entity: loplus without a semi-colon" do
    assert_lexes "&loplus", "[[\"Character\",\"&loplus\"]]"
  end
  it "namedEntities:Named entity: loplus; with a semi-colon" do
    assert_lexes "&loplus;", "[[\"Character\",\"⨭\"]]"
  end
  it "namedEntities:Bad named entity: lotimes without a semi-colon" do
    assert_lexes "&lotimes", "[[\"Character\",\"&lotimes\"]]"
  end
  it "namedEntities:Named entity: lotimes; with a semi-colon" do
    assert_lexes "&lotimes;", "[[\"Character\",\"⨴\"]]"
  end
  it "namedEntities:Bad named entity: lowast without a semi-colon" do
    assert_lexes "&lowast", "[[\"Character\",\"&lowast\"]]"
  end
  it "namedEntities:Named entity: lowast; with a semi-colon" do
    assert_lexes "&lowast;", "[[\"Character\",\"∗\"]]"
  end
  it "namedEntities:Bad named entity: lowbar without a semi-colon" do
    assert_lexes "&lowbar", "[[\"Character\",\"&lowbar\"]]"
  end
  it "namedEntities:Named entity: lowbar; with a semi-colon" do
    assert_lexes "&lowbar;", "[[\"Character\",\"_\"]]"
  end
  it "namedEntities:Bad named entity: loz without a semi-colon" do
    assert_lexes "&loz", "[[\"Character\",\"&loz\"]]"
  end
  it "namedEntities:Named entity: loz; with a semi-colon" do
    assert_lexes "&loz;", "[[\"Character\",\"◊\"]]"
  end
  it "namedEntities:Bad named entity: lozenge without a semi-colon" do
    assert_lexes "&lozenge", "[[\"Character\",\"&lozenge\"]]"
  end
  it "namedEntities:Named entity: lozenge; with a semi-colon" do
    assert_lexes "&lozenge;", "[[\"Character\",\"◊\"]]"
  end
  it "namedEntities:Bad named entity: lozf without a semi-colon" do
    assert_lexes "&lozf", "[[\"Character\",\"&lozf\"]]"
  end
  it "namedEntities:Named entity: lozf; with a semi-colon" do
    assert_lexes "&lozf;", "[[\"Character\",\"⧫\"]]"
  end
  it "namedEntities:Bad named entity: lpar without a semi-colon" do
    assert_lexes "&lpar", "[[\"Character\",\"&lpar\"]]"
  end
  it "namedEntities:Named entity: lpar; with a semi-colon" do
    assert_lexes "&lpar;", "[[\"Character\",\"(\"]]"
  end
  it "namedEntities:Bad named entity: lparlt without a semi-colon" do
    assert_lexes "&lparlt", "[[\"Character\",\"&lparlt\"]]"
  end
  it "namedEntities:Named entity: lparlt; with a semi-colon" do
    assert_lexes "&lparlt;", "[[\"Character\",\"⦓\"]]"
  end
  it "namedEntities:Bad named entity: lrarr without a semi-colon" do
    assert_lexes "&lrarr", "[[\"Character\",\"&lrarr\"]]"
  end
  it "namedEntities:Named entity: lrarr; with a semi-colon" do
    assert_lexes "&lrarr;", "[[\"Character\",\"⇆\"]]"
  end
  it "namedEntities:Bad named entity: lrcorner without a semi-colon" do
    assert_lexes "&lrcorner", "[[\"Character\",\"&lrcorner\"]]"
  end
  it "namedEntities:Named entity: lrcorner; with a semi-colon" do
    assert_lexes "&lrcorner;", "[[\"Character\",\"⌟\"]]"
  end
  it "namedEntities:Bad named entity: lrhar without a semi-colon" do
    assert_lexes "&lrhar", "[[\"Character\",\"&lrhar\"]]"
  end
  it "namedEntities:Named entity: lrhar; with a semi-colon" do
    assert_lexes "&lrhar;", "[[\"Character\",\"⇋\"]]"
  end
  it "namedEntities:Bad named entity: lrhard without a semi-colon" do
    assert_lexes "&lrhard", "[[\"Character\",\"&lrhard\"]]"
  end
  it "namedEntities:Named entity: lrhard; with a semi-colon" do
    assert_lexes "&lrhard;", "[[\"Character\",\"⥭\"]]"
  end
  it "namedEntities:Bad named entity: lrm without a semi-colon" do
    assert_lexes "&lrm", "[[\"Character\",\"&lrm\"]]"
  end
  it "namedEntities:Named entity: lrm; with a semi-colon" do
    assert_lexes "&lrm;", "[[\"Character\",\"\u200E\"]]"
  end
  it "namedEntities:Bad named entity: lrtri without a semi-colon" do
    assert_lexes "&lrtri", "[[\"Character\",\"&lrtri\"]]"
  end
  it "namedEntities:Named entity: lrtri; with a semi-colon" do
    assert_lexes "&lrtri;", "[[\"Character\",\"⊿\"]]"
  end
  it "namedEntities:Bad named entity: lsaquo without a semi-colon" do
    assert_lexes "&lsaquo", "[[\"Character\",\"&lsaquo\"]]"
  end
  it "namedEntities:Named entity: lsaquo; with a semi-colon" do
    assert_lexes "&lsaquo;", "[[\"Character\",\"‹\"]]"
  end
  it "namedEntities:Bad named entity: lscr without a semi-colon" do
    assert_lexes "&lscr", "[[\"Character\",\"&lscr\"]]"
  end
  it "namedEntities:Named entity: lscr; with a semi-colon" do
    assert_lexes "&lscr;", "[[\"Character\",\"𝓁\"]]"
  end
  it "namedEntities:Bad named entity: lsh without a semi-colon" do
    assert_lexes "&lsh", "[[\"Character\",\"&lsh\"]]"
  end
  it "namedEntities:Named entity: lsh; with a semi-colon" do
    assert_lexes "&lsh;", "[[\"Character\",\"↰\"]]"
  end
  it "namedEntities:Bad named entity: lsim without a semi-colon" do
    assert_lexes "&lsim", "[[\"Character\",\"&lsim\"]]"
  end
  it "namedEntities:Named entity: lsim; with a semi-colon" do
    assert_lexes "&lsim;", "[[\"Character\",\"≲\"]]"
  end
  it "namedEntities:Bad named entity: lsime without a semi-colon" do
    assert_lexes "&lsime", "[[\"Character\",\"&lsime\"]]"
  end
  it "namedEntities:Named entity: lsime; with a semi-colon" do
    assert_lexes "&lsime;", "[[\"Character\",\"⪍\"]]"
  end
  it "namedEntities:Bad named entity: lsimg without a semi-colon" do
    assert_lexes "&lsimg", "[[\"Character\",\"&lsimg\"]]"
  end
  it "namedEntities:Named entity: lsimg; with a semi-colon" do
    assert_lexes "&lsimg;", "[[\"Character\",\"⪏\"]]"
  end
  it "namedEntities:Bad named entity: lsqb without a semi-colon" do
    assert_lexes "&lsqb", "[[\"Character\",\"&lsqb\"]]"
  end
  it "namedEntities:Named entity: lsqb; with a semi-colon" do
    assert_lexes "&lsqb;", "[[\"Character\",\"[\"]]"
  end
  it "namedEntities:Bad named entity: lsquo without a semi-colon" do
    assert_lexes "&lsquo", "[[\"Character\",\"&lsquo\"]]"
  end
  it "namedEntities:Named entity: lsquo; with a semi-colon" do
    assert_lexes "&lsquo;", "[[\"Character\",\"‘\"]]"
  end
  it "namedEntities:Bad named entity: lsquor without a semi-colon" do
    assert_lexes "&lsquor", "[[\"Character\",\"&lsquor\"]]"
  end
  it "namedEntities:Named entity: lsquor; with a semi-colon" do
    assert_lexes "&lsquor;", "[[\"Character\",\"‚\"]]"
  end
  it "namedEntities:Bad named entity: lstrok without a semi-colon" do
    assert_lexes "&lstrok", "[[\"Character\",\"&lstrok\"]]"
  end
  it "namedEntities:Named entity: lstrok; with a semi-colon" do
    assert_lexes "&lstrok;", "[[\"Character\",\"ł\"]]"
  end
  it "namedEntities:Named entity: lt without a semi-colon" do
    assert_lexes "&lt", "[[\"Character\",\"<\"]]"
  end
  it "namedEntities:Named entity: lt; with a semi-colon" do
    assert_lexes "&lt;", "[[\"Character\",\"<\"]]"
  end
  it "namedEntities:Named entity: ltcc; with a semi-colon" do
    assert_lexes "&ltcc;", "[[\"Character\",\"⪦\"]]"
  end
  it "namedEntities:Named entity: ltcir; with a semi-colon" do
    assert_lexes "&ltcir;", "[[\"Character\",\"⩹\"]]"
  end
  it "namedEntities:Named entity: ltdot; with a semi-colon" do
    assert_lexes "&ltdot;", "[[\"Character\",\"⋖\"]]"
  end
  it "namedEntities:Named entity: lthree; with a semi-colon" do
    assert_lexes "&lthree;", "[[\"Character\",\"⋋\"]]"
  end
  it "namedEntities:Named entity: ltimes; with a semi-colon" do
    assert_lexes "&ltimes;", "[[\"Character\",\"⋉\"]]"
  end
  it "namedEntities:Named entity: ltlarr; with a semi-colon" do
    assert_lexes "&ltlarr;", "[[\"Character\",\"⥶\"]]"
  end
  it "namedEntities:Named entity: ltquest; with a semi-colon" do
    assert_lexes "&ltquest;", "[[\"Character\",\"⩻\"]]"
  end
  it "namedEntities:Named entity: ltrPar; with a semi-colon" do
    assert_lexes "&ltrPar;", "[[\"Character\",\"⦖\"]]"
  end
  it "namedEntities:Named entity: ltri; with a semi-colon" do
    assert_lexes "&ltri;", "[[\"Character\",\"◃\"]]"
  end
  it "namedEntities:Named entity: ltrie; with a semi-colon" do
    assert_lexes "&ltrie;", "[[\"Character\",\"⊴\"]]"
  end
  it "namedEntities:Named entity: ltrif; with a semi-colon" do
    assert_lexes "&ltrif;", "[[\"Character\",\"◂\"]]"
  end
  it "namedEntities:Bad named entity: lurdshar without a semi-colon" do
    assert_lexes "&lurdshar", "[[\"Character\",\"&lurdshar\"]]"
  end
  it "namedEntities:Named entity: lurdshar; with a semi-colon" do
    assert_lexes "&lurdshar;", "[[\"Character\",\"⥊\"]]"
  end
  it "namedEntities:Bad named entity: luruhar without a semi-colon" do
    assert_lexes "&luruhar", "[[\"Character\",\"&luruhar\"]]"
  end
  it "namedEntities:Named entity: luruhar; with a semi-colon" do
    assert_lexes "&luruhar;", "[[\"Character\",\"⥦\"]]"
  end
  it "namedEntities:Bad named entity: lvertneqq without a semi-colon" do
    assert_lexes "&lvertneqq", "[[\"Character\",\"&lvertneqq\"]]"
  end
  it "namedEntities:Named entity: lvertneqq; with a semi-colon" do
    assert_lexes "&lvertneqq;", "[[\"Character\",\"≨︀\"]]"
  end
  it "namedEntities:Bad named entity: lvnE without a semi-colon" do
    assert_lexes "&lvnE", "[[\"Character\",\"&lvnE\"]]"
  end
  it "namedEntities:Named entity: lvnE; with a semi-colon" do
    assert_lexes "&lvnE;", "[[\"Character\",\"≨︀\"]]"
  end
  it "namedEntities:Bad named entity: mDDot without a semi-colon" do
    assert_lexes "&mDDot", "[[\"Character\",\"&mDDot\"]]"
  end
  it "namedEntities:Named entity: mDDot; with a semi-colon" do
    assert_lexes "&mDDot;", "[[\"Character\",\"∺\"]]"
  end
  it "namedEntities:Named entity: macr without a semi-colon" do
    assert_lexes "&macr", "[[\"Character\",\"¯\"]]"
  end
  it "namedEntities:Named entity: macr; with a semi-colon" do
    assert_lexes "&macr;", "[[\"Character\",\"¯\"]]"
  end
  it "namedEntities:Bad named entity: male without a semi-colon" do
    assert_lexes "&male", "[[\"Character\",\"&male\"]]"
  end
  it "namedEntities:Named entity: male; with a semi-colon" do
    assert_lexes "&male;", "[[\"Character\",\"♂\"]]"
  end
  it "namedEntities:Bad named entity: malt without a semi-colon" do
    assert_lexes "&malt", "[[\"Character\",\"&malt\"]]"
  end
  it "namedEntities:Named entity: malt; with a semi-colon" do
    assert_lexes "&malt;", "[[\"Character\",\"✠\"]]"
  end
  it "namedEntities:Bad named entity: maltese without a semi-colon" do
    assert_lexes "&maltese", "[[\"Character\",\"&maltese\"]]"
  end
  it "namedEntities:Named entity: maltese; with a semi-colon" do
    assert_lexes "&maltese;", "[[\"Character\",\"✠\"]]"
  end
  it "namedEntities:Bad named entity: map without a semi-colon" do
    assert_lexes "&map", "[[\"Character\",\"&map\"]]"
  end
  it "namedEntities:Named entity: map; with a semi-colon" do
    assert_lexes "&map;", "[[\"Character\",\"↦\"]]"
  end
  it "namedEntities:Bad named entity: mapsto without a semi-colon" do
    assert_lexes "&mapsto", "[[\"Character\",\"&mapsto\"]]"
  end
  it "namedEntities:Named entity: mapsto; with a semi-colon" do
    assert_lexes "&mapsto;", "[[\"Character\",\"↦\"]]"
  end
  it "namedEntities:Bad named entity: mapstodown without a semi-colon" do
    assert_lexes "&mapstodown", "[[\"Character\",\"&mapstodown\"]]"
  end
  it "namedEntities:Named entity: mapstodown; with a semi-colon" do
    assert_lexes "&mapstodown;", "[[\"Character\",\"↧\"]]"
  end
  it "namedEntities:Bad named entity: mapstoleft without a semi-colon" do
    assert_lexes "&mapstoleft", "[[\"Character\",\"&mapstoleft\"]]"
  end
  it "namedEntities:Named entity: mapstoleft; with a semi-colon" do
    assert_lexes "&mapstoleft;", "[[\"Character\",\"↤\"]]"
  end
  it "namedEntities:Bad named entity: mapstoup without a semi-colon" do
    assert_lexes "&mapstoup", "[[\"Character\",\"&mapstoup\"]]"
  end
  it "namedEntities:Named entity: mapstoup; with a semi-colon" do
    assert_lexes "&mapstoup;", "[[\"Character\",\"↥\"]]"
  end
  it "namedEntities:Bad named entity: marker without a semi-colon" do
    assert_lexes "&marker", "[[\"Character\",\"&marker\"]]"
  end
  it "namedEntities:Named entity: marker; with a semi-colon" do
    assert_lexes "&marker;", "[[\"Character\",\"▮\"]]"
  end
  it "namedEntities:Bad named entity: mcomma without a semi-colon" do
    assert_lexes "&mcomma", "[[\"Character\",\"&mcomma\"]]"
  end
  it "namedEntities:Named entity: mcomma; with a semi-colon" do
    assert_lexes "&mcomma;", "[[\"Character\",\"⨩\"]]"
  end
  it "namedEntities:Bad named entity: mcy without a semi-colon" do
    assert_lexes "&mcy", "[[\"Character\",\"&mcy\"]]"
  end
  it "namedEntities:Named entity: mcy; with a semi-colon" do
    assert_lexes "&mcy;", "[[\"Character\",\"м\"]]"
  end
  it "namedEntities:Bad named entity: mdash without a semi-colon" do
    assert_lexes "&mdash", "[[\"Character\",\"&mdash\"]]"
  end
  it "namedEntities:Named entity: mdash; with a semi-colon" do
    assert_lexes "&mdash;", "[[\"Character\",\"—\"]]"
  end
  it "namedEntities:Bad named entity: measuredangle without a semi-colon" do
    assert_lexes "&measuredangle", "[[\"Character\",\"&measuredangle\"]]"
  end
  it "namedEntities:Named entity: measuredangle; with a semi-colon" do
    assert_lexes "&measuredangle;", "[[\"Character\",\"∡\"]]"
  end
  it "namedEntities:Bad named entity: mfr without a semi-colon" do
    assert_lexes "&mfr", "[[\"Character\",\"&mfr\"]]"
  end
  it "namedEntities:Named entity: mfr; with a semi-colon" do
    assert_lexes "&mfr;", "[[\"Character\",\"𝔪\"]]"
  end
  it "namedEntities:Bad named entity: mho without a semi-colon" do
    assert_lexes "&mho", "[[\"Character\",\"&mho\"]]"
  end
  it "namedEntities:Named entity: mho; with a semi-colon" do
    assert_lexes "&mho;", "[[\"Character\",\"℧\"]]"
  end
  it "namedEntities:Named entity: micro without a semi-colon" do
    assert_lexes "&micro", "[[\"Character\",\"µ\"]]"
  end
  it "namedEntities:Named entity: micro; with a semi-colon" do
    assert_lexes "&micro;", "[[\"Character\",\"µ\"]]"
  end
  it "namedEntities:Bad named entity: mid without a semi-colon" do
    assert_lexes "&mid", "[[\"Character\",\"&mid\"]]"
  end
  it "namedEntities:Named entity: mid; with a semi-colon" do
    assert_lexes "&mid;", "[[\"Character\",\"∣\"]]"
  end
  it "namedEntities:Bad named entity: midast without a semi-colon" do
    assert_lexes "&midast", "[[\"Character\",\"&midast\"]]"
  end
  it "namedEntities:Named entity: midast; with a semi-colon" do
    assert_lexes "&midast;", "[[\"Character\",\"*\"]]"
  end
  it "namedEntities:Bad named entity: midcir without a semi-colon" do
    assert_lexes "&midcir", "[[\"Character\",\"&midcir\"]]"
  end
  it "namedEntities:Named entity: midcir; with a semi-colon" do
    assert_lexes "&midcir;", "[[\"Character\",\"⫰\"]]"
  end
  it "namedEntities:Named entity: middot without a semi-colon" do
    assert_lexes "&middot", "[[\"Character\",\"·\"]]"
  end
  it "namedEntities:Named entity: middot; with a semi-colon" do
    assert_lexes "&middot;", "[[\"Character\",\"·\"]]"
  end
  it "namedEntities:Bad named entity: minus without a semi-colon" do
    assert_lexes "&minus", "[[\"Character\",\"&minus\"]]"
  end
  it "namedEntities:Named entity: minus; with a semi-colon" do
    assert_lexes "&minus;", "[[\"Character\",\"−\"]]"
  end
  it "namedEntities:Bad named entity: minusb without a semi-colon" do
    assert_lexes "&minusb", "[[\"Character\",\"&minusb\"]]"
  end
  it "namedEntities:Named entity: minusb; with a semi-colon" do
    assert_lexes "&minusb;", "[[\"Character\",\"⊟\"]]"
  end
  it "namedEntities:Bad named entity: minusd without a semi-colon" do
    assert_lexes "&minusd", "[[\"Character\",\"&minusd\"]]"
  end
  it "namedEntities:Named entity: minusd; with a semi-colon" do
    assert_lexes "&minusd;", "[[\"Character\",\"∸\"]]"
  end
  it "namedEntities:Bad named entity: minusdu without a semi-colon" do
    assert_lexes "&minusdu", "[[\"Character\",\"&minusdu\"]]"
  end
  it "namedEntities:Named entity: minusdu; with a semi-colon" do
    assert_lexes "&minusdu;", "[[\"Character\",\"⨪\"]]"
  end
  it "namedEntities:Bad named entity: mlcp without a semi-colon" do
    assert_lexes "&mlcp", "[[\"Character\",\"&mlcp\"]]"
  end
  it "namedEntities:Named entity: mlcp; with a semi-colon" do
    assert_lexes "&mlcp;", "[[\"Character\",\"⫛\"]]"
  end
  it "namedEntities:Bad named entity: mldr without a semi-colon" do
    assert_lexes "&mldr", "[[\"Character\",\"&mldr\"]]"
  end
  it "namedEntities:Named entity: mldr; with a semi-colon" do
    assert_lexes "&mldr;", "[[\"Character\",\"…\"]]"
  end
  it "namedEntities:Bad named entity: mnplus without a semi-colon" do
    assert_lexes "&mnplus", "[[\"Character\",\"&mnplus\"]]"
  end
  it "namedEntities:Named entity: mnplus; with a semi-colon" do
    assert_lexes "&mnplus;", "[[\"Character\",\"∓\"]]"
  end
  it "namedEntities:Bad named entity: models without a semi-colon" do
    assert_lexes "&models", "[[\"Character\",\"&models\"]]"
  end
  it "namedEntities:Named entity: models; with a semi-colon" do
    assert_lexes "&models;", "[[\"Character\",\"⊧\"]]"
  end
  it "namedEntities:Bad named entity: mopf without a semi-colon" do
    assert_lexes "&mopf", "[[\"Character\",\"&mopf\"]]"
  end
  it "namedEntities:Named entity: mopf; with a semi-colon" do
    assert_lexes "&mopf;", "[[\"Character\",\"𝕞\"]]"
  end
  it "namedEntities:Bad named entity: mp without a semi-colon" do
    assert_lexes "&mp", "[[\"Character\",\"&mp\"]]"
  end
  it "namedEntities:Named entity: mp; with a semi-colon" do
    assert_lexes "&mp;", "[[\"Character\",\"∓\"]]"
  end
  it "namedEntities:Bad named entity: mscr without a semi-colon" do
    assert_lexes "&mscr", "[[\"Character\",\"&mscr\"]]"
  end
  it "namedEntities:Named entity: mscr; with a semi-colon" do
    assert_lexes "&mscr;", "[[\"Character\",\"𝓂\"]]"
  end
  it "namedEntities:Bad named entity: mstpos without a semi-colon" do
    assert_lexes "&mstpos", "[[\"Character\",\"&mstpos\"]]"
  end
  it "namedEntities:Named entity: mstpos; with a semi-colon" do
    assert_lexes "&mstpos;", "[[\"Character\",\"∾\"]]"
  end
  it "namedEntities:Bad named entity: mu without a semi-colon" do
    assert_lexes "&mu", "[[\"Character\",\"&mu\"]]"
  end
  it "namedEntities:Named entity: mu; with a semi-colon" do
    assert_lexes "&mu;", "[[\"Character\",\"μ\"]]"
  end
  it "namedEntities:Bad named entity: multimap without a semi-colon" do
    assert_lexes "&multimap", "[[\"Character\",\"&multimap\"]]"
  end
  it "namedEntities:Named entity: multimap; with a semi-colon" do
    assert_lexes "&multimap;", "[[\"Character\",\"⊸\"]]"
  end
  it "namedEntities:Bad named entity: mumap without a semi-colon" do
    assert_lexes "&mumap", "[[\"Character\",\"&mumap\"]]"
  end
  it "namedEntities:Named entity: mumap; with a semi-colon" do
    assert_lexes "&mumap;", "[[\"Character\",\"⊸\"]]"
  end
  it "namedEntities:Bad named entity: nGg without a semi-colon" do
    assert_lexes "&nGg", "[[\"Character\",\"&nGg\"]]"
  end
  it "namedEntities:Named entity: nGg; with a semi-colon" do
    assert_lexes "&nGg;", "[[\"Character\",\"⋙̸\"]]"
  end
  it "namedEntities:Bad named entity: nGt without a semi-colon" do
    assert_lexes "&nGt", "[[\"Character\",\"&nGt\"]]"
  end
  it "namedEntities:Named entity: nGt; with a semi-colon" do
    assert_lexes "&nGt;", "[[\"Character\",\"≫⃒\"]]"
  end
  it "namedEntities:Bad named entity: nGtv without a semi-colon" do
    assert_lexes "&nGtv", "[[\"Character\",\"&nGtv\"]]"
  end
  it "namedEntities:Named entity: nGtv; with a semi-colon" do
    assert_lexes "&nGtv;", "[[\"Character\",\"≫̸\"]]"
  end
  it "namedEntities:Bad named entity: nLeftarrow without a semi-colon" do
    assert_lexes "&nLeftarrow", "[[\"Character\",\"&nLeftarrow\"]]"
  end
  it "namedEntities:Named entity: nLeftarrow; with a semi-colon" do
    assert_lexes "&nLeftarrow;", "[[\"Character\",\"⇍\"]]"
  end
  it "namedEntities:Bad named entity: nLeftrightarrow without a semi-colon" do
    assert_lexes "&nLeftrightarrow", "[[\"Character\",\"&nLeftrightarrow\"]]"
  end
  it "namedEntities:Named entity: nLeftrightarrow; with a semi-colon" do
    assert_lexes "&nLeftrightarrow;", "[[\"Character\",\"⇎\"]]"
  end
  it "namedEntities:Bad named entity: nLl without a semi-colon" do
    assert_lexes "&nLl", "[[\"Character\",\"&nLl\"]]"
  end
  it "namedEntities:Named entity: nLl; with a semi-colon" do
    assert_lexes "&nLl;", "[[\"Character\",\"⋘̸\"]]"
  end
  it "namedEntities:Bad named entity: nLt without a semi-colon" do
    assert_lexes "&nLt", "[[\"Character\",\"&nLt\"]]"
  end
  it "namedEntities:Named entity: nLt; with a semi-colon" do
    assert_lexes "&nLt;", "[[\"Character\",\"≪⃒\"]]"
  end
  it "namedEntities:Bad named entity: nLtv without a semi-colon" do
    assert_lexes "&nLtv", "[[\"Character\",\"&nLtv\"]]"
  end
  it "namedEntities:Named entity: nLtv; with a semi-colon" do
    assert_lexes "&nLtv;", "[[\"Character\",\"≪̸\"]]"
  end
  it "namedEntities:Bad named entity: nRightarrow without a semi-colon" do
    assert_lexes "&nRightarrow", "[[\"Character\",\"&nRightarrow\"]]"
  end
  it "namedEntities:Named entity: nRightarrow; with a semi-colon" do
    assert_lexes "&nRightarrow;", "[[\"Character\",\"⇏\"]]"
  end
  it "namedEntities:Bad named entity: nVDash without a semi-colon" do
    assert_lexes "&nVDash", "[[\"Character\",\"&nVDash\"]]"
  end
  it "namedEntities:Named entity: nVDash; with a semi-colon" do
    assert_lexes "&nVDash;", "[[\"Character\",\"⊯\"]]"
  end
  it "namedEntities:Bad named entity: nVdash without a semi-colon" do
    assert_lexes "&nVdash", "[[\"Character\",\"&nVdash\"]]"
  end
  it "namedEntities:Named entity: nVdash; with a semi-colon" do
    assert_lexes "&nVdash;", "[[\"Character\",\"⊮\"]]"
  end
  it "namedEntities:Bad named entity: nabla without a semi-colon" do
    assert_lexes "&nabla", "[[\"Character\",\"&nabla\"]]"
  end
  it "namedEntities:Named entity: nabla; with a semi-colon" do
    assert_lexes "&nabla;", "[[\"Character\",\"∇\"]]"
  end
  it "namedEntities:Bad named entity: nacute without a semi-colon" do
    assert_lexes "&nacute", "[[\"Character\",\"&nacute\"]]"
  end
  it "namedEntities:Named entity: nacute; with a semi-colon" do
    assert_lexes "&nacute;", "[[\"Character\",\"ń\"]]"
  end
  it "namedEntities:Bad named entity: nang without a semi-colon" do
    assert_lexes "&nang", "[[\"Character\",\"&nang\"]]"
  end
  it "namedEntities:Named entity: nang; with a semi-colon" do
    assert_lexes "&nang;", "[[\"Character\",\"∠⃒\"]]"
  end
  it "namedEntities:Bad named entity: nap without a semi-colon" do
    assert_lexes "&nap", "[[\"Character\",\"&nap\"]]"
  end
  it "namedEntities:Named entity: nap; with a semi-colon" do
    assert_lexes "&nap;", "[[\"Character\",\"≉\"]]"
  end
  it "namedEntities:Bad named entity: napE without a semi-colon" do
    assert_lexes "&napE", "[[\"Character\",\"&napE\"]]"
  end
  it "namedEntities:Named entity: napE; with a semi-colon" do
    assert_lexes "&napE;", "[[\"Character\",\"⩰̸\"]]"
  end
  it "namedEntities:Bad named entity: napid without a semi-colon" do
    assert_lexes "&napid", "[[\"Character\",\"&napid\"]]"
  end
  it "namedEntities:Named entity: napid; with a semi-colon" do
    assert_lexes "&napid;", "[[\"Character\",\"≋̸\"]]"
  end
  it "namedEntities:Bad named entity: napos without a semi-colon" do
    assert_lexes "&napos", "[[\"Character\",\"&napos\"]]"
  end
  it "namedEntities:Named entity: napos; with a semi-colon" do
    assert_lexes "&napos;", "[[\"Character\",\"ŉ\"]]"
  end
  it "namedEntities:Bad named entity: napprox without a semi-colon" do
    assert_lexes "&napprox", "[[\"Character\",\"&napprox\"]]"
  end
  it "namedEntities:Named entity: napprox; with a semi-colon" do
    assert_lexes "&napprox;", "[[\"Character\",\"≉\"]]"
  end
  it "namedEntities:Bad named entity: natur without a semi-colon" do
    assert_lexes "&natur", "[[\"Character\",\"&natur\"]]"
  end
  it "namedEntities:Named entity: natur; with a semi-colon" do
    assert_lexes "&natur;", "[[\"Character\",\"♮\"]]"
  end
  it "namedEntities:Bad named entity: natural without a semi-colon" do
    assert_lexes "&natural", "[[\"Character\",\"&natural\"]]"
  end
  it "namedEntities:Named entity: natural; with a semi-colon" do
    assert_lexes "&natural;", "[[\"Character\",\"♮\"]]"
  end
  it "namedEntities:Bad named entity: naturals without a semi-colon" do
    assert_lexes "&naturals", "[[\"Character\",\"&naturals\"]]"
  end
  it "namedEntities:Named entity: naturals; with a semi-colon" do
    assert_lexes "&naturals;", "[[\"Character\",\"ℕ\"]]"
  end
  it "namedEntities:Named entity: nbsp without a semi-colon" do
    assert_lexes "&nbsp", "[[\"Character\",\"\u00A0\"]]"
  end
  it "namedEntities:Named entity: nbsp; with a semi-colon" do
    assert_lexes "&nbsp;", "[[\"Character\",\"\u00A0\"]]"
  end
  it "namedEntities:Bad named entity: nbump without a semi-colon" do
    assert_lexes "&nbump", "[[\"Character\",\"&nbump\"]]"
  end
  it "namedEntities:Named entity: nbump; with a semi-colon" do
    assert_lexes "&nbump;", "[[\"Character\",\"≎̸\"]]"
  end
  it "namedEntities:Bad named entity: nbumpe without a semi-colon" do
    assert_lexes "&nbumpe", "[[\"Character\",\"&nbumpe\"]]"
  end
  it "namedEntities:Named entity: nbumpe; with a semi-colon" do
    assert_lexes "&nbumpe;", "[[\"Character\",\"≏̸\"]]"
  end
  it "namedEntities:Bad named entity: ncap without a semi-colon" do
    assert_lexes "&ncap", "[[\"Character\",\"&ncap\"]]"
  end
  it "namedEntities:Named entity: ncap; with a semi-colon" do
    assert_lexes "&ncap;", "[[\"Character\",\"⩃\"]]"
  end
  it "namedEntities:Bad named entity: ncaron without a semi-colon" do
    assert_lexes "&ncaron", "[[\"Character\",\"&ncaron\"]]"
  end
  it "namedEntities:Named entity: ncaron; with a semi-colon" do
    assert_lexes "&ncaron;", "[[\"Character\",\"ň\"]]"
  end
  it "namedEntities:Bad named entity: ncedil without a semi-colon" do
    assert_lexes "&ncedil", "[[\"Character\",\"&ncedil\"]]"
  end
  it "namedEntities:Named entity: ncedil; with a semi-colon" do
    assert_lexes "&ncedil;", "[[\"Character\",\"ņ\"]]"
  end
  it "namedEntities:Bad named entity: ncong without a semi-colon" do
    assert_lexes "&ncong", "[[\"Character\",\"&ncong\"]]"
  end
  it "namedEntities:Named entity: ncong; with a semi-colon" do
    assert_lexes "&ncong;", "[[\"Character\",\"≇\"]]"
  end
  it "namedEntities:Bad named entity: ncongdot without a semi-colon" do
    assert_lexes "&ncongdot", "[[\"Character\",\"&ncongdot\"]]"
  end
  it "namedEntities:Named entity: ncongdot; with a semi-colon" do
    assert_lexes "&ncongdot;", "[[\"Character\",\"⩭̸\"]]"
  end
  it "namedEntities:Bad named entity: ncup without a semi-colon" do
    assert_lexes "&ncup", "[[\"Character\",\"&ncup\"]]"
  end
  it "namedEntities:Named entity: ncup; with a semi-colon" do
    assert_lexes "&ncup;", "[[\"Character\",\"⩂\"]]"
  end
  it "namedEntities:Bad named entity: ncy without a semi-colon" do
    assert_lexes "&ncy", "[[\"Character\",\"&ncy\"]]"
  end
  it "namedEntities:Named entity: ncy; with a semi-colon" do
    assert_lexes "&ncy;", "[[\"Character\",\"н\"]]"
  end
  it "namedEntities:Bad named entity: ndash without a semi-colon" do
    assert_lexes "&ndash", "[[\"Character\",\"&ndash\"]]"
  end
  it "namedEntities:Named entity: ndash; with a semi-colon" do
    assert_lexes "&ndash;", "[[\"Character\",\"–\"]]"
  end
  it "namedEntities:Bad named entity: ne without a semi-colon" do
    assert_lexes "&ne", "[[\"Character\",\"&ne\"]]"
  end
  it "namedEntities:Named entity: ne; with a semi-colon" do
    assert_lexes "&ne;", "[[\"Character\",\"≠\"]]"
  end
  it "namedEntities:Bad named entity: neArr without a semi-colon" do
    assert_lexes "&neArr", "[[\"Character\",\"&neArr\"]]"
  end
  it "namedEntities:Named entity: neArr; with a semi-colon" do
    assert_lexes "&neArr;", "[[\"Character\",\"⇗\"]]"
  end
  it "namedEntities:Bad named entity: nearhk without a semi-colon" do
    assert_lexes "&nearhk", "[[\"Character\",\"&nearhk\"]]"
  end
  it "namedEntities:Named entity: nearhk; with a semi-colon" do
    assert_lexes "&nearhk;", "[[\"Character\",\"⤤\"]]"
  end
  it "namedEntities:Bad named entity: nearr without a semi-colon" do
    assert_lexes "&nearr", "[[\"Character\",\"&nearr\"]]"
  end
  it "namedEntities:Named entity: nearr; with a semi-colon" do
    assert_lexes "&nearr;", "[[\"Character\",\"↗\"]]"
  end
  it "namedEntities:Bad named entity: nearrow without a semi-colon" do
    assert_lexes "&nearrow", "[[\"Character\",\"&nearrow\"]]"
  end
  it "namedEntities:Named entity: nearrow; with a semi-colon" do
    assert_lexes "&nearrow;", "[[\"Character\",\"↗\"]]"
  end
  it "namedEntities:Bad named entity: nedot without a semi-colon" do
    assert_lexes "&nedot", "[[\"Character\",\"&nedot\"]]"
  end
  it "namedEntities:Named entity: nedot; with a semi-colon" do
    assert_lexes "&nedot;", "[[\"Character\",\"≐̸\"]]"
  end
  it "namedEntities:Bad named entity: nequiv without a semi-colon" do
    assert_lexes "&nequiv", "[[\"Character\",\"&nequiv\"]]"
  end
  it "namedEntities:Named entity: nequiv; with a semi-colon" do
    assert_lexes "&nequiv;", "[[\"Character\",\"≢\"]]"
  end
  it "namedEntities:Bad named entity: nesear without a semi-colon" do
    assert_lexes "&nesear", "[[\"Character\",\"&nesear\"]]"
  end
  it "namedEntities:Named entity: nesear; with a semi-colon" do
    assert_lexes "&nesear;", "[[\"Character\",\"⤨\"]]"
  end
  it "namedEntities:Bad named entity: nesim without a semi-colon" do
    assert_lexes "&nesim", "[[\"Character\",\"&nesim\"]]"
  end
  it "namedEntities:Named entity: nesim; with a semi-colon" do
    assert_lexes "&nesim;", "[[\"Character\",\"≂̸\"]]"
  end
  it "namedEntities:Bad named entity: nexist without a semi-colon" do
    assert_lexes "&nexist", "[[\"Character\",\"&nexist\"]]"
  end
  it "namedEntities:Named entity: nexist; with a semi-colon" do
    assert_lexes "&nexist;", "[[\"Character\",\"∄\"]]"
  end
  it "namedEntities:Bad named entity: nexists without a semi-colon" do
    assert_lexes "&nexists", "[[\"Character\",\"&nexists\"]]"
  end
  it "namedEntities:Named entity: nexists; with a semi-colon" do
    assert_lexes "&nexists;", "[[\"Character\",\"∄\"]]"
  end
  it "namedEntities:Bad named entity: nfr without a semi-colon" do
    assert_lexes "&nfr", "[[\"Character\",\"&nfr\"]]"
  end
  it "namedEntities:Named entity: nfr; with a semi-colon" do
    assert_lexes "&nfr;", "[[\"Character\",\"𝔫\"]]"
  end
  it "namedEntities:Bad named entity: ngE without a semi-colon" do
    assert_lexes "&ngE", "[[\"Character\",\"&ngE\"]]"
  end
  it "namedEntities:Named entity: ngE; with a semi-colon" do
    assert_lexes "&ngE;", "[[\"Character\",\"≧̸\"]]"
  end
  it "namedEntities:Bad named entity: nge without a semi-colon" do
    assert_lexes "&nge", "[[\"Character\",\"&nge\"]]"
  end
  it "namedEntities:Named entity: nge; with a semi-colon" do
    assert_lexes "&nge;", "[[\"Character\",\"≱\"]]"
  end
  it "namedEntities:Bad named entity: ngeq without a semi-colon" do
    assert_lexes "&ngeq", "[[\"Character\",\"&ngeq\"]]"
  end
  it "namedEntities:Named entity: ngeq; with a semi-colon" do
    assert_lexes "&ngeq;", "[[\"Character\",\"≱\"]]"
  end
  it "namedEntities:Bad named entity: ngeqq without a semi-colon" do
    assert_lexes "&ngeqq", "[[\"Character\",\"&ngeqq\"]]"
  end
  it "namedEntities:Named entity: ngeqq; with a semi-colon" do
    assert_lexes "&ngeqq;", "[[\"Character\",\"≧̸\"]]"
  end
  it "namedEntities:Bad named entity: ngeqslant without a semi-colon" do
    assert_lexes "&ngeqslant", "[[\"Character\",\"&ngeqslant\"]]"
  end
  it "namedEntities:Named entity: ngeqslant; with a semi-colon" do
    assert_lexes "&ngeqslant;", "[[\"Character\",\"⩾̸\"]]"
  end
  it "namedEntities:Bad named entity: nges without a semi-colon" do
    assert_lexes "&nges", "[[\"Character\",\"&nges\"]]"
  end
  it "namedEntities:Named entity: nges; with a semi-colon" do
    assert_lexes "&nges;", "[[\"Character\",\"⩾̸\"]]"
  end
  it "namedEntities:Bad named entity: ngsim without a semi-colon" do
    assert_lexes "&ngsim", "[[\"Character\",\"&ngsim\"]]"
  end
  it "namedEntities:Named entity: ngsim; with a semi-colon" do
    assert_lexes "&ngsim;", "[[\"Character\",\"≵\"]]"
  end
  it "namedEntities:Bad named entity: ngt without a semi-colon" do
    assert_lexes "&ngt", "[[\"Character\",\"&ngt\"]]"
  end
  it "namedEntities:Named entity: ngt; with a semi-colon" do
    assert_lexes "&ngt;", "[[\"Character\",\"≯\"]]"
  end
  it "namedEntities:Bad named entity: ngtr without a semi-colon" do
    assert_lexes "&ngtr", "[[\"Character\",\"&ngtr\"]]"
  end
  it "namedEntities:Named entity: ngtr; with a semi-colon" do
    assert_lexes "&ngtr;", "[[\"Character\",\"≯\"]]"
  end
  it "namedEntities:Bad named entity: nhArr without a semi-colon" do
    assert_lexes "&nhArr", "[[\"Character\",\"&nhArr\"]]"
  end
  it "namedEntities:Named entity: nhArr; with a semi-colon" do
    assert_lexes "&nhArr;", "[[\"Character\",\"⇎\"]]"
  end
  it "namedEntities:Bad named entity: nharr without a semi-colon" do
    assert_lexes "&nharr", "[[\"Character\",\"&nharr\"]]"
  end
  it "namedEntities:Named entity: nharr; with a semi-colon" do
    assert_lexes "&nharr;", "[[\"Character\",\"↮\"]]"
  end
  it "namedEntities:Bad named entity: nhpar without a semi-colon" do
    assert_lexes "&nhpar", "[[\"Character\",\"&nhpar\"]]"
  end
  it "namedEntities:Named entity: nhpar; with a semi-colon" do
    assert_lexes "&nhpar;", "[[\"Character\",\"⫲\"]]"
  end
  it "namedEntities:Bad named entity: ni without a semi-colon" do
    assert_lexes "&ni", "[[\"Character\",\"&ni\"]]"
  end
  it "namedEntities:Named entity: ni; with a semi-colon" do
    assert_lexes "&ni;", "[[\"Character\",\"∋\"]]"
  end
  it "namedEntities:Bad named entity: nis without a semi-colon" do
    assert_lexes "&nis", "[[\"Character\",\"&nis\"]]"
  end
  it "namedEntities:Named entity: nis; with a semi-colon" do
    assert_lexes "&nis;", "[[\"Character\",\"⋼\"]]"
  end
  it "namedEntities:Bad named entity: nisd without a semi-colon" do
    assert_lexes "&nisd", "[[\"Character\",\"&nisd\"]]"
  end
  it "namedEntities:Named entity: nisd; with a semi-colon" do
    assert_lexes "&nisd;", "[[\"Character\",\"⋺\"]]"
  end
  it "namedEntities:Bad named entity: niv without a semi-colon" do
    assert_lexes "&niv", "[[\"Character\",\"&niv\"]]"
  end
  it "namedEntities:Named entity: niv; with a semi-colon" do
    assert_lexes "&niv;", "[[\"Character\",\"∋\"]]"
  end
  it "namedEntities:Bad named entity: njcy without a semi-colon" do
    assert_lexes "&njcy", "[[\"Character\",\"&njcy\"]]"
  end
  it "namedEntities:Named entity: njcy; with a semi-colon" do
    assert_lexes "&njcy;", "[[\"Character\",\"њ\"]]"
  end
  it "namedEntities:Bad named entity: nlArr without a semi-colon" do
    assert_lexes "&nlArr", "[[\"Character\",\"&nlArr\"]]"
  end
  it "namedEntities:Named entity: nlArr; with a semi-colon" do
    assert_lexes "&nlArr;", "[[\"Character\",\"⇍\"]]"
  end
  it "namedEntities:Bad named entity: nlE without a semi-colon" do
    assert_lexes "&nlE", "[[\"Character\",\"&nlE\"]]"
  end
  it "namedEntities:Named entity: nlE; with a semi-colon" do
    assert_lexes "&nlE;", "[[\"Character\",\"≦̸\"]]"
  end
  it "namedEntities:Bad named entity: nlarr without a semi-colon" do
    assert_lexes "&nlarr", "[[\"Character\",\"&nlarr\"]]"
  end
  it "namedEntities:Named entity: nlarr; with a semi-colon" do
    assert_lexes "&nlarr;", "[[\"Character\",\"↚\"]]"
  end
  it "namedEntities:Bad named entity: nldr without a semi-colon" do
    assert_lexes "&nldr", "[[\"Character\",\"&nldr\"]]"
  end
  it "namedEntities:Named entity: nldr; with a semi-colon" do
    assert_lexes "&nldr;", "[[\"Character\",\"‥\"]]"
  end
  it "namedEntities:Bad named entity: nle without a semi-colon" do
    assert_lexes "&nle", "[[\"Character\",\"&nle\"]]"
  end
  it "namedEntities:Named entity: nle; with a semi-colon" do
    assert_lexes "&nle;", "[[\"Character\",\"≰\"]]"
  end
  it "namedEntities:Bad named entity: nleftarrow without a semi-colon" do
    assert_lexes "&nleftarrow", "[[\"Character\",\"&nleftarrow\"]]"
  end
  it "namedEntities:Named entity: nleftarrow; with a semi-colon" do
    assert_lexes "&nleftarrow;", "[[\"Character\",\"↚\"]]"
  end
  it "namedEntities:Bad named entity: nleftrightarrow without a semi-colon" do
    assert_lexes "&nleftrightarrow", "[[\"Character\",\"&nleftrightarrow\"]]"
  end
  it "namedEntities:Named entity: nleftrightarrow; with a semi-colon" do
    assert_lexes "&nleftrightarrow;", "[[\"Character\",\"↮\"]]"
  end
  it "namedEntities:Bad named entity: nleq without a semi-colon" do
    assert_lexes "&nleq", "[[\"Character\",\"&nleq\"]]"
  end
  it "namedEntities:Named entity: nleq; with a semi-colon" do
    assert_lexes "&nleq;", "[[\"Character\",\"≰\"]]"
  end
  it "namedEntities:Bad named entity: nleqq without a semi-colon" do
    assert_lexes "&nleqq", "[[\"Character\",\"&nleqq\"]]"
  end
  it "namedEntities:Named entity: nleqq; with a semi-colon" do
    assert_lexes "&nleqq;", "[[\"Character\",\"≦̸\"]]"
  end
  it "namedEntities:Bad named entity: nleqslant without a semi-colon" do
    assert_lexes "&nleqslant", "[[\"Character\",\"&nleqslant\"]]"
  end
  it "namedEntities:Named entity: nleqslant; with a semi-colon" do
    assert_lexes "&nleqslant;", "[[\"Character\",\"⩽̸\"]]"
  end
  it "namedEntities:Bad named entity: nles without a semi-colon" do
    assert_lexes "&nles", "[[\"Character\",\"&nles\"]]"
  end
  it "namedEntities:Named entity: nles; with a semi-colon" do
    assert_lexes "&nles;", "[[\"Character\",\"⩽̸\"]]"
  end
  it "namedEntities:Bad named entity: nless without a semi-colon" do
    assert_lexes "&nless", "[[\"Character\",\"&nless\"]]"
  end
  it "namedEntities:Named entity: nless; with a semi-colon" do
    assert_lexes "&nless;", "[[\"Character\",\"≮\"]]"
  end
  it "namedEntities:Bad named entity: nlsim without a semi-colon" do
    assert_lexes "&nlsim", "[[\"Character\",\"&nlsim\"]]"
  end
  it "namedEntities:Named entity: nlsim; with a semi-colon" do
    assert_lexes "&nlsim;", "[[\"Character\",\"≴\"]]"
  end
  it "namedEntities:Bad named entity: nlt without a semi-colon" do
    assert_lexes "&nlt", "[[\"Character\",\"&nlt\"]]"
  end
  it "namedEntities:Named entity: nlt; with a semi-colon" do
    assert_lexes "&nlt;", "[[\"Character\",\"≮\"]]"
  end
  it "namedEntities:Bad named entity: nltri without a semi-colon" do
    assert_lexes "&nltri", "[[\"Character\",\"&nltri\"]]"
  end
  it "namedEntities:Named entity: nltri; with a semi-colon" do
    assert_lexes "&nltri;", "[[\"Character\",\"⋪\"]]"
  end
  it "namedEntities:Bad named entity: nltrie without a semi-colon" do
    assert_lexes "&nltrie", "[[\"Character\",\"&nltrie\"]]"
  end
  it "namedEntities:Named entity: nltrie; with a semi-colon" do
    assert_lexes "&nltrie;", "[[\"Character\",\"⋬\"]]"
  end
  it "namedEntities:Bad named entity: nmid without a semi-colon" do
    assert_lexes "&nmid", "[[\"Character\",\"&nmid\"]]"
  end
  it "namedEntities:Named entity: nmid; with a semi-colon" do
    assert_lexes "&nmid;", "[[\"Character\",\"∤\"]]"
  end
  it "namedEntities:Bad named entity: nopf without a semi-colon" do
    assert_lexes "&nopf", "[[\"Character\",\"&nopf\"]]"
  end
  it "namedEntities:Named entity: nopf; with a semi-colon" do
    assert_lexes "&nopf;", "[[\"Character\",\"𝕟\"]]"
  end
  it "namedEntities:Named entity: not without a semi-colon" do
    assert_lexes "&not", "[[\"Character\",\"¬\"]]"
  end
  it "namedEntities:Named entity: not; with a semi-colon" do
    assert_lexes "&not;", "[[\"Character\",\"¬\"]]"
  end
  it "namedEntities:Named entity: notin; with a semi-colon" do
    assert_lexes "&notin;", "[[\"Character\",\"∉\"]]"
  end
  it "namedEntities:Named entity: notinE; with a semi-colon" do
    assert_lexes "&notinE;", "[[\"Character\",\"⋹̸\"]]"
  end
  it "namedEntities:Named entity: notindot; with a semi-colon" do
    assert_lexes "&notindot;", "[[\"Character\",\"⋵̸\"]]"
  end
  it "namedEntities:Named entity: notinva; with a semi-colon" do
    assert_lexes "&notinva;", "[[\"Character\",\"∉\"]]"
  end
  it "namedEntities:Named entity: notinvb; with a semi-colon" do
    assert_lexes "&notinvb;", "[[\"Character\",\"⋷\"]]"
  end
  it "namedEntities:Named entity: notinvc; with a semi-colon" do
    assert_lexes "&notinvc;", "[[\"Character\",\"⋶\"]]"
  end
  it "namedEntities:Named entity: notni; with a semi-colon" do
    assert_lexes "&notni;", "[[\"Character\",\"∌\"]]"
  end
  it "namedEntities:Named entity: notniva; with a semi-colon" do
    assert_lexes "&notniva;", "[[\"Character\",\"∌\"]]"
  end
  it "namedEntities:Named entity: notnivb; with a semi-colon" do
    assert_lexes "&notnivb;", "[[\"Character\",\"⋾\"]]"
  end
  it "namedEntities:Named entity: notnivc; with a semi-colon" do
    assert_lexes "&notnivc;", "[[\"Character\",\"⋽\"]]"
  end
  it "namedEntities:Bad named entity: npar without a semi-colon" do
    assert_lexes "&npar", "[[\"Character\",\"&npar\"]]"
  end
  it "namedEntities:Named entity: npar; with a semi-colon" do
    assert_lexes "&npar;", "[[\"Character\",\"∦\"]]"
  end
  it "namedEntities:Bad named entity: nparallel without a semi-colon" do
    assert_lexes "&nparallel", "[[\"Character\",\"&nparallel\"]]"
  end
  it "namedEntities:Named entity: nparallel; with a semi-colon" do
    assert_lexes "&nparallel;", "[[\"Character\",\"∦\"]]"
  end
  it "namedEntities:Bad named entity: nparsl without a semi-colon" do
    assert_lexes "&nparsl", "[[\"Character\",\"&nparsl\"]]"
  end
  it "namedEntities:Named entity: nparsl; with a semi-colon" do
    assert_lexes "&nparsl;", "[[\"Character\",\"⫽⃥\"]]"
  end
  it "namedEntities:Bad named entity: npart without a semi-colon" do
    assert_lexes "&npart", "[[\"Character\",\"&npart\"]]"
  end
  it "namedEntities:Named entity: npart; with a semi-colon" do
    assert_lexes "&npart;", "[[\"Character\",\"∂̸\"]]"
  end
  it "namedEntities:Bad named entity: npolint without a semi-colon" do
    assert_lexes "&npolint", "[[\"Character\",\"&npolint\"]]"
  end
  it "namedEntities:Named entity: npolint; with a semi-colon" do
    assert_lexes "&npolint;", "[[\"Character\",\"⨔\"]]"
  end
  it "namedEntities:Bad named entity: npr without a semi-colon" do
    assert_lexes "&npr", "[[\"Character\",\"&npr\"]]"
  end
  it "namedEntities:Named entity: npr; with a semi-colon" do
    assert_lexes "&npr;", "[[\"Character\",\"⊀\"]]"
  end
  it "namedEntities:Bad named entity: nprcue without a semi-colon" do
    assert_lexes "&nprcue", "[[\"Character\",\"&nprcue\"]]"
  end
  it "namedEntities:Named entity: nprcue; with a semi-colon" do
    assert_lexes "&nprcue;", "[[\"Character\",\"⋠\"]]"
  end
  it "namedEntities:Bad named entity: npre without a semi-colon" do
    assert_lexes "&npre", "[[\"Character\",\"&npre\"]]"
  end
  it "namedEntities:Named entity: npre; with a semi-colon" do
    assert_lexes "&npre;", "[[\"Character\",\"⪯̸\"]]"
  end
  it "namedEntities:Bad named entity: nprec without a semi-colon" do
    assert_lexes "&nprec", "[[\"Character\",\"&nprec\"]]"
  end
  it "namedEntities:Named entity: nprec; with a semi-colon" do
    assert_lexes "&nprec;", "[[\"Character\",\"⊀\"]]"
  end
  it "namedEntities:Bad named entity: npreceq without a semi-colon" do
    assert_lexes "&npreceq", "[[\"Character\",\"&npreceq\"]]"
  end
  it "namedEntities:Named entity: npreceq; with a semi-colon" do
    assert_lexes "&npreceq;", "[[\"Character\",\"⪯̸\"]]"
  end
  it "namedEntities:Bad named entity: nrArr without a semi-colon" do
    assert_lexes "&nrArr", "[[\"Character\",\"&nrArr\"]]"
  end
  it "namedEntities:Named entity: nrArr; with a semi-colon" do
    assert_lexes "&nrArr;", "[[\"Character\",\"⇏\"]]"
  end
  it "namedEntities:Bad named entity: nrarr without a semi-colon" do
    assert_lexes "&nrarr", "[[\"Character\",\"&nrarr\"]]"
  end
  it "namedEntities:Named entity: nrarr; with a semi-colon" do
    assert_lexes "&nrarr;", "[[\"Character\",\"↛\"]]"
  end
  it "namedEntities:Bad named entity: nrarrc without a semi-colon" do
    assert_lexes "&nrarrc", "[[\"Character\",\"&nrarrc\"]]"
  end
  it "namedEntities:Named entity: nrarrc; with a semi-colon" do
    assert_lexes "&nrarrc;", "[[\"Character\",\"⤳̸\"]]"
  end
  it "namedEntities:Bad named entity: nrarrw without a semi-colon" do
    assert_lexes "&nrarrw", "[[\"Character\",\"&nrarrw\"]]"
  end
  it "namedEntities:Named entity: nrarrw; with a semi-colon" do
    assert_lexes "&nrarrw;", "[[\"Character\",\"↝̸\"]]"
  end
  it "namedEntities:Bad named entity: nrightarrow without a semi-colon" do
    assert_lexes "&nrightarrow", "[[\"Character\",\"&nrightarrow\"]]"
  end
  it "namedEntities:Named entity: nrightarrow; with a semi-colon" do
    assert_lexes "&nrightarrow;", "[[\"Character\",\"↛\"]]"
  end
  it "namedEntities:Bad named entity: nrtri without a semi-colon" do
    assert_lexes "&nrtri", "[[\"Character\",\"&nrtri\"]]"
  end
  it "namedEntities:Named entity: nrtri; with a semi-colon" do
    assert_lexes "&nrtri;", "[[\"Character\",\"⋫\"]]"
  end
  it "namedEntities:Bad named entity: nrtrie without a semi-colon" do
    assert_lexes "&nrtrie", "[[\"Character\",\"&nrtrie\"]]"
  end
  it "namedEntities:Named entity: nrtrie; with a semi-colon" do
    assert_lexes "&nrtrie;", "[[\"Character\",\"⋭\"]]"
  end
  it "namedEntities:Bad named entity: nsc without a semi-colon" do
    assert_lexes "&nsc", "[[\"Character\",\"&nsc\"]]"
  end
  it "namedEntities:Named entity: nsc; with a semi-colon" do
    assert_lexes "&nsc;", "[[\"Character\",\"⊁\"]]"
  end
  it "namedEntities:Bad named entity: nsccue without a semi-colon" do
    assert_lexes "&nsccue", "[[\"Character\",\"&nsccue\"]]"
  end
  it "namedEntities:Named entity: nsccue; with a semi-colon" do
    assert_lexes "&nsccue;", "[[\"Character\",\"⋡\"]]"
  end
  it "namedEntities:Bad named entity: nsce without a semi-colon" do
    assert_lexes "&nsce", "[[\"Character\",\"&nsce\"]]"
  end
  it "namedEntities:Named entity: nsce; with a semi-colon" do
    assert_lexes "&nsce;", "[[\"Character\",\"⪰̸\"]]"
  end
  it "namedEntities:Bad named entity: nscr without a semi-colon" do
    assert_lexes "&nscr", "[[\"Character\",\"&nscr\"]]"
  end
  it "namedEntities:Named entity: nscr; with a semi-colon" do
    assert_lexes "&nscr;", "[[\"Character\",\"𝓃\"]]"
  end
  it "namedEntities:Bad named entity: nshortmid without a semi-colon" do
    assert_lexes "&nshortmid", "[[\"Character\",\"&nshortmid\"]]"
  end
  it "namedEntities:Named entity: nshortmid; with a semi-colon" do
    assert_lexes "&nshortmid;", "[[\"Character\",\"∤\"]]"
  end
  it "namedEntities:Bad named entity: nshortparallel without a semi-colon" do
    assert_lexes "&nshortparallel", "[[\"Character\",\"&nshortparallel\"]]"
  end
  it "namedEntities:Named entity: nshortparallel; with a semi-colon" do
    assert_lexes "&nshortparallel;", "[[\"Character\",\"∦\"]]"
  end
  it "namedEntities:Bad named entity: nsim without a semi-colon" do
    assert_lexes "&nsim", "[[\"Character\",\"&nsim\"]]"
  end
  it "namedEntities:Named entity: nsim; with a semi-colon" do
    assert_lexes "&nsim;", "[[\"Character\",\"≁\"]]"
  end
  it "namedEntities:Bad named entity: nsime without a semi-colon" do
    assert_lexes "&nsime", "[[\"Character\",\"&nsime\"]]"
  end
  it "namedEntities:Named entity: nsime; with a semi-colon" do
    assert_lexes "&nsime;", "[[\"Character\",\"≄\"]]"
  end
  it "namedEntities:Bad named entity: nsimeq without a semi-colon" do
    assert_lexes "&nsimeq", "[[\"Character\",\"&nsimeq\"]]"
  end
  it "namedEntities:Named entity: nsimeq; with a semi-colon" do
    assert_lexes "&nsimeq;", "[[\"Character\",\"≄\"]]"
  end
  it "namedEntities:Bad named entity: nsmid without a semi-colon" do
    assert_lexes "&nsmid", "[[\"Character\",\"&nsmid\"]]"
  end
  it "namedEntities:Named entity: nsmid; with a semi-colon" do
    assert_lexes "&nsmid;", "[[\"Character\",\"∤\"]]"
  end
  it "namedEntities:Bad named entity: nspar without a semi-colon" do
    assert_lexes "&nspar", "[[\"Character\",\"&nspar\"]]"
  end
  it "namedEntities:Named entity: nspar; with a semi-colon" do
    assert_lexes "&nspar;", "[[\"Character\",\"∦\"]]"
  end
  it "namedEntities:Bad named entity: nsqsube without a semi-colon" do
    assert_lexes "&nsqsube", "[[\"Character\",\"&nsqsube\"]]"
  end
  it "namedEntities:Named entity: nsqsube; with a semi-colon" do
    assert_lexes "&nsqsube;", "[[\"Character\",\"⋢\"]]"
  end
  it "namedEntities:Bad named entity: nsqsupe without a semi-colon" do
    assert_lexes "&nsqsupe", "[[\"Character\",\"&nsqsupe\"]]"
  end
  it "namedEntities:Named entity: nsqsupe; with a semi-colon" do
    assert_lexes "&nsqsupe;", "[[\"Character\",\"⋣\"]]"
  end
  it "namedEntities:Bad named entity: nsub without a semi-colon" do
    assert_lexes "&nsub", "[[\"Character\",\"&nsub\"]]"
  end
  it "namedEntities:Named entity: nsub; with a semi-colon" do
    assert_lexes "&nsub;", "[[\"Character\",\"⊄\"]]"
  end
  it "namedEntities:Bad named entity: nsubE without a semi-colon" do
    assert_lexes "&nsubE", "[[\"Character\",\"&nsubE\"]]"
  end
  it "namedEntities:Named entity: nsubE; with a semi-colon" do
    assert_lexes "&nsubE;", "[[\"Character\",\"⫅̸\"]]"
  end
  it "namedEntities:Bad named entity: nsube without a semi-colon" do
    assert_lexes "&nsube", "[[\"Character\",\"&nsube\"]]"
  end
  it "namedEntities:Named entity: nsube; with a semi-colon" do
    assert_lexes "&nsube;", "[[\"Character\",\"⊈\"]]"
  end
  it "namedEntities:Bad named entity: nsubset without a semi-colon" do
    assert_lexes "&nsubset", "[[\"Character\",\"&nsubset\"]]"
  end
  it "namedEntities:Named entity: nsubset; with a semi-colon" do
    assert_lexes "&nsubset;", "[[\"Character\",\"⊂⃒\"]]"
  end
  it "namedEntities:Bad named entity: nsubseteq without a semi-colon" do
    assert_lexes "&nsubseteq", "[[\"Character\",\"&nsubseteq\"]]"
  end
  it "namedEntities:Named entity: nsubseteq; with a semi-colon" do
    assert_lexes "&nsubseteq;", "[[\"Character\",\"⊈\"]]"
  end
  it "namedEntities:Bad named entity: nsubseteqq without a semi-colon" do
    assert_lexes "&nsubseteqq", "[[\"Character\",\"&nsubseteqq\"]]"
  end
  it "namedEntities:Named entity: nsubseteqq; with a semi-colon" do
    assert_lexes "&nsubseteqq;", "[[\"Character\",\"⫅̸\"]]"
  end
  it "namedEntities:Bad named entity: nsucc without a semi-colon" do
    assert_lexes "&nsucc", "[[\"Character\",\"&nsucc\"]]"
  end
  it "namedEntities:Named entity: nsucc; with a semi-colon" do
    assert_lexes "&nsucc;", "[[\"Character\",\"⊁\"]]"
  end
  it "namedEntities:Bad named entity: nsucceq without a semi-colon" do
    assert_lexes "&nsucceq", "[[\"Character\",\"&nsucceq\"]]"
  end
  it "namedEntities:Named entity: nsucceq; with a semi-colon" do
    assert_lexes "&nsucceq;", "[[\"Character\",\"⪰̸\"]]"
  end
  it "namedEntities:Bad named entity: nsup without a semi-colon" do
    assert_lexes "&nsup", "[[\"Character\",\"&nsup\"]]"
  end
  it "namedEntities:Named entity: nsup; with a semi-colon" do
    assert_lexes "&nsup;", "[[\"Character\",\"⊅\"]]"
  end
  it "namedEntities:Bad named entity: nsupE without a semi-colon" do
    assert_lexes "&nsupE", "[[\"Character\",\"&nsupE\"]]"
  end
  it "namedEntities:Named entity: nsupE; with a semi-colon" do
    assert_lexes "&nsupE;", "[[\"Character\",\"⫆̸\"]]"
  end
  it "namedEntities:Bad named entity: nsupe without a semi-colon" do
    assert_lexes "&nsupe", "[[\"Character\",\"&nsupe\"]]"
  end
  it "namedEntities:Named entity: nsupe; with a semi-colon" do
    assert_lexes "&nsupe;", "[[\"Character\",\"⊉\"]]"
  end
  it "namedEntities:Bad named entity: nsupset without a semi-colon" do
    assert_lexes "&nsupset", "[[\"Character\",\"&nsupset\"]]"
  end
  it "namedEntities:Named entity: nsupset; with a semi-colon" do
    assert_lexes "&nsupset;", "[[\"Character\",\"⊃⃒\"]]"
  end
  it "namedEntities:Bad named entity: nsupseteq without a semi-colon" do
    assert_lexes "&nsupseteq", "[[\"Character\",\"&nsupseteq\"]]"
  end
  it "namedEntities:Named entity: nsupseteq; with a semi-colon" do
    assert_lexes "&nsupseteq;", "[[\"Character\",\"⊉\"]]"
  end
  it "namedEntities:Bad named entity: nsupseteqq without a semi-colon" do
    assert_lexes "&nsupseteqq", "[[\"Character\",\"&nsupseteqq\"]]"
  end
  it "namedEntities:Named entity: nsupseteqq; with a semi-colon" do
    assert_lexes "&nsupseteqq;", "[[\"Character\",\"⫆̸\"]]"
  end
  it "namedEntities:Bad named entity: ntgl without a semi-colon" do
    assert_lexes "&ntgl", "[[\"Character\",\"&ntgl\"]]"
  end
  it "namedEntities:Named entity: ntgl; with a semi-colon" do
    assert_lexes "&ntgl;", "[[\"Character\",\"≹\"]]"
  end
  it "namedEntities:Named entity: ntilde without a semi-colon" do
    assert_lexes "&ntilde", "[[\"Character\",\"ñ\"]]"
  end
  it "namedEntities:Named entity: ntilde; with a semi-colon" do
    assert_lexes "&ntilde;", "[[\"Character\",\"ñ\"]]"
  end
  it "namedEntities:Bad named entity: ntlg without a semi-colon" do
    assert_lexes "&ntlg", "[[\"Character\",\"&ntlg\"]]"
  end
  it "namedEntities:Named entity: ntlg; with a semi-colon" do
    assert_lexes "&ntlg;", "[[\"Character\",\"≸\"]]"
  end
  it "namedEntities:Bad named entity: ntriangleleft without a semi-colon" do
    assert_lexes "&ntriangleleft", "[[\"Character\",\"&ntriangleleft\"]]"
  end
  it "namedEntities:Named entity: ntriangleleft; with a semi-colon" do
    assert_lexes "&ntriangleleft;", "[[\"Character\",\"⋪\"]]"
  end
  it "namedEntities:Bad named entity: ntrianglelefteq without a semi-colon" do
    assert_lexes "&ntrianglelefteq", "[[\"Character\",\"&ntrianglelefteq\"]]"
  end
  it "namedEntities:Named entity: ntrianglelefteq; with a semi-colon" do
    assert_lexes "&ntrianglelefteq;", "[[\"Character\",\"⋬\"]]"
  end
  it "namedEntities:Bad named entity: ntriangleright without a semi-colon" do
    assert_lexes "&ntriangleright", "[[\"Character\",\"&ntriangleright\"]]"
  end
  it "namedEntities:Named entity: ntriangleright; with a semi-colon" do
    assert_lexes "&ntriangleright;", "[[\"Character\",\"⋫\"]]"
  end
  it "namedEntities:Bad named entity: ntrianglerighteq without a semi-colon" do
    assert_lexes "&ntrianglerighteq", "[[\"Character\",\"&ntrianglerighteq\"]]"
  end
  it "namedEntities:Named entity: ntrianglerighteq; with a semi-colon" do
    assert_lexes "&ntrianglerighteq;", "[[\"Character\",\"⋭\"]]"
  end
  it "namedEntities:Bad named entity: nu without a semi-colon" do
    assert_lexes "&nu", "[[\"Character\",\"&nu\"]]"
  end
  it "namedEntities:Named entity: nu; with a semi-colon" do
    assert_lexes "&nu;", "[[\"Character\",\"ν\"]]"
  end
  it "namedEntities:Bad named entity: num without a semi-colon" do
    assert_lexes "&num", "[[\"Character\",\"&num\"]]"
  end
  it "namedEntities:Named entity: num; with a semi-colon" do
    assert_lexes "&num;", "[[\"Character\",\"#\"]]"
  end
  it "namedEntities:Bad named entity: numero without a semi-colon" do
    assert_lexes "&numero", "[[\"Character\",\"&numero\"]]"
  end
  it "namedEntities:Named entity: numero; with a semi-colon" do
    assert_lexes "&numero;", "[[\"Character\",\"№\"]]"
  end
  it "namedEntities:Bad named entity: numsp without a semi-colon" do
    assert_lexes "&numsp", "[[\"Character\",\"&numsp\"]]"
  end
  it "namedEntities:Named entity: numsp; with a semi-colon" do
    assert_lexes "&numsp;", "[[\"Character\",\"\u2007\"]]"
  end
  it "namedEntities:Bad named entity: nvDash without a semi-colon" do
    assert_lexes "&nvDash", "[[\"Character\",\"&nvDash\"]]"
  end
  it "namedEntities:Named entity: nvDash; with a semi-colon" do
    assert_lexes "&nvDash;", "[[\"Character\",\"⊭\"]]"
  end
  it "namedEntities:Bad named entity: nvHarr without a semi-colon" do
    assert_lexes "&nvHarr", "[[\"Character\",\"&nvHarr\"]]"
  end
  it "namedEntities:Named entity: nvHarr; with a semi-colon" do
    assert_lexes "&nvHarr;", "[[\"Character\",\"⤄\"]]"
  end
  it "namedEntities:Bad named entity: nvap without a semi-colon" do
    assert_lexes "&nvap", "[[\"Character\",\"&nvap\"]]"
  end
  it "namedEntities:Named entity: nvap; with a semi-colon" do
    assert_lexes "&nvap;", "[[\"Character\",\"≍⃒\"]]"
  end
  it "namedEntities:Bad named entity: nvdash without a semi-colon" do
    assert_lexes "&nvdash", "[[\"Character\",\"&nvdash\"]]"
  end
  it "namedEntities:Named entity: nvdash; with a semi-colon" do
    assert_lexes "&nvdash;", "[[\"Character\",\"⊬\"]]"
  end
  it "namedEntities:Bad named entity: nvge without a semi-colon" do
    assert_lexes "&nvge", "[[\"Character\",\"&nvge\"]]"
  end
  it "namedEntities:Named entity: nvge; with a semi-colon" do
    assert_lexes "&nvge;", "[[\"Character\",\"≥⃒\"]]"
  end
  it "namedEntities:Bad named entity: nvgt without a semi-colon" do
    assert_lexes "&nvgt", "[[\"Character\",\"&nvgt\"]]"
  end
  it "namedEntities:Named entity: nvgt; with a semi-colon" do
    assert_lexes "&nvgt;", "[[\"Character\",\">⃒\"]]"
  end
  it "namedEntities:Bad named entity: nvinfin without a semi-colon" do
    assert_lexes "&nvinfin", "[[\"Character\",\"&nvinfin\"]]"
  end
  it "namedEntities:Named entity: nvinfin; with a semi-colon" do
    assert_lexes "&nvinfin;", "[[\"Character\",\"⧞\"]]"
  end
  it "namedEntities:Bad named entity: nvlArr without a semi-colon" do
    assert_lexes "&nvlArr", "[[\"Character\",\"&nvlArr\"]]"
  end
  it "namedEntities:Named entity: nvlArr; with a semi-colon" do
    assert_lexes "&nvlArr;", "[[\"Character\",\"⤂\"]]"
  end
  it "namedEntities:Bad named entity: nvle without a semi-colon" do
    assert_lexes "&nvle", "[[\"Character\",\"&nvle\"]]"
  end
  it "namedEntities:Named entity: nvle; with a semi-colon" do
    assert_lexes "&nvle;", "[[\"Character\",\"≤⃒\"]]"
  end
  it "namedEntities:Bad named entity: nvlt without a semi-colon" do
    assert_lexes "&nvlt", "[[\"Character\",\"&nvlt\"]]"
  end
  it "namedEntities:Named entity: nvlt; with a semi-colon" do
    assert_lexes "&nvlt;", "[[\"Character\",\"<⃒\"]]"
  end
  it "namedEntities:Bad named entity: nvltrie without a semi-colon" do
    assert_lexes "&nvltrie", "[[\"Character\",\"&nvltrie\"]]"
  end
  it "namedEntities:Named entity: nvltrie; with a semi-colon" do
    assert_lexes "&nvltrie;", "[[\"Character\",\"⊴⃒\"]]"
  end
  it "namedEntities:Bad named entity: nvrArr without a semi-colon" do
    assert_lexes "&nvrArr", "[[\"Character\",\"&nvrArr\"]]"
  end
  it "namedEntities:Named entity: nvrArr; with a semi-colon" do
    assert_lexes "&nvrArr;", "[[\"Character\",\"⤃\"]]"
  end
  it "namedEntities:Bad named entity: nvrtrie without a semi-colon" do
    assert_lexes "&nvrtrie", "[[\"Character\",\"&nvrtrie\"]]"
  end
  it "namedEntities:Named entity: nvrtrie; with a semi-colon" do
    assert_lexes "&nvrtrie;", "[[\"Character\",\"⊵⃒\"]]"
  end
  it "namedEntities:Bad named entity: nvsim without a semi-colon" do
    assert_lexes "&nvsim", "[[\"Character\",\"&nvsim\"]]"
  end
  it "namedEntities:Named entity: nvsim; with a semi-colon" do
    assert_lexes "&nvsim;", "[[\"Character\",\"∼⃒\"]]"
  end
  it "namedEntities:Bad named entity: nwArr without a semi-colon" do
    assert_lexes "&nwArr", "[[\"Character\",\"&nwArr\"]]"
  end
  it "namedEntities:Named entity: nwArr; with a semi-colon" do
    assert_lexes "&nwArr;", "[[\"Character\",\"⇖\"]]"
  end
  it "namedEntities:Bad named entity: nwarhk without a semi-colon" do
    assert_lexes "&nwarhk", "[[\"Character\",\"&nwarhk\"]]"
  end
  it "namedEntities:Named entity: nwarhk; with a semi-colon" do
    assert_lexes "&nwarhk;", "[[\"Character\",\"⤣\"]]"
  end
  it "namedEntities:Bad named entity: nwarr without a semi-colon" do
    assert_lexes "&nwarr", "[[\"Character\",\"&nwarr\"]]"
  end
  it "namedEntities:Named entity: nwarr; with a semi-colon" do
    assert_lexes "&nwarr;", "[[\"Character\",\"↖\"]]"
  end
  it "namedEntities:Bad named entity: nwarrow without a semi-colon" do
    assert_lexes "&nwarrow", "[[\"Character\",\"&nwarrow\"]]"
  end
  it "namedEntities:Named entity: nwarrow; with a semi-colon" do
    assert_lexes "&nwarrow;", "[[\"Character\",\"↖\"]]"
  end
  it "namedEntities:Bad named entity: nwnear without a semi-colon" do
    assert_lexes "&nwnear", "[[\"Character\",\"&nwnear\"]]"
  end
  it "namedEntities:Named entity: nwnear; with a semi-colon" do
    assert_lexes "&nwnear;", "[[\"Character\",\"⤧\"]]"
  end
  it "namedEntities:Bad named entity: oS without a semi-colon" do
    assert_lexes "&oS", "[[\"Character\",\"&oS\"]]"
  end
  it "namedEntities:Named entity: oS; with a semi-colon" do
    assert_lexes "&oS;", "[[\"Character\",\"Ⓢ\"]]"
  end
  it "namedEntities:Named entity: oacute without a semi-colon" do
    assert_lexes "&oacute", "[[\"Character\",\"ó\"]]"
  end
  it "namedEntities:Named entity: oacute; with a semi-colon" do
    assert_lexes "&oacute;", "[[\"Character\",\"ó\"]]"
  end
  it "namedEntities:Bad named entity: oast without a semi-colon" do
    assert_lexes "&oast", "[[\"Character\",\"&oast\"]]"
  end
  it "namedEntities:Named entity: oast; with a semi-colon" do
    assert_lexes "&oast;", "[[\"Character\",\"⊛\"]]"
  end
  it "namedEntities:Bad named entity: ocir without a semi-colon" do
    assert_lexes "&ocir", "[[\"Character\",\"&ocir\"]]"
  end
  it "namedEntities:Named entity: ocir; with a semi-colon" do
    assert_lexes "&ocir;", "[[\"Character\",\"⊚\"]]"
  end
  it "namedEntities:Named entity: ocirc without a semi-colon" do
    assert_lexes "&ocirc", "[[\"Character\",\"ô\"]]"
  end
  it "namedEntities:Named entity: ocirc; with a semi-colon" do
    assert_lexes "&ocirc;", "[[\"Character\",\"ô\"]]"
  end
  it "namedEntities:Bad named entity: ocy without a semi-colon" do
    assert_lexes "&ocy", "[[\"Character\",\"&ocy\"]]"
  end
  it "namedEntities:Named entity: ocy; with a semi-colon" do
    assert_lexes "&ocy;", "[[\"Character\",\"о\"]]"
  end
  it "namedEntities:Bad named entity: odash without a semi-colon" do
    assert_lexes "&odash", "[[\"Character\",\"&odash\"]]"
  end
  it "namedEntities:Named entity: odash; with a semi-colon" do
    assert_lexes "&odash;", "[[\"Character\",\"⊝\"]]"
  end
  it "namedEntities:Bad named entity: odblac without a semi-colon" do
    assert_lexes "&odblac", "[[\"Character\",\"&odblac\"]]"
  end
  it "namedEntities:Named entity: odblac; with a semi-colon" do
    assert_lexes "&odblac;", "[[\"Character\",\"ő\"]]"
  end
  it "namedEntities:Bad named entity: odiv without a semi-colon" do
    assert_lexes "&odiv", "[[\"Character\",\"&odiv\"]]"
  end
  it "namedEntities:Named entity: odiv; with a semi-colon" do
    assert_lexes "&odiv;", "[[\"Character\",\"⨸\"]]"
  end
  it "namedEntities:Bad named entity: odot without a semi-colon" do
    assert_lexes "&odot", "[[\"Character\",\"&odot\"]]"
  end
  it "namedEntities:Named entity: odot; with a semi-colon" do
    assert_lexes "&odot;", "[[\"Character\",\"⊙\"]]"
  end
  it "namedEntities:Bad named entity: odsold without a semi-colon" do
    assert_lexes "&odsold", "[[\"Character\",\"&odsold\"]]"
  end
  it "namedEntities:Named entity: odsold; with a semi-colon" do
    assert_lexes "&odsold;", "[[\"Character\",\"⦼\"]]"
  end
  it "namedEntities:Bad named entity: oelig without a semi-colon" do
    assert_lexes "&oelig", "[[\"Character\",\"&oelig\"]]"
  end
  it "namedEntities:Named entity: oelig; with a semi-colon" do
    assert_lexes "&oelig;", "[[\"Character\",\"œ\"]]"
  end
  it "namedEntities:Bad named entity: ofcir without a semi-colon" do
    assert_lexes "&ofcir", "[[\"Character\",\"&ofcir\"]]"
  end
  it "namedEntities:Named entity: ofcir; with a semi-colon" do
    assert_lexes "&ofcir;", "[[\"Character\",\"⦿\"]]"
  end
  it "namedEntities:Bad named entity: ofr without a semi-colon" do
    assert_lexes "&ofr", "[[\"Character\",\"&ofr\"]]"
  end
  it "namedEntities:Named entity: ofr; with a semi-colon" do
    assert_lexes "&ofr;", "[[\"Character\",\"𝔬\"]]"
  end
  it "namedEntities:Bad named entity: ogon without a semi-colon" do
    assert_lexes "&ogon", "[[\"Character\",\"&ogon\"]]"
  end
  it "namedEntities:Named entity: ogon; with a semi-colon" do
    assert_lexes "&ogon;", "[[\"Character\",\"˛\"]]"
  end
  it "namedEntities:Named entity: ograve without a semi-colon" do
    assert_lexes "&ograve", "[[\"Character\",\"ò\"]]"
  end
  it "namedEntities:Named entity: ograve; with a semi-colon" do
    assert_lexes "&ograve;", "[[\"Character\",\"ò\"]]"
  end
  it "namedEntities:Bad named entity: ogt without a semi-colon" do
    assert_lexes "&ogt", "[[\"Character\",\"&ogt\"]]"
  end
  it "namedEntities:Named entity: ogt; with a semi-colon" do
    assert_lexes "&ogt;", "[[\"Character\",\"⧁\"]]"
  end
  it "namedEntities:Bad named entity: ohbar without a semi-colon" do
    assert_lexes "&ohbar", "[[\"Character\",\"&ohbar\"]]"
  end
  it "namedEntities:Named entity: ohbar; with a semi-colon" do
    assert_lexes "&ohbar;", "[[\"Character\",\"⦵\"]]"
  end
  it "namedEntities:Bad named entity: ohm without a semi-colon" do
    assert_lexes "&ohm", "[[\"Character\",\"&ohm\"]]"
  end
  it "namedEntities:Named entity: ohm; with a semi-colon" do
    assert_lexes "&ohm;", "[[\"Character\",\"Ω\"]]"
  end
  it "namedEntities:Bad named entity: oint without a semi-colon" do
    assert_lexes "&oint", "[[\"Character\",\"&oint\"]]"
  end
  it "namedEntities:Named entity: oint; with a semi-colon" do
    assert_lexes "&oint;", "[[\"Character\",\"∮\"]]"
  end
  it "namedEntities:Bad named entity: olarr without a semi-colon" do
    assert_lexes "&olarr", "[[\"Character\",\"&olarr\"]]"
  end
  it "namedEntities:Named entity: olarr; with a semi-colon" do
    assert_lexes "&olarr;", "[[\"Character\",\"↺\"]]"
  end
  it "namedEntities:Bad named entity: olcir without a semi-colon" do
    assert_lexes "&olcir", "[[\"Character\",\"&olcir\"]]"
  end
  it "namedEntities:Named entity: olcir; with a semi-colon" do
    assert_lexes "&olcir;", "[[\"Character\",\"⦾\"]]"
  end
  it "namedEntities:Bad named entity: olcross without a semi-colon" do
    assert_lexes "&olcross", "[[\"Character\",\"&olcross\"]]"
  end
  it "namedEntities:Named entity: olcross; with a semi-colon" do
    assert_lexes "&olcross;", "[[\"Character\",\"⦻\"]]"
  end
  it "namedEntities:Bad named entity: oline without a semi-colon" do
    assert_lexes "&oline", "[[\"Character\",\"&oline\"]]"
  end
  it "namedEntities:Named entity: oline; with a semi-colon" do
    assert_lexes "&oline;", "[[\"Character\",\"‾\"]]"
  end
  it "namedEntities:Bad named entity: olt without a semi-colon" do
    assert_lexes "&olt", "[[\"Character\",\"&olt\"]]"
  end
  it "namedEntities:Named entity: olt; with a semi-colon" do
    assert_lexes "&olt;", "[[\"Character\",\"⧀\"]]"
  end
  it "namedEntities:Bad named entity: omacr without a semi-colon" do
    assert_lexes "&omacr", "[[\"Character\",\"&omacr\"]]"
  end
  it "namedEntities:Named entity: omacr; with a semi-colon" do
    assert_lexes "&omacr;", "[[\"Character\",\"ō\"]]"
  end
  it "namedEntities:Bad named entity: omega without a semi-colon" do
    assert_lexes "&omega", "[[\"Character\",\"&omega\"]]"
  end
  it "namedEntities:Named entity: omega; with a semi-colon" do
    assert_lexes "&omega;", "[[\"Character\",\"ω\"]]"
  end
  it "namedEntities:Bad named entity: omicron without a semi-colon" do
    assert_lexes "&omicron", "[[\"Character\",\"&omicron\"]]"
  end
  it "namedEntities:Named entity: omicron; with a semi-colon" do
    assert_lexes "&omicron;", "[[\"Character\",\"ο\"]]"
  end
  it "namedEntities:Bad named entity: omid without a semi-colon" do
    assert_lexes "&omid", "[[\"Character\",\"&omid\"]]"
  end
  it "namedEntities:Named entity: omid; with a semi-colon" do
    assert_lexes "&omid;", "[[\"Character\",\"⦶\"]]"
  end
  it "namedEntities:Bad named entity: ominus without a semi-colon" do
    assert_lexes "&ominus", "[[\"Character\",\"&ominus\"]]"
  end
  it "namedEntities:Named entity: ominus; with a semi-colon" do
    assert_lexes "&ominus;", "[[\"Character\",\"⊖\"]]"
  end
  it "namedEntities:Bad named entity: oopf without a semi-colon" do
    assert_lexes "&oopf", "[[\"Character\",\"&oopf\"]]"
  end
  it "namedEntities:Named entity: oopf; with a semi-colon" do
    assert_lexes "&oopf;", "[[\"Character\",\"𝕠\"]]"
  end
  it "namedEntities:Bad named entity: opar without a semi-colon" do
    assert_lexes "&opar", "[[\"Character\",\"&opar\"]]"
  end
  it "namedEntities:Named entity: opar; with a semi-colon" do
    assert_lexes "&opar;", "[[\"Character\",\"⦷\"]]"
  end
  it "namedEntities:Bad named entity: operp without a semi-colon" do
    assert_lexes "&operp", "[[\"Character\",\"&operp\"]]"
  end
  it "namedEntities:Named entity: operp; with a semi-colon" do
    assert_lexes "&operp;", "[[\"Character\",\"⦹\"]]"
  end
  it "namedEntities:Bad named entity: oplus without a semi-colon" do
    assert_lexes "&oplus", "[[\"Character\",\"&oplus\"]]"
  end
  it "namedEntities:Named entity: oplus; with a semi-colon" do
    assert_lexes "&oplus;", "[[\"Character\",\"⊕\"]]"
  end
  it "namedEntities:Bad named entity: or without a semi-colon" do
    assert_lexes "&or", "[[\"Character\",\"&or\"]]"
  end
  it "namedEntities:Named entity: or; with a semi-colon" do
    assert_lexes "&or;", "[[\"Character\",\"∨\"]]"
  end
  it "namedEntities:Bad named entity: orarr without a semi-colon" do
    assert_lexes "&orarr", "[[\"Character\",\"&orarr\"]]"
  end
  it "namedEntities:Named entity: orarr; with a semi-colon" do
    assert_lexes "&orarr;", "[[\"Character\",\"↻\"]]"
  end
  it "namedEntities:Bad named entity: ord without a semi-colon" do
    assert_lexes "&ord", "[[\"Character\",\"&ord\"]]"
  end
  it "namedEntities:Named entity: ord; with a semi-colon" do
    assert_lexes "&ord;", "[[\"Character\",\"⩝\"]]"
  end
  it "namedEntities:Bad named entity: order without a semi-colon" do
    assert_lexes "&order", "[[\"Character\",\"&order\"]]"
  end
  it "namedEntities:Named entity: order; with a semi-colon" do
    assert_lexes "&order;", "[[\"Character\",\"ℴ\"]]"
  end
  it "namedEntities:Bad named entity: orderof without a semi-colon" do
    assert_lexes "&orderof", "[[\"Character\",\"&orderof\"]]"
  end
  it "namedEntities:Named entity: orderof; with a semi-colon" do
    assert_lexes "&orderof;", "[[\"Character\",\"ℴ\"]]"
  end
  it "namedEntities:Named entity: ordf without a semi-colon" do
    assert_lexes "&ordf", "[[\"Character\",\"ª\"]]"
  end
  it "namedEntities:Named entity: ordf; with a semi-colon" do
    assert_lexes "&ordf;", "[[\"Character\",\"ª\"]]"
  end
  it "namedEntities:Named entity: ordm without a semi-colon" do
    assert_lexes "&ordm", "[[\"Character\",\"º\"]]"
  end
  it "namedEntities:Named entity: ordm; with a semi-colon" do
    assert_lexes "&ordm;", "[[\"Character\",\"º\"]]"
  end
  it "namedEntities:Bad named entity: origof without a semi-colon" do
    assert_lexes "&origof", "[[\"Character\",\"&origof\"]]"
  end
  it "namedEntities:Named entity: origof; with a semi-colon" do
    assert_lexes "&origof;", "[[\"Character\",\"⊶\"]]"
  end
  it "namedEntities:Bad named entity: oror without a semi-colon" do
    assert_lexes "&oror", "[[\"Character\",\"&oror\"]]"
  end
  it "namedEntities:Named entity: oror; with a semi-colon" do
    assert_lexes "&oror;", "[[\"Character\",\"⩖\"]]"
  end
  it "namedEntities:Bad named entity: orslope without a semi-colon" do
    assert_lexes "&orslope", "[[\"Character\",\"&orslope\"]]"
  end
  it "namedEntities:Named entity: orslope; with a semi-colon" do
    assert_lexes "&orslope;", "[[\"Character\",\"⩗\"]]"
  end
  it "namedEntities:Bad named entity: orv without a semi-colon" do
    assert_lexes "&orv", "[[\"Character\",\"&orv\"]]"
  end
  it "namedEntities:Named entity: orv; with a semi-colon" do
    assert_lexes "&orv;", "[[\"Character\",\"⩛\"]]"
  end
  it "namedEntities:Bad named entity: oscr without a semi-colon" do
    assert_lexes "&oscr", "[[\"Character\",\"&oscr\"]]"
  end
  it "namedEntities:Named entity: oscr; with a semi-colon" do
    assert_lexes "&oscr;", "[[\"Character\",\"ℴ\"]]"
  end
  it "namedEntities:Named entity: oslash without a semi-colon" do
    assert_lexes "&oslash", "[[\"Character\",\"ø\"]]"
  end
  it "namedEntities:Named entity: oslash; with a semi-colon" do
    assert_lexes "&oslash;", "[[\"Character\",\"ø\"]]"
  end
  it "namedEntities:Bad named entity: osol without a semi-colon" do
    assert_lexes "&osol", "[[\"Character\",\"&osol\"]]"
  end
  it "namedEntities:Named entity: osol; with a semi-colon" do
    assert_lexes "&osol;", "[[\"Character\",\"⊘\"]]"
  end
  it "namedEntities:Named entity: otilde without a semi-colon" do
    assert_lexes "&otilde", "[[\"Character\",\"õ\"]]"
  end
  it "namedEntities:Named entity: otilde; with a semi-colon" do
    assert_lexes "&otilde;", "[[\"Character\",\"õ\"]]"
  end
  it "namedEntities:Bad named entity: otimes without a semi-colon" do
    assert_lexes "&otimes", "[[\"Character\",\"&otimes\"]]"
  end
  it "namedEntities:Named entity: otimes; with a semi-colon" do
    assert_lexes "&otimes;", "[[\"Character\",\"⊗\"]]"
  end
  it "namedEntities:Bad named entity: otimesas without a semi-colon" do
    assert_lexes "&otimesas", "[[\"Character\",\"&otimesas\"]]"
  end
  it "namedEntities:Named entity: otimesas; with a semi-colon" do
    assert_lexes "&otimesas;", "[[\"Character\",\"⨶\"]]"
  end
  it "namedEntities:Named entity: ouml without a semi-colon" do
    assert_lexes "&ouml", "[[\"Character\",\"ö\"]]"
  end
  it "namedEntities:Named entity: ouml; with a semi-colon" do
    assert_lexes "&ouml;", "[[\"Character\",\"ö\"]]"
  end
  it "namedEntities:Bad named entity: ovbar without a semi-colon" do
    assert_lexes "&ovbar", "[[\"Character\",\"&ovbar\"]]"
  end
  it "namedEntities:Named entity: ovbar; with a semi-colon" do
    assert_lexes "&ovbar;", "[[\"Character\",\"⌽\"]]"
  end
  it "namedEntities:Bad named entity: par without a semi-colon" do
    assert_lexes "&par", "[[\"Character\",\"&par\"]]"
  end
  it "namedEntities:Named entity: par; with a semi-colon" do
    assert_lexes "&par;", "[[\"Character\",\"∥\"]]"
  end
  it "namedEntities:Named entity: para without a semi-colon" do
    assert_lexes "&para", "[[\"Character\",\"¶\"]]"
  end
  it "namedEntities:Named entity: para; with a semi-colon" do
    assert_lexes "&para;", "[[\"Character\",\"¶\"]]"
  end
  it "namedEntities:Named entity: parallel; with a semi-colon" do
    assert_lexes "&parallel;", "[[\"Character\",\"∥\"]]"
  end
  it "namedEntities:Bad named entity: parsim without a semi-colon" do
    assert_lexes "&parsim", "[[\"Character\",\"&parsim\"]]"
  end
  it "namedEntities:Named entity: parsim; with a semi-colon" do
    assert_lexes "&parsim;", "[[\"Character\",\"⫳\"]]"
  end
  it "namedEntities:Bad named entity: parsl without a semi-colon" do
    assert_lexes "&parsl", "[[\"Character\",\"&parsl\"]]"
  end
  it "namedEntities:Named entity: parsl; with a semi-colon" do
    assert_lexes "&parsl;", "[[\"Character\",\"⫽\"]]"
  end
  it "namedEntities:Bad named entity: part without a semi-colon" do
    assert_lexes "&part", "[[\"Character\",\"&part\"]]"
  end
  it "namedEntities:Named entity: part; with a semi-colon" do
    assert_lexes "&part;", "[[\"Character\",\"∂\"]]"
  end
  it "namedEntities:Bad named entity: pcy without a semi-colon" do
    assert_lexes "&pcy", "[[\"Character\",\"&pcy\"]]"
  end
  it "namedEntities:Named entity: pcy; with a semi-colon" do
    assert_lexes "&pcy;", "[[\"Character\",\"п\"]]"
  end
  it "namedEntities:Bad named entity: percnt without a semi-colon" do
    assert_lexes "&percnt", "[[\"Character\",\"&percnt\"]]"
  end
  it "namedEntities:Named entity: percnt; with a semi-colon" do
    assert_lexes "&percnt;", "[[\"Character\",\"%\"]]"
  end
  it "namedEntities:Bad named entity: period without a semi-colon" do
    assert_lexes "&period", "[[\"Character\",\"&period\"]]"
  end
  it "namedEntities:Named entity: period; with a semi-colon" do
    assert_lexes "&period;", "[[\"Character\",\".\"]]"
  end
  it "namedEntities:Bad named entity: permil without a semi-colon" do
    assert_lexes "&permil", "[[\"Character\",\"&permil\"]]"
  end
  it "namedEntities:Named entity: permil; with a semi-colon" do
    assert_lexes "&permil;", "[[\"Character\",\"‰\"]]"
  end
  it "namedEntities:Bad named entity: perp without a semi-colon" do
    assert_lexes "&perp", "[[\"Character\",\"&perp\"]]"
  end
  it "namedEntities:Named entity: perp; with a semi-colon" do
    assert_lexes "&perp;", "[[\"Character\",\"⊥\"]]"
  end
  it "namedEntities:Bad named entity: pertenk without a semi-colon" do
    assert_lexes "&pertenk", "[[\"Character\",\"&pertenk\"]]"
  end
  it "namedEntities:Named entity: pertenk; with a semi-colon" do
    assert_lexes "&pertenk;", "[[\"Character\",\"‱\"]]"
  end
  it "namedEntities:Bad named entity: pfr without a semi-colon" do
    assert_lexes "&pfr", "[[\"Character\",\"&pfr\"]]"
  end
  it "namedEntities:Named entity: pfr; with a semi-colon" do
    assert_lexes "&pfr;", "[[\"Character\",\"𝔭\"]]"
  end
  it "namedEntities:Bad named entity: phi without a semi-colon" do
    assert_lexes "&phi", "[[\"Character\",\"&phi\"]]"
  end
  it "namedEntities:Named entity: phi; with a semi-colon" do
    assert_lexes "&phi;", "[[\"Character\",\"φ\"]]"
  end
  it "namedEntities:Bad named entity: phiv without a semi-colon" do
    assert_lexes "&phiv", "[[\"Character\",\"&phiv\"]]"
  end
  it "namedEntities:Named entity: phiv; with a semi-colon" do
    assert_lexes "&phiv;", "[[\"Character\",\"ϕ\"]]"
  end
  it "namedEntities:Bad named entity: phmmat without a semi-colon" do
    assert_lexes "&phmmat", "[[\"Character\",\"&phmmat\"]]"
  end
  it "namedEntities:Named entity: phmmat; with a semi-colon" do
    assert_lexes "&phmmat;", "[[\"Character\",\"ℳ\"]]"
  end
  it "namedEntities:Bad named entity: phone without a semi-colon" do
    assert_lexes "&phone", "[[\"Character\",\"&phone\"]]"
  end
  it "namedEntities:Named entity: phone; with a semi-colon" do
    assert_lexes "&phone;", "[[\"Character\",\"☎\"]]"
  end
  it "namedEntities:Bad named entity: pi without a semi-colon" do
    assert_lexes "&pi", "[[\"Character\",\"&pi\"]]"
  end
  it "namedEntities:Named entity: pi; with a semi-colon" do
    assert_lexes "&pi;", "[[\"Character\",\"π\"]]"
  end
  it "namedEntities:Bad named entity: pitchfork without a semi-colon" do
    assert_lexes "&pitchfork", "[[\"Character\",\"&pitchfork\"]]"
  end
  it "namedEntities:Named entity: pitchfork; with a semi-colon" do
    assert_lexes "&pitchfork;", "[[\"Character\",\"⋔\"]]"
  end
  it "namedEntities:Bad named entity: piv without a semi-colon" do
    assert_lexes "&piv", "[[\"Character\",\"&piv\"]]"
  end
  it "namedEntities:Named entity: piv; with a semi-colon" do
    assert_lexes "&piv;", "[[\"Character\",\"ϖ\"]]"
  end
  it "namedEntities:Bad named entity: planck without a semi-colon" do
    assert_lexes "&planck", "[[\"Character\",\"&planck\"]]"
  end
  it "namedEntities:Named entity: planck; with a semi-colon" do
    assert_lexes "&planck;", "[[\"Character\",\"ℏ\"]]"
  end
  it "namedEntities:Bad named entity: planckh without a semi-colon" do
    assert_lexes "&planckh", "[[\"Character\",\"&planckh\"]]"
  end
  it "namedEntities:Named entity: planckh; with a semi-colon" do
    assert_lexes "&planckh;", "[[\"Character\",\"ℎ\"]]"
  end
  it "namedEntities:Bad named entity: plankv without a semi-colon" do
    assert_lexes "&plankv", "[[\"Character\",\"&plankv\"]]"
  end
  it "namedEntities:Named entity: plankv; with a semi-colon" do
    assert_lexes "&plankv;", "[[\"Character\",\"ℏ\"]]"
  end
  it "namedEntities:Bad named entity: plus without a semi-colon" do
    assert_lexes "&plus", "[[\"Character\",\"&plus\"]]"
  end
  it "namedEntities:Named entity: plus; with a semi-colon" do
    assert_lexes "&plus;", "[[\"Character\",\"+\"]]"
  end
  it "namedEntities:Bad named entity: plusacir without a semi-colon" do
    assert_lexes "&plusacir", "[[\"Character\",\"&plusacir\"]]"
  end
  it "namedEntities:Named entity: plusacir; with a semi-colon" do
    assert_lexes "&plusacir;", "[[\"Character\",\"⨣\"]]"
  end
  it "namedEntities:Bad named entity: plusb without a semi-colon" do
    assert_lexes "&plusb", "[[\"Character\",\"&plusb\"]]"
  end
  it "namedEntities:Named entity: plusb; with a semi-colon" do
    assert_lexes "&plusb;", "[[\"Character\",\"⊞\"]]"
  end
  it "namedEntities:Bad named entity: pluscir without a semi-colon" do
    assert_lexes "&pluscir", "[[\"Character\",\"&pluscir\"]]"
  end
  it "namedEntities:Named entity: pluscir; with a semi-colon" do
    assert_lexes "&pluscir;", "[[\"Character\",\"⨢\"]]"
  end
  it "namedEntities:Bad named entity: plusdo without a semi-colon" do
    assert_lexes "&plusdo", "[[\"Character\",\"&plusdo\"]]"
  end
  it "namedEntities:Named entity: plusdo; with a semi-colon" do
    assert_lexes "&plusdo;", "[[\"Character\",\"∔\"]]"
  end
  it "namedEntities:Bad named entity: plusdu without a semi-colon" do
    assert_lexes "&plusdu", "[[\"Character\",\"&plusdu\"]]"
  end
  it "namedEntities:Named entity: plusdu; with a semi-colon" do
    assert_lexes "&plusdu;", "[[\"Character\",\"⨥\"]]"
  end
  it "namedEntities:Bad named entity: pluse without a semi-colon" do
    assert_lexes "&pluse", "[[\"Character\",\"&pluse\"]]"
  end
  it "namedEntities:Named entity: pluse; with a semi-colon" do
    assert_lexes "&pluse;", "[[\"Character\",\"⩲\"]]"
  end
  it "namedEntities:Named entity: plusmn without a semi-colon" do
    assert_lexes "&plusmn", "[[\"Character\",\"±\"]]"
  end
  it "namedEntities:Named entity: plusmn; with a semi-colon" do
    assert_lexes "&plusmn;", "[[\"Character\",\"±\"]]"
  end
  it "namedEntities:Bad named entity: plussim without a semi-colon" do
    assert_lexes "&plussim", "[[\"Character\",\"&plussim\"]]"
  end
  it "namedEntities:Named entity: plussim; with a semi-colon" do
    assert_lexes "&plussim;", "[[\"Character\",\"⨦\"]]"
  end
  it "namedEntities:Bad named entity: plustwo without a semi-colon" do
    assert_lexes "&plustwo", "[[\"Character\",\"&plustwo\"]]"
  end
  it "namedEntities:Named entity: plustwo; with a semi-colon" do
    assert_lexes "&plustwo;", "[[\"Character\",\"⨧\"]]"
  end
  it "namedEntities:Bad named entity: pm without a semi-colon" do
    assert_lexes "&pm", "[[\"Character\",\"&pm\"]]"
  end
  it "namedEntities:Named entity: pm; with a semi-colon" do
    assert_lexes "&pm;", "[[\"Character\",\"±\"]]"
  end
  it "namedEntities:Bad named entity: pointint without a semi-colon" do
    assert_lexes "&pointint", "[[\"Character\",\"&pointint\"]]"
  end
  it "namedEntities:Named entity: pointint; with a semi-colon" do
    assert_lexes "&pointint;", "[[\"Character\",\"⨕\"]]"
  end
  it "namedEntities:Bad named entity: popf without a semi-colon" do
    assert_lexes "&popf", "[[\"Character\",\"&popf\"]]"
  end
  it "namedEntities:Named entity: popf; with a semi-colon" do
    assert_lexes "&popf;", "[[\"Character\",\"𝕡\"]]"
  end
  it "namedEntities:Named entity: pound without a semi-colon" do
    assert_lexes "&pound", "[[\"Character\",\"£\"]]"
  end
  it "namedEntities:Named entity: pound; with a semi-colon" do
    assert_lexes "&pound;", "[[\"Character\",\"£\"]]"
  end
  it "namedEntities:Bad named entity: pr without a semi-colon" do
    assert_lexes "&pr", "[[\"Character\",\"&pr\"]]"
  end
  it "namedEntities:Named entity: pr; with a semi-colon" do
    assert_lexes "&pr;", "[[\"Character\",\"≺\"]]"
  end
  it "namedEntities:Bad named entity: prE without a semi-colon" do
    assert_lexes "&prE", "[[\"Character\",\"&prE\"]]"
  end
  it "namedEntities:Named entity: prE; with a semi-colon" do
    assert_lexes "&prE;", "[[\"Character\",\"⪳\"]]"
  end
  it "namedEntities:Bad named entity: prap without a semi-colon" do
    assert_lexes "&prap", "[[\"Character\",\"&prap\"]]"
  end
  it "namedEntities:Named entity: prap; with a semi-colon" do
    assert_lexes "&prap;", "[[\"Character\",\"⪷\"]]"
  end
  it "namedEntities:Bad named entity: prcue without a semi-colon" do
    assert_lexes "&prcue", "[[\"Character\",\"&prcue\"]]"
  end
  it "namedEntities:Named entity: prcue; with a semi-colon" do
    assert_lexes "&prcue;", "[[\"Character\",\"≼\"]]"
  end
  it "namedEntities:Bad named entity: pre without a semi-colon" do
    assert_lexes "&pre", "[[\"Character\",\"&pre\"]]"
  end
  it "namedEntities:Named entity: pre; with a semi-colon" do
    assert_lexes "&pre;", "[[\"Character\",\"⪯\"]]"
  end
  it "namedEntities:Bad named entity: prec without a semi-colon" do
    assert_lexes "&prec", "[[\"Character\",\"&prec\"]]"
  end
  it "namedEntities:Named entity: prec; with a semi-colon" do
    assert_lexes "&prec;", "[[\"Character\",\"≺\"]]"
  end
  it "namedEntities:Bad named entity: precapprox without a semi-colon" do
    assert_lexes "&precapprox", "[[\"Character\",\"&precapprox\"]]"
  end
  it "namedEntities:Named entity: precapprox; with a semi-colon" do
    assert_lexes "&precapprox;", "[[\"Character\",\"⪷\"]]"
  end
  it "namedEntities:Bad named entity: preccurlyeq without a semi-colon" do
    assert_lexes "&preccurlyeq", "[[\"Character\",\"&preccurlyeq\"]]"
  end
  it "namedEntities:Named entity: preccurlyeq; with a semi-colon" do
    assert_lexes "&preccurlyeq;", "[[\"Character\",\"≼\"]]"
  end
  it "namedEntities:Bad named entity: preceq without a semi-colon" do
    assert_lexes "&preceq", "[[\"Character\",\"&preceq\"]]"
  end
  it "namedEntities:Named entity: preceq; with a semi-colon" do
    assert_lexes "&preceq;", "[[\"Character\",\"⪯\"]]"
  end
  it "namedEntities:Bad named entity: precnapprox without a semi-colon" do
    assert_lexes "&precnapprox", "[[\"Character\",\"&precnapprox\"]]"
  end
  it "namedEntities:Named entity: precnapprox; with a semi-colon" do
    assert_lexes "&precnapprox;", "[[\"Character\",\"⪹\"]]"
  end
  it "namedEntities:Bad named entity: precneqq without a semi-colon" do
    assert_lexes "&precneqq", "[[\"Character\",\"&precneqq\"]]"
  end
  it "namedEntities:Named entity: precneqq; with a semi-colon" do
    assert_lexes "&precneqq;", "[[\"Character\",\"⪵\"]]"
  end
  it "namedEntities:Bad named entity: precnsim without a semi-colon" do
    assert_lexes "&precnsim", "[[\"Character\",\"&precnsim\"]]"
  end
  it "namedEntities:Named entity: precnsim; with a semi-colon" do
    assert_lexes "&precnsim;", "[[\"Character\",\"⋨\"]]"
  end
  it "namedEntities:Bad named entity: precsim without a semi-colon" do
    assert_lexes "&precsim", "[[\"Character\",\"&precsim\"]]"
  end
  it "namedEntities:Named entity: precsim; with a semi-colon" do
    assert_lexes "&precsim;", "[[\"Character\",\"≾\"]]"
  end
  it "namedEntities:Bad named entity: prime without a semi-colon" do
    assert_lexes "&prime", "[[\"Character\",\"&prime\"]]"
  end
  it "namedEntities:Named entity: prime; with a semi-colon" do
    assert_lexes "&prime;", "[[\"Character\",\"′\"]]"
  end
  it "namedEntities:Bad named entity: primes without a semi-colon" do
    assert_lexes "&primes", "[[\"Character\",\"&primes\"]]"
  end
  it "namedEntities:Named entity: primes; with a semi-colon" do
    assert_lexes "&primes;", "[[\"Character\",\"ℙ\"]]"
  end
  it "namedEntities:Bad named entity: prnE without a semi-colon" do
    assert_lexes "&prnE", "[[\"Character\",\"&prnE\"]]"
  end
  it "namedEntities:Named entity: prnE; with a semi-colon" do
    assert_lexes "&prnE;", "[[\"Character\",\"⪵\"]]"
  end
  it "namedEntities:Bad named entity: prnap without a semi-colon" do
    assert_lexes "&prnap", "[[\"Character\",\"&prnap\"]]"
  end
  it "namedEntities:Named entity: prnap; with a semi-colon" do
    assert_lexes "&prnap;", "[[\"Character\",\"⪹\"]]"
  end
  it "namedEntities:Bad named entity: prnsim without a semi-colon" do
    assert_lexes "&prnsim", "[[\"Character\",\"&prnsim\"]]"
  end
  it "namedEntities:Named entity: prnsim; with a semi-colon" do
    assert_lexes "&prnsim;", "[[\"Character\",\"⋨\"]]"
  end
  it "namedEntities:Bad named entity: prod without a semi-colon" do
    assert_lexes "&prod", "[[\"Character\",\"&prod\"]]"
  end
  it "namedEntities:Named entity: prod; with a semi-colon" do
    assert_lexes "&prod;", "[[\"Character\",\"∏\"]]"
  end
  it "namedEntities:Bad named entity: profalar without a semi-colon" do
    assert_lexes "&profalar", "[[\"Character\",\"&profalar\"]]"
  end
  it "namedEntities:Named entity: profalar; with a semi-colon" do
    assert_lexes "&profalar;", "[[\"Character\",\"⌮\"]]"
  end
  it "namedEntities:Bad named entity: profline without a semi-colon" do
    assert_lexes "&profline", "[[\"Character\",\"&profline\"]]"
  end
  it "namedEntities:Named entity: profline; with a semi-colon" do
    assert_lexes "&profline;", "[[\"Character\",\"⌒\"]]"
  end
  it "namedEntities:Bad named entity: profsurf without a semi-colon" do
    assert_lexes "&profsurf", "[[\"Character\",\"&profsurf\"]]"
  end
  it "namedEntities:Named entity: profsurf; with a semi-colon" do
    assert_lexes "&profsurf;", "[[\"Character\",\"⌓\"]]"
  end
  it "namedEntities:Bad named entity: prop without a semi-colon" do
    assert_lexes "&prop", "[[\"Character\",\"&prop\"]]"
  end
  it "namedEntities:Named entity: prop; with a semi-colon" do
    assert_lexes "&prop;", "[[\"Character\",\"∝\"]]"
  end
  it "namedEntities:Bad named entity: propto without a semi-colon" do
    assert_lexes "&propto", "[[\"Character\",\"&propto\"]]"
  end
  it "namedEntities:Named entity: propto; with a semi-colon" do
    assert_lexes "&propto;", "[[\"Character\",\"∝\"]]"
  end
  it "namedEntities:Bad named entity: prsim without a semi-colon" do
    assert_lexes "&prsim", "[[\"Character\",\"&prsim\"]]"
  end
  it "namedEntities:Named entity: prsim; with a semi-colon" do
    assert_lexes "&prsim;", "[[\"Character\",\"≾\"]]"
  end
  it "namedEntities:Bad named entity: prurel without a semi-colon" do
    assert_lexes "&prurel", "[[\"Character\",\"&prurel\"]]"
  end
  it "namedEntities:Named entity: prurel; with a semi-colon" do
    assert_lexes "&prurel;", "[[\"Character\",\"⊰\"]]"
  end
  it "namedEntities:Bad named entity: pscr without a semi-colon" do
    assert_lexes "&pscr", "[[\"Character\",\"&pscr\"]]"
  end
  it "namedEntities:Named entity: pscr; with a semi-colon" do
    assert_lexes "&pscr;", "[[\"Character\",\"𝓅\"]]"
  end
  it "namedEntities:Bad named entity: psi without a semi-colon" do
    assert_lexes "&psi", "[[\"Character\",\"&psi\"]]"
  end
  it "namedEntities:Named entity: psi; with a semi-colon" do
    assert_lexes "&psi;", "[[\"Character\",\"ψ\"]]"
  end
  it "namedEntities:Bad named entity: puncsp without a semi-colon" do
    assert_lexes "&puncsp", "[[\"Character\",\"&puncsp\"]]"
  end
  it "namedEntities:Named entity: puncsp; with a semi-colon" do
    assert_lexes "&puncsp;", "[[\"Character\",\"\u2008\"]]"
  end
  it "namedEntities:Bad named entity: qfr without a semi-colon" do
    assert_lexes "&qfr", "[[\"Character\",\"&qfr\"]]"
  end
  it "namedEntities:Named entity: qfr; with a semi-colon" do
    assert_lexes "&qfr;", "[[\"Character\",\"𝔮\"]]"
  end
  it "namedEntities:Bad named entity: qint without a semi-colon" do
    assert_lexes "&qint", "[[\"Character\",\"&qint\"]]"
  end
  it "namedEntities:Named entity: qint; with a semi-colon" do
    assert_lexes "&qint;", "[[\"Character\",\"⨌\"]]"
  end
  it "namedEntities:Bad named entity: qopf without a semi-colon" do
    assert_lexes "&qopf", "[[\"Character\",\"&qopf\"]]"
  end
  it "namedEntities:Named entity: qopf; with a semi-colon" do
    assert_lexes "&qopf;", "[[\"Character\",\"𝕢\"]]"
  end
  it "namedEntities:Bad named entity: qprime without a semi-colon" do
    assert_lexes "&qprime", "[[\"Character\",\"&qprime\"]]"
  end
  it "namedEntities:Named entity: qprime; with a semi-colon" do
    assert_lexes "&qprime;", "[[\"Character\",\"⁗\"]]"
  end
  it "namedEntities:Bad named entity: qscr without a semi-colon" do
    assert_lexes "&qscr", "[[\"Character\",\"&qscr\"]]"
  end
  it "namedEntities:Named entity: qscr; with a semi-colon" do
    assert_lexes "&qscr;", "[[\"Character\",\"𝓆\"]]"
  end
  it "namedEntities:Bad named entity: quaternions without a semi-colon" do
    assert_lexes "&quaternions", "[[\"Character\",\"&quaternions\"]]"
  end
  it "namedEntities:Named entity: quaternions; with a semi-colon" do
    assert_lexes "&quaternions;", "[[\"Character\",\"ℍ\"]]"
  end
  it "namedEntities:Bad named entity: quatint without a semi-colon" do
    assert_lexes "&quatint", "[[\"Character\",\"&quatint\"]]"
  end
  it "namedEntities:Named entity: quatint; with a semi-colon" do
    assert_lexes "&quatint;", "[[\"Character\",\"⨖\"]]"
  end
  it "namedEntities:Bad named entity: quest without a semi-colon" do
    assert_lexes "&quest", "[[\"Character\",\"&quest\"]]"
  end
  it "namedEntities:Named entity: quest; with a semi-colon" do
    assert_lexes "&quest;", "[[\"Character\",\"?\"]]"
  end
  it "namedEntities:Bad named entity: questeq without a semi-colon" do
    assert_lexes "&questeq", "[[\"Character\",\"&questeq\"]]"
  end
  it "namedEntities:Named entity: questeq; with a semi-colon" do
    assert_lexes "&questeq;", "[[\"Character\",\"≟\"]]"
  end
  it "namedEntities:Named entity: quot without a semi-colon" do
    assert_lexes "&quot", "[[\"Character\",\"\\\"\"]]"
  end
  it "namedEntities:Named entity: quot; with a semi-colon" do
    assert_lexes "&quot;", "[[\"Character\",\"\\\"\"]]"
  end
  it "namedEntities:Bad named entity: rAarr without a semi-colon" do
    assert_lexes "&rAarr", "[[\"Character\",\"&rAarr\"]]"
  end
  it "namedEntities:Named entity: rAarr; with a semi-colon" do
    assert_lexes "&rAarr;", "[[\"Character\",\"⇛\"]]"
  end
  it "namedEntities:Bad named entity: rArr without a semi-colon" do
    assert_lexes "&rArr", "[[\"Character\",\"&rArr\"]]"
  end
  it "namedEntities:Named entity: rArr; with a semi-colon" do
    assert_lexes "&rArr;", "[[\"Character\",\"⇒\"]]"
  end
  it "namedEntities:Bad named entity: rAtail without a semi-colon" do
    assert_lexes "&rAtail", "[[\"Character\",\"&rAtail\"]]"
  end
  it "namedEntities:Named entity: rAtail; with a semi-colon" do
    assert_lexes "&rAtail;", "[[\"Character\",\"⤜\"]]"
  end
  it "namedEntities:Bad named entity: rBarr without a semi-colon" do
    assert_lexes "&rBarr", "[[\"Character\",\"&rBarr\"]]"
  end
  it "namedEntities:Named entity: rBarr; with a semi-colon" do
    assert_lexes "&rBarr;", "[[\"Character\",\"⤏\"]]"
  end
  it "namedEntities:Bad named entity: rHar without a semi-colon" do
    assert_lexes "&rHar", "[[\"Character\",\"&rHar\"]]"
  end
  it "namedEntities:Named entity: rHar; with a semi-colon" do
    assert_lexes "&rHar;", "[[\"Character\",\"⥤\"]]"
  end
  it "namedEntities:Bad named entity: race without a semi-colon" do
    assert_lexes "&race", "[[\"Character\",\"&race\"]]"
  end
  it "namedEntities:Named entity: race; with a semi-colon" do
    assert_lexes "&race;", "[[\"Character\",\"∽̱\"]]"
  end
  it "namedEntities:Bad named entity: racute without a semi-colon" do
    assert_lexes "&racute", "[[\"Character\",\"&racute\"]]"
  end
  it "namedEntities:Named entity: racute; with a semi-colon" do
    assert_lexes "&racute;", "[[\"Character\",\"ŕ\"]]"
  end
  it "namedEntities:Bad named entity: radic without a semi-colon" do
    assert_lexes "&radic", "[[\"Character\",\"&radic\"]]"
  end
  it "namedEntities:Named entity: radic; with a semi-colon" do
    assert_lexes "&radic;", "[[\"Character\",\"√\"]]"
  end
  it "namedEntities:Bad named entity: raemptyv without a semi-colon" do
    assert_lexes "&raemptyv", "[[\"Character\",\"&raemptyv\"]]"
  end
  it "namedEntities:Named entity: raemptyv; with a semi-colon" do
    assert_lexes "&raemptyv;", "[[\"Character\",\"⦳\"]]"
  end
  it "namedEntities:Bad named entity: rang without a semi-colon" do
    assert_lexes "&rang", "[[\"Character\",\"&rang\"]]"
  end
  it "namedEntities:Named entity: rang; with a semi-colon" do
    assert_lexes "&rang;", "[[\"Character\",\"⟩\"]]"
  end
  it "namedEntities:Bad named entity: rangd without a semi-colon" do
    assert_lexes "&rangd", "[[\"Character\",\"&rangd\"]]"
  end
  it "namedEntities:Named entity: rangd; with a semi-colon" do
    assert_lexes "&rangd;", "[[\"Character\",\"⦒\"]]"
  end
  it "namedEntities:Bad named entity: range without a semi-colon" do
    assert_lexes "&range", "[[\"Character\",\"&range\"]]"
  end
  it "namedEntities:Named entity: range; with a semi-colon" do
    assert_lexes "&range;", "[[\"Character\",\"⦥\"]]"
  end
  it "namedEntities:Bad named entity: rangle without a semi-colon" do
    assert_lexes "&rangle", "[[\"Character\",\"&rangle\"]]"
  end
  it "namedEntities:Named entity: rangle; with a semi-colon" do
    assert_lexes "&rangle;", "[[\"Character\",\"⟩\"]]"
  end
  it "namedEntities:Named entity: raquo without a semi-colon" do
    assert_lexes "&raquo", "[[\"Character\",\"»\"]]"
  end
  it "namedEntities:Named entity: raquo; with a semi-colon" do
    assert_lexes "&raquo;", "[[\"Character\",\"»\"]]"
  end
  it "namedEntities:Bad named entity: rarr without a semi-colon" do
    assert_lexes "&rarr", "[[\"Character\",\"&rarr\"]]"
  end
  it "namedEntities:Named entity: rarr; with a semi-colon" do
    assert_lexes "&rarr;", "[[\"Character\",\"→\"]]"
  end
  it "namedEntities:Bad named entity: rarrap without a semi-colon" do
    assert_lexes "&rarrap", "[[\"Character\",\"&rarrap\"]]"
  end
  it "namedEntities:Named entity: rarrap; with a semi-colon" do
    assert_lexes "&rarrap;", "[[\"Character\",\"⥵\"]]"
  end
  it "namedEntities:Bad named entity: rarrb without a semi-colon" do
    assert_lexes "&rarrb", "[[\"Character\",\"&rarrb\"]]"
  end
  it "namedEntities:Named entity: rarrb; with a semi-colon" do
    assert_lexes "&rarrb;", "[[\"Character\",\"⇥\"]]"
  end
  it "namedEntities:Bad named entity: rarrbfs without a semi-colon" do
    assert_lexes "&rarrbfs", "[[\"Character\",\"&rarrbfs\"]]"
  end
  it "namedEntities:Named entity: rarrbfs; with a semi-colon" do
    assert_lexes "&rarrbfs;", "[[\"Character\",\"⤠\"]]"
  end
  it "namedEntities:Bad named entity: rarrc without a semi-colon" do
    assert_lexes "&rarrc", "[[\"Character\",\"&rarrc\"]]"
  end
  it "namedEntities:Named entity: rarrc; with a semi-colon" do
    assert_lexes "&rarrc;", "[[\"Character\",\"⤳\"]]"
  end
  it "namedEntities:Bad named entity: rarrfs without a semi-colon" do
    assert_lexes "&rarrfs", "[[\"Character\",\"&rarrfs\"]]"
  end
  it "namedEntities:Named entity: rarrfs; with a semi-colon" do
    assert_lexes "&rarrfs;", "[[\"Character\",\"⤞\"]]"
  end
  it "namedEntities:Bad named entity: rarrhk without a semi-colon" do
    assert_lexes "&rarrhk", "[[\"Character\",\"&rarrhk\"]]"
  end
  it "namedEntities:Named entity: rarrhk; with a semi-colon" do
    assert_lexes "&rarrhk;", "[[\"Character\",\"↪\"]]"
  end
  it "namedEntities:Bad named entity: rarrlp without a semi-colon" do
    assert_lexes "&rarrlp", "[[\"Character\",\"&rarrlp\"]]"
  end
  it "namedEntities:Named entity: rarrlp; with a semi-colon" do
    assert_lexes "&rarrlp;", "[[\"Character\",\"↬\"]]"
  end
  it "namedEntities:Bad named entity: rarrpl without a semi-colon" do
    assert_lexes "&rarrpl", "[[\"Character\",\"&rarrpl\"]]"
  end
  it "namedEntities:Named entity: rarrpl; with a semi-colon" do
    assert_lexes "&rarrpl;", "[[\"Character\",\"⥅\"]]"
  end
  it "namedEntities:Bad named entity: rarrsim without a semi-colon" do
    assert_lexes "&rarrsim", "[[\"Character\",\"&rarrsim\"]]"
  end
  it "namedEntities:Named entity: rarrsim; with a semi-colon" do
    assert_lexes "&rarrsim;", "[[\"Character\",\"⥴\"]]"
  end
  it "namedEntities:Bad named entity: rarrtl without a semi-colon" do
    assert_lexes "&rarrtl", "[[\"Character\",\"&rarrtl\"]]"
  end
  it "namedEntities:Named entity: rarrtl; with a semi-colon" do
    assert_lexes "&rarrtl;", "[[\"Character\",\"↣\"]]"
  end
  it "namedEntities:Bad named entity: rarrw without a semi-colon" do
    assert_lexes "&rarrw", "[[\"Character\",\"&rarrw\"]]"
  end
  it "namedEntities:Named entity: rarrw; with a semi-colon" do
    assert_lexes "&rarrw;", "[[\"Character\",\"↝\"]]"
  end
  it "namedEntities:Bad named entity: ratail without a semi-colon" do
    assert_lexes "&ratail", "[[\"Character\",\"&ratail\"]]"
  end
  it "namedEntities:Named entity: ratail; with a semi-colon" do
    assert_lexes "&ratail;", "[[\"Character\",\"⤚\"]]"
  end
  it "namedEntities:Bad named entity: ratio without a semi-colon" do
    assert_lexes "&ratio", "[[\"Character\",\"&ratio\"]]"
  end
  it "namedEntities:Named entity: ratio; with a semi-colon" do
    assert_lexes "&ratio;", "[[\"Character\",\"∶\"]]"
  end
  it "namedEntities:Bad named entity: rationals without a semi-colon" do
    assert_lexes "&rationals", "[[\"Character\",\"&rationals\"]]"
  end
  it "namedEntities:Named entity: rationals; with a semi-colon" do
    assert_lexes "&rationals;", "[[\"Character\",\"ℚ\"]]"
  end
  it "namedEntities:Bad named entity: rbarr without a semi-colon" do
    assert_lexes "&rbarr", "[[\"Character\",\"&rbarr\"]]"
  end
  it "namedEntities:Named entity: rbarr; with a semi-colon" do
    assert_lexes "&rbarr;", "[[\"Character\",\"⤍\"]]"
  end
  it "namedEntities:Bad named entity: rbbrk without a semi-colon" do
    assert_lexes "&rbbrk", "[[\"Character\",\"&rbbrk\"]]"
  end
  it "namedEntities:Named entity: rbbrk; with a semi-colon" do
    assert_lexes "&rbbrk;", "[[\"Character\",\"❳\"]]"
  end
  it "namedEntities:Bad named entity: rbrace without a semi-colon" do
    assert_lexes "&rbrace", "[[\"Character\",\"&rbrace\"]]"
  end
  it "namedEntities:Named entity: rbrace; with a semi-colon" do
    assert_lexes "&rbrace;", "[[\"Character\",\"}\"]]"
  end
  it "namedEntities:Bad named entity: rbrack without a semi-colon" do
    assert_lexes "&rbrack", "[[\"Character\",\"&rbrack\"]]"
  end
  it "namedEntities:Named entity: rbrack; with a semi-colon" do
    assert_lexes "&rbrack;", "[[\"Character\",\"]\"]]"
  end
  it "namedEntities:Bad named entity: rbrke without a semi-colon" do
    assert_lexes "&rbrke", "[[\"Character\",\"&rbrke\"]]"
  end
  it "namedEntities:Named entity: rbrke; with a semi-colon" do
    assert_lexes "&rbrke;", "[[\"Character\",\"⦌\"]]"
  end
  it "namedEntities:Bad named entity: rbrksld without a semi-colon" do
    assert_lexes "&rbrksld", "[[\"Character\",\"&rbrksld\"]]"
  end
  it "namedEntities:Named entity: rbrksld; with a semi-colon" do
    assert_lexes "&rbrksld;", "[[\"Character\",\"⦎\"]]"
  end
  it "namedEntities:Bad named entity: rbrkslu without a semi-colon" do
    assert_lexes "&rbrkslu", "[[\"Character\",\"&rbrkslu\"]]"
  end
  it "namedEntities:Named entity: rbrkslu; with a semi-colon" do
    assert_lexes "&rbrkslu;", "[[\"Character\",\"⦐\"]]"
  end
  it "namedEntities:Bad named entity: rcaron without a semi-colon" do
    assert_lexes "&rcaron", "[[\"Character\",\"&rcaron\"]]"
  end
  it "namedEntities:Named entity: rcaron; with a semi-colon" do
    assert_lexes "&rcaron;", "[[\"Character\",\"ř\"]]"
  end
  it "namedEntities:Bad named entity: rcedil without a semi-colon" do
    assert_lexes "&rcedil", "[[\"Character\",\"&rcedil\"]]"
  end
  it "namedEntities:Named entity: rcedil; with a semi-colon" do
    assert_lexes "&rcedil;", "[[\"Character\",\"ŗ\"]]"
  end
  it "namedEntities:Bad named entity: rceil without a semi-colon" do
    assert_lexes "&rceil", "[[\"Character\",\"&rceil\"]]"
  end
  it "namedEntities:Named entity: rceil; with a semi-colon" do
    assert_lexes "&rceil;", "[[\"Character\",\"⌉\"]]"
  end
  it "namedEntities:Bad named entity: rcub without a semi-colon" do
    assert_lexes "&rcub", "[[\"Character\",\"&rcub\"]]"
  end
  it "namedEntities:Named entity: rcub; with a semi-colon" do
    assert_lexes "&rcub;", "[[\"Character\",\"}\"]]"
  end
  it "namedEntities:Bad named entity: rcy without a semi-colon" do
    assert_lexes "&rcy", "[[\"Character\",\"&rcy\"]]"
  end
  it "namedEntities:Named entity: rcy; with a semi-colon" do
    assert_lexes "&rcy;", "[[\"Character\",\"р\"]]"
  end
  it "namedEntities:Bad named entity: rdca without a semi-colon" do
    assert_lexes "&rdca", "[[\"Character\",\"&rdca\"]]"
  end
  it "namedEntities:Named entity: rdca; with a semi-colon" do
    assert_lexes "&rdca;", "[[\"Character\",\"⤷\"]]"
  end
  it "namedEntities:Bad named entity: rdldhar without a semi-colon" do
    assert_lexes "&rdldhar", "[[\"Character\",\"&rdldhar\"]]"
  end
  it "namedEntities:Named entity: rdldhar; with a semi-colon" do
    assert_lexes "&rdldhar;", "[[\"Character\",\"⥩\"]]"
  end
  it "namedEntities:Bad named entity: rdquo without a semi-colon" do
    assert_lexes "&rdquo", "[[\"Character\",\"&rdquo\"]]"
  end
  it "namedEntities:Named entity: rdquo; with a semi-colon" do
    assert_lexes "&rdquo;", "[[\"Character\",\"”\"]]"
  end
  it "namedEntities:Bad named entity: rdquor without a semi-colon" do
    assert_lexes "&rdquor", "[[\"Character\",\"&rdquor\"]]"
  end
  it "namedEntities:Named entity: rdquor; with a semi-colon" do
    assert_lexes "&rdquor;", "[[\"Character\",\"”\"]]"
  end
  it "namedEntities:Bad named entity: rdsh without a semi-colon" do
    assert_lexes "&rdsh", "[[\"Character\",\"&rdsh\"]]"
  end
  it "namedEntities:Named entity: rdsh; with a semi-colon" do
    assert_lexes "&rdsh;", "[[\"Character\",\"↳\"]]"
  end
  it "namedEntities:Bad named entity: real without a semi-colon" do
    assert_lexes "&real", "[[\"Character\",\"&real\"]]"
  end
  it "namedEntities:Named entity: real; with a semi-colon" do
    assert_lexes "&real;", "[[\"Character\",\"ℜ\"]]"
  end
  it "namedEntities:Bad named entity: realine without a semi-colon" do
    assert_lexes "&realine", "[[\"Character\",\"&realine\"]]"
  end
  it "namedEntities:Named entity: realine; with a semi-colon" do
    assert_lexes "&realine;", "[[\"Character\",\"ℛ\"]]"
  end
  it "namedEntities:Bad named entity: realpart without a semi-colon" do
    assert_lexes "&realpart", "[[\"Character\",\"&realpart\"]]"
  end
  it "namedEntities:Named entity: realpart; with a semi-colon" do
    assert_lexes "&realpart;", "[[\"Character\",\"ℜ\"]]"
  end
  it "namedEntities:Bad named entity: reals without a semi-colon" do
    assert_lexes "&reals", "[[\"Character\",\"&reals\"]]"
  end
  it "namedEntities:Named entity: reals; with a semi-colon" do
    assert_lexes "&reals;", "[[\"Character\",\"ℝ\"]]"
  end
  it "namedEntities:Bad named entity: rect without a semi-colon" do
    assert_lexes "&rect", "[[\"Character\",\"&rect\"]]"
  end
  it "namedEntities:Named entity: rect; with a semi-colon" do
    assert_lexes "&rect;", "[[\"Character\",\"▭\"]]"
  end
  it "namedEntities:Named entity: reg without a semi-colon" do
    assert_lexes "&reg", "[[\"Character\",\"®\"]]"
  end
  it "namedEntities:Named entity: reg; with a semi-colon" do
    assert_lexes "&reg;", "[[\"Character\",\"®\"]]"
  end
  it "namedEntities:Bad named entity: rfisht without a semi-colon" do
    assert_lexes "&rfisht", "[[\"Character\",\"&rfisht\"]]"
  end
  it "namedEntities:Named entity: rfisht; with a semi-colon" do
    assert_lexes "&rfisht;", "[[\"Character\",\"⥽\"]]"
  end
  it "namedEntities:Bad named entity: rfloor without a semi-colon" do
    assert_lexes "&rfloor", "[[\"Character\",\"&rfloor\"]]"
  end
  it "namedEntities:Named entity: rfloor; with a semi-colon" do
    assert_lexes "&rfloor;", "[[\"Character\",\"⌋\"]]"
  end
  it "namedEntities:Bad named entity: rfr without a semi-colon" do
    assert_lexes "&rfr", "[[\"Character\",\"&rfr\"]]"
  end
  it "namedEntities:Named entity: rfr; with a semi-colon" do
    assert_lexes "&rfr;", "[[\"Character\",\"𝔯\"]]"
  end
  it "namedEntities:Bad named entity: rhard without a semi-colon" do
    assert_lexes "&rhard", "[[\"Character\",\"&rhard\"]]"
  end
  it "namedEntities:Named entity: rhard; with a semi-colon" do
    assert_lexes "&rhard;", "[[\"Character\",\"⇁\"]]"
  end
  it "namedEntities:Bad named entity: rharu without a semi-colon" do
    assert_lexes "&rharu", "[[\"Character\",\"&rharu\"]]"
  end
  it "namedEntities:Named entity: rharu; with a semi-colon" do
    assert_lexes "&rharu;", "[[\"Character\",\"⇀\"]]"
  end
  it "namedEntities:Bad named entity: rharul without a semi-colon" do
    assert_lexes "&rharul", "[[\"Character\",\"&rharul\"]]"
  end
  it "namedEntities:Named entity: rharul; with a semi-colon" do
    assert_lexes "&rharul;", "[[\"Character\",\"⥬\"]]"
  end
  it "namedEntities:Bad named entity: rho without a semi-colon" do
    assert_lexes "&rho", "[[\"Character\",\"&rho\"]]"
  end
  it "namedEntities:Named entity: rho; with a semi-colon" do
    assert_lexes "&rho;", "[[\"Character\",\"ρ\"]]"
  end
  it "namedEntities:Bad named entity: rhov without a semi-colon" do
    assert_lexes "&rhov", "[[\"Character\",\"&rhov\"]]"
  end
  it "namedEntities:Named entity: rhov; with a semi-colon" do
    assert_lexes "&rhov;", "[[\"Character\",\"ϱ\"]]"
  end
  it "namedEntities:Bad named entity: rightarrow without a semi-colon" do
    assert_lexes "&rightarrow", "[[\"Character\",\"&rightarrow\"]]"
  end
  it "namedEntities:Named entity: rightarrow; with a semi-colon" do
    assert_lexes "&rightarrow;", "[[\"Character\",\"→\"]]"
  end
  it "namedEntities:Bad named entity: rightarrowtail without a semi-colon" do
    assert_lexes "&rightarrowtail", "[[\"Character\",\"&rightarrowtail\"]]"
  end
  it "namedEntities:Named entity: rightarrowtail; with a semi-colon" do
    assert_lexes "&rightarrowtail;", "[[\"Character\",\"↣\"]]"
  end
  it "namedEntities:Bad named entity: rightharpoondown without a semi-colon" do
    assert_lexes "&rightharpoondown", "[[\"Character\",\"&rightharpoondown\"]]"
  end
  it "namedEntities:Named entity: rightharpoondown; with a semi-colon" do
    assert_lexes "&rightharpoondown;", "[[\"Character\",\"⇁\"]]"
  end
  it "namedEntities:Bad named entity: rightharpoonup without a semi-colon" do
    assert_lexes "&rightharpoonup", "[[\"Character\",\"&rightharpoonup\"]]"
  end
  it "namedEntities:Named entity: rightharpoonup; with a semi-colon" do
    assert_lexes "&rightharpoonup;", "[[\"Character\",\"⇀\"]]"
  end
  it "namedEntities:Bad named entity: rightleftarrows without a semi-colon" do
    assert_lexes "&rightleftarrows", "[[\"Character\",\"&rightleftarrows\"]]"
  end
  it "namedEntities:Named entity: rightleftarrows; with a semi-colon" do
    assert_lexes "&rightleftarrows;", "[[\"Character\",\"⇄\"]]"
  end
  it "namedEntities:Bad named entity: rightleftharpoons without a semi-colon" do
    assert_lexes "&rightleftharpoons", "[[\"Character\",\"&rightleftharpoons\"]]"
  end
  it "namedEntities:Named entity: rightleftharpoons; with a semi-colon" do
    assert_lexes "&rightleftharpoons;", "[[\"Character\",\"⇌\"]]"
  end
  it "namedEntities:Bad named entity: rightrightarrows without a semi-colon" do
    assert_lexes "&rightrightarrows", "[[\"Character\",\"&rightrightarrows\"]]"
  end
  it "namedEntities:Named entity: rightrightarrows; with a semi-colon" do
    assert_lexes "&rightrightarrows;", "[[\"Character\",\"⇉\"]]"
  end
  it "namedEntities:Bad named entity: rightsquigarrow without a semi-colon" do
    assert_lexes "&rightsquigarrow", "[[\"Character\",\"&rightsquigarrow\"]]"
  end
  it "namedEntities:Named entity: rightsquigarrow; with a semi-colon" do
    assert_lexes "&rightsquigarrow;", "[[\"Character\",\"↝\"]]"
  end
  it "namedEntities:Bad named entity: rightthreetimes without a semi-colon" do
    assert_lexes "&rightthreetimes", "[[\"Character\",\"&rightthreetimes\"]]"
  end
  it "namedEntities:Named entity: rightthreetimes; with a semi-colon" do
    assert_lexes "&rightthreetimes;", "[[\"Character\",\"⋌\"]]"
  end
  it "namedEntities:Bad named entity: ring without a semi-colon" do
    assert_lexes "&ring", "[[\"Character\",\"&ring\"]]"
  end
  it "namedEntities:Named entity: ring; with a semi-colon" do
    assert_lexes "&ring;", "[[\"Character\",\"˚\"]]"
  end
  it "namedEntities:Bad named entity: risingdotseq without a semi-colon" do
    assert_lexes "&risingdotseq", "[[\"Character\",\"&risingdotseq\"]]"
  end
  it "namedEntities:Named entity: risingdotseq; with a semi-colon" do
    assert_lexes "&risingdotseq;", "[[\"Character\",\"≓\"]]"
  end
  it "namedEntities:Bad named entity: rlarr without a semi-colon" do
    assert_lexes "&rlarr", "[[\"Character\",\"&rlarr\"]]"
  end
  it "namedEntities:Named entity: rlarr; with a semi-colon" do
    assert_lexes "&rlarr;", "[[\"Character\",\"⇄\"]]"
  end
  it "namedEntities:Bad named entity: rlhar without a semi-colon" do
    assert_lexes "&rlhar", "[[\"Character\",\"&rlhar\"]]"
  end
  it "namedEntities:Named entity: rlhar; with a semi-colon" do
    assert_lexes "&rlhar;", "[[\"Character\",\"⇌\"]]"
  end
  it "namedEntities:Bad named entity: rlm without a semi-colon" do
    assert_lexes "&rlm", "[[\"Character\",\"&rlm\"]]"
  end
  it "namedEntities:Named entity: rlm; with a semi-colon" do
    assert_lexes "&rlm;", "[[\"Character\",\"\u200F\"]]"
  end
  it "namedEntities:Bad named entity: rmoust without a semi-colon" do
    assert_lexes "&rmoust", "[[\"Character\",\"&rmoust\"]]"
  end
  it "namedEntities:Named entity: rmoust; with a semi-colon" do
    assert_lexes "&rmoust;", "[[\"Character\",\"⎱\"]]"
  end
  it "namedEntities:Bad named entity: rmoustache without a semi-colon" do
    assert_lexes "&rmoustache", "[[\"Character\",\"&rmoustache\"]]"
  end
  it "namedEntities:Named entity: rmoustache; with a semi-colon" do
    assert_lexes "&rmoustache;", "[[\"Character\",\"⎱\"]]"
  end
  it "namedEntities:Bad named entity: rnmid without a semi-colon" do
    assert_lexes "&rnmid", "[[\"Character\",\"&rnmid\"]]"
  end
  it "namedEntities:Named entity: rnmid; with a semi-colon" do
    assert_lexes "&rnmid;", "[[\"Character\",\"⫮\"]]"
  end
  it "namedEntities:Bad named entity: roang without a semi-colon" do
    assert_lexes "&roang", "[[\"Character\",\"&roang\"]]"
  end
  it "namedEntities:Named entity: roang; with a semi-colon" do
    assert_lexes "&roang;", "[[\"Character\",\"⟭\"]]"
  end
  it "namedEntities:Bad named entity: roarr without a semi-colon" do
    assert_lexes "&roarr", "[[\"Character\",\"&roarr\"]]"
  end
  it "namedEntities:Named entity: roarr; with a semi-colon" do
    assert_lexes "&roarr;", "[[\"Character\",\"⇾\"]]"
  end
  it "namedEntities:Bad named entity: robrk without a semi-colon" do
    assert_lexes "&robrk", "[[\"Character\",\"&robrk\"]]"
  end
  it "namedEntities:Named entity: robrk; with a semi-colon" do
    assert_lexes "&robrk;", "[[\"Character\",\"⟧\"]]"
  end
  it "namedEntities:Bad named entity: ropar without a semi-colon" do
    assert_lexes "&ropar", "[[\"Character\",\"&ropar\"]]"
  end
  it "namedEntities:Named entity: ropar; with a semi-colon" do
    assert_lexes "&ropar;", "[[\"Character\",\"⦆\"]]"
  end
  it "namedEntities:Bad named entity: ropf without a semi-colon" do
    assert_lexes "&ropf", "[[\"Character\",\"&ropf\"]]"
  end
  it "namedEntities:Named entity: ropf; with a semi-colon" do
    assert_lexes "&ropf;", "[[\"Character\",\"𝕣\"]]"
  end
  it "namedEntities:Bad named entity: roplus without a semi-colon" do
    assert_lexes "&roplus", "[[\"Character\",\"&roplus\"]]"
  end
  it "namedEntities:Named entity: roplus; with a semi-colon" do
    assert_lexes "&roplus;", "[[\"Character\",\"⨮\"]]"
  end
  it "namedEntities:Bad named entity: rotimes without a semi-colon" do
    assert_lexes "&rotimes", "[[\"Character\",\"&rotimes\"]]"
  end
  it "namedEntities:Named entity: rotimes; with a semi-colon" do
    assert_lexes "&rotimes;", "[[\"Character\",\"⨵\"]]"
  end
  it "namedEntities:Bad named entity: rpar without a semi-colon" do
    assert_lexes "&rpar", "[[\"Character\",\"&rpar\"]]"
  end
  it "namedEntities:Named entity: rpar; with a semi-colon" do
    assert_lexes "&rpar;", "[[\"Character\",\")\"]]"
  end
  it "namedEntities:Bad named entity: rpargt without a semi-colon" do
    assert_lexes "&rpargt", "[[\"Character\",\"&rpargt\"]]"
  end
  it "namedEntities:Named entity: rpargt; with a semi-colon" do
    assert_lexes "&rpargt;", "[[\"Character\",\"⦔\"]]"
  end
  it "namedEntities:Bad named entity: rppolint without a semi-colon" do
    assert_lexes "&rppolint", "[[\"Character\",\"&rppolint\"]]"
  end
  it "namedEntities:Named entity: rppolint; with a semi-colon" do
    assert_lexes "&rppolint;", "[[\"Character\",\"⨒\"]]"
  end
  it "namedEntities:Bad named entity: rrarr without a semi-colon" do
    assert_lexes "&rrarr", "[[\"Character\",\"&rrarr\"]]"
  end
  it "namedEntities:Named entity: rrarr; with a semi-colon" do
    assert_lexes "&rrarr;", "[[\"Character\",\"⇉\"]]"
  end
  it "namedEntities:Bad named entity: rsaquo without a semi-colon" do
    assert_lexes "&rsaquo", "[[\"Character\",\"&rsaquo\"]]"
  end
  it "namedEntities:Named entity: rsaquo; with a semi-colon" do
    assert_lexes "&rsaquo;", "[[\"Character\",\"›\"]]"
  end
  it "namedEntities:Bad named entity: rscr without a semi-colon" do
    assert_lexes "&rscr", "[[\"Character\",\"&rscr\"]]"
  end
  it "namedEntities:Named entity: rscr; with a semi-colon" do
    assert_lexes "&rscr;", "[[\"Character\",\"𝓇\"]]"
  end
  it "namedEntities:Bad named entity: rsh without a semi-colon" do
    assert_lexes "&rsh", "[[\"Character\",\"&rsh\"]]"
  end
  it "namedEntities:Named entity: rsh; with a semi-colon" do
    assert_lexes "&rsh;", "[[\"Character\",\"↱\"]]"
  end
  it "namedEntities:Bad named entity: rsqb without a semi-colon" do
    assert_lexes "&rsqb", "[[\"Character\",\"&rsqb\"]]"
  end
  it "namedEntities:Named entity: rsqb; with a semi-colon" do
    assert_lexes "&rsqb;", "[[\"Character\",\"]\"]]"
  end
  it "namedEntities:Bad named entity: rsquo without a semi-colon" do
    assert_lexes "&rsquo", "[[\"Character\",\"&rsquo\"]]"
  end
  it "namedEntities:Named entity: rsquo; with a semi-colon" do
    assert_lexes "&rsquo;", "[[\"Character\",\"’\"]]"
  end
  it "namedEntities:Bad named entity: rsquor without a semi-colon" do
    assert_lexes "&rsquor", "[[\"Character\",\"&rsquor\"]]"
  end
  it "namedEntities:Named entity: rsquor; with a semi-colon" do
    assert_lexes "&rsquor;", "[[\"Character\",\"’\"]]"
  end
  it "namedEntities:Bad named entity: rthree without a semi-colon" do
    assert_lexes "&rthree", "[[\"Character\",\"&rthree\"]]"
  end
  it "namedEntities:Named entity: rthree; with a semi-colon" do
    assert_lexes "&rthree;", "[[\"Character\",\"⋌\"]]"
  end
  it "namedEntities:Bad named entity: rtimes without a semi-colon" do
    assert_lexes "&rtimes", "[[\"Character\",\"&rtimes\"]]"
  end
  it "namedEntities:Named entity: rtimes; with a semi-colon" do
    assert_lexes "&rtimes;", "[[\"Character\",\"⋊\"]]"
  end
  it "namedEntities:Bad named entity: rtri without a semi-colon" do
    assert_lexes "&rtri", "[[\"Character\",\"&rtri\"]]"
  end
  it "namedEntities:Named entity: rtri; with a semi-colon" do
    assert_lexes "&rtri;", "[[\"Character\",\"▹\"]]"
  end
  it "namedEntities:Bad named entity: rtrie without a semi-colon" do
    assert_lexes "&rtrie", "[[\"Character\",\"&rtrie\"]]"
  end
  it "namedEntities:Named entity: rtrie; with a semi-colon" do
    assert_lexes "&rtrie;", "[[\"Character\",\"⊵\"]]"
  end
  it "namedEntities:Bad named entity: rtrif without a semi-colon" do
    assert_lexes "&rtrif", "[[\"Character\",\"&rtrif\"]]"
  end
  it "namedEntities:Named entity: rtrif; with a semi-colon" do
    assert_lexes "&rtrif;", "[[\"Character\",\"▸\"]]"
  end
  it "namedEntities:Bad named entity: rtriltri without a semi-colon" do
    assert_lexes "&rtriltri", "[[\"Character\",\"&rtriltri\"]]"
  end
  it "namedEntities:Named entity: rtriltri; with a semi-colon" do
    assert_lexes "&rtriltri;", "[[\"Character\",\"⧎\"]]"
  end
  it "namedEntities:Bad named entity: ruluhar without a semi-colon" do
    assert_lexes "&ruluhar", "[[\"Character\",\"&ruluhar\"]]"
  end
  it "namedEntities:Named entity: ruluhar; with a semi-colon" do
    assert_lexes "&ruluhar;", "[[\"Character\",\"⥨\"]]"
  end
  it "namedEntities:Bad named entity: rx without a semi-colon" do
    assert_lexes "&rx", "[[\"Character\",\"&rx\"]]"
  end
  it "namedEntities:Named entity: rx; with a semi-colon" do
    assert_lexes "&rx;", "[[\"Character\",\"℞\"]]"
  end
  it "namedEntities:Bad named entity: sacute without a semi-colon" do
    assert_lexes "&sacute", "[[\"Character\",\"&sacute\"]]"
  end
  it "namedEntities:Named entity: sacute; with a semi-colon" do
    assert_lexes "&sacute;", "[[\"Character\",\"ś\"]]"
  end
  it "namedEntities:Bad named entity: sbquo without a semi-colon" do
    assert_lexes "&sbquo", "[[\"Character\",\"&sbquo\"]]"
  end
  it "namedEntities:Named entity: sbquo; with a semi-colon" do
    assert_lexes "&sbquo;", "[[\"Character\",\"‚\"]]"
  end
  it "namedEntities:Bad named entity: sc without a semi-colon" do
    assert_lexes "&sc", "[[\"Character\",\"&sc\"]]"
  end
  it "namedEntities:Named entity: sc; with a semi-colon" do
    assert_lexes "&sc;", "[[\"Character\",\"≻\"]]"
  end
  it "namedEntities:Bad named entity: scE without a semi-colon" do
    assert_lexes "&scE", "[[\"Character\",\"&scE\"]]"
  end
  it "namedEntities:Named entity: scE; with a semi-colon" do
    assert_lexes "&scE;", "[[\"Character\",\"⪴\"]]"
  end
  it "namedEntities:Bad named entity: scap without a semi-colon" do
    assert_lexes "&scap", "[[\"Character\",\"&scap\"]]"
  end
  it "namedEntities:Named entity: scap; with a semi-colon" do
    assert_lexes "&scap;", "[[\"Character\",\"⪸\"]]"
  end
  it "namedEntities:Bad named entity: scaron without a semi-colon" do
    assert_lexes "&scaron", "[[\"Character\",\"&scaron\"]]"
  end
  it "namedEntities:Named entity: scaron; with a semi-colon" do
    assert_lexes "&scaron;", "[[\"Character\",\"š\"]]"
  end
  it "namedEntities:Bad named entity: sccue without a semi-colon" do
    assert_lexes "&sccue", "[[\"Character\",\"&sccue\"]]"
  end
  it "namedEntities:Named entity: sccue; with a semi-colon" do
    assert_lexes "&sccue;", "[[\"Character\",\"≽\"]]"
  end
  it "namedEntities:Bad named entity: sce without a semi-colon" do
    assert_lexes "&sce", "[[\"Character\",\"&sce\"]]"
  end
  it "namedEntities:Named entity: sce; with a semi-colon" do
    assert_lexes "&sce;", "[[\"Character\",\"⪰\"]]"
  end
  it "namedEntities:Bad named entity: scedil without a semi-colon" do
    assert_lexes "&scedil", "[[\"Character\",\"&scedil\"]]"
  end
  it "namedEntities:Named entity: scedil; with a semi-colon" do
    assert_lexes "&scedil;", "[[\"Character\",\"ş\"]]"
  end
  it "namedEntities:Bad named entity: scirc without a semi-colon" do
    assert_lexes "&scirc", "[[\"Character\",\"&scirc\"]]"
  end
  it "namedEntities:Named entity: scirc; with a semi-colon" do
    assert_lexes "&scirc;", "[[\"Character\",\"ŝ\"]]"
  end
  it "namedEntities:Bad named entity: scnE without a semi-colon" do
    assert_lexes "&scnE", "[[\"Character\",\"&scnE\"]]"
  end
  it "namedEntities:Named entity: scnE; with a semi-colon" do
    assert_lexes "&scnE;", "[[\"Character\",\"⪶\"]]"
  end
  it "namedEntities:Bad named entity: scnap without a semi-colon" do
    assert_lexes "&scnap", "[[\"Character\",\"&scnap\"]]"
  end
  it "namedEntities:Named entity: scnap; with a semi-colon" do
    assert_lexes "&scnap;", "[[\"Character\",\"⪺\"]]"
  end
  it "namedEntities:Bad named entity: scnsim without a semi-colon" do
    assert_lexes "&scnsim", "[[\"Character\",\"&scnsim\"]]"
  end
  it "namedEntities:Named entity: scnsim; with a semi-colon" do
    assert_lexes "&scnsim;", "[[\"Character\",\"⋩\"]]"
  end
  it "namedEntities:Bad named entity: scpolint without a semi-colon" do
    assert_lexes "&scpolint", "[[\"Character\",\"&scpolint\"]]"
  end
  it "namedEntities:Named entity: scpolint; with a semi-colon" do
    assert_lexes "&scpolint;", "[[\"Character\",\"⨓\"]]"
  end
  it "namedEntities:Bad named entity: scsim without a semi-colon" do
    assert_lexes "&scsim", "[[\"Character\",\"&scsim\"]]"
  end
  it "namedEntities:Named entity: scsim; with a semi-colon" do
    assert_lexes "&scsim;", "[[\"Character\",\"≿\"]]"
  end
  it "namedEntities:Bad named entity: scy without a semi-colon" do
    assert_lexes "&scy", "[[\"Character\",\"&scy\"]]"
  end
  it "namedEntities:Named entity: scy; with a semi-colon" do
    assert_lexes "&scy;", "[[\"Character\",\"с\"]]"
  end
  it "namedEntities:Bad named entity: sdot without a semi-colon" do
    assert_lexes "&sdot", "[[\"Character\",\"&sdot\"]]"
  end
  it "namedEntities:Named entity: sdot; with a semi-colon" do
    assert_lexes "&sdot;", "[[\"Character\",\"⋅\"]]"
  end
  it "namedEntities:Bad named entity: sdotb without a semi-colon" do
    assert_lexes "&sdotb", "[[\"Character\",\"&sdotb\"]]"
  end
  it "namedEntities:Named entity: sdotb; with a semi-colon" do
    assert_lexes "&sdotb;", "[[\"Character\",\"⊡\"]]"
  end
  it "namedEntities:Bad named entity: sdote without a semi-colon" do
    assert_lexes "&sdote", "[[\"Character\",\"&sdote\"]]"
  end
  it "namedEntities:Named entity: sdote; with a semi-colon" do
    assert_lexes "&sdote;", "[[\"Character\",\"⩦\"]]"
  end
  it "namedEntities:Bad named entity: seArr without a semi-colon" do
    assert_lexes "&seArr", "[[\"Character\",\"&seArr\"]]"
  end
  it "namedEntities:Named entity: seArr; with a semi-colon" do
    assert_lexes "&seArr;", "[[\"Character\",\"⇘\"]]"
  end
  it "namedEntities:Bad named entity: searhk without a semi-colon" do
    assert_lexes "&searhk", "[[\"Character\",\"&searhk\"]]"
  end
  it "namedEntities:Named entity: searhk; with a semi-colon" do
    assert_lexes "&searhk;", "[[\"Character\",\"⤥\"]]"
  end
  it "namedEntities:Bad named entity: searr without a semi-colon" do
    assert_lexes "&searr", "[[\"Character\",\"&searr\"]]"
  end
  it "namedEntities:Named entity: searr; with a semi-colon" do
    assert_lexes "&searr;", "[[\"Character\",\"↘\"]]"
  end
  it "namedEntities:Bad named entity: searrow without a semi-colon" do
    assert_lexes "&searrow", "[[\"Character\",\"&searrow\"]]"
  end
  it "namedEntities:Named entity: searrow; with a semi-colon" do
    assert_lexes "&searrow;", "[[\"Character\",\"↘\"]]"
  end
  it "namedEntities:Named entity: sect without a semi-colon" do
    assert_lexes "&sect", "[[\"Character\",\"§\"]]"
  end
  it "namedEntities:Named entity: sect; with a semi-colon" do
    assert_lexes "&sect;", "[[\"Character\",\"§\"]]"
  end
  it "namedEntities:Bad named entity: semi without a semi-colon" do
    assert_lexes "&semi", "[[\"Character\",\"&semi\"]]"
  end
  it "namedEntities:Named entity: semi; with a semi-colon" do
    assert_lexes "&semi;", "[[\"Character\",\";\"]]"
  end
  it "namedEntities:Bad named entity: seswar without a semi-colon" do
    assert_lexes "&seswar", "[[\"Character\",\"&seswar\"]]"
  end
  it "namedEntities:Named entity: seswar; with a semi-colon" do
    assert_lexes "&seswar;", "[[\"Character\",\"⤩\"]]"
  end
  it "namedEntities:Bad named entity: setminus without a semi-colon" do
    assert_lexes "&setminus", "[[\"Character\",\"&setminus\"]]"
  end
  it "namedEntities:Named entity: setminus; with a semi-colon" do
    assert_lexes "&setminus;", "[[\"Character\",\"∖\"]]"
  end
  it "namedEntities:Bad named entity: setmn without a semi-colon" do
    assert_lexes "&setmn", "[[\"Character\",\"&setmn\"]]"
  end
  it "namedEntities:Named entity: setmn; with a semi-colon" do
    assert_lexes "&setmn;", "[[\"Character\",\"∖\"]]"
  end
  it "namedEntities:Bad named entity: sext without a semi-colon" do
    assert_lexes "&sext", "[[\"Character\",\"&sext\"]]"
  end
  it "namedEntities:Named entity: sext; with a semi-colon" do
    assert_lexes "&sext;", "[[\"Character\",\"✶\"]]"
  end
  it "namedEntities:Bad named entity: sfr without a semi-colon" do
    assert_lexes "&sfr", "[[\"Character\",\"&sfr\"]]"
  end
  it "namedEntities:Named entity: sfr; with a semi-colon" do
    assert_lexes "&sfr;", "[[\"Character\",\"𝔰\"]]"
  end
  it "namedEntities:Bad named entity: sfrown without a semi-colon" do
    assert_lexes "&sfrown", "[[\"Character\",\"&sfrown\"]]"
  end
  it "namedEntities:Named entity: sfrown; with a semi-colon" do
    assert_lexes "&sfrown;", "[[\"Character\",\"⌢\"]]"
  end
  it "namedEntities:Bad named entity: sharp without a semi-colon" do
    assert_lexes "&sharp", "[[\"Character\",\"&sharp\"]]"
  end
  it "namedEntities:Named entity: sharp; with a semi-colon" do
    assert_lexes "&sharp;", "[[\"Character\",\"♯\"]]"
  end
  it "namedEntities:Bad named entity: shchcy without a semi-colon" do
    assert_lexes "&shchcy", "[[\"Character\",\"&shchcy\"]]"
  end
  it "namedEntities:Named entity: shchcy; with a semi-colon" do
    assert_lexes "&shchcy;", "[[\"Character\",\"щ\"]]"
  end
  it "namedEntities:Bad named entity: shcy without a semi-colon" do
    assert_lexes "&shcy", "[[\"Character\",\"&shcy\"]]"
  end
  it "namedEntities:Named entity: shcy; with a semi-colon" do
    assert_lexes "&shcy;", "[[\"Character\",\"ш\"]]"
  end
  it "namedEntities:Bad named entity: shortmid without a semi-colon" do
    assert_lexes "&shortmid", "[[\"Character\",\"&shortmid\"]]"
  end
  it "namedEntities:Named entity: shortmid; with a semi-colon" do
    assert_lexes "&shortmid;", "[[\"Character\",\"∣\"]]"
  end
  it "namedEntities:Bad named entity: shortparallel without a semi-colon" do
    assert_lexes "&shortparallel", "[[\"Character\",\"&shortparallel\"]]"
  end
  it "namedEntities:Named entity: shortparallel; with a semi-colon" do
    assert_lexes "&shortparallel;", "[[\"Character\",\"∥\"]]"
  end
  it "namedEntities:Named entity: shy without a semi-colon" do
    assert_lexes "&shy", "[[\"Character\",\"\u00AD\"]]"
  end
  it "namedEntities:Named entity: shy; with a semi-colon" do
    assert_lexes "&shy;", "[[\"Character\",\"\u00AD\"]]"
  end
  it "namedEntities:Bad named entity: sigma without a semi-colon" do
    assert_lexes "&sigma", "[[\"Character\",\"&sigma\"]]"
  end
  it "namedEntities:Named entity: sigma; with a semi-colon" do
    assert_lexes "&sigma;", "[[\"Character\",\"σ\"]]"
  end
  it "namedEntities:Bad named entity: sigmaf without a semi-colon" do
    assert_lexes "&sigmaf", "[[\"Character\",\"&sigmaf\"]]"
  end
  it "namedEntities:Named entity: sigmaf; with a semi-colon" do
    assert_lexes "&sigmaf;", "[[\"Character\",\"ς\"]]"
  end
  it "namedEntities:Bad named entity: sigmav without a semi-colon" do
    assert_lexes "&sigmav", "[[\"Character\",\"&sigmav\"]]"
  end
  it "namedEntities:Named entity: sigmav; with a semi-colon" do
    assert_lexes "&sigmav;", "[[\"Character\",\"ς\"]]"
  end
  it "namedEntities:Bad named entity: sim without a semi-colon" do
    assert_lexes "&sim", "[[\"Character\",\"&sim\"]]"
  end
  it "namedEntities:Named entity: sim; with a semi-colon" do
    assert_lexes "&sim;", "[[\"Character\",\"∼\"]]"
  end
  it "namedEntities:Bad named entity: simdot without a semi-colon" do
    assert_lexes "&simdot", "[[\"Character\",\"&simdot\"]]"
  end
  it "namedEntities:Named entity: simdot; with a semi-colon" do
    assert_lexes "&simdot;", "[[\"Character\",\"⩪\"]]"
  end
  it "namedEntities:Bad named entity: sime without a semi-colon" do
    assert_lexes "&sime", "[[\"Character\",\"&sime\"]]"
  end
  it "namedEntities:Named entity: sime; with a semi-colon" do
    assert_lexes "&sime;", "[[\"Character\",\"≃\"]]"
  end
  it "namedEntities:Bad named entity: simeq without a semi-colon" do
    assert_lexes "&simeq", "[[\"Character\",\"&simeq\"]]"
  end
  it "namedEntities:Named entity: simeq; with a semi-colon" do
    assert_lexes "&simeq;", "[[\"Character\",\"≃\"]]"
  end
  it "namedEntities:Bad named entity: simg without a semi-colon" do
    assert_lexes "&simg", "[[\"Character\",\"&simg\"]]"
  end
  it "namedEntities:Named entity: simg; with a semi-colon" do
    assert_lexes "&simg;", "[[\"Character\",\"⪞\"]]"
  end
  it "namedEntities:Bad named entity: simgE without a semi-colon" do
    assert_lexes "&simgE", "[[\"Character\",\"&simgE\"]]"
  end
  it "namedEntities:Named entity: simgE; with a semi-colon" do
    assert_lexes "&simgE;", "[[\"Character\",\"⪠\"]]"
  end
  it "namedEntities:Bad named entity: siml without a semi-colon" do
    assert_lexes "&siml", "[[\"Character\",\"&siml\"]]"
  end
  it "namedEntities:Named entity: siml; with a semi-colon" do
    assert_lexes "&siml;", "[[\"Character\",\"⪝\"]]"
  end
  it "namedEntities:Bad named entity: simlE without a semi-colon" do
    assert_lexes "&simlE", "[[\"Character\",\"&simlE\"]]"
  end
  it "namedEntities:Named entity: simlE; with a semi-colon" do
    assert_lexes "&simlE;", "[[\"Character\",\"⪟\"]]"
  end
  it "namedEntities:Bad named entity: simne without a semi-colon" do
    assert_lexes "&simne", "[[\"Character\",\"&simne\"]]"
  end
  it "namedEntities:Named entity: simne; with a semi-colon" do
    assert_lexes "&simne;", "[[\"Character\",\"≆\"]]"
  end
  it "namedEntities:Bad named entity: simplus without a semi-colon" do
    assert_lexes "&simplus", "[[\"Character\",\"&simplus\"]]"
  end
  it "namedEntities:Named entity: simplus; with a semi-colon" do
    assert_lexes "&simplus;", "[[\"Character\",\"⨤\"]]"
  end
  it "namedEntities:Bad named entity: simrarr without a semi-colon" do
    assert_lexes "&simrarr", "[[\"Character\",\"&simrarr\"]]"
  end
  it "namedEntities:Named entity: simrarr; with a semi-colon" do
    assert_lexes "&simrarr;", "[[\"Character\",\"⥲\"]]"
  end
  it "namedEntities:Bad named entity: slarr without a semi-colon" do
    assert_lexes "&slarr", "[[\"Character\",\"&slarr\"]]"
  end
  it "namedEntities:Named entity: slarr; with a semi-colon" do
    assert_lexes "&slarr;", "[[\"Character\",\"←\"]]"
  end
  it "namedEntities:Bad named entity: smallsetminus without a semi-colon" do
    assert_lexes "&smallsetminus", "[[\"Character\",\"&smallsetminus\"]]"
  end
  it "namedEntities:Named entity: smallsetminus; with a semi-colon" do
    assert_lexes "&smallsetminus;", "[[\"Character\",\"∖\"]]"
  end
  it "namedEntities:Bad named entity: smashp without a semi-colon" do
    assert_lexes "&smashp", "[[\"Character\",\"&smashp\"]]"
  end
  it "namedEntities:Named entity: smashp; with a semi-colon" do
    assert_lexes "&smashp;", "[[\"Character\",\"⨳\"]]"
  end
  it "namedEntities:Bad named entity: smeparsl without a semi-colon" do
    assert_lexes "&smeparsl", "[[\"Character\",\"&smeparsl\"]]"
  end
  it "namedEntities:Named entity: smeparsl; with a semi-colon" do
    assert_lexes "&smeparsl;", "[[\"Character\",\"⧤\"]]"
  end
  it "namedEntities:Bad named entity: smid without a semi-colon" do
    assert_lexes "&smid", "[[\"Character\",\"&smid\"]]"
  end
  it "namedEntities:Named entity: smid; with a semi-colon" do
    assert_lexes "&smid;", "[[\"Character\",\"∣\"]]"
  end
  it "namedEntities:Bad named entity: smile without a semi-colon" do
    assert_lexes "&smile", "[[\"Character\",\"&smile\"]]"
  end
  it "namedEntities:Named entity: smile; with a semi-colon" do
    assert_lexes "&smile;", "[[\"Character\",\"⌣\"]]"
  end
  it "namedEntities:Bad named entity: smt without a semi-colon" do
    assert_lexes "&smt", "[[\"Character\",\"&smt\"]]"
  end
  it "namedEntities:Named entity: smt; with a semi-colon" do
    assert_lexes "&smt;", "[[\"Character\",\"⪪\"]]"
  end
  it "namedEntities:Bad named entity: smte without a semi-colon" do
    assert_lexes "&smte", "[[\"Character\",\"&smte\"]]"
  end
  it "namedEntities:Named entity: smte; with a semi-colon" do
    assert_lexes "&smte;", "[[\"Character\",\"⪬\"]]"
  end
  it "namedEntities:Bad named entity: smtes without a semi-colon" do
    assert_lexes "&smtes", "[[\"Character\",\"&smtes\"]]"
  end
  it "namedEntities:Named entity: smtes; with a semi-colon" do
    assert_lexes "&smtes;", "[[\"Character\",\"⪬︀\"]]"
  end
  it "namedEntities:Bad named entity: softcy without a semi-colon" do
    assert_lexes "&softcy", "[[\"Character\",\"&softcy\"]]"
  end
  it "namedEntities:Named entity: softcy; with a semi-colon" do
    assert_lexes "&softcy;", "[[\"Character\",\"ь\"]]"
  end
  it "namedEntities:Bad named entity: sol without a semi-colon" do
    assert_lexes "&sol", "[[\"Character\",\"&sol\"]]"
  end
  it "namedEntities:Named entity: sol; with a semi-colon" do
    assert_lexes "&sol;", "[[\"Character\",\"/\"]]"
  end
  it "namedEntities:Bad named entity: solb without a semi-colon" do
    assert_lexes "&solb", "[[\"Character\",\"&solb\"]]"
  end
  it "namedEntities:Named entity: solb; with a semi-colon" do
    assert_lexes "&solb;", "[[\"Character\",\"⧄\"]]"
  end
  it "namedEntities:Bad named entity: solbar without a semi-colon" do
    assert_lexes "&solbar", "[[\"Character\",\"&solbar\"]]"
  end
  it "namedEntities:Named entity: solbar; with a semi-colon" do
    assert_lexes "&solbar;", "[[\"Character\",\"⌿\"]]"
  end
  it "namedEntities:Bad named entity: sopf without a semi-colon" do
    assert_lexes "&sopf", "[[\"Character\",\"&sopf\"]]"
  end
  it "namedEntities:Named entity: sopf; with a semi-colon" do
    assert_lexes "&sopf;", "[[\"Character\",\"𝕤\"]]"
  end
  it "namedEntities:Bad named entity: spades without a semi-colon" do
    assert_lexes "&spades", "[[\"Character\",\"&spades\"]]"
  end
  it "namedEntities:Named entity: spades; with a semi-colon" do
    assert_lexes "&spades;", "[[\"Character\",\"♠\"]]"
  end
  it "namedEntities:Bad named entity: spadesuit without a semi-colon" do
    assert_lexes "&spadesuit", "[[\"Character\",\"&spadesuit\"]]"
  end
  it "namedEntities:Named entity: spadesuit; with a semi-colon" do
    assert_lexes "&spadesuit;", "[[\"Character\",\"♠\"]]"
  end
  it "namedEntities:Bad named entity: spar without a semi-colon" do
    assert_lexes "&spar", "[[\"Character\",\"&spar\"]]"
  end
  it "namedEntities:Named entity: spar; with a semi-colon" do
    assert_lexes "&spar;", "[[\"Character\",\"∥\"]]"
  end
  it "namedEntities:Bad named entity: sqcap without a semi-colon" do
    assert_lexes "&sqcap", "[[\"Character\",\"&sqcap\"]]"
  end
  it "namedEntities:Named entity: sqcap; with a semi-colon" do
    assert_lexes "&sqcap;", "[[\"Character\",\"⊓\"]]"
  end
  it "namedEntities:Bad named entity: sqcaps without a semi-colon" do
    assert_lexes "&sqcaps", "[[\"Character\",\"&sqcaps\"]]"
  end
  it "namedEntities:Named entity: sqcaps; with a semi-colon" do
    assert_lexes "&sqcaps;", "[[\"Character\",\"⊓︀\"]]"
  end
  it "namedEntities:Bad named entity: sqcup without a semi-colon" do
    assert_lexes "&sqcup", "[[\"Character\",\"&sqcup\"]]"
  end
  it "namedEntities:Named entity: sqcup; with a semi-colon" do
    assert_lexes "&sqcup;", "[[\"Character\",\"⊔\"]]"
  end
  it "namedEntities:Bad named entity: sqcups without a semi-colon" do
    assert_lexes "&sqcups", "[[\"Character\",\"&sqcups\"]]"
  end
  it "namedEntities:Named entity: sqcups; with a semi-colon" do
    assert_lexes "&sqcups;", "[[\"Character\",\"⊔︀\"]]"
  end
  it "namedEntities:Bad named entity: sqsub without a semi-colon" do
    assert_lexes "&sqsub", "[[\"Character\",\"&sqsub\"]]"
  end
  it "namedEntities:Named entity: sqsub; with a semi-colon" do
    assert_lexes "&sqsub;", "[[\"Character\",\"⊏\"]]"
  end
  it "namedEntities:Bad named entity: sqsube without a semi-colon" do
    assert_lexes "&sqsube", "[[\"Character\",\"&sqsube\"]]"
  end
  it "namedEntities:Named entity: sqsube; with a semi-colon" do
    assert_lexes "&sqsube;", "[[\"Character\",\"⊑\"]]"
  end
  it "namedEntities:Bad named entity: sqsubset without a semi-colon" do
    assert_lexes "&sqsubset", "[[\"Character\",\"&sqsubset\"]]"
  end
  it "namedEntities:Named entity: sqsubset; with a semi-colon" do
    assert_lexes "&sqsubset;", "[[\"Character\",\"⊏\"]]"
  end
  it "namedEntities:Bad named entity: sqsubseteq without a semi-colon" do
    assert_lexes "&sqsubseteq", "[[\"Character\",\"&sqsubseteq\"]]"
  end
  it "namedEntities:Named entity: sqsubseteq; with a semi-colon" do
    assert_lexes "&sqsubseteq;", "[[\"Character\",\"⊑\"]]"
  end
  it "namedEntities:Bad named entity: sqsup without a semi-colon" do
    assert_lexes "&sqsup", "[[\"Character\",\"&sqsup\"]]"
  end
  it "namedEntities:Named entity: sqsup; with a semi-colon" do
    assert_lexes "&sqsup;", "[[\"Character\",\"⊐\"]]"
  end
  it "namedEntities:Bad named entity: sqsupe without a semi-colon" do
    assert_lexes "&sqsupe", "[[\"Character\",\"&sqsupe\"]]"
  end
  it "namedEntities:Named entity: sqsupe; with a semi-colon" do
    assert_lexes "&sqsupe;", "[[\"Character\",\"⊒\"]]"
  end
  it "namedEntities:Bad named entity: sqsupset without a semi-colon" do
    assert_lexes "&sqsupset", "[[\"Character\",\"&sqsupset\"]]"
  end
  it "namedEntities:Named entity: sqsupset; with a semi-colon" do
    assert_lexes "&sqsupset;", "[[\"Character\",\"⊐\"]]"
  end
  it "namedEntities:Bad named entity: sqsupseteq without a semi-colon" do
    assert_lexes "&sqsupseteq", "[[\"Character\",\"&sqsupseteq\"]]"
  end
  it "namedEntities:Named entity: sqsupseteq; with a semi-colon" do
    assert_lexes "&sqsupseteq;", "[[\"Character\",\"⊒\"]]"
  end
  it "namedEntities:Bad named entity: squ without a semi-colon" do
    assert_lexes "&squ", "[[\"Character\",\"&squ\"]]"
  end
  it "namedEntities:Named entity: squ; with a semi-colon" do
    assert_lexes "&squ;", "[[\"Character\",\"□\"]]"
  end
  it "namedEntities:Bad named entity: square without a semi-colon" do
    assert_lexes "&square", "[[\"Character\",\"&square\"]]"
  end
  it "namedEntities:Named entity: square; with a semi-colon" do
    assert_lexes "&square;", "[[\"Character\",\"□\"]]"
  end
  it "namedEntities:Bad named entity: squarf without a semi-colon" do
    assert_lexes "&squarf", "[[\"Character\",\"&squarf\"]]"
  end
  it "namedEntities:Named entity: squarf; with a semi-colon" do
    assert_lexes "&squarf;", "[[\"Character\",\"▪\"]]"
  end
  it "namedEntities:Bad named entity: squf without a semi-colon" do
    assert_lexes "&squf", "[[\"Character\",\"&squf\"]]"
  end
  it "namedEntities:Named entity: squf; with a semi-colon" do
    assert_lexes "&squf;", "[[\"Character\",\"▪\"]]"
  end
  it "namedEntities:Bad named entity: srarr without a semi-colon" do
    assert_lexes "&srarr", "[[\"Character\",\"&srarr\"]]"
  end
  it "namedEntities:Named entity: srarr; with a semi-colon" do
    assert_lexes "&srarr;", "[[\"Character\",\"→\"]]"
  end
  it "namedEntities:Bad named entity: sscr without a semi-colon" do
    assert_lexes "&sscr", "[[\"Character\",\"&sscr\"]]"
  end
  it "namedEntities:Named entity: sscr; with a semi-colon" do
    assert_lexes "&sscr;", "[[\"Character\",\"𝓈\"]]"
  end
  it "namedEntities:Bad named entity: ssetmn without a semi-colon" do
    assert_lexes "&ssetmn", "[[\"Character\",\"&ssetmn\"]]"
  end
  it "namedEntities:Named entity: ssetmn; with a semi-colon" do
    assert_lexes "&ssetmn;", "[[\"Character\",\"∖\"]]"
  end
  it "namedEntities:Bad named entity: ssmile without a semi-colon" do
    assert_lexes "&ssmile", "[[\"Character\",\"&ssmile\"]]"
  end
  it "namedEntities:Named entity: ssmile; with a semi-colon" do
    assert_lexes "&ssmile;", "[[\"Character\",\"⌣\"]]"
  end
  it "namedEntities:Bad named entity: sstarf without a semi-colon" do
    assert_lexes "&sstarf", "[[\"Character\",\"&sstarf\"]]"
  end
  it "namedEntities:Named entity: sstarf; with a semi-colon" do
    assert_lexes "&sstarf;", "[[\"Character\",\"⋆\"]]"
  end
  it "namedEntities:Bad named entity: star without a semi-colon" do
    assert_lexes "&star", "[[\"Character\",\"&star\"]]"
  end
  it "namedEntities:Named entity: star; with a semi-colon" do
    assert_lexes "&star;", "[[\"Character\",\"☆\"]]"
  end
  it "namedEntities:Bad named entity: starf without a semi-colon" do
    assert_lexes "&starf", "[[\"Character\",\"&starf\"]]"
  end
  it "namedEntities:Named entity: starf; with a semi-colon" do
    assert_lexes "&starf;", "[[\"Character\",\"★\"]]"
  end
  it "namedEntities:Bad named entity: straightepsilon without a semi-colon" do
    assert_lexes "&straightepsilon", "[[\"Character\",\"&straightepsilon\"]]"
  end
  it "namedEntities:Named entity: straightepsilon; with a semi-colon" do
    assert_lexes "&straightepsilon;", "[[\"Character\",\"ϵ\"]]"
  end
  it "namedEntities:Bad named entity: straightphi without a semi-colon" do
    assert_lexes "&straightphi", "[[\"Character\",\"&straightphi\"]]"
  end
  it "namedEntities:Named entity: straightphi; with a semi-colon" do
    assert_lexes "&straightphi;", "[[\"Character\",\"ϕ\"]]"
  end
  it "namedEntities:Bad named entity: strns without a semi-colon" do
    assert_lexes "&strns", "[[\"Character\",\"&strns\"]]"
  end
  it "namedEntities:Named entity: strns; with a semi-colon" do
    assert_lexes "&strns;", "[[\"Character\",\"¯\"]]"
  end
  it "namedEntities:Bad named entity: sub without a semi-colon" do
    assert_lexes "&sub", "[[\"Character\",\"&sub\"]]"
  end
  it "namedEntities:Named entity: sub; with a semi-colon" do
    assert_lexes "&sub;", "[[\"Character\",\"⊂\"]]"
  end
  it "namedEntities:Bad named entity: subE without a semi-colon" do
    assert_lexes "&subE", "[[\"Character\",\"&subE\"]]"
  end
  it "namedEntities:Named entity: subE; with a semi-colon" do
    assert_lexes "&subE;", "[[\"Character\",\"⫅\"]]"
  end
  it "namedEntities:Bad named entity: subdot without a semi-colon" do
    assert_lexes "&subdot", "[[\"Character\",\"&subdot\"]]"
  end
  it "namedEntities:Named entity: subdot; with a semi-colon" do
    assert_lexes "&subdot;", "[[\"Character\",\"⪽\"]]"
  end
  it "namedEntities:Bad named entity: sube without a semi-colon" do
    assert_lexes "&sube", "[[\"Character\",\"&sube\"]]"
  end
  it "namedEntities:Named entity: sube; with a semi-colon" do
    assert_lexes "&sube;", "[[\"Character\",\"⊆\"]]"
  end
  it "namedEntities:Bad named entity: subedot without a semi-colon" do
    assert_lexes "&subedot", "[[\"Character\",\"&subedot\"]]"
  end
  it "namedEntities:Named entity: subedot; with a semi-colon" do
    assert_lexes "&subedot;", "[[\"Character\",\"⫃\"]]"
  end
  it "namedEntities:Bad named entity: submult without a semi-colon" do
    assert_lexes "&submult", "[[\"Character\",\"&submult\"]]"
  end
  it "namedEntities:Named entity: submult; with a semi-colon" do
    assert_lexes "&submult;", "[[\"Character\",\"⫁\"]]"
  end
  it "namedEntities:Bad named entity: subnE without a semi-colon" do
    assert_lexes "&subnE", "[[\"Character\",\"&subnE\"]]"
  end
  it "namedEntities:Named entity: subnE; with a semi-colon" do
    assert_lexes "&subnE;", "[[\"Character\",\"⫋\"]]"
  end
  it "namedEntities:Bad named entity: subne without a semi-colon" do
    assert_lexes "&subne", "[[\"Character\",\"&subne\"]]"
  end
  it "namedEntities:Named entity: subne; with a semi-colon" do
    assert_lexes "&subne;", "[[\"Character\",\"⊊\"]]"
  end
  it "namedEntities:Bad named entity: subplus without a semi-colon" do
    assert_lexes "&subplus", "[[\"Character\",\"&subplus\"]]"
  end
  it "namedEntities:Named entity: subplus; with a semi-colon" do
    assert_lexes "&subplus;", "[[\"Character\",\"⪿\"]]"
  end
  it "namedEntities:Bad named entity: subrarr without a semi-colon" do
    assert_lexes "&subrarr", "[[\"Character\",\"&subrarr\"]]"
  end
  it "namedEntities:Named entity: subrarr; with a semi-colon" do
    assert_lexes "&subrarr;", "[[\"Character\",\"⥹\"]]"
  end
  it "namedEntities:Bad named entity: subset without a semi-colon" do
    assert_lexes "&subset", "[[\"Character\",\"&subset\"]]"
  end
  it "namedEntities:Named entity: subset; with a semi-colon" do
    assert_lexes "&subset;", "[[\"Character\",\"⊂\"]]"
  end
  it "namedEntities:Bad named entity: subseteq without a semi-colon" do
    assert_lexes "&subseteq", "[[\"Character\",\"&subseteq\"]]"
  end
  it "namedEntities:Named entity: subseteq; with a semi-colon" do
    assert_lexes "&subseteq;", "[[\"Character\",\"⊆\"]]"
  end
  it "namedEntities:Bad named entity: subseteqq without a semi-colon" do
    assert_lexes "&subseteqq", "[[\"Character\",\"&subseteqq\"]]"
  end
  it "namedEntities:Named entity: subseteqq; with a semi-colon" do
    assert_lexes "&subseteqq;", "[[\"Character\",\"⫅\"]]"
  end
  it "namedEntities:Bad named entity: subsetneq without a semi-colon" do
    assert_lexes "&subsetneq", "[[\"Character\",\"&subsetneq\"]]"
  end
  it "namedEntities:Named entity: subsetneq; with a semi-colon" do
    assert_lexes "&subsetneq;", "[[\"Character\",\"⊊\"]]"
  end
  it "namedEntities:Bad named entity: subsetneqq without a semi-colon" do
    assert_lexes "&subsetneqq", "[[\"Character\",\"&subsetneqq\"]]"
  end
  it "namedEntities:Named entity: subsetneqq; with a semi-colon" do
    assert_lexes "&subsetneqq;", "[[\"Character\",\"⫋\"]]"
  end
  it "namedEntities:Bad named entity: subsim without a semi-colon" do
    assert_lexes "&subsim", "[[\"Character\",\"&subsim\"]]"
  end
  it "namedEntities:Named entity: subsim; with a semi-colon" do
    assert_lexes "&subsim;", "[[\"Character\",\"⫇\"]]"
  end
  it "namedEntities:Bad named entity: subsub without a semi-colon" do
    assert_lexes "&subsub", "[[\"Character\",\"&subsub\"]]"
  end
  it "namedEntities:Named entity: subsub; with a semi-colon" do
    assert_lexes "&subsub;", "[[\"Character\",\"⫕\"]]"
  end
  it "namedEntities:Bad named entity: subsup without a semi-colon" do
    assert_lexes "&subsup", "[[\"Character\",\"&subsup\"]]"
  end
  it "namedEntities:Named entity: subsup; with a semi-colon" do
    assert_lexes "&subsup;", "[[\"Character\",\"⫓\"]]"
  end
  it "namedEntities:Bad named entity: succ without a semi-colon" do
    assert_lexes "&succ", "[[\"Character\",\"&succ\"]]"
  end
  it "namedEntities:Named entity: succ; with a semi-colon" do
    assert_lexes "&succ;", "[[\"Character\",\"≻\"]]"
  end
  it "namedEntities:Bad named entity: succapprox without a semi-colon" do
    assert_lexes "&succapprox", "[[\"Character\",\"&succapprox\"]]"
  end
  it "namedEntities:Named entity: succapprox; with a semi-colon" do
    assert_lexes "&succapprox;", "[[\"Character\",\"⪸\"]]"
  end
  it "namedEntities:Bad named entity: succcurlyeq without a semi-colon" do
    assert_lexes "&succcurlyeq", "[[\"Character\",\"&succcurlyeq\"]]"
  end
  it "namedEntities:Named entity: succcurlyeq; with a semi-colon" do
    assert_lexes "&succcurlyeq;", "[[\"Character\",\"≽\"]]"
  end
  it "namedEntities:Bad named entity: succeq without a semi-colon" do
    assert_lexes "&succeq", "[[\"Character\",\"&succeq\"]]"
  end
  it "namedEntities:Named entity: succeq; with a semi-colon" do
    assert_lexes "&succeq;", "[[\"Character\",\"⪰\"]]"
  end
  it "namedEntities:Bad named entity: succnapprox without a semi-colon" do
    assert_lexes "&succnapprox", "[[\"Character\",\"&succnapprox\"]]"
  end
  it "namedEntities:Named entity: succnapprox; with a semi-colon" do
    assert_lexes "&succnapprox;", "[[\"Character\",\"⪺\"]]"
  end
  it "namedEntities:Bad named entity: succneqq without a semi-colon" do
    assert_lexes "&succneqq", "[[\"Character\",\"&succneqq\"]]"
  end
  it "namedEntities:Named entity: succneqq; with a semi-colon" do
    assert_lexes "&succneqq;", "[[\"Character\",\"⪶\"]]"
  end
  it "namedEntities:Bad named entity: succnsim without a semi-colon" do
    assert_lexes "&succnsim", "[[\"Character\",\"&succnsim\"]]"
  end
  it "namedEntities:Named entity: succnsim; with a semi-colon" do
    assert_lexes "&succnsim;", "[[\"Character\",\"⋩\"]]"
  end
  it "namedEntities:Bad named entity: succsim without a semi-colon" do
    assert_lexes "&succsim", "[[\"Character\",\"&succsim\"]]"
  end
  it "namedEntities:Named entity: succsim; with a semi-colon" do
    assert_lexes "&succsim;", "[[\"Character\",\"≿\"]]"
  end
  it "namedEntities:Bad named entity: sum without a semi-colon" do
    assert_lexes "&sum", "[[\"Character\",\"&sum\"]]"
  end
  it "namedEntities:Named entity: sum; with a semi-colon" do
    assert_lexes "&sum;", "[[\"Character\",\"∑\"]]"
  end
  it "namedEntities:Bad named entity: sung without a semi-colon" do
    assert_lexes "&sung", "[[\"Character\",\"&sung\"]]"
  end
  it "namedEntities:Named entity: sung; with a semi-colon" do
    assert_lexes "&sung;", "[[\"Character\",\"♪\"]]"
  end
  it "namedEntities:Bad named entity: sup without a semi-colon" do
    assert_lexes "&sup", "[[\"Character\",\"&sup\"]]"
  end
  it "namedEntities:Named entity: sup1 without a semi-colon" do
    assert_lexes "&sup1", "[[\"Character\",\"¹\"]]"
  end
  it "namedEntities:Named entity: sup1; with a semi-colon" do
    assert_lexes "&sup1;", "[[\"Character\",\"¹\"]]"
  end
  it "namedEntities:Named entity: sup2 without a semi-colon" do
    assert_lexes "&sup2", "[[\"Character\",\"²\"]]"
  end
  it "namedEntities:Named entity: sup2; with a semi-colon" do
    assert_lexes "&sup2;", "[[\"Character\",\"²\"]]"
  end
  it "namedEntities:Named entity: sup3 without a semi-colon" do
    assert_lexes "&sup3", "[[\"Character\",\"³\"]]"
  end
  it "namedEntities:Named entity: sup3; with a semi-colon" do
    assert_lexes "&sup3;", "[[\"Character\",\"³\"]]"
  end
  it "namedEntities:Named entity: sup; with a semi-colon" do
    assert_lexes "&sup;", "[[\"Character\",\"⊃\"]]"
  end
  it "namedEntities:Bad named entity: supE without a semi-colon" do
    assert_lexes "&supE", "[[\"Character\",\"&supE\"]]"
  end
  it "namedEntities:Named entity: supE; with a semi-colon" do
    assert_lexes "&supE;", "[[\"Character\",\"⫆\"]]"
  end
  it "namedEntities:Bad named entity: supdot without a semi-colon" do
    assert_lexes "&supdot", "[[\"Character\",\"&supdot\"]]"
  end
  it "namedEntities:Named entity: supdot; with a semi-colon" do
    assert_lexes "&supdot;", "[[\"Character\",\"⪾\"]]"
  end
  it "namedEntities:Bad named entity: supdsub without a semi-colon" do
    assert_lexes "&supdsub", "[[\"Character\",\"&supdsub\"]]"
  end
  it "namedEntities:Named entity: supdsub; with a semi-colon" do
    assert_lexes "&supdsub;", "[[\"Character\",\"⫘\"]]"
  end
  it "namedEntities:Bad named entity: supe without a semi-colon" do
    assert_lexes "&supe", "[[\"Character\",\"&supe\"]]"
  end
  it "namedEntities:Named entity: supe; with a semi-colon" do
    assert_lexes "&supe;", "[[\"Character\",\"⊇\"]]"
  end
  it "namedEntities:Bad named entity: supedot without a semi-colon" do
    assert_lexes "&supedot", "[[\"Character\",\"&supedot\"]]"
  end
  it "namedEntities:Named entity: supedot; with a semi-colon" do
    assert_lexes "&supedot;", "[[\"Character\",\"⫄\"]]"
  end
  it "namedEntities:Bad named entity: suphsol without a semi-colon" do
    assert_lexes "&suphsol", "[[\"Character\",\"&suphsol\"]]"
  end
  it "namedEntities:Named entity: suphsol; with a semi-colon" do
    assert_lexes "&suphsol;", "[[\"Character\",\"⟉\"]]"
  end
  it "namedEntities:Bad named entity: suphsub without a semi-colon" do
    assert_lexes "&suphsub", "[[\"Character\",\"&suphsub\"]]"
  end
  it "namedEntities:Named entity: suphsub; with a semi-colon" do
    assert_lexes "&suphsub;", "[[\"Character\",\"⫗\"]]"
  end
  it "namedEntities:Bad named entity: suplarr without a semi-colon" do
    assert_lexes "&suplarr", "[[\"Character\",\"&suplarr\"]]"
  end
  it "namedEntities:Named entity: suplarr; with a semi-colon" do
    assert_lexes "&suplarr;", "[[\"Character\",\"⥻\"]]"
  end
  it "namedEntities:Bad named entity: supmult without a semi-colon" do
    assert_lexes "&supmult", "[[\"Character\",\"&supmult\"]]"
  end
  it "namedEntities:Named entity: supmult; with a semi-colon" do
    assert_lexes "&supmult;", "[[\"Character\",\"⫂\"]]"
  end
  it "namedEntities:Bad named entity: supnE without a semi-colon" do
    assert_lexes "&supnE", "[[\"Character\",\"&supnE\"]]"
  end
  it "namedEntities:Named entity: supnE; with a semi-colon" do
    assert_lexes "&supnE;", "[[\"Character\",\"⫌\"]]"
  end
  it "namedEntities:Bad named entity: supne without a semi-colon" do
    assert_lexes "&supne", "[[\"Character\",\"&supne\"]]"
  end
  it "namedEntities:Named entity: supne; with a semi-colon" do
    assert_lexes "&supne;", "[[\"Character\",\"⊋\"]]"
  end
  it "namedEntities:Bad named entity: supplus without a semi-colon" do
    assert_lexes "&supplus", "[[\"Character\",\"&supplus\"]]"
  end
  it "namedEntities:Named entity: supplus; with a semi-colon" do
    assert_lexes "&supplus;", "[[\"Character\",\"⫀\"]]"
  end
  it "namedEntities:Bad named entity: supset without a semi-colon" do
    assert_lexes "&supset", "[[\"Character\",\"&supset\"]]"
  end
  it "namedEntities:Named entity: supset; with a semi-colon" do
    assert_lexes "&supset;", "[[\"Character\",\"⊃\"]]"
  end
  it "namedEntities:Bad named entity: supseteq without a semi-colon" do
    assert_lexes "&supseteq", "[[\"Character\",\"&supseteq\"]]"
  end
  it "namedEntities:Named entity: supseteq; with a semi-colon" do
    assert_lexes "&supseteq;", "[[\"Character\",\"⊇\"]]"
  end
  it "namedEntities:Bad named entity: supseteqq without a semi-colon" do
    assert_lexes "&supseteqq", "[[\"Character\",\"&supseteqq\"]]"
  end
  it "namedEntities:Named entity: supseteqq; with a semi-colon" do
    assert_lexes "&supseteqq;", "[[\"Character\",\"⫆\"]]"
  end
  it "namedEntities:Bad named entity: supsetneq without a semi-colon" do
    assert_lexes "&supsetneq", "[[\"Character\",\"&supsetneq\"]]"
  end
  it "namedEntities:Named entity: supsetneq; with a semi-colon" do
    assert_lexes "&supsetneq;", "[[\"Character\",\"⊋\"]]"
  end
  it "namedEntities:Bad named entity: supsetneqq without a semi-colon" do
    assert_lexes "&supsetneqq", "[[\"Character\",\"&supsetneqq\"]]"
  end
  it "namedEntities:Named entity: supsetneqq; with a semi-colon" do
    assert_lexes "&supsetneqq;", "[[\"Character\",\"⫌\"]]"
  end
  it "namedEntities:Bad named entity: supsim without a semi-colon" do
    assert_lexes "&supsim", "[[\"Character\",\"&supsim\"]]"
  end
  it "namedEntities:Named entity: supsim; with a semi-colon" do
    assert_lexes "&supsim;", "[[\"Character\",\"⫈\"]]"
  end
  it "namedEntities:Bad named entity: supsub without a semi-colon" do
    assert_lexes "&supsub", "[[\"Character\",\"&supsub\"]]"
  end
  it "namedEntities:Named entity: supsub; with a semi-colon" do
    assert_lexes "&supsub;", "[[\"Character\",\"⫔\"]]"
  end
  it "namedEntities:Bad named entity: supsup without a semi-colon" do
    assert_lexes "&supsup", "[[\"Character\",\"&supsup\"]]"
  end
  it "namedEntities:Named entity: supsup; with a semi-colon" do
    assert_lexes "&supsup;", "[[\"Character\",\"⫖\"]]"
  end
  it "namedEntities:Bad named entity: swArr without a semi-colon" do
    assert_lexes "&swArr", "[[\"Character\",\"&swArr\"]]"
  end
  it "namedEntities:Named entity: swArr; with a semi-colon" do
    assert_lexes "&swArr;", "[[\"Character\",\"⇙\"]]"
  end
  it "namedEntities:Bad named entity: swarhk without a semi-colon" do
    assert_lexes "&swarhk", "[[\"Character\",\"&swarhk\"]]"
  end
  it "namedEntities:Named entity: swarhk; with a semi-colon" do
    assert_lexes "&swarhk;", "[[\"Character\",\"⤦\"]]"
  end
  it "namedEntities:Bad named entity: swarr without a semi-colon" do
    assert_lexes "&swarr", "[[\"Character\",\"&swarr\"]]"
  end
  it "namedEntities:Named entity: swarr; with a semi-colon" do
    assert_lexes "&swarr;", "[[\"Character\",\"↙\"]]"
  end
  it "namedEntities:Bad named entity: swarrow without a semi-colon" do
    assert_lexes "&swarrow", "[[\"Character\",\"&swarrow\"]]"
  end
  it "namedEntities:Named entity: swarrow; with a semi-colon" do
    assert_lexes "&swarrow;", "[[\"Character\",\"↙\"]]"
  end
  it "namedEntities:Bad named entity: swnwar without a semi-colon" do
    assert_lexes "&swnwar", "[[\"Character\",\"&swnwar\"]]"
  end
  it "namedEntities:Named entity: swnwar; with a semi-colon" do
    assert_lexes "&swnwar;", "[[\"Character\",\"⤪\"]]"
  end
  it "namedEntities:Named entity: szlig without a semi-colon" do
    assert_lexes "&szlig", "[[\"Character\",\"ß\"]]"
  end
  it "namedEntities:Named entity: szlig; with a semi-colon" do
    assert_lexes "&szlig;", "[[\"Character\",\"ß\"]]"
  end
  it "namedEntities:Bad named entity: target without a semi-colon" do
    assert_lexes "&target", "[[\"Character\",\"&target\"]]"
  end
  it "namedEntities:Named entity: target; with a semi-colon" do
    assert_lexes "&target;", "[[\"Character\",\"⌖\"]]"
  end
  it "namedEntities:Bad named entity: tau without a semi-colon" do
    assert_lexes "&tau", "[[\"Character\",\"&tau\"]]"
  end
  it "namedEntities:Named entity: tau; with a semi-colon" do
    assert_lexes "&tau;", "[[\"Character\",\"τ\"]]"
  end
  it "namedEntities:Bad named entity: tbrk without a semi-colon" do
    assert_lexes "&tbrk", "[[\"Character\",\"&tbrk\"]]"
  end
  it "namedEntities:Named entity: tbrk; with a semi-colon" do
    assert_lexes "&tbrk;", "[[\"Character\",\"⎴\"]]"
  end
  it "namedEntities:Bad named entity: tcaron without a semi-colon" do
    assert_lexes "&tcaron", "[[\"Character\",\"&tcaron\"]]"
  end
  it "namedEntities:Named entity: tcaron; with a semi-colon" do
    assert_lexes "&tcaron;", "[[\"Character\",\"ť\"]]"
  end
  it "namedEntities:Bad named entity: tcedil without a semi-colon" do
    assert_lexes "&tcedil", "[[\"Character\",\"&tcedil\"]]"
  end
  it "namedEntities:Named entity: tcedil; with a semi-colon" do
    assert_lexes "&tcedil;", "[[\"Character\",\"ţ\"]]"
  end
  it "namedEntities:Bad named entity: tcy without a semi-colon" do
    assert_lexes "&tcy", "[[\"Character\",\"&tcy\"]]"
  end
  it "namedEntities:Named entity: tcy; with a semi-colon" do
    assert_lexes "&tcy;", "[[\"Character\",\"т\"]]"
  end
  it "namedEntities:Bad named entity: tdot without a semi-colon" do
    assert_lexes "&tdot", "[[\"Character\",\"&tdot\"]]"
  end
  it "namedEntities:Named entity: tdot; with a semi-colon" do
    assert_lexes "&tdot;", "[[\"Character\",\"⃛\"]]"
  end
  it "namedEntities:Bad named entity: telrec without a semi-colon" do
    assert_lexes "&telrec", "[[\"Character\",\"&telrec\"]]"
  end
  it "namedEntities:Named entity: telrec; with a semi-colon" do
    assert_lexes "&telrec;", "[[\"Character\",\"⌕\"]]"
  end
  it "namedEntities:Bad named entity: tfr without a semi-colon" do
    assert_lexes "&tfr", "[[\"Character\",\"&tfr\"]]"
  end
  it "namedEntities:Named entity: tfr; with a semi-colon" do
    assert_lexes "&tfr;", "[[\"Character\",\"𝔱\"]]"
  end
  it "namedEntities:Bad named entity: there4 without a semi-colon" do
    assert_lexes "&there4", "[[\"Character\",\"&there4\"]]"
  end
  it "namedEntities:Named entity: there4; with a semi-colon" do
    assert_lexes "&there4;", "[[\"Character\",\"∴\"]]"
  end
  it "namedEntities:Bad named entity: therefore without a semi-colon" do
    assert_lexes "&therefore", "[[\"Character\",\"&therefore\"]]"
  end
  it "namedEntities:Named entity: therefore; with a semi-colon" do
    assert_lexes "&therefore;", "[[\"Character\",\"∴\"]]"
  end
  it "namedEntities:Bad named entity: theta without a semi-colon" do
    assert_lexes "&theta", "[[\"Character\",\"&theta\"]]"
  end
  it "namedEntities:Named entity: theta; with a semi-colon" do
    assert_lexes "&theta;", "[[\"Character\",\"θ\"]]"
  end
  it "namedEntities:Bad named entity: thetasym without a semi-colon" do
    assert_lexes "&thetasym", "[[\"Character\",\"&thetasym\"]]"
  end
  it "namedEntities:Named entity: thetasym; with a semi-colon" do
    assert_lexes "&thetasym;", "[[\"Character\",\"ϑ\"]]"
  end
  it "namedEntities:Bad named entity: thetav without a semi-colon" do
    assert_lexes "&thetav", "[[\"Character\",\"&thetav\"]]"
  end
  it "namedEntities:Named entity: thetav; with a semi-colon" do
    assert_lexes "&thetav;", "[[\"Character\",\"ϑ\"]]"
  end
  it "namedEntities:Bad named entity: thickapprox without a semi-colon" do
    assert_lexes "&thickapprox", "[[\"Character\",\"&thickapprox\"]]"
  end
  it "namedEntities:Named entity: thickapprox; with a semi-colon" do
    assert_lexes "&thickapprox;", "[[\"Character\",\"≈\"]]"
  end
  it "namedEntities:Bad named entity: thicksim without a semi-colon" do
    assert_lexes "&thicksim", "[[\"Character\",\"&thicksim\"]]"
  end
  it "namedEntities:Named entity: thicksim; with a semi-colon" do
    assert_lexes "&thicksim;", "[[\"Character\",\"∼\"]]"
  end
  it "namedEntities:Bad named entity: thinsp without a semi-colon" do
    assert_lexes "&thinsp", "[[\"Character\",\"&thinsp\"]]"
  end
  it "namedEntities:Named entity: thinsp; with a semi-colon" do
    assert_lexes "&thinsp;", "[[\"Character\",\"\u2009\"]]"
  end
  it "namedEntities:Bad named entity: thkap without a semi-colon" do
    assert_lexes "&thkap", "[[\"Character\",\"&thkap\"]]"
  end
  it "namedEntities:Named entity: thkap; with a semi-colon" do
    assert_lexes "&thkap;", "[[\"Character\",\"≈\"]]"
  end
  it "namedEntities:Bad named entity: thksim without a semi-colon" do
    assert_lexes "&thksim", "[[\"Character\",\"&thksim\"]]"
  end
  it "namedEntities:Named entity: thksim; with a semi-colon" do
    assert_lexes "&thksim;", "[[\"Character\",\"∼\"]]"
  end
  it "namedEntities:Named entity: thorn without a semi-colon" do
    assert_lexes "&thorn", "[[\"Character\",\"þ\"]]"
  end
  it "namedEntities:Named entity: thorn; with a semi-colon" do
    assert_lexes "&thorn;", "[[\"Character\",\"þ\"]]"
  end
  it "namedEntities:Bad named entity: tilde without a semi-colon" do
    assert_lexes "&tilde", "[[\"Character\",\"&tilde\"]]"
  end
  it "namedEntities:Named entity: tilde; with a semi-colon" do
    assert_lexes "&tilde;", "[[\"Character\",\"˜\"]]"
  end
  it "namedEntities:Named entity: times without a semi-colon" do
    assert_lexes "&times", "[[\"Character\",\"×\"]]"
  end
  it "namedEntities:Named entity: times; with a semi-colon" do
    assert_lexes "&times;", "[[\"Character\",\"×\"]]"
  end
  it "namedEntities:Named entity: timesb; with a semi-colon" do
    assert_lexes "&timesb;", "[[\"Character\",\"⊠\"]]"
  end
  it "namedEntities:Named entity: timesbar; with a semi-colon" do
    assert_lexes "&timesbar;", "[[\"Character\",\"⨱\"]]"
  end
  it "namedEntities:Named entity: timesd; with a semi-colon" do
    assert_lexes "&timesd;", "[[\"Character\",\"⨰\"]]"
  end
  it "namedEntities:Bad named entity: tint without a semi-colon" do
    assert_lexes "&tint", "[[\"Character\",\"&tint\"]]"
  end
  it "namedEntities:Named entity: tint; with a semi-colon" do
    assert_lexes "&tint;", "[[\"Character\",\"∭\"]]"
  end
  it "namedEntities:Bad named entity: toea without a semi-colon" do
    assert_lexes "&toea", "[[\"Character\",\"&toea\"]]"
  end
  it "namedEntities:Named entity: toea; with a semi-colon" do
    assert_lexes "&toea;", "[[\"Character\",\"⤨\"]]"
  end
  it "namedEntities:Bad named entity: top without a semi-colon" do
    assert_lexes "&top", "[[\"Character\",\"&top\"]]"
  end
  it "namedEntities:Named entity: top; with a semi-colon" do
    assert_lexes "&top;", "[[\"Character\",\"⊤\"]]"
  end
  it "namedEntities:Bad named entity: topbot without a semi-colon" do
    assert_lexes "&topbot", "[[\"Character\",\"&topbot\"]]"
  end
  it "namedEntities:Named entity: topbot; with a semi-colon" do
    assert_lexes "&topbot;", "[[\"Character\",\"⌶\"]]"
  end
  it "namedEntities:Bad named entity: topcir without a semi-colon" do
    assert_lexes "&topcir", "[[\"Character\",\"&topcir\"]]"
  end
  it "namedEntities:Named entity: topcir; with a semi-colon" do
    assert_lexes "&topcir;", "[[\"Character\",\"⫱\"]]"
  end
  it "namedEntities:Bad named entity: topf without a semi-colon" do
    assert_lexes "&topf", "[[\"Character\",\"&topf\"]]"
  end
  it "namedEntities:Named entity: topf; with a semi-colon" do
    assert_lexes "&topf;", "[[\"Character\",\"𝕥\"]]"
  end
  it "namedEntities:Bad named entity: topfork without a semi-colon" do
    assert_lexes "&topfork", "[[\"Character\",\"&topfork\"]]"
  end
  it "namedEntities:Named entity: topfork; with a semi-colon" do
    assert_lexes "&topfork;", "[[\"Character\",\"⫚\"]]"
  end
  it "namedEntities:Bad named entity: tosa without a semi-colon" do
    assert_lexes "&tosa", "[[\"Character\",\"&tosa\"]]"
  end
  it "namedEntities:Named entity: tosa; with a semi-colon" do
    assert_lexes "&tosa;", "[[\"Character\",\"⤩\"]]"
  end
  it "namedEntities:Bad named entity: tprime without a semi-colon" do
    assert_lexes "&tprime", "[[\"Character\",\"&tprime\"]]"
  end
  it "namedEntities:Named entity: tprime; with a semi-colon" do
    assert_lexes "&tprime;", "[[\"Character\",\"‴\"]]"
  end
  it "namedEntities:Bad named entity: trade without a semi-colon" do
    assert_lexes "&trade", "[[\"Character\",\"&trade\"]]"
  end
  it "namedEntities:Named entity: trade; with a semi-colon" do
    assert_lexes "&trade;", "[[\"Character\",\"™\"]]"
  end
  it "namedEntities:Bad named entity: triangle without a semi-colon" do
    assert_lexes "&triangle", "[[\"Character\",\"&triangle\"]]"
  end
  it "namedEntities:Named entity: triangle; with a semi-colon" do
    assert_lexes "&triangle;", "[[\"Character\",\"▵\"]]"
  end
  it "namedEntities:Bad named entity: triangledown without a semi-colon" do
    assert_lexes "&triangledown", "[[\"Character\",\"&triangledown\"]]"
  end
  it "namedEntities:Named entity: triangledown; with a semi-colon" do
    assert_lexes "&triangledown;", "[[\"Character\",\"▿\"]]"
  end
  it "namedEntities:Bad named entity: triangleleft without a semi-colon" do
    assert_lexes "&triangleleft", "[[\"Character\",\"&triangleleft\"]]"
  end
  it "namedEntities:Named entity: triangleleft; with a semi-colon" do
    assert_lexes "&triangleleft;", "[[\"Character\",\"◃\"]]"
  end
  it "namedEntities:Bad named entity: trianglelefteq without a semi-colon" do
    assert_lexes "&trianglelefteq", "[[\"Character\",\"&trianglelefteq\"]]"
  end
  it "namedEntities:Named entity: trianglelefteq; with a semi-colon" do
    assert_lexes "&trianglelefteq;", "[[\"Character\",\"⊴\"]]"
  end
  it "namedEntities:Bad named entity: triangleq without a semi-colon" do
    assert_lexes "&triangleq", "[[\"Character\",\"&triangleq\"]]"
  end
  it "namedEntities:Named entity: triangleq; with a semi-colon" do
    assert_lexes "&triangleq;", "[[\"Character\",\"≜\"]]"
  end
  it "namedEntities:Bad named entity: triangleright without a semi-colon" do
    assert_lexes "&triangleright", "[[\"Character\",\"&triangleright\"]]"
  end
  it "namedEntities:Named entity: triangleright; with a semi-colon" do
    assert_lexes "&triangleright;", "[[\"Character\",\"▹\"]]"
  end
  it "namedEntities:Bad named entity: trianglerighteq without a semi-colon" do
    assert_lexes "&trianglerighteq", "[[\"Character\",\"&trianglerighteq\"]]"
  end
  it "namedEntities:Named entity: trianglerighteq; with a semi-colon" do
    assert_lexes "&trianglerighteq;", "[[\"Character\",\"⊵\"]]"
  end
  it "namedEntities:Bad named entity: tridot without a semi-colon" do
    assert_lexes "&tridot", "[[\"Character\",\"&tridot\"]]"
  end
  it "namedEntities:Named entity: tridot; with a semi-colon" do
    assert_lexes "&tridot;", "[[\"Character\",\"◬\"]]"
  end
  it "namedEntities:Bad named entity: trie without a semi-colon" do
    assert_lexes "&trie", "[[\"Character\",\"&trie\"]]"
  end
  it "namedEntities:Named entity: trie; with a semi-colon" do
    assert_lexes "&trie;", "[[\"Character\",\"≜\"]]"
  end
  it "namedEntities:Bad named entity: triminus without a semi-colon" do
    assert_lexes "&triminus", "[[\"Character\",\"&triminus\"]]"
  end
  it "namedEntities:Named entity: triminus; with a semi-colon" do
    assert_lexes "&triminus;", "[[\"Character\",\"⨺\"]]"
  end
  it "namedEntities:Bad named entity: triplus without a semi-colon" do
    assert_lexes "&triplus", "[[\"Character\",\"&triplus\"]]"
  end
  it "namedEntities:Named entity: triplus; with a semi-colon" do
    assert_lexes "&triplus;", "[[\"Character\",\"⨹\"]]"
  end
  it "namedEntities:Bad named entity: trisb without a semi-colon" do
    assert_lexes "&trisb", "[[\"Character\",\"&trisb\"]]"
  end
  it "namedEntities:Named entity: trisb; with a semi-colon" do
    assert_lexes "&trisb;", "[[\"Character\",\"⧍\"]]"
  end
  it "namedEntities:Bad named entity: tritime without a semi-colon" do
    assert_lexes "&tritime", "[[\"Character\",\"&tritime\"]]"
  end
  it "namedEntities:Named entity: tritime; with a semi-colon" do
    assert_lexes "&tritime;", "[[\"Character\",\"⨻\"]]"
  end
  it "namedEntities:Bad named entity: trpezium without a semi-colon" do
    assert_lexes "&trpezium", "[[\"Character\",\"&trpezium\"]]"
  end
  it "namedEntities:Named entity: trpezium; with a semi-colon" do
    assert_lexes "&trpezium;", "[[\"Character\",\"⏢\"]]"
  end
  it "namedEntities:Bad named entity: tscr without a semi-colon" do
    assert_lexes "&tscr", "[[\"Character\",\"&tscr\"]]"
  end
  it "namedEntities:Named entity: tscr; with a semi-colon" do
    assert_lexes "&tscr;", "[[\"Character\",\"𝓉\"]]"
  end
  it "namedEntities:Bad named entity: tscy without a semi-colon" do
    assert_lexes "&tscy", "[[\"Character\",\"&tscy\"]]"
  end
  it "namedEntities:Named entity: tscy; with a semi-colon" do
    assert_lexes "&tscy;", "[[\"Character\",\"ц\"]]"
  end
  it "namedEntities:Bad named entity: tshcy without a semi-colon" do
    assert_lexes "&tshcy", "[[\"Character\",\"&tshcy\"]]"
  end
  it "namedEntities:Named entity: tshcy; with a semi-colon" do
    assert_lexes "&tshcy;", "[[\"Character\",\"ћ\"]]"
  end
  it "namedEntities:Bad named entity: tstrok without a semi-colon" do
    assert_lexes "&tstrok", "[[\"Character\",\"&tstrok\"]]"
  end
  it "namedEntities:Named entity: tstrok; with a semi-colon" do
    assert_lexes "&tstrok;", "[[\"Character\",\"ŧ\"]]"
  end
  it "namedEntities:Bad named entity: twixt without a semi-colon" do
    assert_lexes "&twixt", "[[\"Character\",\"&twixt\"]]"
  end
  it "namedEntities:Named entity: twixt; with a semi-colon" do
    assert_lexes "&twixt;", "[[\"Character\",\"≬\"]]"
  end
  it "namedEntities:Bad named entity: twoheadleftarrow without a semi-colon" do
    assert_lexes "&twoheadleftarrow", "[[\"Character\",\"&twoheadleftarrow\"]]"
  end
  it "namedEntities:Named entity: twoheadleftarrow; with a semi-colon" do
    assert_lexes "&twoheadleftarrow;", "[[\"Character\",\"↞\"]]"
  end
  it "namedEntities:Bad named entity: twoheadrightarrow without a semi-colon" do
    assert_lexes "&twoheadrightarrow", "[[\"Character\",\"&twoheadrightarrow\"]]"
  end
  it "namedEntities:Named entity: twoheadrightarrow; with a semi-colon" do
    assert_lexes "&twoheadrightarrow;", "[[\"Character\",\"↠\"]]"
  end
  it "namedEntities:Bad named entity: uArr without a semi-colon" do
    assert_lexes "&uArr", "[[\"Character\",\"&uArr\"]]"
  end
  it "namedEntities:Named entity: uArr; with a semi-colon" do
    assert_lexes "&uArr;", "[[\"Character\",\"⇑\"]]"
  end
  it "namedEntities:Bad named entity: uHar without a semi-colon" do
    assert_lexes "&uHar", "[[\"Character\",\"&uHar\"]]"
  end
  it "namedEntities:Named entity: uHar; with a semi-colon" do
    assert_lexes "&uHar;", "[[\"Character\",\"⥣\"]]"
  end
  it "namedEntities:Named entity: uacute without a semi-colon" do
    assert_lexes "&uacute", "[[\"Character\",\"ú\"]]"
  end
  it "namedEntities:Named entity: uacute; with a semi-colon" do
    assert_lexes "&uacute;", "[[\"Character\",\"ú\"]]"
  end
  it "namedEntities:Bad named entity: uarr without a semi-colon" do
    assert_lexes "&uarr", "[[\"Character\",\"&uarr\"]]"
  end
  it "namedEntities:Named entity: uarr; with a semi-colon" do
    assert_lexes "&uarr;", "[[\"Character\",\"↑\"]]"
  end
  it "namedEntities:Bad named entity: ubrcy without a semi-colon" do
    assert_lexes "&ubrcy", "[[\"Character\",\"&ubrcy\"]]"
  end
  it "namedEntities:Named entity: ubrcy; with a semi-colon" do
    assert_lexes "&ubrcy;", "[[\"Character\",\"ў\"]]"
  end
  it "namedEntities:Bad named entity: ubreve without a semi-colon" do
    assert_lexes "&ubreve", "[[\"Character\",\"&ubreve\"]]"
  end
  it "namedEntities:Named entity: ubreve; with a semi-colon" do
    assert_lexes "&ubreve;", "[[\"Character\",\"ŭ\"]]"
  end
  it "namedEntities:Named entity: ucirc without a semi-colon" do
    assert_lexes "&ucirc", "[[\"Character\",\"û\"]]"
  end
  it "namedEntities:Named entity: ucirc; with a semi-colon" do
    assert_lexes "&ucirc;", "[[\"Character\",\"û\"]]"
  end
  it "namedEntities:Bad named entity: ucy without a semi-colon" do
    assert_lexes "&ucy", "[[\"Character\",\"&ucy\"]]"
  end
  it "namedEntities:Named entity: ucy; with a semi-colon" do
    assert_lexes "&ucy;", "[[\"Character\",\"у\"]]"
  end
  it "namedEntities:Bad named entity: udarr without a semi-colon" do
    assert_lexes "&udarr", "[[\"Character\",\"&udarr\"]]"
  end
  it "namedEntities:Named entity: udarr; with a semi-colon" do
    assert_lexes "&udarr;", "[[\"Character\",\"⇅\"]]"
  end
  it "namedEntities:Bad named entity: udblac without a semi-colon" do
    assert_lexes "&udblac", "[[\"Character\",\"&udblac\"]]"
  end
  it "namedEntities:Named entity: udblac; with a semi-colon" do
    assert_lexes "&udblac;", "[[\"Character\",\"ű\"]]"
  end
  it "namedEntities:Bad named entity: udhar without a semi-colon" do
    assert_lexes "&udhar", "[[\"Character\",\"&udhar\"]]"
  end
  it "namedEntities:Named entity: udhar; with a semi-colon" do
    assert_lexes "&udhar;", "[[\"Character\",\"⥮\"]]"
  end
  it "namedEntities:Bad named entity: ufisht without a semi-colon" do
    assert_lexes "&ufisht", "[[\"Character\",\"&ufisht\"]]"
  end
  it "namedEntities:Named entity: ufisht; with a semi-colon" do
    assert_lexes "&ufisht;", "[[\"Character\",\"⥾\"]]"
  end
  it "namedEntities:Bad named entity: ufr without a semi-colon" do
    assert_lexes "&ufr", "[[\"Character\",\"&ufr\"]]"
  end
  it "namedEntities:Named entity: ufr; with a semi-colon" do
    assert_lexes "&ufr;", "[[\"Character\",\"𝔲\"]]"
  end
  it "namedEntities:Named entity: ugrave without a semi-colon" do
    assert_lexes "&ugrave", "[[\"Character\",\"ù\"]]"
  end
  it "namedEntities:Named entity: ugrave; with a semi-colon" do
    assert_lexes "&ugrave;", "[[\"Character\",\"ù\"]]"
  end
  it "namedEntities:Bad named entity: uharl without a semi-colon" do
    assert_lexes "&uharl", "[[\"Character\",\"&uharl\"]]"
  end
  it "namedEntities:Named entity: uharl; with a semi-colon" do
    assert_lexes "&uharl;", "[[\"Character\",\"↿\"]]"
  end
  it "namedEntities:Bad named entity: uharr without a semi-colon" do
    assert_lexes "&uharr", "[[\"Character\",\"&uharr\"]]"
  end
  it "namedEntities:Named entity: uharr; with a semi-colon" do
    assert_lexes "&uharr;", "[[\"Character\",\"↾\"]]"
  end
  it "namedEntities:Bad named entity: uhblk without a semi-colon" do
    assert_lexes "&uhblk", "[[\"Character\",\"&uhblk\"]]"
  end
  it "namedEntities:Named entity: uhblk; with a semi-colon" do
    assert_lexes "&uhblk;", "[[\"Character\",\"▀\"]]"
  end
  it "namedEntities:Bad named entity: ulcorn without a semi-colon" do
    assert_lexes "&ulcorn", "[[\"Character\",\"&ulcorn\"]]"
  end
  it "namedEntities:Named entity: ulcorn; with a semi-colon" do
    assert_lexes "&ulcorn;", "[[\"Character\",\"⌜\"]]"
  end
  it "namedEntities:Bad named entity: ulcorner without a semi-colon" do
    assert_lexes "&ulcorner", "[[\"Character\",\"&ulcorner\"]]"
  end
  it "namedEntities:Named entity: ulcorner; with a semi-colon" do
    assert_lexes "&ulcorner;", "[[\"Character\",\"⌜\"]]"
  end
  it "namedEntities:Bad named entity: ulcrop without a semi-colon" do
    assert_lexes "&ulcrop", "[[\"Character\",\"&ulcrop\"]]"
  end
  it "namedEntities:Named entity: ulcrop; with a semi-colon" do
    assert_lexes "&ulcrop;", "[[\"Character\",\"⌏\"]]"
  end
  it "namedEntities:Bad named entity: ultri without a semi-colon" do
    assert_lexes "&ultri", "[[\"Character\",\"&ultri\"]]"
  end
  it "namedEntities:Named entity: ultri; with a semi-colon" do
    assert_lexes "&ultri;", "[[\"Character\",\"◸\"]]"
  end
  it "namedEntities:Bad named entity: umacr without a semi-colon" do
    assert_lexes "&umacr", "[[\"Character\",\"&umacr\"]]"
  end
  it "namedEntities:Named entity: umacr; with a semi-colon" do
    assert_lexes "&umacr;", "[[\"Character\",\"ū\"]]"
  end
  it "namedEntities:Named entity: uml without a semi-colon" do
    assert_lexes "&uml", "[[\"Character\",\"¨\"]]"
  end
  it "namedEntities:Named entity: uml; with a semi-colon" do
    assert_lexes "&uml;", "[[\"Character\",\"¨\"]]"
  end
  it "namedEntities:Bad named entity: uogon without a semi-colon" do
    assert_lexes "&uogon", "[[\"Character\",\"&uogon\"]]"
  end
  it "namedEntities:Named entity: uogon; with a semi-colon" do
    assert_lexes "&uogon;", "[[\"Character\",\"ų\"]]"
  end
  it "namedEntities:Bad named entity: uopf without a semi-colon" do
    assert_lexes "&uopf", "[[\"Character\",\"&uopf\"]]"
  end
  it "namedEntities:Named entity: uopf; with a semi-colon" do
    assert_lexes "&uopf;", "[[\"Character\",\"𝕦\"]]"
  end
  it "namedEntities:Bad named entity: uparrow without a semi-colon" do
    assert_lexes "&uparrow", "[[\"Character\",\"&uparrow\"]]"
  end
  it "namedEntities:Named entity: uparrow; with a semi-colon" do
    assert_lexes "&uparrow;", "[[\"Character\",\"↑\"]]"
  end
  it "namedEntities:Bad named entity: updownarrow without a semi-colon" do
    assert_lexes "&updownarrow", "[[\"Character\",\"&updownarrow\"]]"
  end
  it "namedEntities:Named entity: updownarrow; with a semi-colon" do
    assert_lexes "&updownarrow;", "[[\"Character\",\"↕\"]]"
  end
  it "namedEntities:Bad named entity: upharpoonleft without a semi-colon" do
    assert_lexes "&upharpoonleft", "[[\"Character\",\"&upharpoonleft\"]]"
  end
  it "namedEntities:Named entity: upharpoonleft; with a semi-colon" do
    assert_lexes "&upharpoonleft;", "[[\"Character\",\"↿\"]]"
  end
  it "namedEntities:Bad named entity: upharpoonright without a semi-colon" do
    assert_lexes "&upharpoonright", "[[\"Character\",\"&upharpoonright\"]]"
  end
  it "namedEntities:Named entity: upharpoonright; with a semi-colon" do
    assert_lexes "&upharpoonright;", "[[\"Character\",\"↾\"]]"
  end
  it "namedEntities:Bad named entity: uplus without a semi-colon" do
    assert_lexes "&uplus", "[[\"Character\",\"&uplus\"]]"
  end
  it "namedEntities:Named entity: uplus; with a semi-colon" do
    assert_lexes "&uplus;", "[[\"Character\",\"⊎\"]]"
  end
  it "namedEntities:Bad named entity: upsi without a semi-colon" do
    assert_lexes "&upsi", "[[\"Character\",\"&upsi\"]]"
  end
  it "namedEntities:Named entity: upsi; with a semi-colon" do
    assert_lexes "&upsi;", "[[\"Character\",\"υ\"]]"
  end
  it "namedEntities:Bad named entity: upsih without a semi-colon" do
    assert_lexes "&upsih", "[[\"Character\",\"&upsih\"]]"
  end
  it "namedEntities:Named entity: upsih; with a semi-colon" do
    assert_lexes "&upsih;", "[[\"Character\",\"ϒ\"]]"
  end
  it "namedEntities:Bad named entity: upsilon without a semi-colon" do
    assert_lexes "&upsilon", "[[\"Character\",\"&upsilon\"]]"
  end
  it "namedEntities:Named entity: upsilon; with a semi-colon" do
    assert_lexes "&upsilon;", "[[\"Character\",\"υ\"]]"
  end
  it "namedEntities:Bad named entity: upuparrows without a semi-colon" do
    assert_lexes "&upuparrows", "[[\"Character\",\"&upuparrows\"]]"
  end
  it "namedEntities:Named entity: upuparrows; with a semi-colon" do
    assert_lexes "&upuparrows;", "[[\"Character\",\"⇈\"]]"
  end
  it "namedEntities:Bad named entity: urcorn without a semi-colon" do
    assert_lexes "&urcorn", "[[\"Character\",\"&urcorn\"]]"
  end
  it "namedEntities:Named entity: urcorn; with a semi-colon" do
    assert_lexes "&urcorn;", "[[\"Character\",\"⌝\"]]"
  end
  it "namedEntities:Bad named entity: urcorner without a semi-colon" do
    assert_lexes "&urcorner", "[[\"Character\",\"&urcorner\"]]"
  end
  it "namedEntities:Named entity: urcorner; with a semi-colon" do
    assert_lexes "&urcorner;", "[[\"Character\",\"⌝\"]]"
  end
  it "namedEntities:Bad named entity: urcrop without a semi-colon" do
    assert_lexes "&urcrop", "[[\"Character\",\"&urcrop\"]]"
  end
  it "namedEntities:Named entity: urcrop; with a semi-colon" do
    assert_lexes "&urcrop;", "[[\"Character\",\"⌎\"]]"
  end
  it "namedEntities:Bad named entity: uring without a semi-colon" do
    assert_lexes "&uring", "[[\"Character\",\"&uring\"]]"
  end
  it "namedEntities:Named entity: uring; with a semi-colon" do
    assert_lexes "&uring;", "[[\"Character\",\"ů\"]]"
  end
  it "namedEntities:Bad named entity: urtri without a semi-colon" do
    assert_lexes "&urtri", "[[\"Character\",\"&urtri\"]]"
  end
  it "namedEntities:Named entity: urtri; with a semi-colon" do
    assert_lexes "&urtri;", "[[\"Character\",\"◹\"]]"
  end
  it "namedEntities:Bad named entity: uscr without a semi-colon" do
    assert_lexes "&uscr", "[[\"Character\",\"&uscr\"]]"
  end
  it "namedEntities:Named entity: uscr; with a semi-colon" do
    assert_lexes "&uscr;", "[[\"Character\",\"𝓊\"]]"
  end
  it "namedEntities:Bad named entity: utdot without a semi-colon" do
    assert_lexes "&utdot", "[[\"Character\",\"&utdot\"]]"
  end
  it "namedEntities:Named entity: utdot; with a semi-colon" do
    assert_lexes "&utdot;", "[[\"Character\",\"⋰\"]]"
  end
  it "namedEntities:Bad named entity: utilde without a semi-colon" do
    assert_lexes "&utilde", "[[\"Character\",\"&utilde\"]]"
  end
  it "namedEntities:Named entity: utilde; with a semi-colon" do
    assert_lexes "&utilde;", "[[\"Character\",\"ũ\"]]"
  end
  it "namedEntities:Bad named entity: utri without a semi-colon" do
    assert_lexes "&utri", "[[\"Character\",\"&utri\"]]"
  end
  it "namedEntities:Named entity: utri; with a semi-colon" do
    assert_lexes "&utri;", "[[\"Character\",\"▵\"]]"
  end
  it "namedEntities:Bad named entity: utrif without a semi-colon" do
    assert_lexes "&utrif", "[[\"Character\",\"&utrif\"]]"
  end
  it "namedEntities:Named entity: utrif; with a semi-colon" do
    assert_lexes "&utrif;", "[[\"Character\",\"▴\"]]"
  end
  it "namedEntities:Bad named entity: uuarr without a semi-colon" do
    assert_lexes "&uuarr", "[[\"Character\",\"&uuarr\"]]"
  end
  it "namedEntities:Named entity: uuarr; with a semi-colon" do
    assert_lexes "&uuarr;", "[[\"Character\",\"⇈\"]]"
  end
  it "namedEntities:Named entity: uuml without a semi-colon" do
    assert_lexes "&uuml", "[[\"Character\",\"ü\"]]"
  end
  it "namedEntities:Named entity: uuml; with a semi-colon" do
    assert_lexes "&uuml;", "[[\"Character\",\"ü\"]]"
  end
  it "namedEntities:Bad named entity: uwangle without a semi-colon" do
    assert_lexes "&uwangle", "[[\"Character\",\"&uwangle\"]]"
  end
  it "namedEntities:Named entity: uwangle; with a semi-colon" do
    assert_lexes "&uwangle;", "[[\"Character\",\"⦧\"]]"
  end
  it "namedEntities:Bad named entity: vArr without a semi-colon" do
    assert_lexes "&vArr", "[[\"Character\",\"&vArr\"]]"
  end
  it "namedEntities:Named entity: vArr; with a semi-colon" do
    assert_lexes "&vArr;", "[[\"Character\",\"⇕\"]]"
  end
  it "namedEntities:Bad named entity: vBar without a semi-colon" do
    assert_lexes "&vBar", "[[\"Character\",\"&vBar\"]]"
  end
  it "namedEntities:Named entity: vBar; with a semi-colon" do
    assert_lexes "&vBar;", "[[\"Character\",\"⫨\"]]"
  end
  it "namedEntities:Bad named entity: vBarv without a semi-colon" do
    assert_lexes "&vBarv", "[[\"Character\",\"&vBarv\"]]"
  end
  it "namedEntities:Named entity: vBarv; with a semi-colon" do
    assert_lexes "&vBarv;", "[[\"Character\",\"⫩\"]]"
  end
  it "namedEntities:Bad named entity: vDash without a semi-colon" do
    assert_lexes "&vDash", "[[\"Character\",\"&vDash\"]]"
  end
  it "namedEntities:Named entity: vDash; with a semi-colon" do
    assert_lexes "&vDash;", "[[\"Character\",\"⊨\"]]"
  end
  it "namedEntities:Bad named entity: vangrt without a semi-colon" do
    assert_lexes "&vangrt", "[[\"Character\",\"&vangrt\"]]"
  end
  it "namedEntities:Named entity: vangrt; with a semi-colon" do
    assert_lexes "&vangrt;", "[[\"Character\",\"⦜\"]]"
  end
  it "namedEntities:Bad named entity: varepsilon without a semi-colon" do
    assert_lexes "&varepsilon", "[[\"Character\",\"&varepsilon\"]]"
  end
  it "namedEntities:Named entity: varepsilon; with a semi-colon" do
    assert_lexes "&varepsilon;", "[[\"Character\",\"ϵ\"]]"
  end
  it "namedEntities:Bad named entity: varkappa without a semi-colon" do
    assert_lexes "&varkappa", "[[\"Character\",\"&varkappa\"]]"
  end
  it "namedEntities:Named entity: varkappa; with a semi-colon" do
    assert_lexes "&varkappa;", "[[\"Character\",\"ϰ\"]]"
  end
  it "namedEntities:Bad named entity: varnothing without a semi-colon" do
    assert_lexes "&varnothing", "[[\"Character\",\"&varnothing\"]]"
  end
  it "namedEntities:Named entity: varnothing; with a semi-colon" do
    assert_lexes "&varnothing;", "[[\"Character\",\"∅\"]]"
  end
  it "namedEntities:Bad named entity: varphi without a semi-colon" do
    assert_lexes "&varphi", "[[\"Character\",\"&varphi\"]]"
  end
  it "namedEntities:Named entity: varphi; with a semi-colon" do
    assert_lexes "&varphi;", "[[\"Character\",\"ϕ\"]]"
  end
  it "namedEntities:Bad named entity: varpi without a semi-colon" do
    assert_lexes "&varpi", "[[\"Character\",\"&varpi\"]]"
  end
  it "namedEntities:Named entity: varpi; with a semi-colon" do
    assert_lexes "&varpi;", "[[\"Character\",\"ϖ\"]]"
  end
  it "namedEntities:Bad named entity: varpropto without a semi-colon" do
    assert_lexes "&varpropto", "[[\"Character\",\"&varpropto\"]]"
  end
  it "namedEntities:Named entity: varpropto; with a semi-colon" do
    assert_lexes "&varpropto;", "[[\"Character\",\"∝\"]]"
  end
  it "namedEntities:Bad named entity: varr without a semi-colon" do
    assert_lexes "&varr", "[[\"Character\",\"&varr\"]]"
  end
  it "namedEntities:Named entity: varr; with a semi-colon" do
    assert_lexes "&varr;", "[[\"Character\",\"↕\"]]"
  end
  it "namedEntities:Bad named entity: varrho without a semi-colon" do
    assert_lexes "&varrho", "[[\"Character\",\"&varrho\"]]"
  end
  it "namedEntities:Named entity: varrho; with a semi-colon" do
    assert_lexes "&varrho;", "[[\"Character\",\"ϱ\"]]"
  end
  it "namedEntities:Bad named entity: varsigma without a semi-colon" do
    assert_lexes "&varsigma", "[[\"Character\",\"&varsigma\"]]"
  end
  it "namedEntities:Named entity: varsigma; with a semi-colon" do
    assert_lexes "&varsigma;", "[[\"Character\",\"ς\"]]"
  end
  it "namedEntities:Bad named entity: varsubsetneq without a semi-colon" do
    assert_lexes "&varsubsetneq", "[[\"Character\",\"&varsubsetneq\"]]"
  end
  it "namedEntities:Named entity: varsubsetneq; with a semi-colon" do
    assert_lexes "&varsubsetneq;", "[[\"Character\",\"⊊︀\"]]"
  end
  it "namedEntities:Bad named entity: varsubsetneqq without a semi-colon" do
    assert_lexes "&varsubsetneqq", "[[\"Character\",\"&varsubsetneqq\"]]"
  end
  it "namedEntities:Named entity: varsubsetneqq; with a semi-colon" do
    assert_lexes "&varsubsetneqq;", "[[\"Character\",\"⫋︀\"]]"
  end
  it "namedEntities:Bad named entity: varsupsetneq without a semi-colon" do
    assert_lexes "&varsupsetneq", "[[\"Character\",\"&varsupsetneq\"]]"
  end
  it "namedEntities:Named entity: varsupsetneq; with a semi-colon" do
    assert_lexes "&varsupsetneq;", "[[\"Character\",\"⊋︀\"]]"
  end
  it "namedEntities:Bad named entity: varsupsetneqq without a semi-colon" do
    assert_lexes "&varsupsetneqq", "[[\"Character\",\"&varsupsetneqq\"]]"
  end
  it "namedEntities:Named entity: varsupsetneqq; with a semi-colon" do
    assert_lexes "&varsupsetneqq;", "[[\"Character\",\"⫌︀\"]]"
  end
  it "namedEntities:Bad named entity: vartheta without a semi-colon" do
    assert_lexes "&vartheta", "[[\"Character\",\"&vartheta\"]]"
  end
  it "namedEntities:Named entity: vartheta; with a semi-colon" do
    assert_lexes "&vartheta;", "[[\"Character\",\"ϑ\"]]"
  end
  it "namedEntities:Bad named entity: vartriangleleft without a semi-colon" do
    assert_lexes "&vartriangleleft", "[[\"Character\",\"&vartriangleleft\"]]"
  end
  it "namedEntities:Named entity: vartriangleleft; with a semi-colon" do
    assert_lexes "&vartriangleleft;", "[[\"Character\",\"⊲\"]]"
  end
  it "namedEntities:Bad named entity: vartriangleright without a semi-colon" do
    assert_lexes "&vartriangleright", "[[\"Character\",\"&vartriangleright\"]]"
  end
  it "namedEntities:Named entity: vartriangleright; with a semi-colon" do
    assert_lexes "&vartriangleright;", "[[\"Character\",\"⊳\"]]"
  end
  it "namedEntities:Bad named entity: vcy without a semi-colon" do
    assert_lexes "&vcy", "[[\"Character\",\"&vcy\"]]"
  end
  it "namedEntities:Named entity: vcy; with a semi-colon" do
    assert_lexes "&vcy;", "[[\"Character\",\"в\"]]"
  end
  it "namedEntities:Bad named entity: vdash without a semi-colon" do
    assert_lexes "&vdash", "[[\"Character\",\"&vdash\"]]"
  end
  it "namedEntities:Named entity: vdash; with a semi-colon" do
    assert_lexes "&vdash;", "[[\"Character\",\"⊢\"]]"
  end
  it "namedEntities:Bad named entity: vee without a semi-colon" do
    assert_lexes "&vee", "[[\"Character\",\"&vee\"]]"
  end
  it "namedEntities:Named entity: vee; with a semi-colon" do
    assert_lexes "&vee;", "[[\"Character\",\"∨\"]]"
  end
  it "namedEntities:Bad named entity: veebar without a semi-colon" do
    assert_lexes "&veebar", "[[\"Character\",\"&veebar\"]]"
  end
  it "namedEntities:Named entity: veebar; with a semi-colon" do
    assert_lexes "&veebar;", "[[\"Character\",\"⊻\"]]"
  end
  it "namedEntities:Bad named entity: veeeq without a semi-colon" do
    assert_lexes "&veeeq", "[[\"Character\",\"&veeeq\"]]"
  end
  it "namedEntities:Named entity: veeeq; with a semi-colon" do
    assert_lexes "&veeeq;", "[[\"Character\",\"≚\"]]"
  end
  it "namedEntities:Bad named entity: vellip without a semi-colon" do
    assert_lexes "&vellip", "[[\"Character\",\"&vellip\"]]"
  end
  it "namedEntities:Named entity: vellip; with a semi-colon" do
    assert_lexes "&vellip;", "[[\"Character\",\"⋮\"]]"
  end
  it "namedEntities:Bad named entity: verbar without a semi-colon" do
    assert_lexes "&verbar", "[[\"Character\",\"&verbar\"]]"
  end
  it "namedEntities:Named entity: verbar; with a semi-colon" do
    assert_lexes "&verbar;", "[[\"Character\",\"|\"]]"
  end
  it "namedEntities:Bad named entity: vert without a semi-colon" do
    assert_lexes "&vert", "[[\"Character\",\"&vert\"]]"
  end
  it "namedEntities:Named entity: vert; with a semi-colon" do
    assert_lexes "&vert;", "[[\"Character\",\"|\"]]"
  end
  it "namedEntities:Bad named entity: vfr without a semi-colon" do
    assert_lexes "&vfr", "[[\"Character\",\"&vfr\"]]"
  end
  it "namedEntities:Named entity: vfr; with a semi-colon" do
    assert_lexes "&vfr;", "[[\"Character\",\"𝔳\"]]"
  end
  it "namedEntities:Bad named entity: vltri without a semi-colon" do
    assert_lexes "&vltri", "[[\"Character\",\"&vltri\"]]"
  end
  it "namedEntities:Named entity: vltri; with a semi-colon" do
    assert_lexes "&vltri;", "[[\"Character\",\"⊲\"]]"
  end
  it "namedEntities:Bad named entity: vnsub without a semi-colon" do
    assert_lexes "&vnsub", "[[\"Character\",\"&vnsub\"]]"
  end
  it "namedEntities:Named entity: vnsub; with a semi-colon" do
    assert_lexes "&vnsub;", "[[\"Character\",\"⊂⃒\"]]"
  end
  it "namedEntities:Bad named entity: vnsup without a semi-colon" do
    assert_lexes "&vnsup", "[[\"Character\",\"&vnsup\"]]"
  end
  it "namedEntities:Named entity: vnsup; with a semi-colon" do
    assert_lexes "&vnsup;", "[[\"Character\",\"⊃⃒\"]]"
  end
  it "namedEntities:Bad named entity: vopf without a semi-colon" do
    assert_lexes "&vopf", "[[\"Character\",\"&vopf\"]]"
  end
  it "namedEntities:Named entity: vopf; with a semi-colon" do
    assert_lexes "&vopf;", "[[\"Character\",\"𝕧\"]]"
  end
  it "namedEntities:Bad named entity: vprop without a semi-colon" do
    assert_lexes "&vprop", "[[\"Character\",\"&vprop\"]]"
  end
  it "namedEntities:Named entity: vprop; with a semi-colon" do
    assert_lexes "&vprop;", "[[\"Character\",\"∝\"]]"
  end
  it "namedEntities:Bad named entity: vrtri without a semi-colon" do
    assert_lexes "&vrtri", "[[\"Character\",\"&vrtri\"]]"
  end
  it "namedEntities:Named entity: vrtri; with a semi-colon" do
    assert_lexes "&vrtri;", "[[\"Character\",\"⊳\"]]"
  end
  it "namedEntities:Bad named entity: vscr without a semi-colon" do
    assert_lexes "&vscr", "[[\"Character\",\"&vscr\"]]"
  end
  it "namedEntities:Named entity: vscr; with a semi-colon" do
    assert_lexes "&vscr;", "[[\"Character\",\"𝓋\"]]"
  end
  it "namedEntities:Bad named entity: vsubnE without a semi-colon" do
    assert_lexes "&vsubnE", "[[\"Character\",\"&vsubnE\"]]"
  end
  it "namedEntities:Named entity: vsubnE; with a semi-colon" do
    assert_lexes "&vsubnE;", "[[\"Character\",\"⫋︀\"]]"
  end
  it "namedEntities:Bad named entity: vsubne without a semi-colon" do
    assert_lexes "&vsubne", "[[\"Character\",\"&vsubne\"]]"
  end
  it "namedEntities:Named entity: vsubne; with a semi-colon" do
    assert_lexes "&vsubne;", "[[\"Character\",\"⊊︀\"]]"
  end
  it "namedEntities:Bad named entity: vsupnE without a semi-colon" do
    assert_lexes "&vsupnE", "[[\"Character\",\"&vsupnE\"]]"
  end
  it "namedEntities:Named entity: vsupnE; with a semi-colon" do
    assert_lexes "&vsupnE;", "[[\"Character\",\"⫌︀\"]]"
  end
  it "namedEntities:Bad named entity: vsupne without a semi-colon" do
    assert_lexes "&vsupne", "[[\"Character\",\"&vsupne\"]]"
  end
  it "namedEntities:Named entity: vsupne; with a semi-colon" do
    assert_lexes "&vsupne;", "[[\"Character\",\"⊋︀\"]]"
  end
  it "namedEntities:Bad named entity: vzigzag without a semi-colon" do
    assert_lexes "&vzigzag", "[[\"Character\",\"&vzigzag\"]]"
  end
  it "namedEntities:Named entity: vzigzag; with a semi-colon" do
    assert_lexes "&vzigzag;", "[[\"Character\",\"⦚\"]]"
  end
  it "namedEntities:Bad named entity: wcirc without a semi-colon" do
    assert_lexes "&wcirc", "[[\"Character\",\"&wcirc\"]]"
  end
  it "namedEntities:Named entity: wcirc; with a semi-colon" do
    assert_lexes "&wcirc;", "[[\"Character\",\"ŵ\"]]"
  end
  it "namedEntities:Bad named entity: wedbar without a semi-colon" do
    assert_lexes "&wedbar", "[[\"Character\",\"&wedbar\"]]"
  end
  it "namedEntities:Named entity: wedbar; with a semi-colon" do
    assert_lexes "&wedbar;", "[[\"Character\",\"⩟\"]]"
  end
  it "namedEntities:Bad named entity: wedge without a semi-colon" do
    assert_lexes "&wedge", "[[\"Character\",\"&wedge\"]]"
  end
  it "namedEntities:Named entity: wedge; with a semi-colon" do
    assert_lexes "&wedge;", "[[\"Character\",\"∧\"]]"
  end
  it "namedEntities:Bad named entity: wedgeq without a semi-colon" do
    assert_lexes "&wedgeq", "[[\"Character\",\"&wedgeq\"]]"
  end
  it "namedEntities:Named entity: wedgeq; with a semi-colon" do
    assert_lexes "&wedgeq;", "[[\"Character\",\"≙\"]]"
  end
  it "namedEntities:Bad named entity: weierp without a semi-colon" do
    assert_lexes "&weierp", "[[\"Character\",\"&weierp\"]]"
  end
  it "namedEntities:Named entity: weierp; with a semi-colon" do
    assert_lexes "&weierp;", "[[\"Character\",\"℘\"]]"
  end
  it "namedEntities:Bad named entity: wfr without a semi-colon" do
    assert_lexes "&wfr", "[[\"Character\",\"&wfr\"]]"
  end
  it "namedEntities:Named entity: wfr; with a semi-colon" do
    assert_lexes "&wfr;", "[[\"Character\",\"𝔴\"]]"
  end
  it "namedEntities:Bad named entity: wopf without a semi-colon" do
    assert_lexes "&wopf", "[[\"Character\",\"&wopf\"]]"
  end
  it "namedEntities:Named entity: wopf; with a semi-colon" do
    assert_lexes "&wopf;", "[[\"Character\",\"𝕨\"]]"
  end
  it "namedEntities:Bad named entity: wp without a semi-colon" do
    assert_lexes "&wp", "[[\"Character\",\"&wp\"]]"
  end
  it "namedEntities:Named entity: wp; with a semi-colon" do
    assert_lexes "&wp;", "[[\"Character\",\"℘\"]]"
  end
  it "namedEntities:Bad named entity: wr without a semi-colon" do
    assert_lexes "&wr", "[[\"Character\",\"&wr\"]]"
  end
  it "namedEntities:Named entity: wr; with a semi-colon" do
    assert_lexes "&wr;", "[[\"Character\",\"≀\"]]"
  end
  it "namedEntities:Bad named entity: wreath without a semi-colon" do
    assert_lexes "&wreath", "[[\"Character\",\"&wreath\"]]"
  end
  it "namedEntities:Named entity: wreath; with a semi-colon" do
    assert_lexes "&wreath;", "[[\"Character\",\"≀\"]]"
  end
  it "namedEntities:Bad named entity: wscr without a semi-colon" do
    assert_lexes "&wscr", "[[\"Character\",\"&wscr\"]]"
  end
  it "namedEntities:Named entity: wscr; with a semi-colon" do
    assert_lexes "&wscr;", "[[\"Character\",\"𝓌\"]]"
  end
  it "namedEntities:Bad named entity: xcap without a semi-colon" do
    assert_lexes "&xcap", "[[\"Character\",\"&xcap\"]]"
  end
  it "namedEntities:Named entity: xcap; with a semi-colon" do
    assert_lexes "&xcap;", "[[\"Character\",\"⋂\"]]"
  end
  it "namedEntities:Bad named entity: xcirc without a semi-colon" do
    assert_lexes "&xcirc", "[[\"Character\",\"&xcirc\"]]"
  end
  it "namedEntities:Named entity: xcirc; with a semi-colon" do
    assert_lexes "&xcirc;", "[[\"Character\",\"◯\"]]"
  end
  it "namedEntities:Bad named entity: xcup without a semi-colon" do
    assert_lexes "&xcup", "[[\"Character\",\"&xcup\"]]"
  end
  it "namedEntities:Named entity: xcup; with a semi-colon" do
    assert_lexes "&xcup;", "[[\"Character\",\"⋃\"]]"
  end
  it "namedEntities:Bad named entity: xdtri without a semi-colon" do
    assert_lexes "&xdtri", "[[\"Character\",\"&xdtri\"]]"
  end
  it "namedEntities:Named entity: xdtri; with a semi-colon" do
    assert_lexes "&xdtri;", "[[\"Character\",\"▽\"]]"
  end
  it "namedEntities:Bad named entity: xfr without a semi-colon" do
    assert_lexes "&xfr", "[[\"Character\",\"&xfr\"]]"
  end
  it "namedEntities:Named entity: xfr; with a semi-colon" do
    assert_lexes "&xfr;", "[[\"Character\",\"𝔵\"]]"
  end
  it "namedEntities:Bad named entity: xhArr without a semi-colon" do
    assert_lexes "&xhArr", "[[\"Character\",\"&xhArr\"]]"
  end
  it "namedEntities:Named entity: xhArr; with a semi-colon" do
    assert_lexes "&xhArr;", "[[\"Character\",\"⟺\"]]"
  end
  it "namedEntities:Bad named entity: xharr without a semi-colon" do
    assert_lexes "&xharr", "[[\"Character\",\"&xharr\"]]"
  end
  it "namedEntities:Named entity: xharr; with a semi-colon" do
    assert_lexes "&xharr;", "[[\"Character\",\"⟷\"]]"
  end
  it "namedEntities:Bad named entity: xi without a semi-colon" do
    assert_lexes "&xi", "[[\"Character\",\"&xi\"]]"
  end
  it "namedEntities:Named entity: xi; with a semi-colon" do
    assert_lexes "&xi;", "[[\"Character\",\"ξ\"]]"
  end
  it "namedEntities:Bad named entity: xlArr without a semi-colon" do
    assert_lexes "&xlArr", "[[\"Character\",\"&xlArr\"]]"
  end
  it "namedEntities:Named entity: xlArr; with a semi-colon" do
    assert_lexes "&xlArr;", "[[\"Character\",\"⟸\"]]"
  end
  it "namedEntities:Bad named entity: xlarr without a semi-colon" do
    assert_lexes "&xlarr", "[[\"Character\",\"&xlarr\"]]"
  end
  it "namedEntities:Named entity: xlarr; with a semi-colon" do
    assert_lexes "&xlarr;", "[[\"Character\",\"⟵\"]]"
  end
  it "namedEntities:Bad named entity: xmap without a semi-colon" do
    assert_lexes "&xmap", "[[\"Character\",\"&xmap\"]]"
  end
  it "namedEntities:Named entity: xmap; with a semi-colon" do
    assert_lexes "&xmap;", "[[\"Character\",\"⟼\"]]"
  end
  it "namedEntities:Bad named entity: xnis without a semi-colon" do
    assert_lexes "&xnis", "[[\"Character\",\"&xnis\"]]"
  end
  it "namedEntities:Named entity: xnis; with a semi-colon" do
    assert_lexes "&xnis;", "[[\"Character\",\"⋻\"]]"
  end
  it "namedEntities:Bad named entity: xodot without a semi-colon" do
    assert_lexes "&xodot", "[[\"Character\",\"&xodot\"]]"
  end
  it "namedEntities:Named entity: xodot; with a semi-colon" do
    assert_lexes "&xodot;", "[[\"Character\",\"⨀\"]]"
  end
  it "namedEntities:Bad named entity: xopf without a semi-colon" do
    assert_lexes "&xopf", "[[\"Character\",\"&xopf\"]]"
  end
  it "namedEntities:Named entity: xopf; with a semi-colon" do
    assert_lexes "&xopf;", "[[\"Character\",\"𝕩\"]]"
  end
  it "namedEntities:Bad named entity: xoplus without a semi-colon" do
    assert_lexes "&xoplus", "[[\"Character\",\"&xoplus\"]]"
  end
  it "namedEntities:Named entity: xoplus; with a semi-colon" do
    assert_lexes "&xoplus;", "[[\"Character\",\"⨁\"]]"
  end
  it "namedEntities:Bad named entity: xotime without a semi-colon" do
    assert_lexes "&xotime", "[[\"Character\",\"&xotime\"]]"
  end
  it "namedEntities:Named entity: xotime; with a semi-colon" do
    assert_lexes "&xotime;", "[[\"Character\",\"⨂\"]]"
  end
  it "namedEntities:Bad named entity: xrArr without a semi-colon" do
    assert_lexes "&xrArr", "[[\"Character\",\"&xrArr\"]]"
  end
  it "namedEntities:Named entity: xrArr; with a semi-colon" do
    assert_lexes "&xrArr;", "[[\"Character\",\"⟹\"]]"
  end
  it "namedEntities:Bad named entity: xrarr without a semi-colon" do
    assert_lexes "&xrarr", "[[\"Character\",\"&xrarr\"]]"
  end
  it "namedEntities:Named entity: xrarr; with a semi-colon" do
    assert_lexes "&xrarr;", "[[\"Character\",\"⟶\"]]"
  end
  it "namedEntities:Bad named entity: xscr without a semi-colon" do
    assert_lexes "&xscr", "[[\"Character\",\"&xscr\"]]"
  end
  it "namedEntities:Named entity: xscr; with a semi-colon" do
    assert_lexes "&xscr;", "[[\"Character\",\"𝓍\"]]"
  end
  it "namedEntities:Bad named entity: xsqcup without a semi-colon" do
    assert_lexes "&xsqcup", "[[\"Character\",\"&xsqcup\"]]"
  end
  it "namedEntities:Named entity: xsqcup; with a semi-colon" do
    assert_lexes "&xsqcup;", "[[\"Character\",\"⨆\"]]"
  end
  it "namedEntities:Bad named entity: xuplus without a semi-colon" do
    assert_lexes "&xuplus", "[[\"Character\",\"&xuplus\"]]"
  end
  it "namedEntities:Named entity: xuplus; with a semi-colon" do
    assert_lexes "&xuplus;", "[[\"Character\",\"⨄\"]]"
  end
  it "namedEntities:Bad named entity: xutri without a semi-colon" do
    assert_lexes "&xutri", "[[\"Character\",\"&xutri\"]]"
  end
  it "namedEntities:Named entity: xutri; with a semi-colon" do
    assert_lexes "&xutri;", "[[\"Character\",\"△\"]]"
  end
  it "namedEntities:Bad named entity: xvee without a semi-colon" do
    assert_lexes "&xvee", "[[\"Character\",\"&xvee\"]]"
  end
  it "namedEntities:Named entity: xvee; with a semi-colon" do
    assert_lexes "&xvee;", "[[\"Character\",\"⋁\"]]"
  end
  it "namedEntities:Bad named entity: xwedge without a semi-colon" do
    assert_lexes "&xwedge", "[[\"Character\",\"&xwedge\"]]"
  end
  it "namedEntities:Named entity: xwedge; with a semi-colon" do
    assert_lexes "&xwedge;", "[[\"Character\",\"⋀\"]]"
  end
  it "namedEntities:Named entity: yacute without a semi-colon" do
    assert_lexes "&yacute", "[[\"Character\",\"ý\"]]"
  end
  it "namedEntities:Named entity: yacute; with a semi-colon" do
    assert_lexes "&yacute;", "[[\"Character\",\"ý\"]]"
  end
  it "namedEntities:Bad named entity: yacy without a semi-colon" do
    assert_lexes "&yacy", "[[\"Character\",\"&yacy\"]]"
  end
  it "namedEntities:Named entity: yacy; with a semi-colon" do
    assert_lexes "&yacy;", "[[\"Character\",\"я\"]]"
  end
  it "namedEntities:Bad named entity: ycirc without a semi-colon" do
    assert_lexes "&ycirc", "[[\"Character\",\"&ycirc\"]]"
  end
  it "namedEntities:Named entity: ycirc; with a semi-colon" do
    assert_lexes "&ycirc;", "[[\"Character\",\"ŷ\"]]"
  end
  it "namedEntities:Bad named entity: ycy without a semi-colon" do
    assert_lexes "&ycy", "[[\"Character\",\"&ycy\"]]"
  end
  it "namedEntities:Named entity: ycy; with a semi-colon" do
    assert_lexes "&ycy;", "[[\"Character\",\"ы\"]]"
  end
  it "namedEntities:Named entity: yen without a semi-colon" do
    assert_lexes "&yen", "[[\"Character\",\"¥\"]]"
  end
  it "namedEntities:Named entity: yen; with a semi-colon" do
    assert_lexes "&yen;", "[[\"Character\",\"¥\"]]"
  end
  it "namedEntities:Bad named entity: yfr without a semi-colon" do
    assert_lexes "&yfr", "[[\"Character\",\"&yfr\"]]"
  end
  it "namedEntities:Named entity: yfr; with a semi-colon" do
    assert_lexes "&yfr;", "[[\"Character\",\"𝔶\"]]"
  end
  it "namedEntities:Bad named entity: yicy without a semi-colon" do
    assert_lexes "&yicy", "[[\"Character\",\"&yicy\"]]"
  end
  it "namedEntities:Named entity: yicy; with a semi-colon" do
    assert_lexes "&yicy;", "[[\"Character\",\"ї\"]]"
  end
  it "namedEntities:Bad named entity: yopf without a semi-colon" do
    assert_lexes "&yopf", "[[\"Character\",\"&yopf\"]]"
  end
  it "namedEntities:Named entity: yopf; with a semi-colon" do
    assert_lexes "&yopf;", "[[\"Character\",\"𝕪\"]]"
  end
  it "namedEntities:Bad named entity: yscr without a semi-colon" do
    assert_lexes "&yscr", "[[\"Character\",\"&yscr\"]]"
  end
  it "namedEntities:Named entity: yscr; with a semi-colon" do
    assert_lexes "&yscr;", "[[\"Character\",\"𝓎\"]]"
  end
  it "namedEntities:Bad named entity: yucy without a semi-colon" do
    assert_lexes "&yucy", "[[\"Character\",\"&yucy\"]]"
  end
  it "namedEntities:Named entity: yucy; with a semi-colon" do
    assert_lexes "&yucy;", "[[\"Character\",\"ю\"]]"
  end
  it "namedEntities:Named entity: yuml without a semi-colon" do
    assert_lexes "&yuml", "[[\"Character\",\"ÿ\"]]"
  end
  it "namedEntities:Named entity: yuml; with a semi-colon" do
    assert_lexes "&yuml;", "[[\"Character\",\"ÿ\"]]"
  end
  it "namedEntities:Bad named entity: zacute without a semi-colon" do
    assert_lexes "&zacute", "[[\"Character\",\"&zacute\"]]"
  end
  it "namedEntities:Named entity: zacute; with a semi-colon" do
    assert_lexes "&zacute;", "[[\"Character\",\"ź\"]]"
  end
  it "namedEntities:Bad named entity: zcaron without a semi-colon" do
    assert_lexes "&zcaron", "[[\"Character\",\"&zcaron\"]]"
  end
  it "namedEntities:Named entity: zcaron; with a semi-colon" do
    assert_lexes "&zcaron;", "[[\"Character\",\"ž\"]]"
  end
  it "namedEntities:Bad named entity: zcy without a semi-colon" do
    assert_lexes "&zcy", "[[\"Character\",\"&zcy\"]]"
  end
  it "namedEntities:Named entity: zcy; with a semi-colon" do
    assert_lexes "&zcy;", "[[\"Character\",\"з\"]]"
  end
  it "namedEntities:Bad named entity: zdot without a semi-colon" do
    assert_lexes "&zdot", "[[\"Character\",\"&zdot\"]]"
  end
  it "namedEntities:Named entity: zdot; with a semi-colon" do
    assert_lexes "&zdot;", "[[\"Character\",\"ż\"]]"
  end
  it "namedEntities:Bad named entity: zeetrf without a semi-colon" do
    assert_lexes "&zeetrf", "[[\"Character\",\"&zeetrf\"]]"
  end
  it "namedEntities:Named entity: zeetrf; with a semi-colon" do
    assert_lexes "&zeetrf;", "[[\"Character\",\"ℨ\"]]"
  end
  it "namedEntities:Bad named entity: zeta without a semi-colon" do
    assert_lexes "&zeta", "[[\"Character\",\"&zeta\"]]"
  end
  it "namedEntities:Named entity: zeta; with a semi-colon" do
    assert_lexes "&zeta;", "[[\"Character\",\"ζ\"]]"
  end
  it "namedEntities:Bad named entity: zfr without a semi-colon" do
    assert_lexes "&zfr", "[[\"Character\",\"&zfr\"]]"
  end
  it "namedEntities:Named entity: zfr; with a semi-colon" do
    assert_lexes "&zfr;", "[[\"Character\",\"𝔷\"]]"
  end
  it "namedEntities:Bad named entity: zhcy without a semi-colon" do
    assert_lexes "&zhcy", "[[\"Character\",\"&zhcy\"]]"
  end
  it "namedEntities:Named entity: zhcy; with a semi-colon" do
    assert_lexes "&zhcy;", "[[\"Character\",\"ж\"]]"
  end
  it "namedEntities:Bad named entity: zigrarr without a semi-colon" do
    assert_lexes "&zigrarr", "[[\"Character\",\"&zigrarr\"]]"
  end
  it "namedEntities:Named entity: zigrarr; with a semi-colon" do
    assert_lexes "&zigrarr;", "[[\"Character\",\"⇝\"]]"
  end
  it "namedEntities:Bad named entity: zopf without a semi-colon" do
    assert_lexes "&zopf", "[[\"Character\",\"&zopf\"]]"
  end
  it "namedEntities:Named entity: zopf; with a semi-colon" do
    assert_lexes "&zopf;", "[[\"Character\",\"𝕫\"]]"
  end
  it "namedEntities:Bad named entity: zscr without a semi-colon" do
    assert_lexes "&zscr", "[[\"Character\",\"&zscr\"]]"
  end
  it "namedEntities:Named entity: zscr; with a semi-colon" do
    assert_lexes "&zscr;", "[[\"Character\",\"𝓏\"]]"
  end
  it "namedEntities:Bad named entity: zwj without a semi-colon" do
    assert_lexes "&zwj", "[[\"Character\",\"&zwj\"]]"
  end
  it "namedEntities:Named entity: zwj; with a semi-colon" do
    assert_lexes "&zwj;", "[[\"Character\",\"\u200D\"]]"
  end
  it "namedEntities:Bad named entity: zwnj without a semi-colon" do
    assert_lexes "&zwnj", "[[\"Character\",\"&zwnj\"]]"
  end
  it "namedEntities:Named entity: zwnj; with a semi-colon" do
    assert_lexes "&zwnj;", "[[\"Character\",\"\u200C\"]]"
  end
end
describe "html5lib-tests/tokenizer/numericEntities.test" do
  it "numericEntities:Invalid unterminated numeric entity character overflow before EOF" do
    assert_lexes "&#11111111111", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Invalid unterminated numeric entity character overflow before EOF" do
    assert_lexes "&#1111111111", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Invalid unterminated numeric entity character overflow before EOF" do
    assert_lexes "&#111111111111", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Invalid unterminated numeric entity character overflow" do
    assert_lexes "&#11111111111x", "[[\"Character\",\"�x\"]]"
  end
  it "numericEntities:Invalid unterminated numeric entity character overflow" do
    assert_lexes "&#1111111111x", "[[\"Character\",\"�x\"]]"
  end
  it "numericEntities:Invalid unterminated numeric entity character overflow" do
    assert_lexes "&#111111111111x", "[[\"Character\",\"�x\"]]"
  end
  it "numericEntities:Invalid numeric entity character overflow" do
    assert_lexes "&#11111111111;", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Invalid numeric entity character overflow" do
    assert_lexes "&#1111111111;", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Invalid numeric entity character overflow" do
    assert_lexes "&#111111111111;", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0000" do
    assert_lexes "&#x0000;", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0001" do
    assert_lexes "&#x0001;", "[[\"Character\",\"\\u0001\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0002" do
    assert_lexes "&#x0002;", "[[\"Character\",\"\\u0002\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0003" do
    assert_lexes "&#x0003;", "[[\"Character\",\"\\u0003\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0004" do
    assert_lexes "&#x0004;", "[[\"Character\",\"\\u0004\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0005" do
    assert_lexes "&#x0005;", "[[\"Character\",\"\\u0005\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0006" do
    assert_lexes "&#x0006;", "[[\"Character\",\"\\u0006\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0007" do
    assert_lexes "&#x0007;", "[[\"Character\",\"\\u0007\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0008" do
    assert_lexes "&#x0008;", "[[\"Character\",\"\\b\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+000B" do
    assert_lexes "&#x000b;", "[[\"Character\",\"\\u000b\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+000E" do
    assert_lexes "&#x000e;", "[[\"Character\",\"\\u000e\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+000F" do
    assert_lexes "&#x000f;", "[[\"Character\",\"\\u000f\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0010" do
    assert_lexes "&#x0010;", "[[\"Character\",\"\\u0010\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0011" do
    assert_lexes "&#x0011;", "[[\"Character\",\"\\u0011\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0012" do
    assert_lexes "&#x0012;", "[[\"Character\",\"\\u0012\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0013" do
    assert_lexes "&#x0013;", "[[\"Character\",\"\\u0013\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0014" do
    assert_lexes "&#x0014;", "[[\"Character\",\"\\u0014\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0015" do
    assert_lexes "&#x0015;", "[[\"Character\",\"\\u0015\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0016" do
    assert_lexes "&#x0016;", "[[\"Character\",\"\\u0016\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0017" do
    assert_lexes "&#x0017;", "[[\"Character\",\"\\u0017\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0018" do
    assert_lexes "&#x0018;", "[[\"Character\",\"\\u0018\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+0019" do
    assert_lexes "&#x0019;", "[[\"Character\",\"\\u0019\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+001A" do
    assert_lexes "&#x001a;", "[[\"Character\",\"\\u001a\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+001B" do
    assert_lexes "&#x001b;", "[[\"Character\",\"\\u001b\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+001C" do
    assert_lexes "&#x001c;", "[[\"Character\",\"\\u001c\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+001D" do
    assert_lexes "&#x001d;", "[[\"Character\",\"\\u001d\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+001E" do
    assert_lexes "&#x001e;", "[[\"Character\",\"\\u001e\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+001F" do
    assert_lexes "&#x001f;", "[[\"Character\",\"\\u001f\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+007F" do
    assert_lexes "&#x007f;", "[[\"Character\",\"\\u007f\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+D800" do
    assert_lexes "&#xd800;", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+DFFF" do
    assert_lexes "&#xdfff;", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD0" do
    assert_lexes "&#xfdd0;", "[[\"Character\",\"﷐\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD1" do
    assert_lexes "&#xfdd1;", "[[\"Character\",\"﷑\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD2" do
    assert_lexes "&#xfdd2;", "[[\"Character\",\"﷒\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD3" do
    assert_lexes "&#xfdd3;", "[[\"Character\",\"﷓\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD4" do
    assert_lexes "&#xfdd4;", "[[\"Character\",\"﷔\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD5" do
    assert_lexes "&#xfdd5;", "[[\"Character\",\"﷕\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD6" do
    assert_lexes "&#xfdd6;", "[[\"Character\",\"﷖\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD7" do
    assert_lexes "&#xfdd7;", "[[\"Character\",\"﷗\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD8" do
    assert_lexes "&#xfdd8;", "[[\"Character\",\"﷘\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDD9" do
    assert_lexes "&#xfdd9;", "[[\"Character\",\"﷙\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDDA" do
    assert_lexes "&#xfdda;", "[[\"Character\",\"﷚\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDDB" do
    assert_lexes "&#xfddb;", "[[\"Character\",\"﷛\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDDC" do
    assert_lexes "&#xfddc;", "[[\"Character\",\"﷜\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDDD" do
    assert_lexes "&#xfddd;", "[[\"Character\",\"﷝\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDDE" do
    assert_lexes "&#xfdde;", "[[\"Character\",\"﷞\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDDF" do
    assert_lexes "&#xfddf;", "[[\"Character\",\"﷟\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE0" do
    assert_lexes "&#xfde0;", "[[\"Character\",\"﷠\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE1" do
    assert_lexes "&#xfde1;", "[[\"Character\",\"﷡\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE2" do
    assert_lexes "&#xfde2;", "[[\"Character\",\"﷢\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE3" do
    assert_lexes "&#xfde3;", "[[\"Character\",\"﷣\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE4" do
    assert_lexes "&#xfde4;", "[[\"Character\",\"﷤\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE5" do
    assert_lexes "&#xfde5;", "[[\"Character\",\"﷥\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE6" do
    assert_lexes "&#xfde6;", "[[\"Character\",\"﷦\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE7" do
    assert_lexes "&#xfde7;", "[[\"Character\",\"﷧\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE8" do
    assert_lexes "&#xfde8;", "[[\"Character\",\"﷨\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDE9" do
    assert_lexes "&#xfde9;", "[[\"Character\",\"﷩\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDEA" do
    assert_lexes "&#xfdea;", "[[\"Character\",\"﷪\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDEB" do
    assert_lexes "&#xfdeb;", "[[\"Character\",\"﷫\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDEC" do
    assert_lexes "&#xfdec;", "[[\"Character\",\"﷬\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDED" do
    assert_lexes "&#xfded;", "[[\"Character\",\"﷭\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDEE" do
    assert_lexes "&#xfdee;", "[[\"Character\",\"﷮\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FDEF" do
    assert_lexes "&#xfdef;", "[[\"Character\",\"﷯\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FFFE" do
    assert_lexes "&#xfffe;", "[[\"Character\",\"￾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FFFF" do
    assert_lexes "&#xffff;", "[[\"Character\",\"￿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+1FFFE" do
    assert_lexes "&#x1fffe;", "[[\"Character\",\"🿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+1FFFF" do
    assert_lexes "&#x1ffff;", "[[\"Character\",\"🿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+2FFFE" do
    assert_lexes "&#x2fffe;", "[[\"Character\",\"𯿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+2FFFF" do
    assert_lexes "&#x2ffff;", "[[\"Character\",\"𯿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+3FFFE" do
    assert_lexes "&#x3fffe;", "[[\"Character\",\"𿿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+3FFFF" do
    assert_lexes "&#x3ffff;", "[[\"Character\",\"𿿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+4FFFE" do
    assert_lexes "&#x4fffe;", "[[\"Character\",\"񏿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+4FFFF" do
    assert_lexes "&#x4ffff;", "[[\"Character\",\"񏿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+5FFFE" do
    assert_lexes "&#x5fffe;", "[[\"Character\",\"񟿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+5FFFF" do
    assert_lexes "&#x5ffff;", "[[\"Character\",\"񟿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+6FFFE" do
    assert_lexes "&#x6fffe;", "[[\"Character\",\"񯿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+6FFFF" do
    assert_lexes "&#x6ffff;", "[[\"Character\",\"񯿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+7FFFE" do
    assert_lexes "&#x7fffe;", "[[\"Character\",\"񿿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+7FFFF" do
    assert_lexes "&#x7ffff;", "[[\"Character\",\"񿿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+8FFFE" do
    assert_lexes "&#x8fffe;", "[[\"Character\",\"򏿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+8FFFF" do
    assert_lexes "&#x8ffff;", "[[\"Character\",\"򏿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+9FFFE" do
    assert_lexes "&#x9fffe;", "[[\"Character\",\"򟿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+9FFFF" do
    assert_lexes "&#x9ffff;", "[[\"Character\",\"򟿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+AFFFE" do
    assert_lexes "&#xafffe;", "[[\"Character\",\"򯿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+AFFFF" do
    assert_lexes "&#xaffff;", "[[\"Character\",\"򯿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+BFFFE" do
    assert_lexes "&#xbfffe;", "[[\"Character\",\"򿿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+BFFFF" do
    assert_lexes "&#xbffff;", "[[\"Character\",\"򿿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+CFFFE" do
    assert_lexes "&#xcfffe;", "[[\"Character\",\"󏿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+CFFFF" do
    assert_lexes "&#xcffff;", "[[\"Character\",\"󏿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+DFFFE" do
    assert_lexes "&#xdfffe;", "[[\"Character\",\"󟿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+DFFFF" do
    assert_lexes "&#xdffff;", "[[\"Character\",\"󟿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+EFFFE" do
    assert_lexes "&#xefffe;", "[[\"Character\",\"󯿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+EFFFF" do
    assert_lexes "&#xeffff;", "[[\"Character\",\"󯿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FFFFE" do
    assert_lexes "&#xffffe;", "[[\"Character\",\"󿿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+FFFFF" do
    assert_lexes "&#xfffff;", "[[\"Character\",\"󿿿\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+10FFFE" do
    assert_lexes "&#x10fffe;", "[[\"Character\",\"􏿾\"]]"
  end
  it "numericEntities:Invalid numeric entity character U+10FFFF" do
    assert_lexes "&#x10ffff;", "[[\"Character\",\"􏿿\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0009" do
    assert_lexes "&#x0009;", "[[\"Character\",\"\\t\"]]"
  end
  it "numericEntities:Valid numeric entity character U+000A" do
    assert_lexes "&#x000a;", "[[\"Character\",\"\\n\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0020" do
    assert_lexes "&#x0020;", "[[\"Character\",\" \"]]"
  end
  it "numericEntities:Valid numeric entity character U+0021" do
    assert_lexes "&#x0021;", "[[\"Character\",\"!\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0022" do
    assert_lexes "&#x0022;", "[[\"Character\",\"\\\"\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0023" do
    assert_lexes "&#x0023;", "[[\"Character\",\"#\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0024" do
    assert_lexes "&#x0024;", "[[\"Character\",\"$\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0025" do
    assert_lexes "&#x0025;", "[[\"Character\",\"%\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0026" do
    assert_lexes "&#x0026;", "[[\"Character\",\"&\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0027" do
    assert_lexes "&#x0027;", "[[\"Character\",\"'\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0028" do
    assert_lexes "&#x0028;", "[[\"Character\",\"(\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0029" do
    assert_lexes "&#x0029;", "[[\"Character\",\")\"]]"
  end
  it "numericEntities:Valid numeric entity character U+002A" do
    assert_lexes "&#x002a;", "[[\"Character\",\"*\"]]"
  end
  it "numericEntities:Valid numeric entity character U+002B" do
    assert_lexes "&#x002b;", "[[\"Character\",\"+\"]]"
  end
  it "numericEntities:Valid numeric entity character U+002C" do
    assert_lexes "&#x002c;", "[[\"Character\",\",\"]]"
  end
  it "numericEntities:Valid numeric entity character U+002D" do
    assert_lexes "&#x002d;", "[[\"Character\",\"-\"]]"
  end
  it "numericEntities:Valid numeric entity character U+002E" do
    assert_lexes "&#x002e;", "[[\"Character\",\".\"]]"
  end
  it "numericEntities:Valid numeric entity character U+002F" do
    assert_lexes "&#x002f;", "[[\"Character\",\"/\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0030" do
    assert_lexes "&#x0030;", "[[\"Character\",\"0\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0031" do
    assert_lexes "&#x0031;", "[[\"Character\",\"1\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0032" do
    assert_lexes "&#x0032;", "[[\"Character\",\"2\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0033" do
    assert_lexes "&#x0033;", "[[\"Character\",\"3\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0034" do
    assert_lexes "&#x0034;", "[[\"Character\",\"4\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0035" do
    assert_lexes "&#x0035;", "[[\"Character\",\"5\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0036" do
    assert_lexes "&#x0036;", "[[\"Character\",\"6\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0037" do
    assert_lexes "&#x0037;", "[[\"Character\",\"7\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0038" do
    assert_lexes "&#x0038;", "[[\"Character\",\"8\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0039" do
    assert_lexes "&#x0039;", "[[\"Character\",\"9\"]]"
  end
  it "numericEntities:Valid numeric entity character U+003A" do
    assert_lexes "&#x003a;", "[[\"Character\",\":\"]]"
  end
  it "numericEntities:Valid numeric entity character U+003B" do
    assert_lexes "&#x003b;", "[[\"Character\",\";\"]]"
  end
  it "numericEntities:Valid numeric entity character U+003C" do
    assert_lexes "&#x003c;", "[[\"Character\",\"<\"]]"
  end
  it "numericEntities:Valid numeric entity character U+003D" do
    assert_lexes "&#x003d;", "[[\"Character\",\"=\"]]"
  end
  it "numericEntities:Valid numeric entity character U+003E" do
    assert_lexes "&#x003e;", "[[\"Character\",\">\"]]"
  end
  it "numericEntities:Valid numeric entity character U+003F" do
    assert_lexes "&#x003f;", "[[\"Character\",\"?\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0040" do
    assert_lexes "&#x0040;", "[[\"Character\",\"@\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0041" do
    assert_lexes "&#x0041;", "[[\"Character\",\"A\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0042" do
    assert_lexes "&#x0042;", "[[\"Character\",\"B\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0043" do
    assert_lexes "&#x0043;", "[[\"Character\",\"C\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0044" do
    assert_lexes "&#x0044;", "[[\"Character\",\"D\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0045" do
    assert_lexes "&#x0045;", "[[\"Character\",\"E\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0046" do
    assert_lexes "&#x0046;", "[[\"Character\",\"F\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0047" do
    assert_lexes "&#x0047;", "[[\"Character\",\"G\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0048" do
    assert_lexes "&#x0048;", "[[\"Character\",\"H\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0049" do
    assert_lexes "&#x0049;", "[[\"Character\",\"I\"]]"
  end
  it "numericEntities:Valid numeric entity character U+004A" do
    assert_lexes "&#x004a;", "[[\"Character\",\"J\"]]"
  end
  it "numericEntities:Valid numeric entity character U+004B" do
    assert_lexes "&#x004b;", "[[\"Character\",\"K\"]]"
  end
  it "numericEntities:Valid numeric entity character U+004C" do
    assert_lexes "&#x004c;", "[[\"Character\",\"L\"]]"
  end
  it "numericEntities:Valid numeric entity character U+004D" do
    assert_lexes "&#x004d;", "[[\"Character\",\"M\"]]"
  end
  it "numericEntities:Valid numeric entity character U+004E" do
    assert_lexes "&#x004e;", "[[\"Character\",\"N\"]]"
  end
  it "numericEntities:Valid numeric entity character U+004F" do
    assert_lexes "&#x004f;", "[[\"Character\",\"O\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0050" do
    assert_lexes "&#x0050;", "[[\"Character\",\"P\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0051" do
    assert_lexes "&#x0051;", "[[\"Character\",\"Q\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0052" do
    assert_lexes "&#x0052;", "[[\"Character\",\"R\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0053" do
    assert_lexes "&#x0053;", "[[\"Character\",\"S\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0054" do
    assert_lexes "&#x0054;", "[[\"Character\",\"T\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0055" do
    assert_lexes "&#x0055;", "[[\"Character\",\"U\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0056" do
    assert_lexes "&#x0056;", "[[\"Character\",\"V\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0057" do
    assert_lexes "&#x0057;", "[[\"Character\",\"W\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0058" do
    assert_lexes "&#x0058;", "[[\"Character\",\"X\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0059" do
    assert_lexes "&#x0059;", "[[\"Character\",\"Y\"]]"
  end
  it "numericEntities:Valid numeric entity character U+005A" do
    assert_lexes "&#x005a;", "[[\"Character\",\"Z\"]]"
  end
  it "numericEntities:Valid numeric entity character U+005B" do
    assert_lexes "&#x005b;", "[[\"Character\",\"[\"]]"
  end
  it "numericEntities:Valid numeric entity character U+005C" do
    assert_lexes "&#x005c;", "[[\"Character\",\"\\\\\"]]"
  end
  it "numericEntities:Valid numeric entity character U+005D" do
    assert_lexes "&#x005d;", "[[\"Character\",\"]\"]]"
  end
  it "numericEntities:Valid numeric entity character U+005E" do
    assert_lexes "&#x005e;", "[[\"Character\",\"^\"]]"
  end
  it "numericEntities:Valid numeric entity character U+005F" do
    assert_lexes "&#x005f;", "[[\"Character\",\"_\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0060" do
    assert_lexes "&#x0060;", "[[\"Character\",\"`\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0061" do
    assert_lexes "&#x0061;", "[[\"Character\",\"a\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0062" do
    assert_lexes "&#x0062;", "[[\"Character\",\"b\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0063" do
    assert_lexes "&#x0063;", "[[\"Character\",\"c\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0064" do
    assert_lexes "&#x0064;", "[[\"Character\",\"d\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0065" do
    assert_lexes "&#x0065;", "[[\"Character\",\"e\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0066" do
    assert_lexes "&#x0066;", "[[\"Character\",\"f\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0067" do
    assert_lexes "&#x0067;", "[[\"Character\",\"g\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0068" do
    assert_lexes "&#x0068;", "[[\"Character\",\"h\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0069" do
    assert_lexes "&#x0069;", "[[\"Character\",\"i\"]]"
  end
  it "numericEntities:Valid numeric entity character U+006A" do
    assert_lexes "&#x006a;", "[[\"Character\",\"j\"]]"
  end
  it "numericEntities:Valid numeric entity character U+006B" do
    assert_lexes "&#x006b;", "[[\"Character\",\"k\"]]"
  end
  it "numericEntities:Valid numeric entity character U+006C" do
    assert_lexes "&#x006c;", "[[\"Character\",\"l\"]]"
  end
  it "numericEntities:Valid numeric entity character U+006D" do
    assert_lexes "&#x006d;", "[[\"Character\",\"m\"]]"
  end
  it "numericEntities:Valid numeric entity character U+006E" do
    assert_lexes "&#x006e;", "[[\"Character\",\"n\"]]"
  end
  it "numericEntities:Valid numeric entity character U+006F" do
    assert_lexes "&#x006f;", "[[\"Character\",\"o\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0070" do
    assert_lexes "&#x0070;", "[[\"Character\",\"p\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0071" do
    assert_lexes "&#x0071;", "[[\"Character\",\"q\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0072" do
    assert_lexes "&#x0072;", "[[\"Character\",\"r\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0073" do
    assert_lexes "&#x0073;", "[[\"Character\",\"s\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0074" do
    assert_lexes "&#x0074;", "[[\"Character\",\"t\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0075" do
    assert_lexes "&#x0075;", "[[\"Character\",\"u\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0076" do
    assert_lexes "&#x0076;", "[[\"Character\",\"v\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0077" do
    assert_lexes "&#x0077;", "[[\"Character\",\"w\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0078" do
    assert_lexes "&#x0078;", "[[\"Character\",\"x\"]]"
  end
  it "numericEntities:Valid numeric entity character U+0079" do
    assert_lexes "&#x0079;", "[[\"Character\",\"y\"]]"
  end
  it "numericEntities:Valid numeric entity character U+007A" do
    assert_lexes "&#x007a;", "[[\"Character\",\"z\"]]"
  end
  it "numericEntities:Valid numeric entity character U+007B" do
    assert_lexes "&#x007b;", "[[\"Character\",\"{\"]]"
  end
  it "numericEntities:Valid numeric entity character U+007C" do
    assert_lexes "&#x007c;", "[[\"Character\",\"|\"]]"
  end
  it "numericEntities:Valid numeric entity character U+007D" do
    assert_lexes "&#x007d;", "[[\"Character\",\"}\"]]"
  end
  it "numericEntities:Valid numeric entity character U+007E" do
    assert_lexes "&#x007e;", "[[\"Character\",\"~\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A0" do
    assert_lexes "&#x00a0;", "[[\"Character\",\"\u00A0\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A1" do
    assert_lexes "&#x00a1;", "[[\"Character\",\"¡\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A2" do
    assert_lexes "&#x00a2;", "[[\"Character\",\"¢\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A3" do
    assert_lexes "&#x00a3;", "[[\"Character\",\"£\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A4" do
    assert_lexes "&#x00a4;", "[[\"Character\",\"¤\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A5" do
    assert_lexes "&#x00a5;", "[[\"Character\",\"¥\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A6" do
    assert_lexes "&#x00a6;", "[[\"Character\",\"¦\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A7" do
    assert_lexes "&#x00a7;", "[[\"Character\",\"§\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A8" do
    assert_lexes "&#x00a8;", "[[\"Character\",\"¨\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00A9" do
    assert_lexes "&#x00a9;", "[[\"Character\",\"©\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00AA" do
    assert_lexes "&#x00aa;", "[[\"Character\",\"ª\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00AB" do
    assert_lexes "&#x00ab;", "[[\"Character\",\"«\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00AC" do
    assert_lexes "&#x00ac;", "[[\"Character\",\"¬\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00AD" do
    assert_lexes "&#x00ad;", "[[\"Character\",\"\u00AD\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00AE" do
    assert_lexes "&#x00ae;", "[[\"Character\",\"®\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00AF" do
    assert_lexes "&#x00af;", "[[\"Character\",\"¯\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B0" do
    assert_lexes "&#x00b0;", "[[\"Character\",\"°\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B1" do
    assert_lexes "&#x00b1;", "[[\"Character\",\"±\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B2" do
    assert_lexes "&#x00b2;", "[[\"Character\",\"²\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B3" do
    assert_lexes "&#x00b3;", "[[\"Character\",\"³\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B4" do
    assert_lexes "&#x00b4;", "[[\"Character\",\"´\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B5" do
    assert_lexes "&#x00b5;", "[[\"Character\",\"µ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B6" do
    assert_lexes "&#x00b6;", "[[\"Character\",\"¶\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B7" do
    assert_lexes "&#x00b7;", "[[\"Character\",\"·\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B8" do
    assert_lexes "&#x00b8;", "[[\"Character\",\"¸\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00B9" do
    assert_lexes "&#x00b9;", "[[\"Character\",\"¹\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00BA" do
    assert_lexes "&#x00ba;", "[[\"Character\",\"º\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00BB" do
    assert_lexes "&#x00bb;", "[[\"Character\",\"»\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00BC" do
    assert_lexes "&#x00bc;", "[[\"Character\",\"¼\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00BD" do
    assert_lexes "&#x00bd;", "[[\"Character\",\"½\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00BE" do
    assert_lexes "&#x00be;", "[[\"Character\",\"¾\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00BF" do
    assert_lexes "&#x00bf;", "[[\"Character\",\"¿\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C0" do
    assert_lexes "&#x00c0;", "[[\"Character\",\"À\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C1" do
    assert_lexes "&#x00c1;", "[[\"Character\",\"Á\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C2" do
    assert_lexes "&#x00c2;", "[[\"Character\",\"Â\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C3" do
    assert_lexes "&#x00c3;", "[[\"Character\",\"Ã\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C4" do
    assert_lexes "&#x00c4;", "[[\"Character\",\"Ä\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C5" do
    assert_lexes "&#x00c5;", "[[\"Character\",\"Å\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C6" do
    assert_lexes "&#x00c6;", "[[\"Character\",\"Æ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C7" do
    assert_lexes "&#x00c7;", "[[\"Character\",\"Ç\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C8" do
    assert_lexes "&#x00c8;", "[[\"Character\",\"È\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00C9" do
    assert_lexes "&#x00c9;", "[[\"Character\",\"É\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00CA" do
    assert_lexes "&#x00ca;", "[[\"Character\",\"Ê\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00CB" do
    assert_lexes "&#x00cb;", "[[\"Character\",\"Ë\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00CC" do
    assert_lexes "&#x00cc;", "[[\"Character\",\"Ì\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00CD" do
    assert_lexes "&#x00cd;", "[[\"Character\",\"Í\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00CE" do
    assert_lexes "&#x00ce;", "[[\"Character\",\"Î\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00CF" do
    assert_lexes "&#x00cf;", "[[\"Character\",\"Ï\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D0" do
    assert_lexes "&#x00d0;", "[[\"Character\",\"Ð\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D1" do
    assert_lexes "&#x00d1;", "[[\"Character\",\"Ñ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D2" do
    assert_lexes "&#x00d2;", "[[\"Character\",\"Ò\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D3" do
    assert_lexes "&#x00d3;", "[[\"Character\",\"Ó\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D4" do
    assert_lexes "&#x00d4;", "[[\"Character\",\"Ô\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D5" do
    assert_lexes "&#x00d5;", "[[\"Character\",\"Õ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D6" do
    assert_lexes "&#x00d6;", "[[\"Character\",\"Ö\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D7" do
    assert_lexes "&#x00d7;", "[[\"Character\",\"×\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D8" do
    assert_lexes "&#x00d8;", "[[\"Character\",\"Ø\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00D9" do
    assert_lexes "&#x00d9;", "[[\"Character\",\"Ù\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00DA" do
    assert_lexes "&#x00da;", "[[\"Character\",\"Ú\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00DB" do
    assert_lexes "&#x00db;", "[[\"Character\",\"Û\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00DC" do
    assert_lexes "&#x00dc;", "[[\"Character\",\"Ü\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00DD" do
    assert_lexes "&#x00dd;", "[[\"Character\",\"Ý\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00DE" do
    assert_lexes "&#x00de;", "[[\"Character\",\"Þ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00DF" do
    assert_lexes "&#x00df;", "[[\"Character\",\"ß\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E0" do
    assert_lexes "&#x00e0;", "[[\"Character\",\"à\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E1" do
    assert_lexes "&#x00e1;", "[[\"Character\",\"á\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E2" do
    assert_lexes "&#x00e2;", "[[\"Character\",\"â\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E3" do
    assert_lexes "&#x00e3;", "[[\"Character\",\"ã\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E4" do
    assert_lexes "&#x00e4;", "[[\"Character\",\"ä\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E5" do
    assert_lexes "&#x00e5;", "[[\"Character\",\"å\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E6" do
    assert_lexes "&#x00e6;", "[[\"Character\",\"æ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E7" do
    assert_lexes "&#x00e7;", "[[\"Character\",\"ç\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E8" do
    assert_lexes "&#x00e8;", "[[\"Character\",\"è\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00E9" do
    assert_lexes "&#x00e9;", "[[\"Character\",\"é\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00EA" do
    assert_lexes "&#x00ea;", "[[\"Character\",\"ê\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00EB" do
    assert_lexes "&#x00eb;", "[[\"Character\",\"ë\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00EC" do
    assert_lexes "&#x00ec;", "[[\"Character\",\"ì\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00ED" do
    assert_lexes "&#x00ed;", "[[\"Character\",\"í\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00EE" do
    assert_lexes "&#x00ee;", "[[\"Character\",\"î\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00EF" do
    assert_lexes "&#x00ef;", "[[\"Character\",\"ï\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F0" do
    assert_lexes "&#x00f0;", "[[\"Character\",\"ð\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F1" do
    assert_lexes "&#x00f1;", "[[\"Character\",\"ñ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F2" do
    assert_lexes "&#x00f2;", "[[\"Character\",\"ò\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F3" do
    assert_lexes "&#x00f3;", "[[\"Character\",\"ó\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F4" do
    assert_lexes "&#x00f4;", "[[\"Character\",\"ô\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F5" do
    assert_lexes "&#x00f5;", "[[\"Character\",\"õ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F6" do
    assert_lexes "&#x00f6;", "[[\"Character\",\"ö\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F7" do
    assert_lexes "&#x00f7;", "[[\"Character\",\"÷\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F8" do
    assert_lexes "&#x00f8;", "[[\"Character\",\"ø\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00F9" do
    assert_lexes "&#x00f9;", "[[\"Character\",\"ù\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00FA" do
    assert_lexes "&#x00fa;", "[[\"Character\",\"ú\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00FB" do
    assert_lexes "&#x00fb;", "[[\"Character\",\"û\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00FC" do
    assert_lexes "&#x00fc;", "[[\"Character\",\"ü\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00FD" do
    assert_lexes "&#x00fd;", "[[\"Character\",\"ý\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00FE" do
    assert_lexes "&#x00fe;", "[[\"Character\",\"þ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+00FF" do
    assert_lexes "&#x00ff;", "[[\"Character\",\"ÿ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+D7FF" do
    assert_lexes "&#xd7ff;", "[[\"Character\",\"퟿\"]]"
  end
  it "numericEntities:Valid numeric entity character U+E000" do
    assert_lexes "&#xe000;", "[[\"Character\",\"\uE000\"]]"
  end
  it "numericEntities:Valid numeric entity character U+FDCF" do
    assert_lexes "&#xfdcf;", "[[\"Character\",\"﷏\"]]"
  end
  it "numericEntities:Valid numeric entity character U+FDF0" do
    assert_lexes "&#xfdf0;", "[[\"Character\",\"ﷰ\"]]"
  end
  it "numericEntities:Valid numeric entity character U+FFFD" do
    assert_lexes "&#xfffd;", "[[\"Character\",\"�\"]]"
  end
  it "numericEntities:Valid numeric entity character U+10000" do
    assert_lexes "&#x10000;", "[[\"Character\",\"𐀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+1FFFD" do
    assert_lexes "&#x1fffd;", "[[\"Character\",\"🿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+20000" do
    assert_lexes "&#x20000;", "[[\"Character\",\"𠀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+2FFFD" do
    assert_lexes "&#x2fffd;", "[[\"Character\",\"𯿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+30000" do
    assert_lexes "&#x30000;", "[[\"Character\",\"𰀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+3FFFD" do
    assert_lexes "&#x3fffd;", "[[\"Character\",\"𿿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+40000" do
    assert_lexes "&#x40000;", "[[\"Character\",\"񀀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+4FFFD" do
    assert_lexes "&#x4fffd;", "[[\"Character\",\"񏿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+50000" do
    assert_lexes "&#x50000;", "[[\"Character\",\"񐀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+5FFFD" do
    assert_lexes "&#x5fffd;", "[[\"Character\",\"񟿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+60000" do
    assert_lexes "&#x60000;", "[[\"Character\",\"񠀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+6FFFD" do
    assert_lexes "&#x6fffd;", "[[\"Character\",\"񯿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+70000" do
    assert_lexes "&#x70000;", "[[\"Character\",\"񰀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+7FFFD" do
    assert_lexes "&#x7fffd;", "[[\"Character\",\"񿿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+80000" do
    assert_lexes "&#x80000;", "[[\"Character\",\"򀀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+8FFFD" do
    assert_lexes "&#x8fffd;", "[[\"Character\",\"򏿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+90000" do
    assert_lexes "&#x90000;", "[[\"Character\",\"򐀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+9FFFD" do
    assert_lexes "&#x9fffd;", "[[\"Character\",\"򟿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+A0000" do
    assert_lexes "&#xa0000;", "[[\"Character\",\"򠀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+AFFFD" do
    assert_lexes "&#xafffd;", "[[\"Character\",\"򯿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+B0000" do
    assert_lexes "&#xb0000;", "[[\"Character\",\"򰀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+BFFFD" do
    assert_lexes "&#xbfffd;", "[[\"Character\",\"򿿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+C0000" do
    assert_lexes "&#xc0000;", "[[\"Character\",\"󀀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+CFFFD" do
    assert_lexes "&#xcfffd;", "[[\"Character\",\"󏿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+D0000" do
    assert_lexes "&#xd0000;", "[[\"Character\",\"󐀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+DFFFD" do
    assert_lexes "&#xdfffd;", "[[\"Character\",\"󟿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+E0000" do
    assert_lexes "&#xe0000;", "[[\"Character\",\"󠀀\"]]"
  end
  it "numericEntities:Valid numeric entity character U+EFFFD" do
    assert_lexes "&#xefffd;", "[[\"Character\",\"󯿽\"]]"
  end
  it "numericEntities:Valid numeric entity character U+F0000" do
    assert_lexes "&#xf0000;", "[[\"Character\",\"\u{F0000}\"]]"
  end
  it "numericEntities:Valid numeric entity character U+FFFFD" do
    assert_lexes "&#xffffd;", "[[\"Character\",\"\u{FFFFD}\"]]"
  end
  it "numericEntities:Valid numeric entity character U+100000" do
    assert_lexes "&#x100000;", "[[\"Character\",\"\u{100000}\"]]"
  end
  it "numericEntities:Valid numeric entity character U+10FFFD" do
    assert_lexes "&#x10fffd;", "[[\"Character\",\"\u{10FFFD}\"]]"
  end
end
describe "html5lib-tests/tokenizer/pendingSpecChanges.test" do
  it "pendingSpecChanges:<!---- >" do
    assert_lexes "<!---- >", "[[\"Comment\",\"-- >\"]]"
  end
end
describe "html5lib-tests/tokenizer/test1.test" do
  it "test1:Correct Doctype lowercase" do
    assert_lexes "<!DOCTYPE html>", "[[\"DOCTYPE\",\"html\",null,null,true]]"
  end
  it "test1:Correct Doctype uppercase" do
    assert_lexes "<!DOCTYPE HTML>", "[[\"DOCTYPE\",\"html\",null,null,true]]"
  end
  it "test1:Correct Doctype mixed case" do
    assert_lexes "<!DOCTYPE HtMl>", "[[\"DOCTYPE\",\"html\",null,null,true]]"
  end
  it "test1:Correct Doctype case with EOF" do
    assert_lexes "<!DOCTYPE HtMl", "[[\"DOCTYPE\",\"html\",null,null,false]]"
  end
  it "test1:Truncated doctype start" do
    assert_lexes "<!DOC>", "[[\"Comment\",\"DOC\"]]"
  end
  it "test1:Doctype in error" do
    assert_lexes "<!DOCTYPE foo>", "[[\"DOCTYPE\",\"foo\",null,null,true]]"
  end
  it "test1:Single Start Tag" do
    assert_lexes "<h>", "[[\"StartTag\",\"h\",{}]]"
  end
  it "test1:Empty end tag" do
    assert_lexes "</>", "[]"
  end
  it "test1:Empty start tag" do
    assert_lexes "<>", "[[\"Character\",\"<>\"]]"
  end
  it "test1:Start Tag w/attribute" do
    assert_lexes "<h a='b'>", "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
  end
  it "test1:Start Tag w/attribute no quotes" do
    assert_lexes "<h a=b>", "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
  end
  it "test1:Start/End Tag" do
    assert_lexes "<h></h>", "[[\"StartTag\",\"h\",{}],[\"EndTag\",\"h\"]]"
  end
  it "test1:Two unclosed start tags" do
    assert_lexes "<p>One<p>Two", "[[\"StartTag\",\"p\",{}],[\"Character\",\"One\"],[\"StartTag\",\"p\",{}],[\"Character\",\"Two\"]]"
  end
  it "test1:End Tag w/attribute" do
    assert_lexes "<h></h a='b'>", "[[\"StartTag\",\"h\",{}],[\"EndTag\",\"h\"]]"
  end
  it "test1:Multiple atts" do
    assert_lexes "<h a='b' c='d'>", "[[\"StartTag\",\"h\",{\"a\":\"b\",\"c\":\"d\"}]]"
  end
  it "test1:Multiple atts no space" do
    assert_lexes "<h a='b'c='d'>", "[[\"StartTag\",\"h\",{\"a\":\"b\",\"c\":\"d\"}]]"
  end
  it "test1:Repeated attr" do
    assert_lexes "<h a='b' a='d'>", "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
  end
  it "test1:Simple comment" do
    assert_lexes "<!--comment-->", "[[\"Comment\",\"comment\"]]"
  end
  it "test1:Comment, Central dash no space" do
    assert_lexes "<!----->", "[[\"Comment\",\"-\"]]"
  end
  it "test1:Comment, two central dashes" do
    assert_lexes "<!-- --comment -->", "[[\"Comment\",\" --comment \"]]"
  end
  it "test1:Comment, central less-than bang" do
    assert_lexes "<!--<!-->", "[[\"Comment\",\"<!\"]]"
  end
  it "test1:Unfinished comment" do
    assert_lexes "<!--comment", "[[\"Comment\",\"comment\"]]"
  end
  it "test1:Unfinished comment after start of nested comment" do
    assert_lexes "<!-- <!--", "[[\"Comment\",\" <!\"]]"
  end
  it "test1:Start of a comment" do
    assert_lexes "<!-", "[[\"Comment\",\"-\"]]"
  end
  it "test1:Short comment" do
    assert_lexes "<!-->", "[[\"Comment\",\"\"]]"
  end
  it "test1:Short comment two" do
    assert_lexes "<!--->", "[[\"Comment\",\"\"]]"
  end
  it "test1:Short comment three" do
    assert_lexes "<!---->", "[[\"Comment\",\"\"]]"
  end
  it "test1:< in comment" do
    assert_lexes "<!-- <test-->", "[[\"Comment\",\" <test\"]]"
  end
  it "test1:<< in comment" do
    assert_lexes "<!--<<-->", "[[\"Comment\",\"<<\"]]"
  end
  it "test1:<! in comment" do
    assert_lexes "<!-- <!test-->", "[[\"Comment\",\" <!test\"]]"
  end
  it "test1:<!- in comment" do
    assert_lexes "<!-- <!-test-->", "[[\"Comment\",\" <!-test\"]]"
  end
  it "test1:Nested comment" do
    assert_lexes "<!-- <!--test-->", "[[\"Comment\",\" <!--test\"]]"
  end
  it "test1:Nested comment with extra <" do
    assert_lexes "<!-- <<!--test-->", "[[\"Comment\",\" <<!--test\"]]"
  end
  it "test1:< in script data" do
    skip
  end
  it "test1:<! in script data" do
    skip
  end
  it "test1:<!- in script data" do
    skip
  end
  it "test1:Escaped script data" do
    skip
  end
  it "test1:< in script HTML comment" do
    skip
  end
  it "test1:</ in script HTML comment" do
    skip
  end
  it "test1:Start tag in script HTML comment" do
    skip
  end
  it "test1:End tag in script HTML comment" do
    skip
  end
  it "test1:- in script HTML comment double escaped" do
    skip
  end
  it "test1:-- in script HTML comment double escaped" do
    skip
  end
  it "test1:--- in script HTML comment double escaped" do
    skip
  end
  it "test1:- spaced in script HTML comment double escaped" do
    skip
  end
  it "test1:-- spaced in script HTML comment double escaped" do
    skip
  end
  it "test1:Ampersand EOF" do
    assert_lexes "&", "[[\"Character\",\"&\"]]"
  end
  it "test1:Ampersand ampersand EOF" do
    assert_lexes "&&", "[[\"Character\",\"&&\"]]"
  end
  it "test1:Ampersand space EOF" do
    assert_lexes "& ", "[[\"Character\",\"& \"]]"
  end
  it "test1:Unfinished entity" do
    assert_lexes "&f", "[[\"Character\",\"&f\"]]"
  end
  it "test1:Ampersand, number sign" do
    assert_lexes "&#", "[[\"Character\",\"&#\"]]"
  end
  it "test1:Unfinished numeric entity" do
    assert_lexes "&#x", "[[\"Character\",\"&#x\"]]"
  end
  it "test1:Entity with trailing semicolon (1)" do
    assert_lexes "I'm &not;it", "[[\"Character\",\"I'm ¬it\"]]"
  end
  it "test1:Entity with trailing semicolon (2)" do
    assert_lexes "I'm &notin;", "[[\"Character\",\"I'm ∉\"]]"
  end
  it "test1:Entity without trailing semicolon (1)" do
    assert_lexes "I'm &notit", "[[\"Character\",\"I'm ¬it\"]]"
  end
  it "test1:Entity without trailing semicolon (2)" do
    assert_lexes "I'm &notin", "[[\"Character\",\"I'm ¬in\"]]"
  end
  it "test1:Partial entity match at end of file" do
    assert_lexes "I'm &no", "[[\"Character\",\"I'm &no\"]]"
  end
  it "test1:Non-ASCII character reference name" do
    assert_lexes "&¬;", "[[\"Character\",\"&¬;\"]]"
  end
  it "test1:ASCII decimal entity" do
    assert_lexes "&#0036;", "[[\"Character\",\"$\"]]"
  end
  it "test1:ASCII hexadecimal entity" do
    assert_lexes "&#x3f;", "[[\"Character\",\"?\"]]"
  end
  it "test1:Hexadecimal entity in attribute" do
    assert_lexes "<h a='&#x3f;'></h>", "[[\"StartTag\",\"h\",{\"a\":\"?\"}],[\"EndTag\",\"h\"]]"
  end
  it "test1:Entity in attribute without semicolon ending in x" do
    assert_lexes "<h a='&notx'>", "[[\"StartTag\",\"h\",{\"a\":\"&notx\"}]]"
  end
  it "test1:Entity in attribute without semicolon ending in 1" do
    assert_lexes "<h a='&not1'>", "[[\"StartTag\",\"h\",{\"a\":\"&not1\"}]]"
  end
  it "test1:Entity in attribute without semicolon ending in i" do
    assert_lexes "<h a='&noti'>", "[[\"StartTag\",\"h\",{\"a\":\"&noti\"}]]"
  end
  it "test1:Entity in attribute without semicolon" do
    assert_lexes "<h a='&COPY'>", "[[\"StartTag\",\"h\",{\"a\":\"©\"}]]"
  end
  it "test1:Unquoted attribute ending in ampersand" do
    assert_lexes "<s o=& t>", "[[\"StartTag\",\"s\",{\"o\":\"&\",\"t\":\"\"}]]"
  end
  it "test1:Unquoted attribute at end of tag with final character of &, with tag followed by characters" do
    assert_lexes "<a a=a&>foo", "[[\"StartTag\",\"a\",{\"a\":\"a&\"}],[\"Character\",\"foo\"]]"
  end
  it "test1:plaintext element" do
    assert_lexes "<plaintext>foobar", "[[\"StartTag\",\"plaintext\",{}],[\"Character\",\"foobar\"]]"
  end
  it "test1:Open angled bracket in unquoted attribute value state" do
    assert_lexes "<a a=f<>", "[[\"StartTag\",\"a\",{\"a\":\"f<\"}]]"
  end
end
describe "html5lib-tests/tokenizer/test2.test" do
  it "test2:DOCTYPE without name" do
    assert_lexes "<!DOCTYPE>", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test2:DOCTYPE without space before name" do
    assert_lexes "<!DOCTYPEhtml>", "[[\"DOCTYPE\",\"html\",null,null,true]]"
  end
  it "test2:Incorrect DOCTYPE without a space before name" do
    assert_lexes "<!DOCTYPEfoo>", "[[\"DOCTYPE\",\"foo\",null,null,true]]"
  end
  it "test2:DOCTYPE with publicId" do
    assert_lexes "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML Transitional 4.01//EN\">", "[[\"DOCTYPE\",\"html\",\"-//W3C//DTD HTML Transitional 4.01//EN\",null,true]]"
  end
  it "test2:DOCTYPE with EOF after PUBLIC" do
    assert_lexes "<!DOCTYPE html PUBLIC", "[[\"DOCTYPE\",\"html\",null,null,false]]"
  end
  it "test2:DOCTYPE with EOF after PUBLIC '" do
    assert_lexes "<!DOCTYPE html PUBLIC '", "[[\"DOCTYPE\",\"html\",\"\",null,false]]"
  end
  it "test2:DOCTYPE with EOF after PUBLIC 'x" do
    assert_lexes "<!DOCTYPE html PUBLIC 'x", "[[\"DOCTYPE\",\"html\",\"x\",null,false]]"
  end
  it "test2:DOCTYPE with systemId" do
    assert_lexes "<!DOCTYPE html SYSTEM \"-//W3C//DTD HTML Transitional 4.01//EN\">", "[[\"DOCTYPE\",\"html\",null,\"-//W3C//DTD HTML Transitional 4.01//EN\",true]]"
  end
  it "test2:DOCTYPE with single-quoted systemId" do
    assert_lexes "<!DOCTYPE html SYSTEM '-//W3C//DTD HTML Transitional 4.01//EN'>", "[[\"DOCTYPE\",\"html\",null,\"-//W3C//DTD HTML Transitional 4.01//EN\",true]]"
  end
  it "test2:DOCTYPE with publicId and systemId" do
    assert_lexes "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML Transitional 4.01//EN\" \"-//W3C//DTD HTML Transitional 4.01//EN\">", "[[\"DOCTYPE\",\"html\",\"-//W3C//DTD HTML Transitional 4.01//EN\",\"-//W3C//DTD HTML Transitional 4.01//EN\",true]]"
  end
  it "test2:DOCTYPE with > in double-quoted publicId" do
    assert_lexes "<!DOCTYPE html PUBLIC \">x", "[[\"DOCTYPE\",\"html\",\"\",null,false],[\"Character\",\"x\"]]"
  end
  it "test2:DOCTYPE with > in single-quoted publicId" do
    assert_lexes "<!DOCTYPE html PUBLIC '>x", "[[\"DOCTYPE\",\"html\",\"\",null,false],[\"Character\",\"x\"]]"
  end
  it "test2:DOCTYPE with > in double-quoted systemId" do
    assert_lexes "<!DOCTYPE html PUBLIC \"foo\" \">x", "[[\"DOCTYPE\",\"html\",\"foo\",\"\",false],[\"Character\",\"x\"]]"
  end
  it "test2:DOCTYPE with > in single-quoted systemId" do
    assert_lexes "<!DOCTYPE html PUBLIC 'foo' '>x", "[[\"DOCTYPE\",\"html\",\"foo\",\"\",false],[\"Character\",\"x\"]]"
  end
  it "test2:Incomplete doctype" do
    assert_lexes "<!DOCTYPE html ", "[[\"DOCTYPE\",\"html\",null,null,false]]"
  end
  it "test2:Numeric entity representing the NUL character" do
    assert_lexes "&#0000;", "[[\"Character\",\"�\"]]"
  end
  it "test2:Hexadecimal entity representing the NUL character" do
    assert_lexes "&#x0000;", "[[\"Character\",\"�\"]]"
  end
  it "test2:Numeric entity representing a codepoint after 1114111 (U+10FFFF)" do
    assert_lexes "&#2225222;", "[[\"Character\",\"�\"]]"
  end
  it "test2:Hexadecimal entity representing a codepoint after 1114111 (U+10FFFF)" do
    assert_lexes "&#x1010FFFF;", "[[\"Character\",\"�\"]]"
  end
  it "test2:Hexadecimal entity pair representing a surrogate pair" do
    assert_lexes "&#xD869;&#xDED6;", "[[\"Character\",\"��\"]]"
  end
  it "test2:Hexadecimal entity with mixed uppercase and lowercase" do
    assert_lexes "&#xaBcD;", "[[\"Character\",\"ꯍ\"]]"
  end
  it "test2:Entity without a name" do
    assert_lexes "&;", "[[\"Character\",\"&;\"]]"
  end
  it "test2:Unescaped ampersand in attribute value" do
    assert_lexes "<h a='&'>", "[[\"StartTag\",\"h\",{\"a\":\"&\"}]]"
  end
  it "test2:StartTag containing <" do
    assert_lexes "<a<b>", "[[\"StartTag\",\"a<b\",{}]]"
  end
  it "test2:Non-void element containing trailing /" do
    assert_lexes "<h/>", "[[\"StartTag\",\"h\",{},true]]"
  end
  it "test2:Void element with permitted slash" do
    assert_lexes "<br/>", "[[\"StartTag\",\"br\",{},true]]"
  end
  it "test2:Void element with permitted slash (with attribute)" do
    assert_lexes "<br foo='bar'/>", "[[\"StartTag\",\"br\",{\"foo\":\"bar\"},true]]"
  end
  it "test2:StartTag containing /" do
    assert_lexes "<h/a='b'>", "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
  end
  it "test2:Double-quoted attribute value" do
    assert_lexes "<h a=\"b\">", "[[\"StartTag\",\"h\",{\"a\":\"b\"}]]"
  end
  it "test2:Unescaped </" do
    assert_lexes "</", "[[\"Character\",\"</\"]]"
  end
  it "test2:Illegal end tag name" do
    assert_lexes "</1>", "[[\"Comment\",\"1\"]]"
  end
  it "test2:Simili processing instruction" do
    assert_lexes "<?namespace>", "[[\"Comment\",\"?namespace\"]]"
  end
  it "test2:A bogus comment stops at >, even if preceded by two dashes" do
    assert_lexes "<?foo-->", "[[\"Comment\",\"?foo--\"]]"
  end
  it "test2:Unescaped <" do
    assert_lexes "foo < bar", "[[\"Character\",\"foo < bar\"]]"
  end
  it "test2:Null Byte Replacement" do
    assert_lexes "\u0000", "[[\"Character\",\"\\u0000\"]]"
  end
  it "test2:Comment with dash" do
    assert_lexes "<!---x", "[[\"Comment\",\"-x\"]]"
  end
  it "test2:Entity + newline" do
    assert_lexes "\nx\n&gt;\n", "[[\"Character\",\"\\nx\\n>\\n\"]]"
  end
  it "test2:Start tag with no attributes but space before the greater-than sign" do
    assert_lexes "<h >", "[[\"StartTag\",\"h\",{}]]"
  end
  it "test2:Empty attribute followed by uppercase attribute" do
    assert_lexes "<h a B=''>", "[[\"StartTag\",\"h\",{\"a\":\"\",\"b\":\"\"}]]"
  end
  it "test2:Double-quote after attribute name" do
    assert_lexes "<h a \">", "[[\"StartTag\",\"h\",{\"a\":\"\",\"\\\"\":\"\"}]]"
  end
  it "test2:Single-quote after attribute name" do
    assert_lexes "<h a '>", "[[\"StartTag\",\"h\",{\"a\":\"\",\"'\":\"\"}]]"
  end
  it "test2:Empty end tag with following characters" do
    assert_lexes "a</>bc", "[[\"Character\",\"abc\"]]"
  end
  it "test2:Empty end tag with following tag" do
    assert_lexes "a</><b>c", "[[\"Character\",\"a\"],[\"StartTag\",\"b\",{}],[\"Character\",\"c\"]]"
  end
  it "test2:Empty end tag with following comment" do
    assert_lexes "a</><!--b-->c", "[[\"Character\",\"a\"],[\"Comment\",\"b\"],[\"Character\",\"c\"]]"
  end
  it "test2:Empty end tag with following end tag" do
    assert_lexes "a</></b>c", "[[\"Character\",\"a\"],[\"EndTag\",\"b\"],[\"Character\",\"c\"]]"
  end
end
describe "html5lib-tests/tokenizer/test3.test" do
  it "test3:[empty]" do
    skip
  end
  it "test3:[empty]" do
    skip
  end
  it "test3:\\u0009" do
    skip
  end
  it "test3:\\u0009" do
    skip
  end
  it "test3:\\u000A" do
    skip
  end
  it "test3:\\u000A" do
    skip
  end
  it "test3:\\u000B" do
    skip
  end
  it "test3:\\u000B" do
    skip
  end
  it "test3:\\u000C" do
    skip
  end
  it "test3:\\u000C" do
    skip
  end
  it "test3: " do
    skip
  end
  it "test3: " do
    skip
  end
  it "test3:!" do
    skip
  end
  it "test3:!" do
    skip
  end
  it "test3:\"" do
    skip
  end
  it "test3:\"" do
    skip
  end
  it "test3:%" do
    skip
  end
  it "test3:%" do
    skip
  end
  it "test3:&" do
    skip
  end
  it "test3:&" do
    skip
  end
  it "test3:'" do
    skip
  end
  it "test3:'" do
    skip
  end
  it "test3:," do
    skip
  end
  it "test3:," do
    skip
  end
  it "test3:-" do
    skip
  end
  it "test3:-" do
    skip
  end
  it "test3:." do
    skip
  end
  it "test3:." do
    skip
  end
  it "test3:/" do
    skip
  end
  it "test3:/" do
    skip
  end
  it "test3:0" do
    skip
  end
  it "test3:0" do
    skip
  end
  it "test3:1" do
    skip
  end
  it "test3:1" do
    skip
  end
  it "test3:9" do
    skip
  end
  it "test3:9" do
    skip
  end
  it "test3:;" do
    skip
  end
  it "test3:;" do
    skip
  end
  it "test3:;=" do
    skip
  end
  it "test3:;=" do
    skip
  end
  it "test3:;>" do
    skip
  end
  it "test3:;>" do
    skip
  end
  it "test3:;?" do
    skip
  end
  it "test3:;?" do
    skip
  end
  it "test3:;@" do
    skip
  end
  it "test3:;@" do
    skip
  end
  it "test3:;A" do
    skip
  end
  it "test3:;A" do
    skip
  end
  it "test3:;B" do
    skip
  end
  it "test3:;B" do
    skip
  end
  it "test3:;Y" do
    skip
  end
  it "test3:;Y" do
    skip
  end
  it "test3:;Z" do
    skip
  end
  it "test3:;Z" do
    skip
  end
  it "test3:;`" do
    skip
  end
  it "test3:;`" do
    skip
  end
  it "test3:;a" do
    skip
  end
  it "test3:;a" do
    skip
  end
  it "test3:;b" do
    skip
  end
  it "test3:;b" do
    skip
  end
  it "test3:;y" do
    skip
  end
  it "test3:;y" do
    skip
  end
  it "test3:;z" do
    skip
  end
  it "test3:;z" do
    skip
  end
  it "test3:;{" do
    skip
  end
  it "test3:;{" do
    skip
  end
  it "test3:;\\uDBC0\\uDC00" do
    skip
  end
  it "test3:;\\uDBC0\\uDC00" do
    skip
  end
  it "test3:<" do
    assert_lexes "<", "[[\"Character\",\"<\"]]"
  end
  it "test3:<\\u0000" do
    assert_lexes "<\u0000", "[[\"Character\",\"<\\u0000\"]]"
  end
  it "test3:<\\u0009" do
    assert_lexes "<\t", "[[\"Character\",\"<\\t\"]]"
  end
  it "test3:<\\u000A" do
    assert_lexes "<\n", "[[\"Character\",\"<\\n\"]]"
  end
  it "test3:<\\u000B" do
    assert_lexes "<\v", "[[\"Character\",\"<\\u000b\"]]"
  end
  it "test3:<\\u000C" do
    assert_lexes "<\f", "[[\"Character\",\"<\\f\"]]"
  end
  it "test3:< " do
    assert_lexes "< ", "[[\"Character\",\"< \"]]"
  end
  it "test3:<!" do
    assert_lexes "<!", "[[\"Comment\",\"\"]]"
  end
  it "test3:<!\\u0000" do
    assert_lexes "<!\u0000", "[[\"Comment\",\"�\"]]"
  end
  it "test3:<!\\u0009" do
    assert_lexes "<!\t", "[[\"Comment\",\"\\t\"]]"
  end
  it "test3:<!\\u000A" do
    assert_lexes "<!\n", "[[\"Comment\",\"\\n\"]]"
  end
  it "test3:<!\\u000B" do
    assert_lexes "<!\v", "[[\"Comment\",\"\\u000b\"]]"
  end
  it "test3:<!\\u000C" do
    assert_lexes "<!\f", "[[\"Comment\",\"\\f\"]]"
  end
  it "test3:<! " do
    assert_lexes "<! ", "[[\"Comment\",\" \"]]"
  end
  it "test3:<! \\u0000" do
    assert_lexes "<! \u0000", "[[\"Comment\",\" �\"]]"
  end
  it "test3:<!!" do
    assert_lexes "<!!", "[[\"Comment\",\"!\"]]"
  end
  it "test3:<!\"" do
    assert_lexes "<!\"", "[[\"Comment\",\"\\\"\"]]"
  end
  it "test3:<!&" do
    assert_lexes "<!&", "[[\"Comment\",\"&\"]]"
  end
  it "test3:<!'" do
    assert_lexes "<!'", "[[\"Comment\",\"'\"]]"
  end
  it "test3:<!-" do
    assert_lexes "<!-", "[[\"Comment\",\"-\"]]"
  end
  it "test3:<!--" do
    assert_lexes "<!--", "[[\"Comment\",\"\"]]"
  end
  it "test3:<!--\\u0000" do
    assert_lexes "<!--\u0000", "[[\"Comment\",\"�\"]]"
  end
  it "test3:<!--\\u0009" do
    assert_lexes "<!--\t", "[[\"Comment\",\"\\t\"]]"
  end
  it "test3:<!--\\u000A" do
    assert_lexes "<!--\n", "[[\"Comment\",\"\\n\"]]"
  end
  it "test3:<!--\\u000B" do
    assert_lexes "<!--\v", "[[\"Comment\",\"\\u000b\"]]"
  end
  it "test3:<!--\\u000C" do
    assert_lexes "<!--\f", "[[\"Comment\",\"\\f\"]]"
  end
  it "test3:<!-- " do
    assert_lexes "<!-- ", "[[\"Comment\",\" \"]]"
  end
  it "test3:<!-- \\u0000" do
    assert_lexes "<!-- \u0000", "[[\"Comment\",\" �\"]]"
  end
  it "test3:<!-- \\u0009" do
    assert_lexes "<!-- \t", "[[\"Comment\",\" \\t\"]]"
  end
  it "test3:<!-- \\u000A" do
    assert_lexes "<!-- \n", "[[\"Comment\",\" \\n\"]]"
  end
  it "test3:<!-- \\u000B" do
    assert_lexes "<!-- \v", "[[\"Comment\",\" \\u000b\"]]"
  end
  it "test3:<!-- \\u000C" do
    assert_lexes "<!-- \f", "[[\"Comment\",\" \\f\"]]"
  end
  it "test3:<!--  " do
    assert_lexes "<!--  ", "[[\"Comment\",\"  \"]]"
  end
  it "test3:<!-- !" do
    assert_lexes "<!-- !", "[[\"Comment\",\" !\"]]"
  end
  it "test3:<!-- \"" do
    assert_lexes "<!-- \"", "[[\"Comment\",\" \\\"\"]]"
  end
  it "test3:<!-- &" do
    assert_lexes "<!-- &", "[[\"Comment\",\" &\"]]"
  end
  it "test3:<!-- '" do
    assert_lexes "<!-- '", "[[\"Comment\",\" '\"]]"
  end
  it "test3:<!-- ," do
    assert_lexes "<!-- ,", "[[\"Comment\",\" ,\"]]"
  end
  it "test3:<!-- -" do
    assert_lexes "<!-- -", "[[\"Comment\",\" \"]]"
  end
  it "test3:<!-- -\\u0000" do
    assert_lexes "<!-- -\u0000", "[[\"Comment\",\" -�\"]]"
  end
  it "test3:<!-- -\\u0009" do
    assert_lexes "<!-- -\t", "[[\"Comment\",\" -\\t\"]]"
  end
  it "test3:<!-- -\\u000A" do
    assert_lexes "<!-- -\n", "[[\"Comment\",\" -\\n\"]]"
  end
  it "test3:<!-- -\\u000B" do
    assert_lexes "<!-- -\v", "[[\"Comment\",\" -\\u000b\"]]"
  end
  it "test3:<!-- -\\u000C" do
    assert_lexes "<!-- -\f", "[[\"Comment\",\" -\\f\"]]"
  end
  it "test3:<!-- - " do
    assert_lexes "<!-- - ", "[[\"Comment\",\" - \"]]"
  end
  it "test3:<!-- -!" do
    assert_lexes "<!-- -!", "[[\"Comment\",\" -!\"]]"
  end
  it "test3:<!-- -\"" do
    assert_lexes "<!-- -\"", "[[\"Comment\",\" -\\\"\"]]"
  end
  it "test3:<!-- -&" do
    assert_lexes "<!-- -&", "[[\"Comment\",\" -&\"]]"
  end
  it "test3:<!-- -'" do
    assert_lexes "<!-- -'", "[[\"Comment\",\" -'\"]]"
  end
  it "test3:<!-- -," do
    assert_lexes "<!-- -,", "[[\"Comment\",\" -,\"]]"
  end
  it "test3:<!-- --" do
    assert_lexes "<!-- --", "[[\"Comment\",\" \"]]"
  end
  it "test3:<!-- -." do
    assert_lexes "<!-- -.", "[[\"Comment\",\" -.\"]]"
  end
  it "test3:<!-- -/" do
    assert_lexes "<!-- -/", "[[\"Comment\",\" -/\"]]"
  end
  it "test3:<!-- -0" do
    assert_lexes "<!-- -0", "[[\"Comment\",\" -0\"]]"
  end
  it "test3:<!-- -1" do
    assert_lexes "<!-- -1", "[[\"Comment\",\" -1\"]]"
  end
  it "test3:<!-- -9" do
    assert_lexes "<!-- -9", "[[\"Comment\",\" -9\"]]"
  end
  it "test3:<!-- -<" do
    assert_lexes "<!-- -<", "[[\"Comment\",\" -<\"]]"
  end
  it "test3:<!-- -=" do
    assert_lexes "<!-- -=", "[[\"Comment\",\" -=\"]]"
  end
  it "test3:<!-- ->" do
    assert_lexes "<!-- ->", "[[\"Comment\",\" ->\"]]"
  end
  it "test3:<!-- -?" do
    assert_lexes "<!-- -?", "[[\"Comment\",\" -?\"]]"
  end
  it "test3:<!-- -@" do
    assert_lexes "<!-- -@", "[[\"Comment\",\" -@\"]]"
  end
  it "test3:<!-- -A" do
    assert_lexes "<!-- -A", "[[\"Comment\",\" -A\"]]"
  end
  it "test3:<!-- -B" do
    assert_lexes "<!-- -B", "[[\"Comment\",\" -B\"]]"
  end
  it "test3:<!-- -Y" do
    assert_lexes "<!-- -Y", "[[\"Comment\",\" -Y\"]]"
  end
  it "test3:<!-- -Z" do
    assert_lexes "<!-- -Z", "[[\"Comment\",\" -Z\"]]"
  end
  it "test3:<!-- -`" do
    assert_lexes "<!-- -`", "[[\"Comment\",\" -`\"]]"
  end
  it "test3:<!-- -a" do
    assert_lexes "<!-- -a", "[[\"Comment\",\" -a\"]]"
  end
  it "test3:<!-- -b" do
    assert_lexes "<!-- -b", "[[\"Comment\",\" -b\"]]"
  end
  it "test3:<!-- -y" do
    assert_lexes "<!-- -y", "[[\"Comment\",\" -y\"]]"
  end
  it "test3:<!-- -z" do
    assert_lexes "<!-- -z", "[[\"Comment\",\" -z\"]]"
  end
  it "test3:<!-- -{" do
    assert_lexes "<!-- -{", "[[\"Comment\",\" -{\"]]"
  end
  it "test3:<!-- -\\uDBC0\\uDC00" do
    assert_lexes "<!-- -\u{100000}", "[[\"Comment\",\" -\u{100000}\"]]"
  end
  it "test3:<!-- ." do
    assert_lexes "<!-- .", "[[\"Comment\",\" .\"]]"
  end
  it "test3:<!-- /" do
    assert_lexes "<!-- /", "[[\"Comment\",\" /\"]]"
  end
  it "test3:<!-- 0" do
    assert_lexes "<!-- 0", "[[\"Comment\",\" 0\"]]"
  end
  it "test3:<!-- 1" do
    assert_lexes "<!-- 1", "[[\"Comment\",\" 1\"]]"
  end
  it "test3:<!-- 9" do
    assert_lexes "<!-- 9", "[[\"Comment\",\" 9\"]]"
  end
  it "test3:<!-- <" do
    assert_lexes "<!-- <", "[[\"Comment\",\" <\"]]"
  end
  it "test3:<!-- =" do
    assert_lexes "<!-- =", "[[\"Comment\",\" =\"]]"
  end
  it "test3:<!-- >" do
    assert_lexes "<!-- >", "[[\"Comment\",\" >\"]]"
  end
  it "test3:<!-- ?" do
    assert_lexes "<!-- ?", "[[\"Comment\",\" ?\"]]"
  end
  it "test3:<!-- @" do
    assert_lexes "<!-- @", "[[\"Comment\",\" @\"]]"
  end
  it "test3:<!-- A" do
    assert_lexes "<!-- A", "[[\"Comment\",\" A\"]]"
  end
  it "test3:<!-- B" do
    assert_lexes "<!-- B", "[[\"Comment\",\" B\"]]"
  end
  it "test3:<!-- Y" do
    assert_lexes "<!-- Y", "[[\"Comment\",\" Y\"]]"
  end
  it "test3:<!-- Z" do
    assert_lexes "<!-- Z", "[[\"Comment\",\" Z\"]]"
  end
  it "test3:<!-- `" do
    assert_lexes "<!-- `", "[[\"Comment\",\" `\"]]"
  end
  it "test3:<!-- a" do
    assert_lexes "<!-- a", "[[\"Comment\",\" a\"]]"
  end
  it "test3:<!-- b" do
    assert_lexes "<!-- b", "[[\"Comment\",\" b\"]]"
  end
  it "test3:<!-- y" do
    assert_lexes "<!-- y", "[[\"Comment\",\" y\"]]"
  end
  it "test3:<!-- z" do
    assert_lexes "<!-- z", "[[\"Comment\",\" z\"]]"
  end
  it "test3:<!-- {" do
    assert_lexes "<!-- {", "[[\"Comment\",\" {\"]]"
  end
  it "test3:<!-- \\uDBC0\\uDC00" do
    assert_lexes "<!-- \u{100000}", "[[\"Comment\",\" \u{100000}\"]]"
  end
  it "test3:<!--!" do
    assert_lexes "<!--!", "[[\"Comment\",\"!\"]]"
  end
  it "test3:<!--\"" do
    assert_lexes "<!--\"", "[[\"Comment\",\"\\\"\"]]"
  end
  it "test3:<!--&" do
    assert_lexes "<!--&", "[[\"Comment\",\"&\"]]"
  end
  it "test3:<!--'" do
    assert_lexes "<!--'", "[[\"Comment\",\"'\"]]"
  end
  it "test3:<!--," do
    assert_lexes "<!--,", "[[\"Comment\",\",\"]]"
  end
  it "test3:<!---" do
    assert_lexes "<!---", "[[\"Comment\",\"\"]]"
  end
  it "test3:<!---\\u0000" do
    assert_lexes "<!---\u0000", "[[\"Comment\",\"-�\"]]"
  end
  it "test3:<!---\\u0009" do
    assert_lexes "<!---\t", "[[\"Comment\",\"-\\t\"]]"
  end
  it "test3:<!---\\u000A" do
    assert_lexes "<!---\n", "[[\"Comment\",\"-\\n\"]]"
  end
  it "test3:<!---\\u000B" do
    assert_lexes "<!---\v", "[[\"Comment\",\"-\\u000b\"]]"
  end
  it "test3:<!---\\u000C" do
    assert_lexes "<!---\f", "[[\"Comment\",\"-\\f\"]]"
  end
  it "test3:<!--- " do
    assert_lexes "<!--- ", "[[\"Comment\",\"- \"]]"
  end
  it "test3:<!---!" do
    assert_lexes "<!---!", "[[\"Comment\",\"-!\"]]"
  end
  it "test3:<!---\"" do
    assert_lexes "<!---\"", "[[\"Comment\",\"-\\\"\"]]"
  end
  it "test3:<!---&" do
    assert_lexes "<!---&", "[[\"Comment\",\"-&\"]]"
  end
  it "test3:<!---'" do
    assert_lexes "<!---'", "[[\"Comment\",\"-'\"]]"
  end
  it "test3:<!---," do
    assert_lexes "<!---,", "[[\"Comment\",\"-,\"]]"
  end
  it "test3:<!----" do
    assert_lexes "<!----", "[[\"Comment\",\"\"]]"
  end
  it "test3:<!----\\u0000" do
    assert_lexes "<!----\u0000", "[[\"Comment\",\"--�\"]]"
  end
  it "test3:<!----\\u0009" do
    assert_lexes "<!----\t", "[[\"Comment\",\"--\\t\"]]"
  end
  it "test3:<!----\\u000A" do
    assert_lexes "<!----\n", "[[\"Comment\",\"--\\n\"]]"
  end
  it "test3:<!----\\u000B" do
    assert_lexes "<!----\v", "[[\"Comment\",\"--\\u000b\"]]"
  end
  it "test3:<!----\\u000C" do
    assert_lexes "<!----\f", "[[\"Comment\",\"--\\f\"]]"
  end
  it "test3:<!---- " do
    assert_lexes "<!---- ", "[[\"Comment\",\"-- \"]]"
  end
  it "test3:<!---- -" do
    assert_lexes "<!---- -", "[[\"Comment\",\"-- \"]]"
  end
  it "test3:<!---- --" do
    assert_lexes "<!---- --", "[[\"Comment\",\"-- \"]]"
  end
  it "test3:<!---- -->" do
    assert_lexes "<!---- -->", "[[\"Comment\",\"-- \"]]"
  end
  it "test3:<!----  -->" do
    assert_lexes "<!----  -->", "[[\"Comment\",\"--  \"]]"
  end
  it "test3:<!---- a-->" do
    assert_lexes "<!---- a-->", "[[\"Comment\",\"-- a\"]]"
  end
  it "test3:<!----!" do
    assert_lexes "<!----!", "[[\"Comment\",\"\"]]"
  end
  it "test3:<!----!>" do
    assert_lexes "<!----!>", "[[\"Comment\",\"\"]]"
  end
  it "test3:<!----! >" do
    assert_lexes "<!----! >", "[[\"Comment\",\"--! >\"]]"
  end
  it "test3:<!----!LF>" do
    assert_lexes "<!----!\n>", "[[\"Comment\",\"--!\\n>\"]]"
  end
  it "test3:<!----!CR>" do
    assert_lexes "<!----!\r>", "[[\"Comment\",\"--!\\n>\"]]"
  end
  it "test3:<!----!CRLF>" do
    assert_lexes "<!----!\r\n>", "[[\"Comment\",\"--!\\n>\"]]"
  end
  it "test3:<!----!a" do
    assert_lexes "<!----!a", "[[\"Comment\",\"--!a\"]]"
  end
  it "test3:<!----!a-" do
    assert_lexes "<!----!a-", "[[\"Comment\",\"--!a\"]]"
  end
  it "test3:<!----!a--" do
    assert_lexes "<!----!a--", "[[\"Comment\",\"--!a\"]]"
  end
  it "test3:<!----!a-->" do
    assert_lexes "<!----!a-->", "[[\"Comment\",\"--!a\"]]"
  end
  it "test3:<!----!-" do
    assert_lexes "<!----!-", "[[\"Comment\",\"--!\"]]"
  end
  it "test3:<!----!--" do
    assert_lexes "<!----!--", "[[\"Comment\",\"--!\"]]"
  end
  it "test3:<!----!-->" do
    assert_lexes "<!----!-->", "[[\"Comment\",\"--!\"]]"
  end
  it "test3:<!----\"" do
    assert_lexes "<!----\"", "[[\"Comment\",\"--\\\"\"]]"
  end
  it "test3:<!----&" do
    assert_lexes "<!----&", "[[\"Comment\",\"--&\"]]"
  end
  it "test3:<!----'" do
    assert_lexes "<!----'", "[[\"Comment\",\"--'\"]]"
  end
  it "test3:<!----," do
    assert_lexes "<!----,", "[[\"Comment\",\"--,\"]]"
  end
  it "test3:<!-----" do
    assert_lexes "<!-----", "[[\"Comment\",\"-\"]]"
  end
  it "test3:<!----." do
    assert_lexes "<!----.", "[[\"Comment\",\"--.\"]]"
  end
  it "test3:<!----/" do
    assert_lexes "<!----/", "[[\"Comment\",\"--/\"]]"
  end
  it "test3:<!----0" do
    assert_lexes "<!----0", "[[\"Comment\",\"--0\"]]"
  end
  it "test3:<!----1" do
    assert_lexes "<!----1", "[[\"Comment\",\"--1\"]]"
  end
  it "test3:<!----9" do
    assert_lexes "<!----9", "[[\"Comment\",\"--9\"]]"
  end
  it "test3:<!----<" do
    assert_lexes "<!----<", "[[\"Comment\",\"--<\"]]"
  end
  it "test3:<!----=" do
    assert_lexes "<!----=", "[[\"Comment\",\"--=\"]]"
  end
  it "test3:<!---->" do
    assert_lexes "<!---->", "[[\"Comment\",\"\"]]"
  end
  it "test3:<!----?" do
    assert_lexes "<!----?", "[[\"Comment\",\"--?\"]]"
  end
  it "test3:<!----@" do
    assert_lexes "<!----@", "[[\"Comment\",\"--@\"]]"
  end
  it "test3:<!----A" do
    assert_lexes "<!----A", "[[\"Comment\",\"--A\"]]"
  end
  it "test3:<!----B" do
    assert_lexes "<!----B", "[[\"Comment\",\"--B\"]]"
  end
  it "test3:<!----Y" do
    assert_lexes "<!----Y", "[[\"Comment\",\"--Y\"]]"
  end
  it "test3:<!----Z" do
    assert_lexes "<!----Z", "[[\"Comment\",\"--Z\"]]"
  end
  it "test3:<!----`" do
    assert_lexes "<!----`", "[[\"Comment\",\"--`\"]]"
  end
  it "test3:<!----a" do
    assert_lexes "<!----a", "[[\"Comment\",\"--a\"]]"
  end
  it "test3:<!----b" do
    assert_lexes "<!----b", "[[\"Comment\",\"--b\"]]"
  end
  it "test3:<!----y" do
    assert_lexes "<!----y", "[[\"Comment\",\"--y\"]]"
  end
  it "test3:<!----z" do
    assert_lexes "<!----z", "[[\"Comment\",\"--z\"]]"
  end
  it "test3:<!----{" do
    assert_lexes "<!----{", "[[\"Comment\",\"--{\"]]"
  end
  it "test3:<!----\\uDBC0\\uDC00" do
    assert_lexes "<!----\u{100000}", "[[\"Comment\",\"--\u{100000}\"]]"
  end
  it "test3:<!---." do
    assert_lexes "<!---.", "[[\"Comment\",\"-.\"]]"
  end
  it "test3:<!---/" do
    assert_lexes "<!---/", "[[\"Comment\",\"-/\"]]"
  end
  it "test3:<!---0" do
    assert_lexes "<!---0", "[[\"Comment\",\"-0\"]]"
  end
  it "test3:<!---1" do
    assert_lexes "<!---1", "[[\"Comment\",\"-1\"]]"
  end
  it "test3:<!---9" do
    assert_lexes "<!---9", "[[\"Comment\",\"-9\"]]"
  end
  it "test3:<!---<" do
    assert_lexes "<!---<", "[[\"Comment\",\"-<\"]]"
  end
  it "test3:<!---=" do
    assert_lexes "<!---=", "[[\"Comment\",\"-=\"]]"
  end
  it "test3:<!---?" do
    assert_lexes "<!---?", "[[\"Comment\",\"-?\"]]"
  end
  it "test3:<!---@" do
    assert_lexes "<!---@", "[[\"Comment\",\"-@\"]]"
  end
  it "test3:<!---A" do
    assert_lexes "<!---A", "[[\"Comment\",\"-A\"]]"
  end
  it "test3:<!---B" do
    assert_lexes "<!---B", "[[\"Comment\",\"-B\"]]"
  end
  it "test3:<!---Y" do
    assert_lexes "<!---Y", "[[\"Comment\",\"-Y\"]]"
  end
  it "test3:<!---Z" do
    assert_lexes "<!---Z", "[[\"Comment\",\"-Z\"]]"
  end
  it "test3:<!---`" do
    assert_lexes "<!---`", "[[\"Comment\",\"-`\"]]"
  end
  it "test3:<!---a" do
    assert_lexes "<!---a", "[[\"Comment\",\"-a\"]]"
  end
  it "test3:<!---b" do
    assert_lexes "<!---b", "[[\"Comment\",\"-b\"]]"
  end
  it "test3:<!---y" do
    assert_lexes "<!---y", "[[\"Comment\",\"-y\"]]"
  end
  it "test3:<!---z" do
    assert_lexes "<!---z", "[[\"Comment\",\"-z\"]]"
  end
  it "test3:<!---{" do
    assert_lexes "<!---{", "[[\"Comment\",\"-{\"]]"
  end
  it "test3:<!---\\uDBC0\\uDC00" do
    assert_lexes "<!---\u{100000}", "[[\"Comment\",\"-\u{100000}\"]]"
  end
  it "test3:<!--." do
    assert_lexes "<!--.", "[[\"Comment\",\".\"]]"
  end
  it "test3:<!--/" do
    assert_lexes "<!--/", "[[\"Comment\",\"/\"]]"
  end
  it "test3:<!--0" do
    assert_lexes "<!--0", "[[\"Comment\",\"0\"]]"
  end
  it "test3:<!--1" do
    assert_lexes "<!--1", "[[\"Comment\",\"1\"]]"
  end
  it "test3:<!--9" do
    assert_lexes "<!--9", "[[\"Comment\",\"9\"]]"
  end
  it "test3:<!--<" do
    assert_lexes "<!--<", "[[\"Comment\",\"<\"]]"
  end
  it "test3:<!--=" do
    assert_lexes "<!--=", "[[\"Comment\",\"=\"]]"
  end
  it "test3:<!--?" do
    assert_lexes "<!--?", "[[\"Comment\",\"?\"]]"
  end
  it "test3:<!--@" do
    assert_lexes "<!--@", "[[\"Comment\",\"@\"]]"
  end
  it "test3:<!--A" do
    assert_lexes "<!--A", "[[\"Comment\",\"A\"]]"
  end
  it "test3:<!--B" do
    assert_lexes "<!--B", "[[\"Comment\",\"B\"]]"
  end
  it "test3:<!--Y" do
    assert_lexes "<!--Y", "[[\"Comment\",\"Y\"]]"
  end
  it "test3:<!--Z" do
    assert_lexes "<!--Z", "[[\"Comment\",\"Z\"]]"
  end
  it "test3:<!--`" do
    assert_lexes "<!--`", "[[\"Comment\",\"`\"]]"
  end
  it "test3:<!--a" do
    assert_lexes "<!--a", "[[\"Comment\",\"a\"]]"
  end
  it "test3:<!--b" do
    assert_lexes "<!--b", "[[\"Comment\",\"b\"]]"
  end
  it "test3:<!--y" do
    assert_lexes "<!--y", "[[\"Comment\",\"y\"]]"
  end
  it "test3:<!--z" do
    assert_lexes "<!--z", "[[\"Comment\",\"z\"]]"
  end
  it "test3:<!--{" do
    assert_lexes "<!--{", "[[\"Comment\",\"{\"]]"
  end
  it "test3:<!--\\uDBC0\\uDC00" do
    assert_lexes "<!--\u{100000}", "[[\"Comment\",\"\u{100000}\"]]"
  end
  it "test3:<!/" do
    assert_lexes "<!/", "[[\"Comment\",\"/\"]]"
  end
  it "test3:<!0" do
    assert_lexes "<!0", "[[\"Comment\",\"0\"]]"
  end
  it "test3:<!1" do
    assert_lexes "<!1", "[[\"Comment\",\"1\"]]"
  end
  it "test3:<!9" do
    assert_lexes "<!9", "[[\"Comment\",\"9\"]]"
  end
  it "test3:<!<" do
    assert_lexes "<!<", "[[\"Comment\",\"<\"]]"
  end
  it "test3:<!=" do
    assert_lexes "<!=", "[[\"Comment\",\"=\"]]"
  end
  it "test3:<!>" do
    assert_lexes "<!>", "[[\"Comment\",\"\"]]"
  end
  it "test3:<!?" do
    assert_lexes "<!?", "[[\"Comment\",\"?\"]]"
  end
  it "test3:<!@" do
    assert_lexes "<!@", "[[\"Comment\",\"@\"]]"
  end
  it "test3:<!A" do
    assert_lexes "<!A", "[[\"Comment\",\"A\"]]"
  end
  it "test3:<!B" do
    assert_lexes "<!B", "[[\"Comment\",\"B\"]]"
  end
  it "test3:<!DOCTYPE" do
    assert_lexes "<!DOCTYPE", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE\\u0000" do
    assert_lexes "<!DOCTYPE\u0000", "[[\"DOCTYPE\",\"�\",null,null,false]]"
  end
  it "test3:<!DOCTYPE\\u0008" do
    assert_lexes "<!DOCTYPE\b", "[[\"DOCTYPE\",\"\\b\",null,null,false]]"
  end
  it "test3:<!DOCTYPE\\u0009" do
    assert_lexes "<!DOCTYPE\t", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE\\u000A" do
    assert_lexes "<!DOCTYPE\n", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE\\u000B" do
    assert_lexes "<!DOCTYPE\v", "[[\"DOCTYPE\",\"\\u000b\",null,null,false]]"
  end
  it "test3:<!DOCTYPE\\u000C" do
    assert_lexes "<!DOCTYPE\f", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE\\u000D" do
    assert_lexes "<!DOCTYPE\r", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE\\u001F" do
    assert_lexes "<!DOCTYPE\u001F", "[[\"DOCTYPE\",\"\\u001f\",null,null,false]]"
  end
  it "test3:<!DOCTYPE " do
    assert_lexes "<!DOCTYPE ", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE \\u0000" do
    assert_lexes "<!DOCTYPE \u0000", "[[\"DOCTYPE\",\"�\",null,null,false]]"
  end
  it "test3:<!DOCTYPE \\u0008" do
    assert_lexes "<!DOCTYPE \b", "[[\"DOCTYPE\",\"\\b\",null,null,false]]"
  end
  it "test3:<!DOCTYPE \\u0009" do
    assert_lexes "<!DOCTYPE \t", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE \\u000A" do
    assert_lexes "<!DOCTYPE \n", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE \\u000B" do
    assert_lexes "<!DOCTYPE \v", "[[\"DOCTYPE\",\"\\u000b\",null,null,false]]"
  end
  it "test3:<!DOCTYPE \\u000C" do
    assert_lexes "<!DOCTYPE \f", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE \\u000D" do
    assert_lexes "<!DOCTYPE \r", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE \\u001F" do
    assert_lexes "<!DOCTYPE \u001F", "[[\"DOCTYPE\",\"\\u001f\",null,null,false]]"
  end
  it "test3:<!DOCTYPE  " do
    assert_lexes "<!DOCTYPE  ", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE !" do
    assert_lexes "<!DOCTYPE !", "[[\"DOCTYPE\",\"!\",null,null,false]]"
  end
  it "test3:<!DOCTYPE \"" do
    assert_lexes "<!DOCTYPE \"", "[[\"DOCTYPE\",\"\\\"\",null,null,false]]"
  end
  it "test3:<!DOCTYPE &" do
    assert_lexes "<!DOCTYPE &", "[[\"DOCTYPE\",\"&\",null,null,false]]"
  end
  it "test3:<!DOCTYPE '" do
    assert_lexes "<!DOCTYPE '", "[[\"DOCTYPE\",\"'\",null,null,false]]"
  end
  it "test3:<!DOCTYPE -" do
    assert_lexes "<!DOCTYPE -", "[[\"DOCTYPE\",\"-\",null,null,false]]"
  end
  it "test3:<!DOCTYPE /" do
    assert_lexes "<!DOCTYPE /", "[[\"DOCTYPE\",\"/\",null,null,false]]"
  end
  it "test3:<!DOCTYPE 0" do
    assert_lexes "<!DOCTYPE 0", "[[\"DOCTYPE\",\"0\",null,null,false]]"
  end
  it "test3:<!DOCTYPE 1" do
    assert_lexes "<!DOCTYPE 1", "[[\"DOCTYPE\",\"1\",null,null,false]]"
  end
  it "test3:<!DOCTYPE 9" do
    assert_lexes "<!DOCTYPE 9", "[[\"DOCTYPE\",\"9\",null,null,false]]"
  end
  it "test3:<!DOCTYPE <" do
    assert_lexes "<!DOCTYPE <", "[[\"DOCTYPE\",\"<\",null,null,false]]"
  end
  it "test3:<!DOCTYPE =" do
    assert_lexes "<!DOCTYPE =", "[[\"DOCTYPE\",\"=\",null,null,false]]"
  end
  it "test3:<!DOCTYPE >" do
    assert_lexes "<!DOCTYPE >", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE ?" do
    assert_lexes "<!DOCTYPE ?", "[[\"DOCTYPE\",\"?\",null,null,false]]"
  end
  it "test3:<!DOCTYPE @" do
    assert_lexes "<!DOCTYPE @", "[[\"DOCTYPE\",\"@\",null,null,false]]"
  end
  it "test3:<!DOCTYPE A" do
    assert_lexes "<!DOCTYPE A", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE B" do
    assert_lexes "<!DOCTYPE B", "[[\"DOCTYPE\",\"b\",null,null,false]]"
  end
  it "test3:<!DOCTYPE Y" do
    assert_lexes "<!DOCTYPE Y", "[[\"DOCTYPE\",\"y\",null,null,false]]"
  end
  it "test3:<!DOCTYPE Z" do
    assert_lexes "<!DOCTYPE Z", "[[\"DOCTYPE\",\"z\",null,null,false]]"
  end
  it "test3:<!DOCTYPE [" do
    assert_lexes "<!DOCTYPE [", "[[\"DOCTYPE\",\"[\",null,null,false]]"
  end
  it "test3:<!DOCTYPE `" do
    assert_lexes "<!DOCTYPE `", "[[\"DOCTYPE\",\"`\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a" do
    assert_lexes "<!DOCTYPE a", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\\u0000" do
    assert_lexes "<!DOCTYPE a\u0000", "[[\"DOCTYPE\",\"a�\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\\u0008" do
    assert_lexes "<!DOCTYPE a\b", "[[\"DOCTYPE\",\"a\\b\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\\u0009" do
    assert_lexes "<!DOCTYPE a\t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\\u000A" do
    assert_lexes "<!DOCTYPE a\n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\\u000B" do
    assert_lexes "<!DOCTYPE a\v", "[[\"DOCTYPE\",\"a\\u000b\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\\u000C" do
    assert_lexes "<!DOCTYPE a\f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\\u000D" do
    assert_lexes "<!DOCTYPE a\r", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\\u001F" do
    assert_lexes "<!DOCTYPE a\u001F", "[[\"DOCTYPE\",\"a\\u001f\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a " do
    assert_lexes "<!DOCTYPE a ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \\u0000" do
    assert_lexes "<!DOCTYPE a \u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \\u0008" do
    assert_lexes "<!DOCTYPE a \b", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \\u0009" do
    assert_lexes "<!DOCTYPE a \t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \\u000A" do
    assert_lexes "<!DOCTYPE a \n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \\u000B" do
    assert_lexes "<!DOCTYPE a \v", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \\u000C" do
    assert_lexes "<!DOCTYPE a \f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \\u000D" do
    assert_lexes "<!DOCTYPE a \r", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \\u001F" do
    assert_lexes "<!DOCTYPE a \u001F", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a  " do
    assert_lexes "<!DOCTYPE a  ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a !" do
    assert_lexes "<!DOCTYPE a !", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \"" do
    assert_lexes "<!DOCTYPE a \"", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a &" do
    assert_lexes "<!DOCTYPE a &", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a '" do
    assert_lexes "<!DOCTYPE a '", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a -" do
    assert_lexes "<!DOCTYPE a -", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a /" do
    assert_lexes "<!DOCTYPE a /", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a 0" do
    assert_lexes "<!DOCTYPE a 0", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a 1" do
    assert_lexes "<!DOCTYPE a 1", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a 9" do
    assert_lexes "<!DOCTYPE a 9", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a <" do
    assert_lexes "<!DOCTYPE a <", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a =" do
    assert_lexes "<!DOCTYPE a =", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a >" do
    assert_lexes "<!DOCTYPE a >", "[[\"DOCTYPE\",\"a\",null,null,true]]"
  end
  it "test3:<!DOCTYPE a ?" do
    assert_lexes "<!DOCTYPE a ?", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a @" do
    assert_lexes "<!DOCTYPE a @", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a A" do
    assert_lexes "<!DOCTYPE a A", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a B" do
    assert_lexes "<!DOCTYPE a B", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC" do
    assert_lexes "<!DOCTYPE a PUBLIC", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC\u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\\u0008" do
    assert_lexes "<!DOCTYPE a PUBLIC\b", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\\u0009" do
    assert_lexes "<!DOCTYPE a PUBLIC\t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\\u000A" do
    assert_lexes "<!DOCTYPE a PUBLIC\n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\\u000B" do
    assert_lexes "<!DOCTYPE a PUBLIC\v", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\\u000C" do
    assert_lexes "<!DOCTYPE a PUBLIC\f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\\u000D" do
    assert_lexes "<!DOCTYPE a PUBLIC\r", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\\u001F" do
    assert_lexes "<!DOCTYPE a PUBLIC\u001F", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC " do
    assert_lexes "<!DOCTYPE a PUBLIC ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC!" do
    assert_lexes "<!DOCTYPE a PUBLIC!", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"" do
    assert_lexes "<!DOCTYPE a PUBLIC\"", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"\\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC\"\u0000", "[[\"DOCTYPE\",\"a\",\"�\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"\\u0009" do
    assert_lexes "<!DOCTYPE a PUBLIC\"\t", "[[\"DOCTYPE\",\"a\",\"\\t\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"\\u000A" do
    assert_lexes "<!DOCTYPE a PUBLIC\"\n", "[[\"DOCTYPE\",\"a\",\"\\n\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"\\u000B" do
    assert_lexes "<!DOCTYPE a PUBLIC\"\v", "[[\"DOCTYPE\",\"a\",\"\\u000b\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"\\u000C" do
    assert_lexes "<!DOCTYPE a PUBLIC\"\f", "[[\"DOCTYPE\",\"a\",\"\\f\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\" " do
    assert_lexes "<!DOCTYPE a PUBLIC\" ", "[[\"DOCTYPE\",\"a\",\" \",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"!" do
    assert_lexes "<!DOCTYPE a PUBLIC\"!", "[[\"DOCTYPE\",\"a\",\"!\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"\"" do
    assert_lexes "<!DOCTYPE a PUBLIC\"\"", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"\"\\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC\"\"\u0000", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"\" \\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC\"\" \u0000", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"#" do
    assert_lexes "<!DOCTYPE a PUBLIC\"#", "[[\"DOCTYPE\",\"a\",\"#\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"&" do
    assert_lexes "<!DOCTYPE a PUBLIC\"&", "[[\"DOCTYPE\",\"a\",\"&\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"'" do
    assert_lexes "<!DOCTYPE a PUBLIC\"'", "[[\"DOCTYPE\",\"a\",\"'\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"-" do
    assert_lexes "<!DOCTYPE a PUBLIC\"-", "[[\"DOCTYPE\",\"a\",\"-\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"/" do
    assert_lexes "<!DOCTYPE a PUBLIC\"/", "[[\"DOCTYPE\",\"a\",\"/\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"0" do
    assert_lexes "<!DOCTYPE a PUBLIC\"0", "[[\"DOCTYPE\",\"a\",\"0\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"1" do
    assert_lexes "<!DOCTYPE a PUBLIC\"1", "[[\"DOCTYPE\",\"a\",\"1\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"9" do
    assert_lexes "<!DOCTYPE a PUBLIC\"9", "[[\"DOCTYPE\",\"a\",\"9\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"<" do
    assert_lexes "<!DOCTYPE a PUBLIC\"<", "[[\"DOCTYPE\",\"a\",\"<\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"=" do
    assert_lexes "<!DOCTYPE a PUBLIC\"=", "[[\"DOCTYPE\",\"a\",\"=\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\">" do
    assert_lexes "<!DOCTYPE a PUBLIC\">", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"?" do
    assert_lexes "<!DOCTYPE a PUBLIC\"?", "[[\"DOCTYPE\",\"a\",\"?\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"@" do
    assert_lexes "<!DOCTYPE a PUBLIC\"@", "[[\"DOCTYPE\",\"a\",\"@\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"A" do
    assert_lexes "<!DOCTYPE a PUBLIC\"A", "[[\"DOCTYPE\",\"a\",\"A\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"B" do
    assert_lexes "<!DOCTYPE a PUBLIC\"B", "[[\"DOCTYPE\",\"a\",\"B\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"Y" do
    assert_lexes "<!DOCTYPE a PUBLIC\"Y", "[[\"DOCTYPE\",\"a\",\"Y\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"Z" do
    assert_lexes "<!DOCTYPE a PUBLIC\"Z", "[[\"DOCTYPE\",\"a\",\"Z\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"`" do
    assert_lexes "<!DOCTYPE a PUBLIC\"`", "[[\"DOCTYPE\",\"a\",\"`\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"a" do
    assert_lexes "<!DOCTYPE a PUBLIC\"a", "[[\"DOCTYPE\",\"a\",\"a\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"b" do
    assert_lexes "<!DOCTYPE a PUBLIC\"b", "[[\"DOCTYPE\",\"a\",\"b\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"y" do
    assert_lexes "<!DOCTYPE a PUBLIC\"y", "[[\"DOCTYPE\",\"a\",\"y\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"z" do
    assert_lexes "<!DOCTYPE a PUBLIC\"z", "[[\"DOCTYPE\",\"a\",\"z\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"{" do
    assert_lexes "<!DOCTYPE a PUBLIC\"{", "[[\"DOCTYPE\",\"a\",\"{\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\"\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a PUBLIC\"\u{100000}", "[[\"DOCTYPE\",\"a\",\"\u{100000}\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC#" do
    assert_lexes "<!DOCTYPE a PUBLIC#", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC&" do
    assert_lexes "<!DOCTYPE a PUBLIC&", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'" do
    assert_lexes "<!DOCTYPE a PUBLIC'", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'\\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC'\u0000", "[[\"DOCTYPE\",\"a\",\"�\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'\\u0009" do
    assert_lexes "<!DOCTYPE a PUBLIC'\t", "[[\"DOCTYPE\",\"a\",\"\\t\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'\\u000A" do
    assert_lexes "<!DOCTYPE a PUBLIC'\n", "[[\"DOCTYPE\",\"a\",\"\\n\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'\\u000B" do
    assert_lexes "<!DOCTYPE a PUBLIC'\v", "[[\"DOCTYPE\",\"a\",\"\\u000b\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'\\u000C" do
    assert_lexes "<!DOCTYPE a PUBLIC'\f", "[[\"DOCTYPE\",\"a\",\"\\f\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC' " do
    assert_lexes "<!DOCTYPE a PUBLIC' ", "[[\"DOCTYPE\",\"a\",\" \",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'!" do
    assert_lexes "<!DOCTYPE a PUBLIC'!", "[[\"DOCTYPE\",\"a\",\"!\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'\"" do
    assert_lexes "<!DOCTYPE a PUBLIC'\"", "[[\"DOCTYPE\",\"a\",\"\\\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'&" do
    assert_lexes "<!DOCTYPE a PUBLIC'&", "[[\"DOCTYPE\",\"a\",\"&\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''" do
    assert_lexes "<!DOCTYPE a PUBLIC''", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC''\u0000", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\\u0008" do
    assert_lexes "<!DOCTYPE a PUBLIC''\b", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\\u0009" do
    assert_lexes "<!DOCTYPE a PUBLIC''\t", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\\u000A" do
    assert_lexes "<!DOCTYPE a PUBLIC''\n", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\\u000B" do
    assert_lexes "<!DOCTYPE a PUBLIC''\v", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\\u000C" do
    assert_lexes "<!DOCTYPE a PUBLIC''\f", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\\u000D" do
    assert_lexes "<!DOCTYPE a PUBLIC''\r", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\\u001F" do
    assert_lexes "<!DOCTYPE a PUBLIC''\u001F", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'' " do
    assert_lexes "<!DOCTYPE a PUBLIC'' ", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''!" do
    assert_lexes "<!DOCTYPE a PUBLIC''!", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\"" do
    assert_lexes "<!DOCTYPE a PUBLIC''\"", "[[\"DOCTYPE\",\"a\",\"\",\"\",false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''#" do
    assert_lexes "<!DOCTYPE a PUBLIC''#", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''&" do
    assert_lexes "<!DOCTYPE a PUBLIC''&", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'''" do
    assert_lexes "<!DOCTYPE a PUBLIC'''", "[[\"DOCTYPE\",\"a\",\"\",\"\",false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''''\\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC''''\u0000", "[[\"DOCTYPE\",\"a\",\"\",\"\",true]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''''x\\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC''''x\u0000", "[[\"DOCTYPE\",\"a\",\"\",\"\",true]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'''' \\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC'''' \u0000", "[[\"DOCTYPE\",\"a\",\"\",\"\",true]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'''' x\\u0000" do
    assert_lexes "<!DOCTYPE a PUBLIC'''' x\u0000", "[[\"DOCTYPE\",\"a\",\"\",\"\",true]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''(" do
    assert_lexes "<!DOCTYPE a PUBLIC''(", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''-" do
    assert_lexes "<!DOCTYPE a PUBLIC''-", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''/" do
    assert_lexes "<!DOCTYPE a PUBLIC''/", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''0" do
    assert_lexes "<!DOCTYPE a PUBLIC''0", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''1" do
    assert_lexes "<!DOCTYPE a PUBLIC''1", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''9" do
    assert_lexes "<!DOCTYPE a PUBLIC''9", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''<" do
    assert_lexes "<!DOCTYPE a PUBLIC''<", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''=" do
    assert_lexes "<!DOCTYPE a PUBLIC''=", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''>" do
    assert_lexes "<!DOCTYPE a PUBLIC''>", "[[\"DOCTYPE\",\"a\",\"\",null,true]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''?" do
    assert_lexes "<!DOCTYPE a PUBLIC''?", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''@" do
    assert_lexes "<!DOCTYPE a PUBLIC''@", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''A" do
    assert_lexes "<!DOCTYPE a PUBLIC''A", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''B" do
    assert_lexes "<!DOCTYPE a PUBLIC''B", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''Y" do
    assert_lexes "<!DOCTYPE a PUBLIC''Y", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''Z" do
    assert_lexes "<!DOCTYPE a PUBLIC''Z", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''`" do
    assert_lexes "<!DOCTYPE a PUBLIC''`", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''a" do
    assert_lexes "<!DOCTYPE a PUBLIC''a", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''b" do
    assert_lexes "<!DOCTYPE a PUBLIC''b", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''y" do
    assert_lexes "<!DOCTYPE a PUBLIC''y", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''z" do
    assert_lexes "<!DOCTYPE a PUBLIC''z", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''{" do
    assert_lexes "<!DOCTYPE a PUBLIC''{", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC''\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a PUBLIC''\u{100000}", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'(" do
    assert_lexes "<!DOCTYPE a PUBLIC'(", "[[\"DOCTYPE\",\"a\",\"(\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'-" do
    assert_lexes "<!DOCTYPE a PUBLIC'-", "[[\"DOCTYPE\",\"a\",\"-\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'/" do
    assert_lexes "<!DOCTYPE a PUBLIC'/", "[[\"DOCTYPE\",\"a\",\"/\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'0" do
    assert_lexes "<!DOCTYPE a PUBLIC'0", "[[\"DOCTYPE\",\"a\",\"0\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'1" do
    assert_lexes "<!DOCTYPE a PUBLIC'1", "[[\"DOCTYPE\",\"a\",\"1\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'9" do
    assert_lexes "<!DOCTYPE a PUBLIC'9", "[[\"DOCTYPE\",\"a\",\"9\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'<" do
    assert_lexes "<!DOCTYPE a PUBLIC'<", "[[\"DOCTYPE\",\"a\",\"<\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'=" do
    assert_lexes "<!DOCTYPE a PUBLIC'=", "[[\"DOCTYPE\",\"a\",\"=\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'>" do
    assert_lexes "<!DOCTYPE a PUBLIC'>", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'?" do
    assert_lexes "<!DOCTYPE a PUBLIC'?", "[[\"DOCTYPE\",\"a\",\"?\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'@" do
    assert_lexes "<!DOCTYPE a PUBLIC'@", "[[\"DOCTYPE\",\"a\",\"@\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'A" do
    assert_lexes "<!DOCTYPE a PUBLIC'A", "[[\"DOCTYPE\",\"a\",\"A\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'B" do
    assert_lexes "<!DOCTYPE a PUBLIC'B", "[[\"DOCTYPE\",\"a\",\"B\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'Y" do
    assert_lexes "<!DOCTYPE a PUBLIC'Y", "[[\"DOCTYPE\",\"a\",\"Y\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'Z" do
    assert_lexes "<!DOCTYPE a PUBLIC'Z", "[[\"DOCTYPE\",\"a\",\"Z\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'`" do
    assert_lexes "<!DOCTYPE a PUBLIC'`", "[[\"DOCTYPE\",\"a\",\"`\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'a" do
    assert_lexes "<!DOCTYPE a PUBLIC'a", "[[\"DOCTYPE\",\"a\",\"a\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'b" do
    assert_lexes "<!DOCTYPE a PUBLIC'b", "[[\"DOCTYPE\",\"a\",\"b\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'y" do
    assert_lexes "<!DOCTYPE a PUBLIC'y", "[[\"DOCTYPE\",\"a\",\"y\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'z" do
    assert_lexes "<!DOCTYPE a PUBLIC'z", "[[\"DOCTYPE\",\"a\",\"z\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'{" do
    assert_lexes "<!DOCTYPE a PUBLIC'{", "[[\"DOCTYPE\",\"a\",\"{\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC'\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a PUBLIC'\u{100000}", "[[\"DOCTYPE\",\"a\",\"\u{100000}\",null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC(" do
    assert_lexes "<!DOCTYPE a PUBLIC(", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC-" do
    assert_lexes "<!DOCTYPE a PUBLIC-", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC/" do
    assert_lexes "<!DOCTYPE a PUBLIC/", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC0" do
    assert_lexes "<!DOCTYPE a PUBLIC0", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC1" do
    assert_lexes "<!DOCTYPE a PUBLIC1", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC9" do
    assert_lexes "<!DOCTYPE a PUBLIC9", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC<" do
    assert_lexes "<!DOCTYPE a PUBLIC<", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC=" do
    assert_lexes "<!DOCTYPE a PUBLIC=", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC>" do
    assert_lexes "<!DOCTYPE a PUBLIC>", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC?" do
    assert_lexes "<!DOCTYPE a PUBLIC?", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC@" do
    assert_lexes "<!DOCTYPE a PUBLIC@", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLICA" do
    assert_lexes "<!DOCTYPE a PUBLICA", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLICB" do
    assert_lexes "<!DOCTYPE a PUBLICB", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLICY" do
    assert_lexes "<!DOCTYPE a PUBLICY", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLICZ" do
    assert_lexes "<!DOCTYPE a PUBLICZ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC`" do
    assert_lexes "<!DOCTYPE a PUBLIC`", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLICa" do
    assert_lexes "<!DOCTYPE a PUBLICa", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLICb" do
    assert_lexes "<!DOCTYPE a PUBLICb", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLICy" do
    assert_lexes "<!DOCTYPE a PUBLICy", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLICz" do
    assert_lexes "<!DOCTYPE a PUBLICz", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC{" do
    assert_lexes "<!DOCTYPE a PUBLIC{", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a PUBLIC\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a PUBLIC\u{100000}", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM" do
    assert_lexes "<!DOCTYPE a SYSTEM", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\\u0000" do
    assert_lexes "<!DOCTYPE a SYSTEM\u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM \\u0000" do
    assert_lexes "<!DOCTYPE a SYSTEM \u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM x\\u0000" do
    assert_lexes "<!DOCTYPE a SYSTEM \u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\\u0008" do
    assert_lexes "<!DOCTYPE a SYSTEM\b", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\\u0009" do
    assert_lexes "<!DOCTYPE a SYSTEM\t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\\u000A" do
    assert_lexes "<!DOCTYPE a SYSTEM\n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\\u000B" do
    assert_lexes "<!DOCTYPE a SYSTEM\v", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\\u000C" do
    assert_lexes "<!DOCTYPE a SYSTEM\f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\\u000D" do
    assert_lexes "<!DOCTYPE a SYSTEM\r", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\\u001F" do
    assert_lexes "<!DOCTYPE a SYSTEM\u001F", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM " do
    assert_lexes "<!DOCTYPE a SYSTEM ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM!" do
    assert_lexes "<!DOCTYPE a SYSTEM!", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"" do
    assert_lexes "<!DOCTYPE a SYSTEM\"", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"\\u0000" do
    assert_lexes "<!DOCTYPE a SYSTEM\"\u0000", "[[\"DOCTYPE\",\"a\",null,\"�\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"\\u0009" do
    assert_lexes "<!DOCTYPE a SYSTEM\"\t", "[[\"DOCTYPE\",\"a\",null,\"\\t\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"\\u000A" do
    assert_lexes "<!DOCTYPE a SYSTEM\"\n", "[[\"DOCTYPE\",\"a\",null,\"\\n\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"\\u000B" do
    assert_lexes "<!DOCTYPE a SYSTEM\"\v", "[[\"DOCTYPE\",\"a\",null,\"\\u000b\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"\\u000C" do
    assert_lexes "<!DOCTYPE a SYSTEM\"\f", "[[\"DOCTYPE\",\"a\",null,\"\\f\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\" " do
    assert_lexes "<!DOCTYPE a SYSTEM\" ", "[[\"DOCTYPE\",\"a\",null,\" \",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"!" do
    assert_lexes "<!DOCTYPE a SYSTEM\"!", "[[\"DOCTYPE\",\"a\",null,\"!\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"\"" do
    assert_lexes "<!DOCTYPE a SYSTEM\"\"", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"#" do
    assert_lexes "<!DOCTYPE a SYSTEM\"#", "[[\"DOCTYPE\",\"a\",null,\"#\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"&" do
    assert_lexes "<!DOCTYPE a SYSTEM\"&", "[[\"DOCTYPE\",\"a\",null,\"&\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"'" do
    assert_lexes "<!DOCTYPE a SYSTEM\"'", "[[\"DOCTYPE\",\"a\",null,\"'\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"-" do
    assert_lexes "<!DOCTYPE a SYSTEM\"-", "[[\"DOCTYPE\",\"a\",null,\"-\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"/" do
    assert_lexes "<!DOCTYPE a SYSTEM\"/", "[[\"DOCTYPE\",\"a\",null,\"/\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"0" do
    assert_lexes "<!DOCTYPE a SYSTEM\"0", "[[\"DOCTYPE\",\"a\",null,\"0\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"1" do
    assert_lexes "<!DOCTYPE a SYSTEM\"1", "[[\"DOCTYPE\",\"a\",null,\"1\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"9" do
    assert_lexes "<!DOCTYPE a SYSTEM\"9", "[[\"DOCTYPE\",\"a\",null,\"9\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"<" do
    assert_lexes "<!DOCTYPE a SYSTEM\"<", "[[\"DOCTYPE\",\"a\",null,\"<\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"=" do
    assert_lexes "<!DOCTYPE a SYSTEM\"=", "[[\"DOCTYPE\",\"a\",null,\"=\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\">" do
    assert_lexes "<!DOCTYPE a SYSTEM\">", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"?" do
    assert_lexes "<!DOCTYPE a SYSTEM\"?", "[[\"DOCTYPE\",\"a\",null,\"?\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"@" do
    assert_lexes "<!DOCTYPE a SYSTEM\"@", "[[\"DOCTYPE\",\"a\",null,\"@\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"A" do
    assert_lexes "<!DOCTYPE a SYSTEM\"A", "[[\"DOCTYPE\",\"a\",null,\"A\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"B" do
    assert_lexes "<!DOCTYPE a SYSTEM\"B", "[[\"DOCTYPE\",\"a\",null,\"B\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"Y" do
    assert_lexes "<!DOCTYPE a SYSTEM\"Y", "[[\"DOCTYPE\",\"a\",null,\"Y\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"Z" do
    assert_lexes "<!DOCTYPE a SYSTEM\"Z", "[[\"DOCTYPE\",\"a\",null,\"Z\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"`" do
    assert_lexes "<!DOCTYPE a SYSTEM\"`", "[[\"DOCTYPE\",\"a\",null,\"`\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"a" do
    assert_lexes "<!DOCTYPE a SYSTEM\"a", "[[\"DOCTYPE\",\"a\",null,\"a\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"b" do
    assert_lexes "<!DOCTYPE a SYSTEM\"b", "[[\"DOCTYPE\",\"a\",null,\"b\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"y" do
    assert_lexes "<!DOCTYPE a SYSTEM\"y", "[[\"DOCTYPE\",\"a\",null,\"y\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"z" do
    assert_lexes "<!DOCTYPE a SYSTEM\"z", "[[\"DOCTYPE\",\"a\",null,\"z\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"{" do
    assert_lexes "<!DOCTYPE a SYSTEM\"{", "[[\"DOCTYPE\",\"a\",null,\"{\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\"\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a SYSTEM\"\u{100000}", "[[\"DOCTYPE\",\"a\",null,\"\u{100000}\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM#" do
    assert_lexes "<!DOCTYPE a SYSTEM#", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM&" do
    assert_lexes "<!DOCTYPE a SYSTEM&", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'" do
    assert_lexes "<!DOCTYPE a SYSTEM'", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'\\u0000" do
    assert_lexes "<!DOCTYPE a SYSTEM'\u0000", "[[\"DOCTYPE\",\"a\",null,\"�\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'\\u0009" do
    assert_lexes "<!DOCTYPE a SYSTEM'\t", "[[\"DOCTYPE\",\"a\",null,\"\\t\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'\\u000A" do
    assert_lexes "<!DOCTYPE a SYSTEM'\n", "[[\"DOCTYPE\",\"a\",null,\"\\n\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'\\u000B" do
    assert_lexes "<!DOCTYPE a SYSTEM'\v", "[[\"DOCTYPE\",\"a\",null,\"\\u000b\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'\\u000C" do
    assert_lexes "<!DOCTYPE a SYSTEM'\f", "[[\"DOCTYPE\",\"a\",null,\"\\f\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM' " do
    assert_lexes "<!DOCTYPE a SYSTEM' ", "[[\"DOCTYPE\",\"a\",null,\" \",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'!" do
    assert_lexes "<!DOCTYPE a SYSTEM'!", "[[\"DOCTYPE\",\"a\",null,\"!\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'\"" do
    assert_lexes "<!DOCTYPE a SYSTEM'\"", "[[\"DOCTYPE\",\"a\",null,\"\\\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'&" do
    assert_lexes "<!DOCTYPE a SYSTEM'&", "[[\"DOCTYPE\",\"a\",null,\"&\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''" do
    assert_lexes "<!DOCTYPE a SYSTEM''", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\\u0000" do
    assert_lexes "<!DOCTYPE a SYSTEM''\u0000", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\\u0008" do
    assert_lexes "<!DOCTYPE a SYSTEM''\b", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\\u0009" do
    assert_lexes "<!DOCTYPE a SYSTEM''\t", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\\u000A" do
    assert_lexes "<!DOCTYPE a SYSTEM''\n", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\\u000B" do
    assert_lexes "<!DOCTYPE a SYSTEM''\v", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\\u000C" do
    assert_lexes "<!DOCTYPE a SYSTEM''\f", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\\u000D" do
    assert_lexes "<!DOCTYPE a SYSTEM''\r", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\\u001F" do
    assert_lexes "<!DOCTYPE a SYSTEM''\u001F", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'' " do
    assert_lexes "<!DOCTYPE a SYSTEM'' ", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'' \\u0000" do
    assert_lexes "<!DOCTYPE a SYSTEM'' \u0000", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'' x\\u0000" do
    assert_lexes "<!DOCTYPE a SYSTEM'' x\u0000", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''!" do
    assert_lexes "<!DOCTYPE a SYSTEM''!", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\"" do
    assert_lexes "<!DOCTYPE a SYSTEM''\"", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''&" do
    assert_lexes "<!DOCTYPE a SYSTEM''&", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'''" do
    assert_lexes "<!DOCTYPE a SYSTEM'''", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''-" do
    assert_lexes "<!DOCTYPE a SYSTEM''-", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''/" do
    assert_lexes "<!DOCTYPE a SYSTEM''/", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''0" do
    assert_lexes "<!DOCTYPE a SYSTEM''0", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''1" do
    assert_lexes "<!DOCTYPE a SYSTEM''1", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''9" do
    assert_lexes "<!DOCTYPE a SYSTEM''9", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''<" do
    assert_lexes "<!DOCTYPE a SYSTEM''<", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''=" do
    assert_lexes "<!DOCTYPE a SYSTEM''=", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''>" do
    assert_lexes "<!DOCTYPE a SYSTEM''>", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''?" do
    assert_lexes "<!DOCTYPE a SYSTEM''?", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''@" do
    assert_lexes "<!DOCTYPE a SYSTEM''@", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''A" do
    assert_lexes "<!DOCTYPE a SYSTEM''A", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''B" do
    assert_lexes "<!DOCTYPE a SYSTEM''B", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''Y" do
    assert_lexes "<!DOCTYPE a SYSTEM''Y", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''Z" do
    assert_lexes "<!DOCTYPE a SYSTEM''Z", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''`" do
    assert_lexes "<!DOCTYPE a SYSTEM''`", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''a" do
    assert_lexes "<!DOCTYPE a SYSTEM''a", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''b" do
    assert_lexes "<!DOCTYPE a SYSTEM''b", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''y" do
    assert_lexes "<!DOCTYPE a SYSTEM''y", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''z" do
    assert_lexes "<!DOCTYPE a SYSTEM''z", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''{" do
    assert_lexes "<!DOCTYPE a SYSTEM''{", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM''\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a SYSTEM''\u{100000}", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'(" do
    assert_lexes "<!DOCTYPE a SYSTEM'(", "[[\"DOCTYPE\",\"a\",null,\"(\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'-" do
    assert_lexes "<!DOCTYPE a SYSTEM'-", "[[\"DOCTYPE\",\"a\",null,\"-\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'/" do
    assert_lexes "<!DOCTYPE a SYSTEM'/", "[[\"DOCTYPE\",\"a\",null,\"/\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'0" do
    assert_lexes "<!DOCTYPE a SYSTEM'0", "[[\"DOCTYPE\",\"a\",null,\"0\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'1" do
    assert_lexes "<!DOCTYPE a SYSTEM'1", "[[\"DOCTYPE\",\"a\",null,\"1\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'9" do
    assert_lexes "<!DOCTYPE a SYSTEM'9", "[[\"DOCTYPE\",\"a\",null,\"9\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'<" do
    assert_lexes "<!DOCTYPE a SYSTEM'<", "[[\"DOCTYPE\",\"a\",null,\"<\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'=" do
    assert_lexes "<!DOCTYPE a SYSTEM'=", "[[\"DOCTYPE\",\"a\",null,\"=\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'>" do
    assert_lexes "<!DOCTYPE a SYSTEM'>", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'?" do
    assert_lexes "<!DOCTYPE a SYSTEM'?", "[[\"DOCTYPE\",\"a\",null,\"?\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'@" do
    assert_lexes "<!DOCTYPE a SYSTEM'@", "[[\"DOCTYPE\",\"a\",null,\"@\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'A" do
    assert_lexes "<!DOCTYPE a SYSTEM'A", "[[\"DOCTYPE\",\"a\",null,\"A\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'B" do
    assert_lexes "<!DOCTYPE a SYSTEM'B", "[[\"DOCTYPE\",\"a\",null,\"B\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'Y" do
    assert_lexes "<!DOCTYPE a SYSTEM'Y", "[[\"DOCTYPE\",\"a\",null,\"Y\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'Z" do
    assert_lexes "<!DOCTYPE a SYSTEM'Z", "[[\"DOCTYPE\",\"a\",null,\"Z\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'`" do
    assert_lexes "<!DOCTYPE a SYSTEM'`", "[[\"DOCTYPE\",\"a\",null,\"`\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'a" do
    assert_lexes "<!DOCTYPE a SYSTEM'a", "[[\"DOCTYPE\",\"a\",null,\"a\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'b" do
    assert_lexes "<!DOCTYPE a SYSTEM'b", "[[\"DOCTYPE\",\"a\",null,\"b\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'y" do
    assert_lexes "<!DOCTYPE a SYSTEM'y", "[[\"DOCTYPE\",\"a\",null,\"y\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'z" do
    assert_lexes "<!DOCTYPE a SYSTEM'z", "[[\"DOCTYPE\",\"a\",null,\"z\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'{" do
    assert_lexes "<!DOCTYPE a SYSTEM'{", "[[\"DOCTYPE\",\"a\",null,\"{\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM'\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a SYSTEM'\u{100000}", "[[\"DOCTYPE\",\"a\",null,\"\u{100000}\",false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM(" do
    assert_lexes "<!DOCTYPE a SYSTEM(", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM-" do
    assert_lexes "<!DOCTYPE a SYSTEM-", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM/" do
    assert_lexes "<!DOCTYPE a SYSTEM/", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM0" do
    assert_lexes "<!DOCTYPE a SYSTEM0", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM1" do
    assert_lexes "<!DOCTYPE a SYSTEM1", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM9" do
    assert_lexes "<!DOCTYPE a SYSTEM9", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM<" do
    assert_lexes "<!DOCTYPE a SYSTEM<", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM=" do
    assert_lexes "<!DOCTYPE a SYSTEM=", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM>" do
    assert_lexes "<!DOCTYPE a SYSTEM>", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM?" do
    assert_lexes "<!DOCTYPE a SYSTEM?", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM@" do
    assert_lexes "<!DOCTYPE a SYSTEM@", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEMA" do
    assert_lexes "<!DOCTYPE a SYSTEMA", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEMB" do
    assert_lexes "<!DOCTYPE a SYSTEMB", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEMY" do
    assert_lexes "<!DOCTYPE a SYSTEMY", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEMZ" do
    assert_lexes "<!DOCTYPE a SYSTEMZ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM`" do
    assert_lexes "<!DOCTYPE a SYSTEM`", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEMa" do
    assert_lexes "<!DOCTYPE a SYSTEMa", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEMb" do
    assert_lexes "<!DOCTYPE a SYSTEMb", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEMy" do
    assert_lexes "<!DOCTYPE a SYSTEMy", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEMz" do
    assert_lexes "<!DOCTYPE a SYSTEMz", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM{" do
    assert_lexes "<!DOCTYPE a SYSTEM{", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a SYSTEM\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a SYSTEM\u{100000}", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a Y" do
    assert_lexes "<!DOCTYPE a Y", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a Z" do
    assert_lexes "<!DOCTYPE a Z", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a `" do
    assert_lexes "<!DOCTYPE a `", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a" do
    assert_lexes "<!DOCTYPE a a", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a\\u0000" do
    assert_lexes "<!DOCTYPE a a\u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a\\u0009" do
    assert_lexes "<!DOCTYPE a a\t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a\\u000A" do
    assert_lexes "<!DOCTYPE a a\n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a\\u000B" do
    assert_lexes "<!DOCTYPE a a\v", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a\\u000C" do
    assert_lexes "<!DOCTYPE a a\f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a " do
    assert_lexes "<!DOCTYPE a a ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a!" do
    assert_lexes "<!DOCTYPE a a!", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a\"" do
    assert_lexes "<!DOCTYPE a a\"", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a&" do
    assert_lexes "<!DOCTYPE a a&", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a'" do
    assert_lexes "<!DOCTYPE a a'", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a-" do
    assert_lexes "<!DOCTYPE a a-", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a/" do
    assert_lexes "<!DOCTYPE a a/", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a0" do
    assert_lexes "<!DOCTYPE a a0", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a1" do
    assert_lexes "<!DOCTYPE a a1", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a9" do
    assert_lexes "<!DOCTYPE a a9", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a<" do
    assert_lexes "<!DOCTYPE a a<", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a=" do
    assert_lexes "<!DOCTYPE a a=", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a>" do
    assert_lexes "<!DOCTYPE a a>", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a?" do
    assert_lexes "<!DOCTYPE a a?", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a@" do
    assert_lexes "<!DOCTYPE a a@", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a aA" do
    assert_lexes "<!DOCTYPE a aA", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a aB" do
    assert_lexes "<!DOCTYPE a aB", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a aY" do
    assert_lexes "<!DOCTYPE a aY", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a aZ" do
    assert_lexes "<!DOCTYPE a aZ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a`" do
    assert_lexes "<!DOCTYPE a a`", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a aa" do
    assert_lexes "<!DOCTYPE a aa", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a ab" do
    assert_lexes "<!DOCTYPE a ab", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a ay" do
    assert_lexes "<!DOCTYPE a ay", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a az" do
    assert_lexes "<!DOCTYPE a az", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a{" do
    assert_lexes "<!DOCTYPE a a{", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a a\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a a\u{100000}", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a b" do
    assert_lexes "<!DOCTYPE a b", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a y" do
    assert_lexes "<!DOCTYPE a y", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a z" do
    assert_lexes "<!DOCTYPE a z", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a {" do
    assert_lexes "<!DOCTYPE a {", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a \\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a \u{100000}", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a!" do
    assert_lexes "<!DOCTYPE a!", "[[\"DOCTYPE\",\"a!\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\"" do
    assert_lexes "<!DOCTYPE a\"", "[[\"DOCTYPE\",\"a\\\"\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a&" do
    assert_lexes "<!DOCTYPE a&", "[[\"DOCTYPE\",\"a&\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a'" do
    assert_lexes "<!DOCTYPE a'", "[[\"DOCTYPE\",\"a'\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a-" do
    assert_lexes "<!DOCTYPE a-", "[[\"DOCTYPE\",\"a-\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a/" do
    assert_lexes "<!DOCTYPE a/", "[[\"DOCTYPE\",\"a/\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a0" do
    assert_lexes "<!DOCTYPE a0", "[[\"DOCTYPE\",\"a0\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a1" do
    assert_lexes "<!DOCTYPE a1", "[[\"DOCTYPE\",\"a1\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a9" do
    assert_lexes "<!DOCTYPE a9", "[[\"DOCTYPE\",\"a9\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a<" do
    assert_lexes "<!DOCTYPE a<", "[[\"DOCTYPE\",\"a<\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a=" do
    assert_lexes "<!DOCTYPE a=", "[[\"DOCTYPE\",\"a=\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a>" do
    assert_lexes "<!DOCTYPE a>", "[[\"DOCTYPE\",\"a\",null,null,true]]"
  end
  it "test3:<!DOCTYPE a?" do
    assert_lexes "<!DOCTYPE a?", "[[\"DOCTYPE\",\"a?\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a@" do
    assert_lexes "<!DOCTYPE a@", "[[\"DOCTYPE\",\"a@\",null,null,false]]"
  end
  it "test3:<!DOCTYPE aA" do
    assert_lexes "<!DOCTYPE aA", "[[\"DOCTYPE\",\"aa\",null,null,false]]"
  end
  it "test3:<!DOCTYPE aB" do
    assert_lexes "<!DOCTYPE aB", "[[\"DOCTYPE\",\"ab\",null,null,false]]"
  end
  it "test3:<!DOCTYPE aY" do
    assert_lexes "<!DOCTYPE aY", "[[\"DOCTYPE\",\"ay\",null,null,false]]"
  end
  it "test3:<!DOCTYPE aZ" do
    assert_lexes "<!DOCTYPE aZ", "[[\"DOCTYPE\",\"az\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a[" do
    assert_lexes "<!DOCTYPE a[", "[[\"DOCTYPE\",\"a[\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a`" do
    assert_lexes "<!DOCTYPE a`", "[[\"DOCTYPE\",\"a`\",null,null,false]]"
  end
  it "test3:<!DOCTYPE aa" do
    assert_lexes "<!DOCTYPE aa", "[[\"DOCTYPE\",\"aa\",null,null,false]]"
  end
  it "test3:<!DOCTYPE ab" do
    assert_lexes "<!DOCTYPE ab", "[[\"DOCTYPE\",\"ab\",null,null,false]]"
  end
  it "test3:<!DOCTYPE ay" do
    assert_lexes "<!DOCTYPE ay", "[[\"DOCTYPE\",\"ay\",null,null,false]]"
  end
  it "test3:<!DOCTYPE az" do
    assert_lexes "<!DOCTYPE az", "[[\"DOCTYPE\",\"az\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a{" do
    assert_lexes "<!DOCTYPE a{", "[[\"DOCTYPE\",\"a{\",null,null,false]]"
  end
  it "test3:<!DOCTYPE a\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE a\u{100000}", "[[\"DOCTYPE\",\"a\u{100000}\",null,null,false]]"
  end
  it "test3:<!DOCTYPE b" do
    assert_lexes "<!DOCTYPE b", "[[\"DOCTYPE\",\"b\",null,null,false]]"
  end
  it "test3:<!DOCTYPE y" do
    assert_lexes "<!DOCTYPE y", "[[\"DOCTYPE\",\"y\",null,null,false]]"
  end
  it "test3:<!DOCTYPE z" do
    assert_lexes "<!DOCTYPE z", "[[\"DOCTYPE\",\"z\",null,null,false]]"
  end
  it "test3:<!DOCTYPE {" do
    assert_lexes "<!DOCTYPE {", "[[\"DOCTYPE\",\"{\",null,null,false]]"
  end
  it "test3:<!DOCTYPE \\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE \u{100000}", "[[\"DOCTYPE\",\"\u{100000}\",null,null,false]]"
  end
  it "test3:<!DOCTYPE!" do
    assert_lexes "<!DOCTYPE!", "[[\"DOCTYPE\",\"!\",null,null,false]]"
  end
  it "test3:<!DOCTYPE\"" do
    assert_lexes "<!DOCTYPE\"", "[[\"DOCTYPE\",\"\\\"\",null,null,false]]"
  end
  it "test3:<!DOCTYPE&" do
    assert_lexes "<!DOCTYPE&", "[[\"DOCTYPE\",\"&\",null,null,false]]"
  end
  it "test3:<!DOCTYPE'" do
    assert_lexes "<!DOCTYPE'", "[[\"DOCTYPE\",\"'\",null,null,false]]"
  end
  it "test3:<!DOCTYPE-" do
    assert_lexes "<!DOCTYPE-", "[[\"DOCTYPE\",\"-\",null,null,false]]"
  end
  it "test3:<!DOCTYPE/" do
    assert_lexes "<!DOCTYPE/", "[[\"DOCTYPE\",\"/\",null,null,false]]"
  end
  it "test3:<!DOCTYPE0" do
    assert_lexes "<!DOCTYPE0", "[[\"DOCTYPE\",\"0\",null,null,false]]"
  end
  it "test3:<!DOCTYPE1" do
    assert_lexes "<!DOCTYPE1", "[[\"DOCTYPE\",\"1\",null,null,false]]"
  end
  it "test3:<!DOCTYPE9" do
    assert_lexes "<!DOCTYPE9", "[[\"DOCTYPE\",\"9\",null,null,false]]"
  end
  it "test3:<!DOCTYPE<" do
    assert_lexes "<!DOCTYPE<", "[[\"DOCTYPE\",\"<\",null,null,false]]"
  end
  it "test3:<!DOCTYPE=" do
    assert_lexes "<!DOCTYPE=", "[[\"DOCTYPE\",\"=\",null,null,false]]"
  end
  it "test3:<!DOCTYPE>" do
    assert_lexes "<!DOCTYPE>", "[[\"DOCTYPE\",null,null,null,false]]"
  end
  it "test3:<!DOCTYPE?" do
    assert_lexes "<!DOCTYPE?", "[[\"DOCTYPE\",\"?\",null,null,false]]"
  end
  it "test3:<!DOCTYPE@" do
    assert_lexes "<!DOCTYPE@", "[[\"DOCTYPE\",\"@\",null,null,false]]"
  end
  it "test3:<!DOCTYPEA" do
    assert_lexes "<!DOCTYPEA", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEB" do
    assert_lexes "<!DOCTYPEB", "[[\"DOCTYPE\",\"b\",null,null,false]]"
  end
  it "test3:<!DOCTYPEY" do
    assert_lexes "<!DOCTYPEY", "[[\"DOCTYPE\",\"y\",null,null,false]]"
  end
  it "test3:<!DOCTYPEZ" do
    assert_lexes "<!DOCTYPEZ", "[[\"DOCTYPE\",\"z\",null,null,false]]"
  end
  it "test3:<!DOCTYPE`" do
    assert_lexes "<!DOCTYPE`", "[[\"DOCTYPE\",\"`\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa" do
    assert_lexes "<!DOCTYPEa", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\\u0000" do
    assert_lexes "<!DOCTYPEa\u0000", "[[\"DOCTYPE\",\"a�\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\\u0008" do
    assert_lexes "<!DOCTYPEa\b", "[[\"DOCTYPE\",\"a\\b\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\\u0009" do
    assert_lexes "<!DOCTYPEa\t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\\u000A" do
    assert_lexes "<!DOCTYPEa\n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\\u000B" do
    assert_lexes "<!DOCTYPEa\v", "[[\"DOCTYPE\",\"a\\u000b\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\\u000C" do
    assert_lexes "<!DOCTYPEa\f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\\u000D" do
    assert_lexes "<!DOCTYPEa\r", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\\u001F" do
    assert_lexes "<!DOCTYPEa\u001F", "[[\"DOCTYPE\",\"a\\u001f\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa " do
    assert_lexes "<!DOCTYPEa ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \\u0000" do
    assert_lexes "<!DOCTYPEa \u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \\u0008" do
    assert_lexes "<!DOCTYPEa \b", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \\u0009" do
    assert_lexes "<!DOCTYPEa \t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \\u000A" do
    assert_lexes "<!DOCTYPEa \n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \\u000B" do
    assert_lexes "<!DOCTYPEa \v", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \\u000C" do
    assert_lexes "<!DOCTYPEa \f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \\u000D" do
    assert_lexes "<!DOCTYPEa \r", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \\u001F" do
    assert_lexes "<!DOCTYPEa \u001F", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa  " do
    assert_lexes "<!DOCTYPEa  ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa !" do
    assert_lexes "<!DOCTYPEa !", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \"" do
    assert_lexes "<!DOCTYPEa \"", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa &" do
    assert_lexes "<!DOCTYPEa &", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa '" do
    assert_lexes "<!DOCTYPEa '", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa -" do
    assert_lexes "<!DOCTYPEa -", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa /" do
    assert_lexes "<!DOCTYPEa /", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa 0" do
    assert_lexes "<!DOCTYPEa 0", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa 1" do
    assert_lexes "<!DOCTYPEa 1", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa 9" do
    assert_lexes "<!DOCTYPEa 9", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa <" do
    assert_lexes "<!DOCTYPEa <", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa =" do
    assert_lexes "<!DOCTYPEa =", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa >" do
    assert_lexes "<!DOCTYPEa >", "[[\"DOCTYPE\",\"a\",null,null,true]]"
  end
  it "test3:<!DOCTYPEa ?" do
    assert_lexes "<!DOCTYPEa ?", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa @" do
    assert_lexes "<!DOCTYPEa @", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa A" do
    assert_lexes "<!DOCTYPEa A", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa B" do
    assert_lexes "<!DOCTYPEa B", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC" do
    assert_lexes "<!DOCTYPEa PUBLIC", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\\u0000" do
    assert_lexes "<!DOCTYPEa PUBLIC\u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\\u0008" do
    assert_lexes "<!DOCTYPEa PUBLIC\b", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\\u0009" do
    assert_lexes "<!DOCTYPEa PUBLIC\t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\\u000A" do
    assert_lexes "<!DOCTYPEa PUBLIC\n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\\u000B" do
    assert_lexes "<!DOCTYPEa PUBLIC\v", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\\u000C" do
    assert_lexes "<!DOCTYPEa PUBLIC\f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\\u000D" do
    assert_lexes "<!DOCTYPEa PUBLIC\r", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\\u001F" do
    assert_lexes "<!DOCTYPEa PUBLIC\u001F", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC " do
    assert_lexes "<!DOCTYPEa PUBLIC ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC!" do
    assert_lexes "<!DOCTYPEa PUBLIC!", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"" do
    assert_lexes "<!DOCTYPEa PUBLIC\"", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"\\u0000" do
    assert_lexes "<!DOCTYPEa PUBLIC\"\u0000", "[[\"DOCTYPE\",\"a\",\"�\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"\\u0009" do
    assert_lexes "<!DOCTYPEa PUBLIC\"\t", "[[\"DOCTYPE\",\"a\",\"\\t\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"\\u000A" do
    assert_lexes "<!DOCTYPEa PUBLIC\"\n", "[[\"DOCTYPE\",\"a\",\"\\n\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"\\u000B" do
    assert_lexes "<!DOCTYPEa PUBLIC\"\v", "[[\"DOCTYPE\",\"a\",\"\\u000b\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"\\u000C" do
    assert_lexes "<!DOCTYPEa PUBLIC\"\f", "[[\"DOCTYPE\",\"a\",\"\\f\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\" " do
    assert_lexes "<!DOCTYPEa PUBLIC\" ", "[[\"DOCTYPE\",\"a\",\" \",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"!" do
    assert_lexes "<!DOCTYPEa PUBLIC\"!", "[[\"DOCTYPE\",\"a\",\"!\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"\"" do
    assert_lexes "<!DOCTYPEa PUBLIC\"\"", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"#" do
    assert_lexes "<!DOCTYPEa PUBLIC\"#", "[[\"DOCTYPE\",\"a\",\"#\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"&" do
    assert_lexes "<!DOCTYPEa PUBLIC\"&", "[[\"DOCTYPE\",\"a\",\"&\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"'" do
    assert_lexes "<!DOCTYPEa PUBLIC\"'", "[[\"DOCTYPE\",\"a\",\"'\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"-" do
    assert_lexes "<!DOCTYPEa PUBLIC\"-", "[[\"DOCTYPE\",\"a\",\"-\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"/" do
    assert_lexes "<!DOCTYPEa PUBLIC\"/", "[[\"DOCTYPE\",\"a\",\"/\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"0" do
    assert_lexes "<!DOCTYPEa PUBLIC\"0", "[[\"DOCTYPE\",\"a\",\"0\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"1" do
    assert_lexes "<!DOCTYPEa PUBLIC\"1", "[[\"DOCTYPE\",\"a\",\"1\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"9" do
    assert_lexes "<!DOCTYPEa PUBLIC\"9", "[[\"DOCTYPE\",\"a\",\"9\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"<" do
    assert_lexes "<!DOCTYPEa PUBLIC\"<", "[[\"DOCTYPE\",\"a\",\"<\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"=" do
    assert_lexes "<!DOCTYPEa PUBLIC\"=", "[[\"DOCTYPE\",\"a\",\"=\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\">" do
    assert_lexes "<!DOCTYPEa PUBLIC\">", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"?" do
    assert_lexes "<!DOCTYPEa PUBLIC\"?", "[[\"DOCTYPE\",\"a\",\"?\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"@" do
    assert_lexes "<!DOCTYPEa PUBLIC\"@", "[[\"DOCTYPE\",\"a\",\"@\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"A" do
    assert_lexes "<!DOCTYPEa PUBLIC\"A", "[[\"DOCTYPE\",\"a\",\"A\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"B" do
    assert_lexes "<!DOCTYPEa PUBLIC\"B", "[[\"DOCTYPE\",\"a\",\"B\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"Y" do
    assert_lexes "<!DOCTYPEa PUBLIC\"Y", "[[\"DOCTYPE\",\"a\",\"Y\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"Z" do
    assert_lexes "<!DOCTYPEa PUBLIC\"Z", "[[\"DOCTYPE\",\"a\",\"Z\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"`" do
    assert_lexes "<!DOCTYPEa PUBLIC\"`", "[[\"DOCTYPE\",\"a\",\"`\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"a" do
    assert_lexes "<!DOCTYPEa PUBLIC\"a", "[[\"DOCTYPE\",\"a\",\"a\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"b" do
    assert_lexes "<!DOCTYPEa PUBLIC\"b", "[[\"DOCTYPE\",\"a\",\"b\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"y" do
    assert_lexes "<!DOCTYPEa PUBLIC\"y", "[[\"DOCTYPE\",\"a\",\"y\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"z" do
    assert_lexes "<!DOCTYPEa PUBLIC\"z", "[[\"DOCTYPE\",\"a\",\"z\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"{" do
    assert_lexes "<!DOCTYPEa PUBLIC\"{", "[[\"DOCTYPE\",\"a\",\"{\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\"\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa PUBLIC\"\u{100000}", "[[\"DOCTYPE\",\"a\",\"\u{100000}\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC#" do
    assert_lexes "<!DOCTYPEa PUBLIC#", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC&" do
    assert_lexes "<!DOCTYPEa PUBLIC&", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'" do
    assert_lexes "<!DOCTYPEa PUBLIC'", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'\\u0000" do
    assert_lexes "<!DOCTYPEa PUBLIC'\u0000", "[[\"DOCTYPE\",\"a\",\"�\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'\\u0009" do
    assert_lexes "<!DOCTYPEa PUBLIC'\t", "[[\"DOCTYPE\",\"a\",\"\\t\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'\\u000A" do
    assert_lexes "<!DOCTYPEa PUBLIC'\n", "[[\"DOCTYPE\",\"a\",\"\\n\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'\\u000B" do
    assert_lexes "<!DOCTYPEa PUBLIC'\v", "[[\"DOCTYPE\",\"a\",\"\\u000b\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'\\u000C" do
    assert_lexes "<!DOCTYPEa PUBLIC'\f", "[[\"DOCTYPE\",\"a\",\"\\f\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC' " do
    assert_lexes "<!DOCTYPEa PUBLIC' ", "[[\"DOCTYPE\",\"a\",\" \",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'!" do
    assert_lexes "<!DOCTYPEa PUBLIC'!", "[[\"DOCTYPE\",\"a\",\"!\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'\"" do
    assert_lexes "<!DOCTYPEa PUBLIC'\"", "[[\"DOCTYPE\",\"a\",\"\\\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'&" do
    assert_lexes "<!DOCTYPEa PUBLIC'&", "[[\"DOCTYPE\",\"a\",\"&\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''" do
    assert_lexes "<!DOCTYPEa PUBLIC''", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\\u0000" do
    assert_lexes "<!DOCTYPEa PUBLIC''\u0000", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\\u0008" do
    assert_lexes "<!DOCTYPEa PUBLIC''\b", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\\u0009" do
    assert_lexes "<!DOCTYPEa PUBLIC''\t", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\\u000A" do
    assert_lexes "<!DOCTYPEa PUBLIC''\n", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\\u000B" do
    assert_lexes "<!DOCTYPEa PUBLIC''\v", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\\u000C" do
    assert_lexes "<!DOCTYPEa PUBLIC''\f", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\\u000D" do
    assert_lexes "<!DOCTYPEa PUBLIC''\r", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\\u001F" do
    assert_lexes "<!DOCTYPEa PUBLIC''\u001F", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'' " do
    assert_lexes "<!DOCTYPEa PUBLIC'' ", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''!" do
    assert_lexes "<!DOCTYPEa PUBLIC''!", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\"" do
    assert_lexes "<!DOCTYPEa PUBLIC''\"", "[[\"DOCTYPE\",\"a\",\"\",\"\",false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''#" do
    assert_lexes "<!DOCTYPEa PUBLIC''#", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''&" do
    assert_lexes "<!DOCTYPEa PUBLIC''&", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'''" do
    assert_lexes "<!DOCTYPEa PUBLIC'''", "[[\"DOCTYPE\",\"a\",\"\",\"\",false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''(" do
    assert_lexes "<!DOCTYPEa PUBLIC''(", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''-" do
    assert_lexes "<!DOCTYPEa PUBLIC''-", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''/" do
    assert_lexes "<!DOCTYPEa PUBLIC''/", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''0" do
    assert_lexes "<!DOCTYPEa PUBLIC''0", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''1" do
    assert_lexes "<!DOCTYPEa PUBLIC''1", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''9" do
    assert_lexes "<!DOCTYPEa PUBLIC''9", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''<" do
    assert_lexes "<!DOCTYPEa PUBLIC''<", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''=" do
    assert_lexes "<!DOCTYPEa PUBLIC''=", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''>" do
    assert_lexes "<!DOCTYPEa PUBLIC''>", "[[\"DOCTYPE\",\"a\",\"\",null,true]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''?" do
    assert_lexes "<!DOCTYPEa PUBLIC''?", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''@" do
    assert_lexes "<!DOCTYPEa PUBLIC''@", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''A" do
    assert_lexes "<!DOCTYPEa PUBLIC''A", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''B" do
    assert_lexes "<!DOCTYPEa PUBLIC''B", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''Y" do
    assert_lexes "<!DOCTYPEa PUBLIC''Y", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''Z" do
    assert_lexes "<!DOCTYPEa PUBLIC''Z", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''`" do
    assert_lexes "<!DOCTYPEa PUBLIC''`", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''a" do
    assert_lexes "<!DOCTYPEa PUBLIC''a", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''b" do
    assert_lexes "<!DOCTYPEa PUBLIC''b", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''y" do
    assert_lexes "<!DOCTYPEa PUBLIC''y", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''z" do
    assert_lexes "<!DOCTYPEa PUBLIC''z", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''{" do
    assert_lexes "<!DOCTYPEa PUBLIC''{", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC''\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa PUBLIC''\u{100000}", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'(" do
    assert_lexes "<!DOCTYPEa PUBLIC'(", "[[\"DOCTYPE\",\"a\",\"(\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'-" do
    assert_lexes "<!DOCTYPEa PUBLIC'-", "[[\"DOCTYPE\",\"a\",\"-\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'/" do
    assert_lexes "<!DOCTYPEa PUBLIC'/", "[[\"DOCTYPE\",\"a\",\"/\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'0" do
    assert_lexes "<!DOCTYPEa PUBLIC'0", "[[\"DOCTYPE\",\"a\",\"0\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'1" do
    assert_lexes "<!DOCTYPEa PUBLIC'1", "[[\"DOCTYPE\",\"a\",\"1\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'9" do
    assert_lexes "<!DOCTYPEa PUBLIC'9", "[[\"DOCTYPE\",\"a\",\"9\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'<" do
    assert_lexes "<!DOCTYPEa PUBLIC'<", "[[\"DOCTYPE\",\"a\",\"<\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'=" do
    assert_lexes "<!DOCTYPEa PUBLIC'=", "[[\"DOCTYPE\",\"a\",\"=\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'>" do
    assert_lexes "<!DOCTYPEa PUBLIC'>", "[[\"DOCTYPE\",\"a\",\"\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'?" do
    assert_lexes "<!DOCTYPEa PUBLIC'?", "[[\"DOCTYPE\",\"a\",\"?\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'@" do
    assert_lexes "<!DOCTYPEa PUBLIC'@", "[[\"DOCTYPE\",\"a\",\"@\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'A" do
    assert_lexes "<!DOCTYPEa PUBLIC'A", "[[\"DOCTYPE\",\"a\",\"A\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'B" do
    assert_lexes "<!DOCTYPEa PUBLIC'B", "[[\"DOCTYPE\",\"a\",\"B\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'Y" do
    assert_lexes "<!DOCTYPEa PUBLIC'Y", "[[\"DOCTYPE\",\"a\",\"Y\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'Z" do
    assert_lexes "<!DOCTYPEa PUBLIC'Z", "[[\"DOCTYPE\",\"a\",\"Z\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'`" do
    assert_lexes "<!DOCTYPEa PUBLIC'`", "[[\"DOCTYPE\",\"a\",\"`\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'a" do
    assert_lexes "<!DOCTYPEa PUBLIC'a", "[[\"DOCTYPE\",\"a\",\"a\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'b" do
    assert_lexes "<!DOCTYPEa PUBLIC'b", "[[\"DOCTYPE\",\"a\",\"b\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'y" do
    assert_lexes "<!DOCTYPEa PUBLIC'y", "[[\"DOCTYPE\",\"a\",\"y\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'z" do
    assert_lexes "<!DOCTYPEa PUBLIC'z", "[[\"DOCTYPE\",\"a\",\"z\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'{" do
    assert_lexes "<!DOCTYPEa PUBLIC'{", "[[\"DOCTYPE\",\"a\",\"{\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC'\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa PUBLIC'\u{100000}", "[[\"DOCTYPE\",\"a\",\"\u{100000}\",null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC(" do
    assert_lexes "<!DOCTYPEa PUBLIC(", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC-" do
    assert_lexes "<!DOCTYPEa PUBLIC-", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC/" do
    assert_lexes "<!DOCTYPEa PUBLIC/", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC0" do
    assert_lexes "<!DOCTYPEa PUBLIC0", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC1" do
    assert_lexes "<!DOCTYPEa PUBLIC1", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC9" do
    assert_lexes "<!DOCTYPEa PUBLIC9", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC<" do
    assert_lexes "<!DOCTYPEa PUBLIC<", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC=" do
    assert_lexes "<!DOCTYPEa PUBLIC=", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC>" do
    assert_lexes "<!DOCTYPEa PUBLIC>", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC?" do
    assert_lexes "<!DOCTYPEa PUBLIC?", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC@" do
    assert_lexes "<!DOCTYPEa PUBLIC@", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLICA" do
    assert_lexes "<!DOCTYPEa PUBLICA", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLICB" do
    assert_lexes "<!DOCTYPEa PUBLICB", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLICY" do
    assert_lexes "<!DOCTYPEa PUBLICY", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLICZ" do
    assert_lexes "<!DOCTYPEa PUBLICZ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC`" do
    assert_lexes "<!DOCTYPEa PUBLIC`", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLICa" do
    assert_lexes "<!DOCTYPEa PUBLICa", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLICb" do
    assert_lexes "<!DOCTYPEa PUBLICb", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLICy" do
    assert_lexes "<!DOCTYPEa PUBLICy", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLICz" do
    assert_lexes "<!DOCTYPEa PUBLICz", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC{" do
    assert_lexes "<!DOCTYPEa PUBLIC{", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa PUBLIC\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa PUBLIC\u{100000}", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM" do
    assert_lexes "<!DOCTYPEa SYSTEM", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\\u0000" do
    assert_lexes "<!DOCTYPEa SYSTEM\u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\\u0008" do
    assert_lexes "<!DOCTYPEa SYSTEM\b", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\\u0009" do
    assert_lexes "<!DOCTYPEa SYSTEM\t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\\u000A" do
    assert_lexes "<!DOCTYPEa SYSTEM\n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\\u000B" do
    assert_lexes "<!DOCTYPEa SYSTEM\v", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\\u000C" do
    assert_lexes "<!DOCTYPEa SYSTEM\f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\\u000D" do
    assert_lexes "<!DOCTYPEa SYSTEM\r", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\\u001F" do
    assert_lexes "<!DOCTYPEa SYSTEM\u001F", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM " do
    assert_lexes "<!DOCTYPEa SYSTEM ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM!" do
    assert_lexes "<!DOCTYPEa SYSTEM!", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"" do
    assert_lexes "<!DOCTYPEa SYSTEM\"", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"\\u0000" do
    assert_lexes "<!DOCTYPEa SYSTEM\"\u0000", "[[\"DOCTYPE\",\"a\",null,\"�\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"\\u0009" do
    assert_lexes "<!DOCTYPEa SYSTEM\"\t", "[[\"DOCTYPE\",\"a\",null,\"\\t\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"\\u000A" do
    assert_lexes "<!DOCTYPEa SYSTEM\"\n", "[[\"DOCTYPE\",\"a\",null,\"\\n\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"\\u000B" do
    assert_lexes "<!DOCTYPEa SYSTEM\"\v", "[[\"DOCTYPE\",\"a\",null,\"\\u000b\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"\\u000C" do
    assert_lexes "<!DOCTYPEa SYSTEM\"\f", "[[\"DOCTYPE\",\"a\",null,\"\\f\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\" " do
    assert_lexes "<!DOCTYPEa SYSTEM\" ", "[[\"DOCTYPE\",\"a\",null,\" \",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"!" do
    assert_lexes "<!DOCTYPEa SYSTEM\"!", "[[\"DOCTYPE\",\"a\",null,\"!\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"\"" do
    assert_lexes "<!DOCTYPEa SYSTEM\"\"", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"#" do
    assert_lexes "<!DOCTYPEa SYSTEM\"#", "[[\"DOCTYPE\",\"a\",null,\"#\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"&" do
    assert_lexes "<!DOCTYPEa SYSTEM\"&", "[[\"DOCTYPE\",\"a\",null,\"&\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"'" do
    assert_lexes "<!DOCTYPEa SYSTEM\"'", "[[\"DOCTYPE\",\"a\",null,\"'\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"-" do
    assert_lexes "<!DOCTYPEa SYSTEM\"-", "[[\"DOCTYPE\",\"a\",null,\"-\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"/" do
    assert_lexes "<!DOCTYPEa SYSTEM\"/", "[[\"DOCTYPE\",\"a\",null,\"/\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"0" do
    assert_lexes "<!DOCTYPEa SYSTEM\"0", "[[\"DOCTYPE\",\"a\",null,\"0\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"1" do
    assert_lexes "<!DOCTYPEa SYSTEM\"1", "[[\"DOCTYPE\",\"a\",null,\"1\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"9" do
    assert_lexes "<!DOCTYPEa SYSTEM\"9", "[[\"DOCTYPE\",\"a\",null,\"9\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"<" do
    assert_lexes "<!DOCTYPEa SYSTEM\"<", "[[\"DOCTYPE\",\"a\",null,\"<\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"=" do
    assert_lexes "<!DOCTYPEa SYSTEM\"=", "[[\"DOCTYPE\",\"a\",null,\"=\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\">" do
    assert_lexes "<!DOCTYPEa SYSTEM\">", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"?" do
    assert_lexes "<!DOCTYPEa SYSTEM\"?", "[[\"DOCTYPE\",\"a\",null,\"?\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"@" do
    assert_lexes "<!DOCTYPEa SYSTEM\"@", "[[\"DOCTYPE\",\"a\",null,\"@\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"A" do
    assert_lexes "<!DOCTYPEa SYSTEM\"A", "[[\"DOCTYPE\",\"a\",null,\"A\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"B" do
    assert_lexes "<!DOCTYPEa SYSTEM\"B", "[[\"DOCTYPE\",\"a\",null,\"B\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"Y" do
    assert_lexes "<!DOCTYPEa SYSTEM\"Y", "[[\"DOCTYPE\",\"a\",null,\"Y\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"Z" do
    assert_lexes "<!DOCTYPEa SYSTEM\"Z", "[[\"DOCTYPE\",\"a\",null,\"Z\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"`" do
    assert_lexes "<!DOCTYPEa SYSTEM\"`", "[[\"DOCTYPE\",\"a\",null,\"`\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"a" do
    assert_lexes "<!DOCTYPEa SYSTEM\"a", "[[\"DOCTYPE\",\"a\",null,\"a\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"b" do
    assert_lexes "<!DOCTYPEa SYSTEM\"b", "[[\"DOCTYPE\",\"a\",null,\"b\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"y" do
    assert_lexes "<!DOCTYPEa SYSTEM\"y", "[[\"DOCTYPE\",\"a\",null,\"y\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"z" do
    assert_lexes "<!DOCTYPEa SYSTEM\"z", "[[\"DOCTYPE\",\"a\",null,\"z\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"{" do
    assert_lexes "<!DOCTYPEa SYSTEM\"{", "[[\"DOCTYPE\",\"a\",null,\"{\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\"\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa SYSTEM\"\u{100000}", "[[\"DOCTYPE\",\"a\",null,\"\u{100000}\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM#" do
    assert_lexes "<!DOCTYPEa SYSTEM#", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM&" do
    assert_lexes "<!DOCTYPEa SYSTEM&", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'" do
    assert_lexes "<!DOCTYPEa SYSTEM'", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'\\u0000" do
    assert_lexes "<!DOCTYPEa SYSTEM'\u0000", "[[\"DOCTYPE\",\"a\",null,\"�\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'\\u0009" do
    assert_lexes "<!DOCTYPEa SYSTEM'\t", "[[\"DOCTYPE\",\"a\",null,\"\\t\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'\\u000A" do
    assert_lexes "<!DOCTYPEa SYSTEM'\n", "[[\"DOCTYPE\",\"a\",null,\"\\n\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'\\u000B" do
    assert_lexes "<!DOCTYPEa SYSTEM'\v", "[[\"DOCTYPE\",\"a\",null,\"\\u000b\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'\\u000C" do
    assert_lexes "<!DOCTYPEa SYSTEM'\f", "[[\"DOCTYPE\",\"a\",null,\"\\f\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM' " do
    assert_lexes "<!DOCTYPEa SYSTEM' ", "[[\"DOCTYPE\",\"a\",null,\" \",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'!" do
    assert_lexes "<!DOCTYPEa SYSTEM'!", "[[\"DOCTYPE\",\"a\",null,\"!\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'\"" do
    assert_lexes "<!DOCTYPEa SYSTEM'\"", "[[\"DOCTYPE\",\"a\",null,\"\\\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'&" do
    assert_lexes "<!DOCTYPEa SYSTEM'&", "[[\"DOCTYPE\",\"a\",null,\"&\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''" do
    assert_lexes "<!DOCTYPEa SYSTEM''", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\\u0000" do
    assert_lexes "<!DOCTYPEa SYSTEM''\u0000", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\\u0008" do
    assert_lexes "<!DOCTYPEa SYSTEM''\b", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\\u0009" do
    assert_lexes "<!DOCTYPEa SYSTEM''\t", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\\u000A" do
    assert_lexes "<!DOCTYPEa SYSTEM''\n", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\\u000B" do
    assert_lexes "<!DOCTYPEa SYSTEM''\v", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\\u000C" do
    assert_lexes "<!DOCTYPEa SYSTEM''\f", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\\u000D" do
    assert_lexes "<!DOCTYPEa SYSTEM''\r", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\\u001F" do
    assert_lexes "<!DOCTYPEa SYSTEM''\u001F", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'' " do
    assert_lexes "<!DOCTYPEa SYSTEM'' ", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''!" do
    assert_lexes "<!DOCTYPEa SYSTEM''!", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\"" do
    assert_lexes "<!DOCTYPEa SYSTEM''\"", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''&" do
    assert_lexes "<!DOCTYPEa SYSTEM''&", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'''" do
    assert_lexes "<!DOCTYPEa SYSTEM'''", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''-" do
    assert_lexes "<!DOCTYPEa SYSTEM''-", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''/" do
    assert_lexes "<!DOCTYPEa SYSTEM''/", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''0" do
    assert_lexes "<!DOCTYPEa SYSTEM''0", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''1" do
    assert_lexes "<!DOCTYPEa SYSTEM''1", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''9" do
    assert_lexes "<!DOCTYPEa SYSTEM''9", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''<" do
    assert_lexes "<!DOCTYPEa SYSTEM''<", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''=" do
    assert_lexes "<!DOCTYPEa SYSTEM''=", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''>" do
    assert_lexes "<!DOCTYPEa SYSTEM''>", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''?" do
    assert_lexes "<!DOCTYPEa SYSTEM''?", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''@" do
    assert_lexes "<!DOCTYPEa SYSTEM''@", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''A" do
    assert_lexes "<!DOCTYPEa SYSTEM''A", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''B" do
    assert_lexes "<!DOCTYPEa SYSTEM''B", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''Y" do
    assert_lexes "<!DOCTYPEa SYSTEM''Y", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''Z" do
    assert_lexes "<!DOCTYPEa SYSTEM''Z", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''`" do
    assert_lexes "<!DOCTYPEa SYSTEM''`", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''a" do
    assert_lexes "<!DOCTYPEa SYSTEM''a", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''b" do
    assert_lexes "<!DOCTYPEa SYSTEM''b", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''y" do
    assert_lexes "<!DOCTYPEa SYSTEM''y", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''z" do
    assert_lexes "<!DOCTYPEa SYSTEM''z", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''{" do
    assert_lexes "<!DOCTYPEa SYSTEM''{", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM''\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa SYSTEM''\u{100000}", "[[\"DOCTYPE\",\"a\",null,\"\",true]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'(" do
    assert_lexes "<!DOCTYPEa SYSTEM'(", "[[\"DOCTYPE\",\"a\",null,\"(\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'-" do
    assert_lexes "<!DOCTYPEa SYSTEM'-", "[[\"DOCTYPE\",\"a\",null,\"-\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'/" do
    assert_lexes "<!DOCTYPEa SYSTEM'/", "[[\"DOCTYPE\",\"a\",null,\"/\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'0" do
    assert_lexes "<!DOCTYPEa SYSTEM'0", "[[\"DOCTYPE\",\"a\",null,\"0\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'1" do
    assert_lexes "<!DOCTYPEa SYSTEM'1", "[[\"DOCTYPE\",\"a\",null,\"1\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'9" do
    assert_lexes "<!DOCTYPEa SYSTEM'9", "[[\"DOCTYPE\",\"a\",null,\"9\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'<" do
    assert_lexes "<!DOCTYPEa SYSTEM'<", "[[\"DOCTYPE\",\"a\",null,\"<\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'=" do
    assert_lexes "<!DOCTYPEa SYSTEM'=", "[[\"DOCTYPE\",\"a\",null,\"=\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'>" do
    assert_lexes "<!DOCTYPEa SYSTEM'>", "[[\"DOCTYPE\",\"a\",null,\"\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'?" do
    assert_lexes "<!DOCTYPEa SYSTEM'?", "[[\"DOCTYPE\",\"a\",null,\"?\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'@" do
    assert_lexes "<!DOCTYPEa SYSTEM'@", "[[\"DOCTYPE\",\"a\",null,\"@\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'A" do
    assert_lexes "<!DOCTYPEa SYSTEM'A", "[[\"DOCTYPE\",\"a\",null,\"A\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'B" do
    assert_lexes "<!DOCTYPEa SYSTEM'B", "[[\"DOCTYPE\",\"a\",null,\"B\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'Y" do
    assert_lexes "<!DOCTYPEa SYSTEM'Y", "[[\"DOCTYPE\",\"a\",null,\"Y\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'Z" do
    assert_lexes "<!DOCTYPEa SYSTEM'Z", "[[\"DOCTYPE\",\"a\",null,\"Z\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'`" do
    assert_lexes "<!DOCTYPEa SYSTEM'`", "[[\"DOCTYPE\",\"a\",null,\"`\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'a" do
    assert_lexes "<!DOCTYPEa SYSTEM'a", "[[\"DOCTYPE\",\"a\",null,\"a\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'b" do
    assert_lexes "<!DOCTYPEa SYSTEM'b", "[[\"DOCTYPE\",\"a\",null,\"b\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'y" do
    assert_lexes "<!DOCTYPEa SYSTEM'y", "[[\"DOCTYPE\",\"a\",null,\"y\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'z" do
    assert_lexes "<!DOCTYPEa SYSTEM'z", "[[\"DOCTYPE\",\"a\",null,\"z\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'{" do
    assert_lexes "<!DOCTYPEa SYSTEM'{", "[[\"DOCTYPE\",\"a\",null,\"{\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM'\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa SYSTEM'\u{100000}", "[[\"DOCTYPE\",\"a\",null,\"\u{100000}\",false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM(" do
    assert_lexes "<!DOCTYPEa SYSTEM(", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM-" do
    assert_lexes "<!DOCTYPEa SYSTEM-", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM/" do
    assert_lexes "<!DOCTYPEa SYSTEM/", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM0" do
    assert_lexes "<!DOCTYPEa SYSTEM0", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM1" do
    assert_lexes "<!DOCTYPEa SYSTEM1", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM9" do
    assert_lexes "<!DOCTYPEa SYSTEM9", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM<" do
    assert_lexes "<!DOCTYPEa SYSTEM<", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM=" do
    assert_lexes "<!DOCTYPEa SYSTEM=", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM>" do
    assert_lexes "<!DOCTYPEa SYSTEM>", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM?" do
    assert_lexes "<!DOCTYPEa SYSTEM?", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM@" do
    assert_lexes "<!DOCTYPEa SYSTEM@", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEMA" do
    assert_lexes "<!DOCTYPEa SYSTEMA", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEMB" do
    assert_lexes "<!DOCTYPEa SYSTEMB", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEMY" do
    assert_lexes "<!DOCTYPEa SYSTEMY", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEMZ" do
    assert_lexes "<!DOCTYPEa SYSTEMZ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM`" do
    assert_lexes "<!DOCTYPEa SYSTEM`", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEMa" do
    assert_lexes "<!DOCTYPEa SYSTEMa", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEMb" do
    assert_lexes "<!DOCTYPEa SYSTEMb", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEMy" do
    assert_lexes "<!DOCTYPEa SYSTEMy", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEMz" do
    assert_lexes "<!DOCTYPEa SYSTEMz", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM{" do
    assert_lexes "<!DOCTYPEa SYSTEM{", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa SYSTEM\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa SYSTEM\u{100000}", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa Y" do
    assert_lexes "<!DOCTYPEa Y", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa Z" do
    assert_lexes "<!DOCTYPEa Z", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa `" do
    assert_lexes "<!DOCTYPEa `", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a" do
    assert_lexes "<!DOCTYPEa a", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a\\u0000" do
    assert_lexes "<!DOCTYPEa a\u0000", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a\\u0009" do
    assert_lexes "<!DOCTYPEa a\t", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a\\u000A" do
    assert_lexes "<!DOCTYPEa a\n", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a\\u000B" do
    assert_lexes "<!DOCTYPEa a\v", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a\\u000C" do
    assert_lexes "<!DOCTYPEa a\f", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a " do
    assert_lexes "<!DOCTYPEa a ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a!" do
    assert_lexes "<!DOCTYPEa a!", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a\"" do
    assert_lexes "<!DOCTYPEa a\"", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a&" do
    assert_lexes "<!DOCTYPEa a&", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a'" do
    assert_lexes "<!DOCTYPEa a'", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a-" do
    assert_lexes "<!DOCTYPEa a-", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a/" do
    assert_lexes "<!DOCTYPEa a/", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a0" do
    assert_lexes "<!DOCTYPEa a0", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a1" do
    assert_lexes "<!DOCTYPEa a1", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a9" do
    assert_lexes "<!DOCTYPEa a9", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a<" do
    assert_lexes "<!DOCTYPEa a<", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a=" do
    assert_lexes "<!DOCTYPEa a=", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a>" do
    assert_lexes "<!DOCTYPEa a>", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a?" do
    assert_lexes "<!DOCTYPEa a?", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a@" do
    assert_lexes "<!DOCTYPEa a@", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa aA" do
    assert_lexes "<!DOCTYPEa aA", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa aB" do
    assert_lexes "<!DOCTYPEa aB", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa aY" do
    assert_lexes "<!DOCTYPEa aY", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa aZ" do
    assert_lexes "<!DOCTYPEa aZ", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a`" do
    assert_lexes "<!DOCTYPEa a`", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa aa" do
    assert_lexes "<!DOCTYPEa aa", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa ab" do
    assert_lexes "<!DOCTYPEa ab", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa ay" do
    assert_lexes "<!DOCTYPEa ay", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa az" do
    assert_lexes "<!DOCTYPEa az", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a{" do
    assert_lexes "<!DOCTYPEa a{", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa a\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa a\u{100000}", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa b" do
    assert_lexes "<!DOCTYPEa b", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa y" do
    assert_lexes "<!DOCTYPEa y", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa z" do
    assert_lexes "<!DOCTYPEa z", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa {" do
    assert_lexes "<!DOCTYPEa {", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa \\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa \u{100000}", "[[\"DOCTYPE\",\"a\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa!" do
    assert_lexes "<!DOCTYPEa!", "[[\"DOCTYPE\",\"a!\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\"" do
    assert_lexes "<!DOCTYPEa\"", "[[\"DOCTYPE\",\"a\\\"\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa&" do
    assert_lexes "<!DOCTYPEa&", "[[\"DOCTYPE\",\"a&\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa'" do
    assert_lexes "<!DOCTYPEa'", "[[\"DOCTYPE\",\"a'\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa-" do
    assert_lexes "<!DOCTYPEa-", "[[\"DOCTYPE\",\"a-\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa/" do
    assert_lexes "<!DOCTYPEa/", "[[\"DOCTYPE\",\"a/\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa0" do
    assert_lexes "<!DOCTYPEa0", "[[\"DOCTYPE\",\"a0\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa1" do
    assert_lexes "<!DOCTYPEa1", "[[\"DOCTYPE\",\"a1\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa9" do
    assert_lexes "<!DOCTYPEa9", "[[\"DOCTYPE\",\"a9\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa<" do
    assert_lexes "<!DOCTYPEa<", "[[\"DOCTYPE\",\"a<\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa=" do
    assert_lexes "<!DOCTYPEa=", "[[\"DOCTYPE\",\"a=\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa>" do
    assert_lexes "<!DOCTYPEa>", "[[\"DOCTYPE\",\"a\",null,null,true]]"
  end
  it "test3:<!DOCTYPEa?" do
    assert_lexes "<!DOCTYPEa?", "[[\"DOCTYPE\",\"a?\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa@" do
    assert_lexes "<!DOCTYPEa@", "[[\"DOCTYPE\",\"a@\",null,null,false]]"
  end
  it "test3:<!DOCTYPEaA" do
    assert_lexes "<!DOCTYPEaA", "[[\"DOCTYPE\",\"aa\",null,null,false]]"
  end
  it "test3:<!DOCTYPEaB" do
    assert_lexes "<!DOCTYPEaB", "[[\"DOCTYPE\",\"ab\",null,null,false]]"
  end
  it "test3:<!DOCTYPEaY" do
    assert_lexes "<!DOCTYPEaY", "[[\"DOCTYPE\",\"ay\",null,null,false]]"
  end
  it "test3:<!DOCTYPEaZ" do
    assert_lexes "<!DOCTYPEaZ", "[[\"DOCTYPE\",\"az\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa[" do
    assert_lexes "<!DOCTYPEa[", "[[\"DOCTYPE\",\"a[\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa`" do
    assert_lexes "<!DOCTYPEa`", "[[\"DOCTYPE\",\"a`\",null,null,false]]"
  end
  it "test3:<!DOCTYPEaa" do
    assert_lexes "<!DOCTYPEaa", "[[\"DOCTYPE\",\"aa\",null,null,false]]"
  end
  it "test3:<!DOCTYPEab" do
    assert_lexes "<!DOCTYPEab", "[[\"DOCTYPE\",\"ab\",null,null,false]]"
  end
  it "test3:<!DOCTYPEay" do
    assert_lexes "<!DOCTYPEay", "[[\"DOCTYPE\",\"ay\",null,null,false]]"
  end
  it "test3:<!DOCTYPEaz" do
    assert_lexes "<!DOCTYPEaz", "[[\"DOCTYPE\",\"az\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa{" do
    assert_lexes "<!DOCTYPEa{", "[[\"DOCTYPE\",\"a{\",null,null,false]]"
  end
  it "test3:<!DOCTYPEa\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPEa\u{100000}", "[[\"DOCTYPE\",\"a\u{100000}\",null,null,false]]"
  end
  it "test3:<!DOCTYPEb" do
    assert_lexes "<!DOCTYPEb", "[[\"DOCTYPE\",\"b\",null,null,false]]"
  end
  it "test3:<!DOCTYPEy" do
    assert_lexes "<!DOCTYPEy", "[[\"DOCTYPE\",\"y\",null,null,false]]"
  end
  it "test3:<!DOCTYPEz" do
    assert_lexes "<!DOCTYPEz", "[[\"DOCTYPE\",\"z\",null,null,false]]"
  end
  it "test3:<!DOCTYPE{" do
    assert_lexes "<!DOCTYPE{", "[[\"DOCTYPE\",\"{\",null,null,false]]"
  end
  it "test3:<!DOCTYPE\\uDBC0\\uDC00" do
    assert_lexes "<!DOCTYPE\u{100000}", "[[\"DOCTYPE\",\"\u{100000}\",null,null,false]]"
  end
  it "test3:<!Y" do
    assert_lexes "<!Y", "[[\"Comment\",\"Y\"]]"
  end
  it "test3:<!Z" do
    assert_lexes "<!Z", "[[\"Comment\",\"Z\"]]"
  end
  it "test3:<!`" do
    assert_lexes "<!`", "[[\"Comment\",\"`\"]]"
  end
  it "test3:<!a" do
    assert_lexes "<!a", "[[\"Comment\",\"a\"]]"
  end
  it "test3:<!b" do
    assert_lexes "<!b", "[[\"Comment\",\"b\"]]"
  end
  it "test3:<!y" do
    assert_lexes "<!y", "[[\"Comment\",\"y\"]]"
  end
  it "test3:<!z" do
    assert_lexes "<!z", "[[\"Comment\",\"z\"]]"
  end
  it "test3:<!{" do
    assert_lexes "<!{", "[[\"Comment\",\"{\"]]"
  end
  it "test3:<!\\uDBC0\\uDC00" do
    assert_lexes "<!\u{100000}", "[[\"Comment\",\"\u{100000}\"]]"
  end
  it "test3:<\"" do
    assert_lexes "<\"", "[[\"Character\",\"<\\\"\"]]"
  end
  it "test3:<&" do
    assert_lexes "<&", "[[\"Character\",\"<&\"]]"
  end
  it "test3:<'" do
    assert_lexes "<'", "[[\"Character\",\"<'\"]]"
  end
  it "test3:<-" do
    assert_lexes "<-", "[[\"Character\",\"<-\"]]"
  end
  it "test3:<." do
    assert_lexes "<.", "[[\"Character\",\"<.\"]]"
  end
  it "test3:</" do
    assert_lexes "</", "[[\"Character\",\"</\"]]"
  end
  it "test3:</\\u0000" do
    assert_lexes "</\u0000", "[[\"Comment\",\"�\"]]"
  end
  it "test3:</\\u0009" do
    assert_lexes "</\t", "[[\"Comment\",\"\\t\"]]"
  end
  it "test3:</\\u000A" do
    assert_lexes "</\n", "[[\"Comment\",\"\\n\"]]"
  end
  it "test3:</\\u000B" do
    assert_lexes "</\v", "[[\"Comment\",\"\\u000b\"]]"
  end
  it "test3:</\\u000C" do
    assert_lexes "</\f", "[[\"Comment\",\"\\f\"]]"
  end
  it "test3:</ " do
    assert_lexes "</ ", "[[\"Comment\",\" \"]]"
  end
  it "test3:</ \\u0000" do
    assert_lexes "</ \u0000", "[[\"Comment\",\" �\"]]"
  end
  it "test3:</!" do
    assert_lexes "</!", "[[\"Comment\",\"!\"]]"
  end
  it "test3:</\"" do
    assert_lexes "</\"", "[[\"Comment\",\"\\\"\"]]"
  end
  it "test3:</&" do
    assert_lexes "</&", "[[\"Comment\",\"&\"]]"
  end
  it "test3:</'" do
    assert_lexes "</'", "[[\"Comment\",\"'\"]]"
  end
  it "test3:</-" do
    assert_lexes "</-", "[[\"Comment\",\"-\"]]"
  end
  it "test3:<//" do
    assert_lexes "<//", "[[\"Comment\",\"/\"]]"
  end
  it "test3:</0" do
    assert_lexes "</0", "[[\"Comment\",\"0\"]]"
  end
  it "test3:</1" do
    assert_lexes "</1", "[[\"Comment\",\"1\"]]"
  end
  it "test3:</9" do
    assert_lexes "</9", "[[\"Comment\",\"9\"]]"
  end
  it "test3:</<" do
    assert_lexes "</<", "[[\"Comment\",\"<\"]]"
  end
  it "test3:</=" do
    assert_lexes "</=", "[[\"Comment\",\"=\"]]"
  end
  it "test3:</>" do
    assert_lexes "</>", "[]"
  end
  it "test3:</?" do
    assert_lexes "</?", "[[\"Comment\",\"?\"]]"
  end
  it "test3:</@" do
    assert_lexes "</@", "[[\"Comment\",\"@\"]]"
  end
  it "test3:</A>" do
    assert_lexes "</A>", "[[\"EndTag\",\"a\"]]"
  end
  it "test3:</B>" do
    assert_lexes "</B>", "[[\"EndTag\",\"b\"]]"
  end
  it "test3:</Y>" do
    assert_lexes "</Y>", "[[\"EndTag\",\"y\"]]"
  end
  it "test3:</Z>" do
    assert_lexes "</Z>", "[[\"EndTag\",\"z\"]]"
  end
  it "test3:</[" do
    assert_lexes "</[", "[[\"Comment\",\"[\"]]"
  end
  it "test3:</`" do
    assert_lexes "</`", "[[\"Comment\",\"`\"]]"
  end
  it "test3:</a>" do
    assert_lexes "</a>", "[[\"EndTag\",\"a\"]]"
  end
  it "test3:</b>" do
    assert_lexes "</b>", "[[\"EndTag\",\"b\"]]"
  end
  it "test3:</y>" do
    assert_lexes "</y>", "[[\"EndTag\",\"y\"]]"
  end
  it "test3:</z>" do
    assert_lexes "</z>", "[[\"EndTag\",\"z\"]]"
  end
  it "test3:</{" do
    assert_lexes "</{", "[[\"Comment\",\"{\"]]"
  end
  it "test3:</\\uDBC0\\uDC00" do
    assert_lexes "</\u{100000}", "[[\"Comment\",\"\u{100000}\"]]"
  end
  it "test3:<0" do
    assert_lexes "<0", "[[\"Character\",\"<0\"]]"
  end
  it "test3:<1" do
    assert_lexes "<1", "[[\"Character\",\"<1\"]]"
  end
  it "test3:<9" do
    assert_lexes "<9", "[[\"Character\",\"<9\"]]"
  end
  it "test3:<<" do
    assert_lexes "<<", "[[\"Character\",\"<<\"]]"
  end
  it "test3:<=" do
    assert_lexes "<=", "[[\"Character\",\"<=\"]]"
  end
  it "test3:<>" do
    assert_lexes "<>", "[[\"Character\",\"<>\"]]"
  end
  it "test3:<?" do
    assert_lexes "<?", "[[\"Comment\",\"?\"]]"
  end
  it "test3:<?\\u0000" do
    assert_lexes "<?\u0000", "[[\"Comment\",\"?�\"]]"
  end
  it "test3:<?\\u0009" do
    assert_lexes "<?\t", "[[\"Comment\",\"?\\t\"]]"
  end
  it "test3:<?\\u000A" do
    assert_lexes "<?\n", "[[\"Comment\",\"?\\n\"]]"
  end
  it "test3:<?\\u000B" do
    assert_lexes "<?\v", "[[\"Comment\",\"?\\u000b\"]]"
  end
  it "test3:<?\\u000C" do
    assert_lexes "<?\f", "[[\"Comment\",\"?\\f\"]]"
  end
  it "test3:<? " do
    assert_lexes "<? ", "[[\"Comment\",\"? \"]]"
  end
  it "test3:<? \\u0000" do
    assert_lexes "<? \u0000", "[[\"Comment\",\"? �\"]]"
  end
  it "test3:<?!" do
    assert_lexes "<?!", "[[\"Comment\",\"?!\"]]"
  end
  it "test3:<?\"" do
    assert_lexes "<?\"", "[[\"Comment\",\"?\\\"\"]]"
  end
  it "test3:<?&" do
    assert_lexes "<?&", "[[\"Comment\",\"?&\"]]"
  end
  it "test3:<?'" do
    assert_lexes "<?'", "[[\"Comment\",\"?'\"]]"
  end
  it "test3:<?-" do
    assert_lexes "<?-", "[[\"Comment\",\"?-\"]]"
  end
  it "test3:<?/" do
    assert_lexes "<?/", "[[\"Comment\",\"?/\"]]"
  end
  it "test3:<?0" do
    assert_lexes "<?0", "[[\"Comment\",\"?0\"]]"
  end
  it "test3:<?1" do
    assert_lexes "<?1", "[[\"Comment\",\"?1\"]]"
  end
  it "test3:<?9" do
    assert_lexes "<?9", "[[\"Comment\",\"?9\"]]"
  end
  it "test3:<?<" do
    assert_lexes "<?<", "[[\"Comment\",\"?<\"]]"
  end
  it "test3:<?=" do
    assert_lexes "<?=", "[[\"Comment\",\"?=\"]]"
  end
  it "test3:<?>" do
    assert_lexes "<?>", "[[\"Comment\",\"?\"]]"
  end
  it "test3:<??" do
    assert_lexes "<??", "[[\"Comment\",\"??\"]]"
  end
  it "test3:<?@" do
    assert_lexes "<?@", "[[\"Comment\",\"?@\"]]"
  end
  it "test3:<?A" do
    assert_lexes "<?A", "[[\"Comment\",\"?A\"]]"
  end
  it "test3:<?B" do
    assert_lexes "<?B", "[[\"Comment\",\"?B\"]]"
  end
  it "test3:<?Y" do
    assert_lexes "<?Y", "[[\"Comment\",\"?Y\"]]"
  end
  it "test3:<?Z" do
    assert_lexes "<?Z", "[[\"Comment\",\"?Z\"]]"
  end
  it "test3:<?`" do
    assert_lexes "<?`", "[[\"Comment\",\"?`\"]]"
  end
  it "test3:<?a" do
    assert_lexes "<?a", "[[\"Comment\",\"?a\"]]"
  end
  it "test3:<?b" do
    assert_lexes "<?b", "[[\"Comment\",\"?b\"]]"
  end
  it "test3:<?y" do
    assert_lexes "<?y", "[[\"Comment\",\"?y\"]]"
  end
  it "test3:<?z" do
    assert_lexes "<?z", "[[\"Comment\",\"?z\"]]"
  end
  it "test3:<?{" do
    assert_lexes "<?{", "[[\"Comment\",\"?{\"]]"
  end
  it "test3:<?\\uDBC0\\uDC00" do
    assert_lexes "<?\u{100000}", "[[\"Comment\",\"?\u{100000}\"]]"
  end
  it "test3:<@" do
    assert_lexes "<@", "[[\"Character\",\"<@\"]]"
  end
  it "test3:<A>" do
    assert_lexes "<A>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<B>" do
    assert_lexes "<B>", "[[\"StartTag\",\"b\",{}]]"
  end
  it "test3:<Y>" do
    assert_lexes "<Y>", "[[\"StartTag\",\"y\",{}]]"
  end
  it "test3:<Z>" do
    assert_lexes "<Z>", "[[\"StartTag\",\"z\",{}]]"
  end
  it "test3:<[" do
    assert_lexes "<[", "[[\"Character\",\"<[\"]]"
  end
  it "test3:<`" do
    assert_lexes "<`", "[[\"Character\",\"<`\"]]"
  end
  it "test3:<a>" do
    assert_lexes "<a>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a\\u0000>" do
    assert_lexes "<a\u0000>", "[[\"StartTag\",\"a�\",{}]]"
  end
  it "test3:<a\\u0008>" do
    assert_lexes "<a\b>", "[[\"StartTag\",\"a\\b\",{}]]"
  end
  it "test3:<a\\u0009>" do
    assert_lexes "<a\t>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a\\u000A>" do
    assert_lexes "<a\n>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a\\u000B>" do
    assert_lexes "<a\v>", "[[\"StartTag\",\"a\\u000b\",{}]]"
  end
  it "test3:<a\\u000C>" do
    assert_lexes "<a\f>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a\\u000D>" do
    assert_lexes "<a\r>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a\\u001F>" do
    assert_lexes "<a\u001F>", "[[\"StartTag\",\"a\\u001f\",{}]]"
  end
  it "test3:<a >" do
    assert_lexes "<a >", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a \\u0000>" do
    assert_lexes "<a \u0000>", "[[\"StartTag\",\"a\",{\"�\":\"\"}]]"
  end
  it "test3:<a \\u0008>" do
    assert_lexes "<a \b>", "[[\"StartTag\",\"a\",{\"\\b\":\"\"}]]"
  end
  it "test3:<a \\u0009>" do
    assert_lexes "<a \t>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a \\u000A>" do
    assert_lexes "<a \n>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a \\u000B>" do
    assert_lexes "<a \v>", "[[\"StartTag\",\"a\",{\"\\u000b\":\"\"}]]"
  end
  it "test3:<a \\u000C>" do
    assert_lexes "<a \f>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a \\u000D>" do
    assert_lexes "<a \r>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a \\u001F>" do
    assert_lexes "<a \u001F>", "[[\"StartTag\",\"a\",{\"\\u001f\":\"\"}]]"
  end
  it "test3:<a  >" do
    assert_lexes "<a  >", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a !>" do
    assert_lexes "<a !>", "[[\"StartTag\",\"a\",{\"!\":\"\"}]]"
  end
  it "test3:<a \">" do
    assert_lexes "<a \">", "[[\"StartTag\",\"a\",{\"\\\"\":\"\"}]]"
  end
  it "test3:<a #>" do
    assert_lexes "<a #>", "[[\"StartTag\",\"a\",{\"#\":\"\"}]]"
  end
  it "test3:<a &>" do
    assert_lexes "<a &>", "[[\"StartTag\",\"a\",{\"&\":\"\"}]]"
  end
  it "test3:<a '>" do
    assert_lexes "<a '>", "[[\"StartTag\",\"a\",{\"'\":\"\"}]]"
  end
  it "test3:<a (>" do
    assert_lexes "<a (>", "[[\"StartTag\",\"a\",{\"(\":\"\"}]]"
  end
  it "test3:<a ->" do
    assert_lexes "<a ->", "[[\"StartTag\",\"a\",{\"-\":\"\"}]]"
  end
  it "test3:<a .>" do
    assert_lexes "<a .>", "[[\"StartTag\",\"a\",{\".\":\"\"}]]"
  end
  it "test3:<a />" do
    assert_lexes "<a />", "[[\"StartTag\",\"a\",{},true]]"
  end
  it "test3:<a 0>" do
    assert_lexes "<a 0>", "[[\"StartTag\",\"a\",{\"0\":\"\"}]]"
  end
  it "test3:<a 1>" do
    assert_lexes "<a 1>", "[[\"StartTag\",\"a\",{\"1\":\"\"}]]"
  end
  it "test3:<a 9>" do
    assert_lexes "<a 9>", "[[\"StartTag\",\"a\",{\"9\":\"\"}]]"
  end
  it "test3:<a <>" do
    assert_lexes "<a <>", "[[\"StartTag\",\"a\",{\"<\":\"\"}]]"
  end
  it "test3:<a =>" do
    assert_lexes "<a =>", "[[\"StartTag\",\"a\",{\"=\":\"\"}]]"
  end
  it "test3:<a >" do
    assert_lexes "<a >", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a ?>" do
    assert_lexes "<a ?>", "[[\"StartTag\",\"a\",{\"?\":\"\"}]]"
  end
  it "test3:<a @>" do
    assert_lexes "<a @>", "[[\"StartTag\",\"a\",{\"@\":\"\"}]]"
  end
  it "test3:<a A>" do
    assert_lexes "<a A>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a B>" do
    assert_lexes "<a B>", "[[\"StartTag\",\"a\",{\"b\":\"\"}]]"
  end
  it "test3:<a Y>" do
    assert_lexes "<a Y>", "[[\"StartTag\",\"a\",{\"y\":\"\"}]]"
  end
  it "test3:<a Z>" do
    assert_lexes "<a Z>", "[[\"StartTag\",\"a\",{\"z\":\"\"}]]"
  end
  it "test3:<a [>" do
    assert_lexes "<a [>", "[[\"StartTag\",\"a\",{\"[\":\"\"}]]"
  end
  it "test3:<a `>" do
    assert_lexes "<a `>", "[[\"StartTag\",\"a\",{\"`\":\"\"}]]"
  end
  it "test3:<a a>" do
    assert_lexes "<a a>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a\\u0000>" do
    assert_lexes "<a a\u0000>", "[[\"StartTag\",\"a\",{\"a�\":\"\"}]]"
  end
  it "test3:<a a\\u0008>" do
    assert_lexes "<a a\b>", "[[\"StartTag\",\"a\",{\"a\\b\":\"\"}]]"
  end
  it "test3:<a a\\u0009>" do
    assert_lexes "<a a\t>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a\\u000A>" do
    assert_lexes "<a a\n>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a\\u000B>" do
    assert_lexes "<a a\v>", "[[\"StartTag\",\"a\",{\"a\\u000b\":\"\"}]]"
  end
  it "test3:<a a\\u000C>" do
    assert_lexes "<a a\f>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a\\u000D>" do
    assert_lexes "<a a\r>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a\\u001F>" do
    assert_lexes "<a a\u001F>", "[[\"StartTag\",\"a\",{\"a\\u001f\":\"\"}]]"
  end
  it "test3:<a a >" do
    assert_lexes "<a a >", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a \\u0000>" do
    assert_lexes "<a a \u0000>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"�\":\"\"}]]"
  end
  it "test3:<a a \\u0008>" do
    assert_lexes "<a a \b>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\b\":\"\"}]]"
  end
  it "test3:<a a \\u0009>" do
    assert_lexes "<a a \t>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a \\u000A>" do
    assert_lexes "<a a \n>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a \\u000B>" do
    assert_lexes "<a a \v>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\u000b\":\"\"}]]"
  end
  it "test3:<a a \\u000C>" do
    assert_lexes "<a a \f>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a \\u000D>" do
    assert_lexes "<a a \r>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a \\u001F>" do
    assert_lexes "<a a \u001F>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\u001f\":\"\"}]]"
  end
  it "test3:<a a  >" do
    assert_lexes "<a a  >", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a !>" do
    assert_lexes "<a a !>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"!\":\"\"}]]"
  end
  it "test3:<a a \">" do
    assert_lexes "<a a \">", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\\"\":\"\"}]]"
  end
  it "test3:<a a #>" do
    assert_lexes "<a a #>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"#\":\"\"}]]"
  end
  it "test3:<a a &>" do
    assert_lexes "<a a &>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"&\":\"\"}]]"
  end
  it "test3:<a a '>" do
    assert_lexes "<a a '>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"'\":\"\"}]]"
  end
  it "test3:<a a (>" do
    assert_lexes "<a a (>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"(\":\"\"}]]"
  end
  it "test3:<a a ->" do
    assert_lexes "<a a ->", "[[\"StartTag\",\"a\",{\"a\":\"\",\"-\":\"\"}]]"
  end
  it "test3:<a a .>" do
    assert_lexes "<a a .>", "[[\"StartTag\",\"a\",{\"a\":\"\",\".\":\"\"}]]"
  end
  it "test3:<a a />" do
    assert_lexes "<a a />", "[[\"StartTag\",\"a\",{\"a\":\"\"},true]]"
  end
  it "test3:<a a 0>" do
    assert_lexes "<a a 0>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"0\":\"\"}]]"
  end
  it "test3:<a a 1>" do
    assert_lexes "<a a 1>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"1\":\"\"}]]"
  end
  it "test3:<a a 9>" do
    assert_lexes "<a a 9>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"9\":\"\"}]]"
  end
  it "test3:<a a <>" do
    assert_lexes "<a a <>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"<\":\"\"}]]"
  end
  it "test3:<a a =>" do
    assert_lexes "<a a =>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a >" do
    assert_lexes "<a a >", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a ?>" do
    assert_lexes "<a a ?>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"?\":\"\"}]]"
  end
  it "test3:<a a @>" do
    assert_lexes "<a a @>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"@\":\"\"}]]"
  end
  it "test3:<a a A>" do
    assert_lexes "<a a A>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a B>" do
    assert_lexes "<a a B>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"b\":\"\"}]]"
  end
  it "test3:<a a Y>" do
    assert_lexes "<a a Y>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"y\":\"\"}]]"
  end
  it "test3:<a a Z>" do
    assert_lexes "<a a Z>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"z\":\"\"}]]"
  end
  it "test3:<a a [>" do
    assert_lexes "<a a [>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"[\":\"\"}]]"
  end
  it "test3:<a a `>" do
    assert_lexes "<a a `>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"`\":\"\"}]]"
  end
  it "test3:<a a a>" do
    assert_lexes "<a a a>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a b>" do
    assert_lexes "<a a b>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"b\":\"\"}]]"
  end
  it "test3:<a a y>" do
    assert_lexes "<a a y>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"y\":\"\"}]]"
  end
  it "test3:<a a z>" do
    assert_lexes "<a a z>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"z\":\"\"}]]"
  end
  it "test3:<a a {>" do
    assert_lexes "<a a {>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"{\":\"\"}]]"
  end
  it "test3:<a a \\uDBC0\\uDC00>" do
    assert_lexes "<a a \u{100000}>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\u{100000}\":\"\"}]]"
  end
  it "test3:<a a!>" do
    assert_lexes "<a a!>", "[[\"StartTag\",\"a\",{\"a!\":\"\"}]]"
  end
  it "test3:<a a\">" do
    assert_lexes "<a a\">", "[[\"StartTag\",\"a\",{\"a\\\"\":\"\"}]]"
  end
  it "test3:<a a#>" do
    assert_lexes "<a a#>", "[[\"StartTag\",\"a\",{\"a#\":\"\"}]]"
  end
  it "test3:<a a&>" do
    assert_lexes "<a a&>", "[[\"StartTag\",\"a\",{\"a&\":\"\"}]]"
  end
  it "test3:<a a'>" do
    assert_lexes "<a a'>", "[[\"StartTag\",\"a\",{\"a'\":\"\"}]]"
  end
  it "test3:<a a(>" do
    assert_lexes "<a a(>", "[[\"StartTag\",\"a\",{\"a(\":\"\"}]]"
  end
  it "test3:<a a->" do
    assert_lexes "<a a->", "[[\"StartTag\",\"a\",{\"a-\":\"\"}]]"
  end
  it "test3:<a a.>" do
    assert_lexes "<a a.>", "[[\"StartTag\",\"a\",{\"a.\":\"\"}]]"
  end
  it "test3:<a a/>" do
    assert_lexes "<a a/>", "[[\"StartTag\",\"a\",{\"a\":\"\"},true]]"
  end
  it "test3:<a a0>" do
    assert_lexes "<a a0>", "[[\"StartTag\",\"a\",{\"a0\":\"\"}]]"
  end
  it "test3:<a a1>" do
    assert_lexes "<a a1>", "[[\"StartTag\",\"a\",{\"a1\":\"\"}]]"
  end
  it "test3:<a a9>" do
    assert_lexes "<a a9>", "[[\"StartTag\",\"a\",{\"a9\":\"\"}]]"
  end
  it "test3:<a a<>" do
    assert_lexes "<a a<>", "[[\"StartTag\",\"a\",{\"a<\":\"\"}]]"
  end
  it "test3:<a a=>" do
    assert_lexes "<a a=>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=\\u0000>" do
    assert_lexes "<a a=\u0000>", "[[\"StartTag\",\"a\",{\"a\":\"�\"}]]"
  end
  it "test3:<a a=\\u0008>" do
    assert_lexes "<a a=\b>", "[[\"StartTag\",\"a\",{\"a\":\"\\b\"}]]"
  end
  it "test3:<a a=\\u0009>" do
    assert_lexes "<a a=\t>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=\\u000A>" do
    assert_lexes "<a a=\n>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=\\u000B>" do
    assert_lexes "<a a=\v>", "[[\"StartTag\",\"a\",{\"a\":\"\\u000b\"}]]"
  end
  it "test3:<a a=\\u000C>" do
    assert_lexes "<a a=\f>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=\\u000D>" do
    assert_lexes "<a a=\r>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=\\u001F>" do
    assert_lexes "<a a=\u001F>", "[[\"StartTag\",\"a\",{\"a\":\"\\u001f\"}]]"
  end
  it "test3:<a a= >" do
    assert_lexes "<a a= >", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=!>" do
    assert_lexes "<a a=!>", "[[\"StartTag\",\"a\",{\"a\":\"!\"}]]"
  end
  it "test3:<a a=\"\">" do
    assert_lexes "<a a=\"\">", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=\"\\u0000\">" do
    assert_lexes "<a a=\"\u0000\">", "[[\"StartTag\",\"a\",{\"a\":\"�\"}]]"
  end
  it "test3:<a a=\"\\u0009\">" do
    assert_lexes "<a a=\"\t\">", "[[\"StartTag\",\"a\",{\"a\":\"\\t\"}]]"
  end
  it "test3:<a a=\"\\u000A\">" do
    assert_lexes "<a a=\"\n\">", "[[\"StartTag\",\"a\",{\"a\":\"\\n\"}]]"
  end
  it "test3:<a a=\"\\u000B\">" do
    assert_lexes "<a a=\"\v\">", "[[\"StartTag\",\"a\",{\"a\":\"\\u000b\"}]]"
  end
  it "test3:<a a=\"\\u000C\">" do
    assert_lexes "<a a=\"\f\">", "[[\"StartTag\",\"a\",{\"a\":\"\\f\"}]]"
  end
  it "test3:<a a=\" \">" do
    assert_lexes "<a a=\" \">", "[[\"StartTag\",\"a\",{\"a\":\" \"}]]"
  end
  it "test3:<a a=\"!\">" do
    assert_lexes "<a a=\"!\">", "[[\"StartTag\",\"a\",{\"a\":\"!\"}]]"
  end
  it "test3:<a a=\"\">" do
    assert_lexes "<a a=\"\">", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=\"#\">" do
    assert_lexes "<a a=\"#\">", "[[\"StartTag\",\"a\",{\"a\":\"#\"}]]"
  end
  it "test3:<a a=\"%\">" do
    assert_lexes "<a a=\"%\">", "[[\"StartTag\",\"a\",{\"a\":\"%\"}]]"
  end
  it "test3:<a a=\"&\">" do
    assert_lexes "<a a=\"&\">", "[[\"StartTag\",\"a\",{\"a\":\"&\"}]]"
  end
  it "test3:<a a=\"'\">" do
    assert_lexes "<a a=\"'\">", "[[\"StartTag\",\"a\",{\"a\":\"'\"}]]"
  end
  it "test3:<a a=\"-\">" do
    assert_lexes "<a a=\"-\">", "[[\"StartTag\",\"a\",{\"a\":\"-\"}]]"
  end
  it "test3:<a a=\"/\">" do
    assert_lexes "<a a=\"/\">", "[[\"StartTag\",\"a\",{\"a\":\"/\"}]]"
  end
  it "test3:<a a=\"0\">" do
    assert_lexes "<a a=\"0\">", "[[\"StartTag\",\"a\",{\"a\":\"0\"}]]"
  end
  it "test3:<a a=\"1\">" do
    assert_lexes "<a a=\"1\">", "[[\"StartTag\",\"a\",{\"a\":\"1\"}]]"
  end
  it "test3:<a a=\"9\">" do
    assert_lexes "<a a=\"9\">", "[[\"StartTag\",\"a\",{\"a\":\"9\"}]]"
  end
  it "test3:<a a=\"<\">" do
    assert_lexes "<a a=\"<\">", "[[\"StartTag\",\"a\",{\"a\":\"<\"}]]"
  end
  it "test3:<a a=\"=\">" do
    assert_lexes "<a a=\"=\">", "[[\"StartTag\",\"a\",{\"a\":\"=\"}]]"
  end
  it "test3:<a a=\">\">" do
    assert_lexes "<a a=\">\">", "[[\"StartTag\",\"a\",{\"a\":\">\"}]]"
  end
  it "test3:<a a=\"?\">" do
    assert_lexes "<a a=\"?\">", "[[\"StartTag\",\"a\",{\"a\":\"?\"}]]"
  end
  it "test3:<a a=\"@\">" do
    assert_lexes "<a a=\"@\">", "[[\"StartTag\",\"a\",{\"a\":\"@\"}]]"
  end
  it "test3:<a a=\"A\">" do
    assert_lexes "<a a=\"A\">", "[[\"StartTag\",\"a\",{\"a\":\"A\"}]]"
  end
  it "test3:<a a=\"B\">" do
    assert_lexes "<a a=\"B\">", "[[\"StartTag\",\"a\",{\"a\":\"B\"}]]"
  end
  it "test3:<a a=\"Y\">" do
    assert_lexes "<a a=\"Y\">", "[[\"StartTag\",\"a\",{\"a\":\"Y\"}]]"
  end
  it "test3:<a a=\"Z\">" do
    assert_lexes "<a a=\"Z\">", "[[\"StartTag\",\"a\",{\"a\":\"Z\"}]]"
  end
  it "test3:<a a=\"`\">" do
    assert_lexes "<a a=\"`\">", "[[\"StartTag\",\"a\",{\"a\":\"`\"}]]"
  end
  it "test3:<a a=\"a\">" do
    assert_lexes "<a a=\"a\">", "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
  end
  it "test3:<a a=\"b\">" do
    assert_lexes "<a a=\"b\">", "[[\"StartTag\",\"a\",{\"a\":\"b\"}]]"
  end
  it "test3:<a a=\"y\">" do
    assert_lexes "<a a=\"y\">", "[[\"StartTag\",\"a\",{\"a\":\"y\"}]]"
  end
  it "test3:<a a=\"z\">" do
    assert_lexes "<a a=\"z\">", "[[\"StartTag\",\"a\",{\"a\":\"z\"}]]"
  end
  it "test3:<a a=\"{\">" do
    assert_lexes "<a a=\"{\">", "[[\"StartTag\",\"a\",{\"a\":\"{\"}]]"
  end
  it "test3:<a a=\"\\uDBC0\\uDC00\">" do
    assert_lexes "<a a=\"\u{100000}\">", "[[\"StartTag\",\"a\",{\"a\":\"\u{100000}\"}]]"
  end
  it "test3:<a a=#>" do
    assert_lexes "<a a=#>", "[[\"StartTag\",\"a\",{\"a\":\"#\"}]]"
  end
  it "test3:<a a=%>" do
    assert_lexes "<a a=%>", "[[\"StartTag\",\"a\",{\"a\":\"%\"}]]"
  end
  it "test3:<a a=&>" do
    assert_lexes "<a a=&>", "[[\"StartTag\",\"a\",{\"a\":\"&\"}]]"
  end
  it "test3:<a a=''>" do
    assert_lexes "<a a=''>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a='\\u0000'>" do
    assert_lexes "<a a='\u0000'>", "[[\"StartTag\",\"a\",{\"a\":\"�\"}]]"
  end
  it "test3:<a a='\\u0009'>" do
    assert_lexes "<a a='\t'>", "[[\"StartTag\",\"a\",{\"a\":\"\\t\"}]]"
  end
  it "test3:<a a='\\u000A'>" do
    assert_lexes "<a a='\n'>", "[[\"StartTag\",\"a\",{\"a\":\"\\n\"}]]"
  end
  it "test3:<a a='\\u000B'>" do
    assert_lexes "<a a='\v'>", "[[\"StartTag\",\"a\",{\"a\":\"\\u000b\"}]]"
  end
  it "test3:<a a='\\u000C'>" do
    assert_lexes "<a a='\f'>", "[[\"StartTag\",\"a\",{\"a\":\"\\f\"}]]"
  end
  it "test3:<a a=' '>" do
    assert_lexes "<a a=' '>", "[[\"StartTag\",\"a\",{\"a\":\" \"}]]"
  end
  it "test3:<a a='!'>" do
    assert_lexes "<a a='!'>", "[[\"StartTag\",\"a\",{\"a\":\"!\"}]]"
  end
  it "test3:<a a='\"'>" do
    assert_lexes "<a a='\"'>", "[[\"StartTag\",\"a\",{\"a\":\"\\\"\"}]]"
  end
  it "test3:<a a='%'>" do
    assert_lexes "<a a='%'>", "[[\"StartTag\",\"a\",{\"a\":\"%\"}]]"
  end
  it "test3:<a a='&'>" do
    assert_lexes "<a a='&'>", "[[\"StartTag\",\"a\",{\"a\":\"&\"}]]"
  end
  it "test3:<a a=''>" do
    assert_lexes "<a a=''>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=''\\u0000>" do
    assert_lexes "<a a=''\u0000>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"�\":\"\"}]]"
  end
  it "test3:<a a=''\\u0008>" do
    assert_lexes "<a a=''\b>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\b\":\"\"}]]"
  end
  it "test3:<a a=''\\u0009>" do
    assert_lexes "<a a=''\t>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=''\\u000A>" do
    assert_lexes "<a a=''\n>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=''\\u000B>" do
    assert_lexes "<a a=''\v>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\u000b\":\"\"}]]"
  end
  it "test3:<a a=''\\u000C>" do
    assert_lexes "<a a=''\f>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=''\\u000D>" do
    assert_lexes "<a a=''\r>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=''\\u001F>" do
    assert_lexes "<a a=''\u001F>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\u001f\":\"\"}]]"
  end
  it "test3:<a a='' >" do
    assert_lexes "<a a='' >", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=''!>" do
    assert_lexes "<a a=''!>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"!\":\"\"}]]"
  end
  it "test3:<a a=''\">" do
    assert_lexes "<a a=''\">", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\\\"\":\"\"}]]"
  end
  it "test3:<a a=''&>" do
    assert_lexes "<a a=''&>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"&\":\"\"}]]"
  end
  it "test3:<a a='''>" do
    assert_lexes "<a a='''>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"'\":\"\"}]]"
  end
  it "test3:<a a=''->" do
    assert_lexes "<a a=''->", "[[\"StartTag\",\"a\",{\"a\":\"\",\"-\":\"\"}]]"
  end
  it "test3:<a a=''.>" do
    assert_lexes "<a a=''.>", "[[\"StartTag\",\"a\",{\"a\":\"\",\".\":\"\"}]]"
  end
  it "test3:<a a=''/>" do
    assert_lexes "<a a=''/>", "[[\"StartTag\",\"a\",{\"a\":\"\"},true]]"
  end
  it "test3:<a a=''0>" do
    assert_lexes "<a a=''0>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"0\":\"\"}]]"
  end
  it "test3:<a a=''1>" do
    assert_lexes "<a a=''1>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"1\":\"\"}]]"
  end
  it "test3:<a a=''9>" do
    assert_lexes "<a a=''9>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"9\":\"\"}]]"
  end
  it "test3:<a a=''<>" do
    assert_lexes "<a a=''<>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"<\":\"\"}]]"
  end
  it "test3:<a a=''=>" do
    assert_lexes "<a a=''=>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"=\":\"\"}]]"
  end
  it "test3:<a a=''>" do
    assert_lexes "<a a=''>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=''?>" do
    assert_lexes "<a a=''?>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"?\":\"\"}]]"
  end
  it "test3:<a a=''@>" do
    assert_lexes "<a a=''@>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"@\":\"\"}]]"
  end
  it "test3:<a a=''A>" do
    assert_lexes "<a a=''A>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=''B>" do
    assert_lexes "<a a=''B>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"b\":\"\"}]]"
  end
  it "test3:<a a=''Y>" do
    assert_lexes "<a a=''Y>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"y\":\"\"}]]"
  end
  it "test3:<a a=''Z>" do
    assert_lexes "<a a=''Z>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"z\":\"\"}]]"
  end
  it "test3:<a a=''`>" do
    assert_lexes "<a a=''`>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"`\":\"\"}]]"
  end
  it "test3:<a a=''a>" do
    assert_lexes "<a a=''a>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=''b>" do
    assert_lexes "<a a=''b>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"b\":\"\"}]]"
  end
  it "test3:<a a=''y>" do
    assert_lexes "<a a=''y>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"y\":\"\"}]]"
  end
  it "test3:<a a=''z>" do
    assert_lexes "<a a=''z>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"z\":\"\"}]]"
  end
  it "test3:<a a=''{>" do
    assert_lexes "<a a=''{>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"{\":\"\"}]]"
  end
  it "test3:<a a=''\\uDBC0\\uDC00>" do
    assert_lexes "<a a=''\u{100000}>", "[[\"StartTag\",\"a\",{\"a\":\"\",\"\u{100000}\":\"\"}]]"
  end
  it "test3:<a a='('>" do
    assert_lexes "<a a='('>", "[[\"StartTag\",\"a\",{\"a\":\"(\"}]]"
  end
  it "test3:<a a='-'>" do
    assert_lexes "<a a='-'>", "[[\"StartTag\",\"a\",{\"a\":\"-\"}]]"
  end
  it "test3:<a a='/'>" do
    assert_lexes "<a a='/'>", "[[\"StartTag\",\"a\",{\"a\":\"/\"}]]"
  end
  it "test3:<a a='0'>" do
    assert_lexes "<a a='0'>", "[[\"StartTag\",\"a\",{\"a\":\"0\"}]]"
  end
  it "test3:<a a='1'>" do
    assert_lexes "<a a='1'>", "[[\"StartTag\",\"a\",{\"a\":\"1\"}]]"
  end
  it "test3:<a a='9'>" do
    assert_lexes "<a a='9'>", "[[\"StartTag\",\"a\",{\"a\":\"9\"}]]"
  end
  it "test3:<a a='<'>" do
    assert_lexes "<a a='<'>", "[[\"StartTag\",\"a\",{\"a\":\"<\"}]]"
  end
  it "test3:<a a='='>" do
    assert_lexes "<a a='='>", "[[\"StartTag\",\"a\",{\"a\":\"=\"}]]"
  end
  it "test3:<a a='>'>" do
    assert_lexes "<a a='>'>", "[[\"StartTag\",\"a\",{\"a\":\">\"}]]"
  end
  it "test3:<a a='?'>" do
    assert_lexes "<a a='?'>", "[[\"StartTag\",\"a\",{\"a\":\"?\"}]]"
  end
  it "test3:<a a='@'>" do
    assert_lexes "<a a='@'>", "[[\"StartTag\",\"a\",{\"a\":\"@\"}]]"
  end
  it "test3:<a a='A'>" do
    assert_lexes "<a a='A'>", "[[\"StartTag\",\"a\",{\"a\":\"A\"}]]"
  end
  it "test3:<a a='B'>" do
    assert_lexes "<a a='B'>", "[[\"StartTag\",\"a\",{\"a\":\"B\"}]]"
  end
  it "test3:<a a='Y'>" do
    assert_lexes "<a a='Y'>", "[[\"StartTag\",\"a\",{\"a\":\"Y\"}]]"
  end
  it "test3:<a a='Z'>" do
    assert_lexes "<a a='Z'>", "[[\"StartTag\",\"a\",{\"a\":\"Z\"}]]"
  end
  it "test3:<a a='`'>" do
    assert_lexes "<a a='`'>", "[[\"StartTag\",\"a\",{\"a\":\"`\"}]]"
  end
  it "test3:<a a='a'>" do
    assert_lexes "<a a='a'>", "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
  end
  it "test3:<a a='b'>" do
    assert_lexes "<a a='b'>", "[[\"StartTag\",\"a\",{\"a\":\"b\"}]]"
  end
  it "test3:<a a='y'>" do
    assert_lexes "<a a='y'>", "[[\"StartTag\",\"a\",{\"a\":\"y\"}]]"
  end
  it "test3:<a a='z'>" do
    assert_lexes "<a a='z'>", "[[\"StartTag\",\"a\",{\"a\":\"z\"}]]"
  end
  it "test3:<a a='{'>" do
    assert_lexes "<a a='{'>", "[[\"StartTag\",\"a\",{\"a\":\"{\"}]]"
  end
  it "test3:<a a='\\uDBC0\\uDC00'>" do
    assert_lexes "<a a='\u{100000}'>", "[[\"StartTag\",\"a\",{\"a\":\"\u{100000}\"}]]"
  end
  it "test3:<a a=(>" do
    assert_lexes "<a a=(>", "[[\"StartTag\",\"a\",{\"a\":\"(\"}]]"
  end
  it "test3:<a a=->" do
    assert_lexes "<a a=->", "[[\"StartTag\",\"a\",{\"a\":\"-\"}]]"
  end
  it "test3:<a a=/>" do
    assert_lexes "<a a=/>", "[[\"StartTag\",\"a\",{\"a\":\"/\"}]]"
  end
  it "test3:<a a=0>" do
    assert_lexes "<a a=0>", "[[\"StartTag\",\"a\",{\"a\":\"0\"}]]"
  end
  it "test3:<a a=1>" do
    assert_lexes "<a a=1>", "[[\"StartTag\",\"a\",{\"a\":\"1\"}]]"
  end
  it "test3:<a a=9>" do
    assert_lexes "<a a=9>", "[[\"StartTag\",\"a\",{\"a\":\"9\"}]]"
  end
  it "test3:<a a=<>" do
    assert_lexes "<a a=<>", "[[\"StartTag\",\"a\",{\"a\":\"<\"}]]"
  end
  it "test3:<a a==>" do
    assert_lexes "<a a==>", "[[\"StartTag\",\"a\",{\"a\":\"=\"}]]"
  end
  it "test3:<a a=>" do
    assert_lexes "<a a=>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a=?>" do
    assert_lexes "<a a=?>", "[[\"StartTag\",\"a\",{\"a\":\"?\"}]]"
  end
  it "test3:<a a=@>" do
    assert_lexes "<a a=@>", "[[\"StartTag\",\"a\",{\"a\":\"@\"}]]"
  end
  it "test3:<a a=A>" do
    assert_lexes "<a a=A>", "[[\"StartTag\",\"a\",{\"a\":\"A\"}]]"
  end
  it "test3:<a a=B>" do
    assert_lexes "<a a=B>", "[[\"StartTag\",\"a\",{\"a\":\"B\"}]]"
  end
  it "test3:<a a=Y>" do
    assert_lexes "<a a=Y>", "[[\"StartTag\",\"a\",{\"a\":\"Y\"}]]"
  end
  it "test3:<a a=Z>" do
    assert_lexes "<a a=Z>", "[[\"StartTag\",\"a\",{\"a\":\"Z\"}]]"
  end
  it "test3:<a a=`>" do
    assert_lexes "<a a=`>", "[[\"StartTag\",\"a\",{\"a\":\"`\"}]]"
  end
  it "test3:<a a=a>" do
    assert_lexes "<a a=a>", "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
  end
  it "test3:<a a=a\\u0000>" do
    assert_lexes "<a a=a\u0000>", "[[\"StartTag\",\"a\",{\"a\":\"a�\"}]]"
  end
  it "test3:<a a=a\\u0008>" do
    assert_lexes "<a a=a\b>", "[[\"StartTag\",\"a\",{\"a\":\"a\\b\"}]]"
  end
  it "test3:<a a=a\\u0009>" do
    assert_lexes "<a a=a\t>", "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
  end
  it "test3:<a a=a\\u000A>" do
    assert_lexes "<a a=a\n>", "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
  end
  it "test3:<a a=a\\u000B>" do
    assert_lexes "<a a=a\v>", "[[\"StartTag\",\"a\",{\"a\":\"a\\u000b\"}]]"
  end
  it "test3:<a a=a\\u000C>" do
    assert_lexes "<a a=a\f>", "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
  end
  it "test3:<a a=a\\u000D>" do
    assert_lexes "<a a=a\r>", "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
  end
  it "test3:<a a=a\\u001F>" do
    assert_lexes "<a a=a\u001F>", "[[\"StartTag\",\"a\",{\"a\":\"a\\u001f\"}]]"
  end
  it "test3:<a a=a >" do
    assert_lexes "<a a=a >", "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
  end
  it "test3:<a a=a!>" do
    assert_lexes "<a a=a!>", "[[\"StartTag\",\"a\",{\"a\":\"a!\"}]]"
  end
  it "test3:<a a=a\">" do
    assert_lexes "<a a=a\">", "[[\"StartTag\",\"a\",{\"a\":\"a\\\"\"}]]"
  end
  it "test3:<a a=a#>" do
    assert_lexes "<a a=a#>", "[[\"StartTag\",\"a\",{\"a\":\"a#\"}]]"
  end
  it "test3:<a a=a%>" do
    assert_lexes "<a a=a%>", "[[\"StartTag\",\"a\",{\"a\":\"a%\"}]]"
  end
  it "test3:<a a=a&>" do
    assert_lexes "<a a=a&>", "[[\"StartTag\",\"a\",{\"a\":\"a&\"}]]"
  end
  it "test3:<a a=a'>" do
    assert_lexes "<a a=a'>", "[[\"StartTag\",\"a\",{\"a\":\"a'\"}]]"
  end
  it "test3:<a a=a(>" do
    assert_lexes "<a a=a(>", "[[\"StartTag\",\"a\",{\"a\":\"a(\"}]]"
  end
  it "test3:<a a=a->" do
    assert_lexes "<a a=a->", "[[\"StartTag\",\"a\",{\"a\":\"a-\"}]]"
  end
  it "test3:<a a=a/>" do
    assert_lexes "<a a=a/>", "[[\"StartTag\",\"a\",{\"a\":\"a/\"}]]"
  end
  it "test3:<a a=a0>" do
    assert_lexes "<a a=a0>", "[[\"StartTag\",\"a\",{\"a\":\"a0\"}]]"
  end
  it "test3:<a a=a1>" do
    assert_lexes "<a a=a1>", "[[\"StartTag\",\"a\",{\"a\":\"a1\"}]]"
  end
  it "test3:<a a=a9>" do
    assert_lexes "<a a=a9>", "[[\"StartTag\",\"a\",{\"a\":\"a9\"}]]"
  end
  it "test3:<a a=a<>" do
    assert_lexes "<a a=a<>", "[[\"StartTag\",\"a\",{\"a\":\"a<\"}]]"
  end
  it "test3:<a a=a=>" do
    assert_lexes "<a a=a=>", "[[\"StartTag\",\"a\",{\"a\":\"a=\"}]]"
  end
  it "test3:<a a=a>" do
    assert_lexes "<a a=a>", "[[\"StartTag\",\"a\",{\"a\":\"a\"}]]"
  end
  it "test3:<a a=a?>" do
    assert_lexes "<a a=a?>", "[[\"StartTag\",\"a\",{\"a\":\"a?\"}]]"
  end
  it "test3:<a a=a@>" do
    assert_lexes "<a a=a@>", "[[\"StartTag\",\"a\",{\"a\":\"a@\"}]]"
  end
  it "test3:<a a=aA>" do
    assert_lexes "<a a=aA>", "[[\"StartTag\",\"a\",{\"a\":\"aA\"}]]"
  end
  it "test3:<a a=aB>" do
    assert_lexes "<a a=aB>", "[[\"StartTag\",\"a\",{\"a\":\"aB\"}]]"
  end
  it "test3:<a a=aY>" do
    assert_lexes "<a a=aY>", "[[\"StartTag\",\"a\",{\"a\":\"aY\"}]]"
  end
  it "test3:<a a=aZ>" do
    assert_lexes "<a a=aZ>", "[[\"StartTag\",\"a\",{\"a\":\"aZ\"}]]"
  end
  it "test3:<a a=a`>" do
    assert_lexes "<a a=a`>", "[[\"StartTag\",\"a\",{\"a\":\"a`\"}]]"
  end
  it "test3:<a a=aa>" do
    assert_lexes "<a a=aa>", "[[\"StartTag\",\"a\",{\"a\":\"aa\"}]]"
  end
  it "test3:<a a=ab>" do
    assert_lexes "<a a=ab>", "[[\"StartTag\",\"a\",{\"a\":\"ab\"}]]"
  end
  it "test3:<a a=ay>" do
    assert_lexes "<a a=ay>", "[[\"StartTag\",\"a\",{\"a\":\"ay\"}]]"
  end
  it "test3:<a a=az>" do
    assert_lexes "<a a=az>", "[[\"StartTag\",\"a\",{\"a\":\"az\"}]]"
  end
  it "test3:<a a=a{>" do
    assert_lexes "<a a=a{>", "[[\"StartTag\",\"a\",{\"a\":\"a{\"}]]"
  end
  it "test3:<a a=a\\uDBC0\\uDC00>" do
    assert_lexes "<a a=a\u{100000}>", "[[\"StartTag\",\"a\",{\"a\":\"a\u{100000}\"}]]"
  end
  it "test3:<a a=b>" do
    assert_lexes "<a a=b>", "[[\"StartTag\",\"a\",{\"a\":\"b\"}]]"
  end
  it "test3:<a a=y>" do
    assert_lexes "<a a=y>", "[[\"StartTag\",\"a\",{\"a\":\"y\"}]]"
  end
  it "test3:<a a=z>" do
    assert_lexes "<a a=z>", "[[\"StartTag\",\"a\",{\"a\":\"z\"}]]"
  end
  it "test3:<a a={>" do
    assert_lexes "<a a={>", "[[\"StartTag\",\"a\",{\"a\":\"{\"}]]"
  end
  it "test3:<a a=\\uDBC0\\uDC00>" do
    assert_lexes "<a a=\u{100000}>", "[[\"StartTag\",\"a\",{\"a\":\"\u{100000}\"}]]"
  end
  it "test3:<a a>" do
    assert_lexes "<a a>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a a?>" do
    assert_lexes "<a a?>", "[[\"StartTag\",\"a\",{\"a?\":\"\"}]]"
  end
  it "test3:<a a@>" do
    assert_lexes "<a a@>", "[[\"StartTag\",\"a\",{\"a@\":\"\"}]]"
  end
  it "test3:<a aA>" do
    assert_lexes "<a aA>", "[[\"StartTag\",\"a\",{\"aa\":\"\"}]]"
  end
  it "test3:<a aB>" do
    assert_lexes "<a aB>", "[[\"StartTag\",\"a\",{\"ab\":\"\"}]]"
  end
  it "test3:<a aY>" do
    assert_lexes "<a aY>", "[[\"StartTag\",\"a\",{\"ay\":\"\"}]]"
  end
  it "test3:<a aZ>" do
    assert_lexes "<a aZ>", "[[\"StartTag\",\"a\",{\"az\":\"\"}]]"
  end
  it "test3:<a a[>" do
    assert_lexes "<a a[>", "[[\"StartTag\",\"a\",{\"a[\":\"\"}]]"
  end
  it "test3:<a a`>" do
    assert_lexes "<a a`>", "[[\"StartTag\",\"a\",{\"a`\":\"\"}]]"
  end
  it "test3:<a aa>" do
    assert_lexes "<a aa>", "[[\"StartTag\",\"a\",{\"aa\":\"\"}]]"
  end
  it "test3:<a ab>" do
    assert_lexes "<a ab>", "[[\"StartTag\",\"a\",{\"ab\":\"\"}]]"
  end
  it "test3:<a ay>" do
    assert_lexes "<a ay>", "[[\"StartTag\",\"a\",{\"ay\":\"\"}]]"
  end
  it "test3:<a az>" do
    assert_lexes "<a az>", "[[\"StartTag\",\"a\",{\"az\":\"\"}]]"
  end
  it "test3:<a a{>" do
    assert_lexes "<a a{>", "[[\"StartTag\",\"a\",{\"a{\":\"\"}]]"
  end
  it "test3:<a a\\uDBC0\\uDC00>" do
    assert_lexes "<a a\u{100000}>", "[[\"StartTag\",\"a\",{\"a\u{100000}\":\"\"}]]"
  end
  it "test3:<a b>" do
    assert_lexes "<a b>", "[[\"StartTag\",\"a\",{\"b\":\"\"}]]"
  end
  it "test3:<a y>" do
    assert_lexes "<a y>", "[[\"StartTag\",\"a\",{\"y\":\"\"}]]"
  end
  it "test3:<a z>" do
    assert_lexes "<a z>", "[[\"StartTag\",\"a\",{\"z\":\"\"}]]"
  end
  it "test3:<a {>" do
    assert_lexes "<a {>", "[[\"StartTag\",\"a\",{\"{\":\"\"}]]"
  end
  it "test3:<a \\uDBC0\\uDC00>" do
    assert_lexes "<a \u{100000}>", "[[\"StartTag\",\"a\",{\"\u{100000}\":\"\"}]]"
  end
  it "test3:<a!>" do
    assert_lexes "<a!>", "[[\"StartTag\",\"a!\",{}]]"
  end
  it "test3:<a\">" do
    assert_lexes "<a\">", "[[\"StartTag\",\"a\\\"\",{}]]"
  end
  it "test3:<a&>" do
    assert_lexes "<a&>", "[[\"StartTag\",\"a&\",{}]]"
  end
  it "test3:<a'>" do
    assert_lexes "<a'>", "[[\"StartTag\",\"a'\",{}]]"
  end
  it "test3:<a->" do
    assert_lexes "<a->", "[[\"StartTag\",\"a-\",{}]]"
  end
  it "test3:<a.>" do
    assert_lexes "<a.>", "[[\"StartTag\",\"a.\",{}]]"
  end
  it "test3:<a/>" do
    assert_lexes "<a/>", "[[\"StartTag\",\"a\",{},true]]"
  end
  it "test3:<a/\\u0000>" do
    assert_lexes "<a/\u0000>", "[[\"StartTag\",\"a\",{\"�\":\"\"}]]"
  end
  it "test3:<a/\\u0009>" do
    assert_lexes "<a/\t>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a/\\u000A>" do
    assert_lexes "<a/\n>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a/\\u000B>" do
    assert_lexes "<a/\v>", "[[\"StartTag\",\"a\",{\"\\u000b\":\"\"}]]"
  end
  it "test3:<a/\\u000C>" do
    assert_lexes "<a/\f>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a/ >" do
    assert_lexes "<a/ >", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a/!>" do
    assert_lexes "<a/!>", "[[\"StartTag\",\"a\",{\"!\":\"\"}]]"
  end
  it "test3:<a/\">" do
    assert_lexes "<a/\">", "[[\"StartTag\",\"a\",{\"\\\"\":\"\"}]]"
  end
  it "test3:<a/&>" do
    assert_lexes "<a/&>", "[[\"StartTag\",\"a\",{\"&\":\"\"}]]"
  end
  it "test3:<a/'>" do
    assert_lexes "<a/'>", "[[\"StartTag\",\"a\",{\"'\":\"\"}]]"
  end
  it "test3:<a/->" do
    assert_lexes "<a/->", "[[\"StartTag\",\"a\",{\"-\":\"\"}]]"
  end
  it "test3:<a//>" do
    assert_lexes "<a//>", "[[\"StartTag\",\"a\",{},true]]"
  end
  it "test3:<a/0>" do
    assert_lexes "<a/0>", "[[\"StartTag\",\"a\",{\"0\":\"\"}]]"
  end
  it "test3:<a/1>" do
    assert_lexes "<a/1>", "[[\"StartTag\",\"a\",{\"1\":\"\"}]]"
  end
  it "test3:<a/9>" do
    assert_lexes "<a/9>", "[[\"StartTag\",\"a\",{\"9\":\"\"}]]"
  end
  it "test3:<a/<>" do
    assert_lexes "<a/<>", "[[\"StartTag\",\"a\",{\"<\":\"\"}]]"
  end
  it "test3:<a/=>" do
    assert_lexes "<a/=>", "[[\"StartTag\",\"a\",{\"=\":\"\"}]]"
  end
  it "test3:<a/>" do
    assert_lexes "<a/>", "[[\"StartTag\",\"a\",{},true]]"
  end
  it "test3:<a/?>" do
    assert_lexes "<a/?>", "[[\"StartTag\",\"a\",{\"?\":\"\"}]]"
  end
  it "test3:<a/@>" do
    assert_lexes "<a/@>", "[[\"StartTag\",\"a\",{\"@\":\"\"}]]"
  end
  it "test3:<a/A>" do
    assert_lexes "<a/A>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a/B>" do
    assert_lexes "<a/B>", "[[\"StartTag\",\"a\",{\"b\":\"\"}]]"
  end
  it "test3:<a/Y>" do
    assert_lexes "<a/Y>", "[[\"StartTag\",\"a\",{\"y\":\"\"}]]"
  end
  it "test3:<a/Z>" do
    assert_lexes "<a/Z>", "[[\"StartTag\",\"a\",{\"z\":\"\"}]]"
  end
  it "test3:<a/`>" do
    assert_lexes "<a/`>", "[[\"StartTag\",\"a\",{\"`\":\"\"}]]"
  end
  it "test3:<a/a>" do
    assert_lexes "<a/a>", "[[\"StartTag\",\"a\",{\"a\":\"\"}]]"
  end
  it "test3:<a/b>" do
    assert_lexes "<a/b>", "[[\"StartTag\",\"a\",{\"b\":\"\"}]]"
  end
  it "test3:<a/y>" do
    assert_lexes "<a/y>", "[[\"StartTag\",\"a\",{\"y\":\"\"}]]"
  end
  it "test3:<a/z>" do
    assert_lexes "<a/z>", "[[\"StartTag\",\"a\",{\"z\":\"\"}]]"
  end
  it "test3:<a/{>" do
    assert_lexes "<a/{>", "[[\"StartTag\",\"a\",{\"{\":\"\"}]]"
  end
  it "test3:<a/\\uDBC0\\uDC00>" do
    assert_lexes "<a/\u{100000}>", "[[\"StartTag\",\"a\",{\"\u{100000}\":\"\"}]]"
  end
  it "test3:<a0>" do
    assert_lexes "<a0>", "[[\"StartTag\",\"a0\",{}]]"
  end
  it "test3:<a1>" do
    assert_lexes "<a1>", "[[\"StartTag\",\"a1\",{}]]"
  end
  it "test3:<a9>" do
    assert_lexes "<a9>", "[[\"StartTag\",\"a9\",{}]]"
  end
  it "test3:<a<>" do
    assert_lexes "<a<>", "[[\"StartTag\",\"a<\",{}]]"
  end
  it "test3:<a=>" do
    assert_lexes "<a=>", "[[\"StartTag\",\"a=\",{}]]"
  end
  it "test3:<a>" do
    assert_lexes "<a>", "[[\"StartTag\",\"a\",{}]]"
  end
  it "test3:<a?>" do
    assert_lexes "<a?>", "[[\"StartTag\",\"a?\",{}]]"
  end
  it "test3:<a@>" do
    assert_lexes "<a@>", "[[\"StartTag\",\"a@\",{}]]"
  end
  it "test3:<aA>" do
    assert_lexes "<aA>", "[[\"StartTag\",\"aa\",{}]]"
  end
  it "test3:<aB>" do
    assert_lexes "<aB>", "[[\"StartTag\",\"ab\",{}]]"
  end
  it "test3:<aY>" do
    assert_lexes "<aY>", "[[\"StartTag\",\"ay\",{}]]"
  end
  it "test3:<aZ>" do
    assert_lexes "<aZ>", "[[\"StartTag\",\"az\",{}]]"
  end
  it "test3:<a[>" do
    assert_lexes "<a[>", "[[\"StartTag\",\"a[\",{}]]"
  end
  it "test3:<a`>" do
    assert_lexes "<a`>", "[[\"StartTag\",\"a`\",{}]]"
  end
  it "test3:<aa>" do
    assert_lexes "<aa>", "[[\"StartTag\",\"aa\",{}]]"
  end
  it "test3:<ab>" do
    assert_lexes "<ab>", "[[\"StartTag\",\"ab\",{}]]"
  end
  it "test3:<ay>" do
    assert_lexes "<ay>", "[[\"StartTag\",\"ay\",{}]]"
  end
  it "test3:<az>" do
    assert_lexes "<az>", "[[\"StartTag\",\"az\",{}]]"
  end
  it "test3:<a{>" do
    assert_lexes "<a{>", "[[\"StartTag\",\"a{\",{}]]"
  end
  it "test3:<a\\uDBC0\\uDC00>" do
    assert_lexes "<a\u{100000}>", "[[\"StartTag\",\"a\u{100000}\",{}]]"
  end
  it "test3:<b>" do
    assert_lexes "<b>", "[[\"StartTag\",\"b\",{}]]"
  end
  it "test3:<y>" do
    assert_lexes "<y>", "[[\"StartTag\",\"y\",{}]]"
  end
  it "test3:<z>" do
    assert_lexes "<z>", "[[\"StartTag\",\"z\",{}]]"
  end
  it "test3:<{" do
    assert_lexes "<{", "[[\"Character\",\"<{\"]]"
  end
  it "test3:<\\uDBC0\\uDC00" do
    assert_lexes "<\u{100000}", "[[\"Character\",\"<\u{100000}\"]]"
  end
  it "test3:=" do
    skip
  end
  it "test3:=" do
    skip
  end
  it "test3:>" do
    skip
  end
  it "test3:>" do
    skip
  end
  it "test3:?" do
    skip
  end
  it "test3:?" do
    skip
  end
  it "test3:@" do
    skip
  end
  it "test3:@" do
    skip
  end
  it "test3:A" do
    skip
  end
  it "test3:A" do
    skip
  end
  it "test3:B" do
    skip
  end
  it "test3:B" do
    skip
  end
  it "test3:Y" do
    skip
  end
  it "test3:Y" do
    skip
  end
  it "test3:Z" do
    skip
  end
  it "test3:Z" do
    skip
  end
  it "test3:`" do
    skip
  end
  it "test3:`" do
    skip
  end
  it "test3:a" do
    skip
  end
  it "test3:a" do
    skip
  end
  it "test3:b" do
    skip
  end
  it "test3:b" do
    skip
  end
  it "test3:y" do
    skip
  end
  it "test3:y" do
    skip
  end
  it "test3:z" do
    skip
  end
  it "test3:z" do
    skip
  end
  it "test3:{" do
    skip
  end
  it "test3:{" do
    skip
  end
  it "test3:\\uDBC0\\uDC00" do
    skip
  end
  it "test3:\\uDBC0\\uDC00" do
    skip
  end
end
describe "html5lib-tests/tokenizer/test4.test" do
  it "test4:< in attribute name" do
    assert_lexes "<z/0  <>", "[[\"StartTag\",\"z\",{\"0\":\"\",\"<\":\"\"}]]"
  end
  it "test4:< in unquoted attribute value" do
    assert_lexes "<z x=<>", "[[\"StartTag\",\"z\",{\"x\":\"<\"}]]"
  end
  it "test4:= in unquoted attribute value" do
    assert_lexes "<z z=z=z>", "[[\"StartTag\",\"z\",{\"z\":\"z=z\"}]]"
  end
  it "test4:= attribute" do
    assert_lexes "<z =>", "[[\"StartTag\",\"z\",{\"=\":\"\"}]]"
  end
  it "test4:== attribute" do
    assert_lexes "<z ==>", "[[\"StartTag\",\"z\",{\"=\":\"\"}]]"
  end
  it "test4:=== attribute" do
    assert_lexes "<z ===>", "[[\"StartTag\",\"z\",{\"=\":\"=\"}]]"
  end
  it "test4:==== attribute" do
    assert_lexes "<z ====>", "[[\"StartTag\",\"z\",{\"=\":\"==\"}]]"
  end
  it "test4:\" after ampersand in double-quoted attribute value" do
    assert_lexes "<z z=\"&\">", "[[\"StartTag\",\"z\",{\"z\":\"&\"}]]"
  end
  it "test4:' after ampersand in double-quoted attribute value" do
    assert_lexes "<z z=\"&'\">", "[[\"StartTag\",\"z\",{\"z\":\"&'\"}]]"
  end
  it "test4:' after ampersand in single-quoted attribute value" do
    assert_lexes "<z z='&'>", "[[\"StartTag\",\"z\",{\"z\":\"&\"}]]"
  end
  it "test4:\" after ampersand in single-quoted attribute value" do
    assert_lexes "<z z='&\"'>", "[[\"StartTag\",\"z\",{\"z\":\"&\\\"\"}]]"
  end
  it "test4:Text after bogus character reference" do
    assert_lexes "<z z='&xlink_xmlns;'>bar<z>", "[[\"StartTag\",\"z\",{\"z\":\"&xlink_xmlns;\"}],[\"Character\",\"bar\"],[\"StartTag\",\"z\",{}]]"
  end
  it "test4:Text after hex character reference" do
    assert_lexes "<z z='&#x0020; foo'>bar<z>", "[[\"StartTag\",\"z\",{\"z\":\"  foo\"}],[\"Character\",\"bar\"],[\"StartTag\",\"z\",{}]]"
  end
  it "test4:Attribute name starting with \"" do
    assert_lexes "<foo \"='bar'>", "[[\"StartTag\",\"foo\",{\"\\\"\":\"bar\"}]]"
  end
  it "test4:Attribute name starting with '" do
    assert_lexes "<foo '='bar'>", "[[\"StartTag\",\"foo\",{\"'\":\"bar\"}]]"
  end
  it "test4:Attribute name containing \"" do
    assert_lexes "<foo a\"b='bar'>", "[[\"StartTag\",\"foo\",{\"a\\\"b\":\"bar\"}]]"
  end
  it "test4:Attribute name containing '" do
    assert_lexes "<foo a'b='bar'>", "[[\"StartTag\",\"foo\",{\"a'b\":\"bar\"}]]"
  end
  it "test4:Unquoted attribute value containing '" do
    assert_lexes "<foo a=b'c>", "[[\"StartTag\",\"foo\",{\"a\":\"b'c\"}]]"
  end
  it "test4:Unquoted attribute value containing \"" do
    assert_lexes "<foo a=b\"c>", "[[\"StartTag\",\"foo\",{\"a\":\"b\\\"c\"}]]"
  end
  it "test4:Double-quoted attribute value not followed by whitespace" do
    assert_lexes "<foo a=\"b\"c>", "[[\"StartTag\",\"foo\",{\"a\":\"b\",\"c\":\"\"}]]"
  end
  it "test4:Single-quoted attribute value not followed by whitespace" do
    assert_lexes "<foo a='b'c>", "[[\"StartTag\",\"foo\",{\"a\":\"b\",\"c\":\"\"}]]"
  end
  it "test4:Quoted attribute followed by permitted /" do
    assert_lexes "<br a='b'/>", "[[\"StartTag\",\"br\",{\"a\":\"b\"},true]]"
  end
  it "test4:Quoted attribute followed by non-permitted /" do
    assert_lexes "<bar a='b'/>", "[[\"StartTag\",\"bar\",{\"a\":\"b\"},true]]"
  end
  it "test4:CR EOF after doctype name" do
    assert_lexes "<!doctype html \r", "[[\"DOCTYPE\",\"html\",null,null,false]]"
  end
  it "test4:CR EOF in tag name" do
    assert_lexes "<z\r", "[]"
  end
  it "test4:Slash EOF in tag name" do
    assert_lexes "<z/", "[]"
  end
  it "test4:Zero hex numeric entity" do
    assert_lexes "&#x0", "[[\"Character\",\"�\"]]"
  end
  it "test4:Zero decimal numeric entity" do
    assert_lexes "&#0", "[[\"Character\",\"�\"]]"
  end
  it "test4:Zero-prefixed hex numeric entity" do
    assert_lexes "&#x000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000041;", "[[\"Character\",\"A\"]]"
  end
  it "test4:Zero-prefixed decimal numeric entity" do
    assert_lexes "&#000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000065;", "[[\"Character\",\"A\"]]"
  end
  it "test4:Empty hex numeric entities" do
    assert_lexes "&#x &#X ", "[[\"Character\",\"&#x &#X \"]]"
  end
  it "test4:Invalid digit in hex numeric entity" do
    assert_lexes "&#xZ", "[[\"Character\",\"&#xZ\"]]"
  end
  it "test4:Empty decimal numeric entities" do
    assert_lexes "&# &#; ", "[[\"Character\",\"&# &#; \"]]"
  end
  it "test4:Invalid digit in decimal numeric entity" do
    assert_lexes "&#A", "[[\"Character\",\"&#A\"]]"
  end
  it "test4:Non-BMP numeric entity" do
    assert_lexes "&#x10000;", "[[\"Character\",\"𐀀\"]]"
  end
  it "test4:Maximum non-BMP numeric entity" do
    assert_lexes "&#X10FFFF;", "[[\"Character\",\"􏿿\"]]"
  end
  it "test4:Above maximum numeric entity" do
    assert_lexes "&#x110000;", "[[\"Character\",\"�\"]]"
  end
  it "test4:32-bit hex numeric entity" do
    assert_lexes "&#x80000041;", "[[\"Character\",\"�\"]]"
  end
  it "test4:33-bit hex numeric entity" do
    assert_lexes "&#x100000041;", "[[\"Character\",\"�\"]]"
  end
  it "test4:33-bit decimal numeric entity" do
    assert_lexes "&#4294967361;", "[[\"Character\",\"�\"]]"
  end
  it "test4:65-bit hex numeric entity" do
    assert_lexes "&#x10000000000000041;", "[[\"Character\",\"�\"]]"
  end
  it "test4:65-bit decimal numeric entity" do
    assert_lexes "&#18446744073709551681;", "[[\"Character\",\"�\"]]"
  end
  it "test4:Surrogate code point edge cases" do
    assert_lexes "&#xD7FF;&#xD800;&#xD801;&#xDFFE;&#xDFFF;&#xE000;", "[[\"Character\",\"퟿����\uE000\"]]"
  end
  it "test4:Uppercase start tag name" do
    assert_lexes "<X>", "[[\"StartTag\",\"x\",{}]]"
  end
  it "test4:Uppercase end tag name" do
    assert_lexes "</X>", "[[\"EndTag\",\"x\"]]"
  end
  it "test4:Uppercase attribute name" do
    assert_lexes "<x X>", "[[\"StartTag\",\"x\",{\"x\":\"\"}]]"
  end
  it "test4:Tag/attribute name case edge values" do
    assert_lexes "<x@AZ[`az{ @AZ[`az{>", "[[\"StartTag\",\"x@az[`az{\",{\"@az[`az{\":\"\"}]]"
  end
  it "test4:Duplicate different-case attributes" do
    assert_lexes "<x x=1 x=2 X=3>", "[[\"StartTag\",\"x\",{\"x\":\"1\"}]]"
  end
  it "test4:Uppercase close tag attributes" do
    assert_lexes "</x X>", "[[\"EndTag\",\"x\"]]"
  end
  it "test4:Duplicate close tag attributes" do
    assert_lexes "</x x x>", "[[\"EndTag\",\"x\"]]"
  end
  it "test4:Permitted slash" do
    assert_lexes "<br/>", "[[\"StartTag\",\"br\",{},true]]"
  end
  it "test4:Non-permitted slash" do
    assert_lexes "<xr/>", "[[\"StartTag\",\"xr\",{},true]]"
  end
  it "test4:Permitted slash but in close tag" do
    assert_lexes "</br/>", "[[\"EndTag\",\"br\"]]"
  end
  it "test4:Doctype public case-sensitivity (1)" do
    assert_lexes "<!DoCtYpE HtMl PuBlIc \"AbC\" \"XyZ\">", "[[\"DOCTYPE\",\"html\",\"AbC\",\"XyZ\",true]]"
  end
  it "test4:Doctype public case-sensitivity (2)" do
    assert_lexes "<!dOcTyPe hTmL pUbLiC \"aBc\" \"xYz\">", "[[\"DOCTYPE\",\"html\",\"aBc\",\"xYz\",true]]"
  end
  it "test4:Doctype system case-sensitivity (1)" do
    assert_lexes "<!DoCtYpE HtMl SyStEm \"XyZ\">", "[[\"DOCTYPE\",\"html\",null,\"XyZ\",true]]"
  end
  it "test4:Doctype system case-sensitivity (2)" do
    assert_lexes "<!dOcTyPe hTmL sYsTeM \"xYz\">", "[[\"DOCTYPE\",\"html\",null,\"xYz\",true]]"
  end
  it "test4:U+0000 in lookahead region after non-matching character" do
    assert_lexes "<!doc>\u0000", "[[\"Comment\",\"doc\"],[\"Character\",\"\\u0000\"]]"
  end
  it "test4:U+0000 in lookahead region" do
    assert_lexes "<!doc\u0000", "[[\"Comment\",\"doc�\"]]"
  end
  it "test4:U+0080 in lookahead region" do
    assert_lexes "<!doc\u0080", "[[\"Comment\",\"doc\u0080\"]]"
  end
  it "test4:U+FDD1 in lookahead region" do
    assert_lexes "<!doc﷑", "[[\"Comment\",\"doc﷑\"]]"
  end
  it "test4:U+1FFFF in lookahead region" do
    assert_lexes "<!doc🿿", "[[\"Comment\",\"doc🿿\"]]"
  end
  it "test4:CR followed by non-LF" do
    assert_lexes "\r?", "[[\"Character\",\"\\n?\"]]"
  end
  it "test4:CR at EOF" do
    assert_lexes "\r", "[[\"Character\",\"\\n\"]]"
  end
  it "test4:LF at EOF" do
    assert_lexes "\n", "[[\"Character\",\"\\n\"]]"
  end
  it "test4:CR LF" do
    assert_lexes "\r\n", "[[\"Character\",\"\\n\"]]"
  end
  it "test4:CR CR" do
    assert_lexes "\r\r", "[[\"Character\",\"\\n\\n\"]]"
  end
  it "test4:LF LF" do
    assert_lexes "\n\n", "[[\"Character\",\"\\n\\n\"]]"
  end
  it "test4:LF CR" do
    assert_lexes "\n\r", "[[\"Character\",\"\\n\\n\"]]"
  end
  it "test4:text CR CR CR text" do
    assert_lexes "text\r\r\rtext", "[[\"Character\",\"text\\n\\n\\ntext\"]]"
  end
  it "test4:Doctype publik" do
    assert_lexes "<!DOCTYPE html PUBLIK \"AbC\" \"XyZ\">", "[[\"DOCTYPE\",\"html\",null,null,false]]"
  end
  it "test4:Doctype publi" do
    assert_lexes "<!DOCTYPE html PUBLI", "[[\"DOCTYPE\",\"html\",null,null,false]]"
  end
  it "test4:Doctype sistem" do
    assert_lexes "<!DOCTYPE html SISTEM \"AbC\">", "[[\"DOCTYPE\",\"html\",null,null,false]]"
  end
  it "test4:Doctype sys" do
    assert_lexes "<!DOCTYPE html SYS", "[[\"DOCTYPE\",\"html\",null,null,false]]"
  end
  it "test4:Doctype html x>text" do
    assert_lexes "<!DOCTYPE html x>text", "[[\"DOCTYPE\",\"html\",null,null,false],[\"Character\",\"text\"]]"
  end
  it "test4:Grave accent in unquoted attribute" do
    assert_lexes "<a a=aa`>", "[[\"StartTag\",\"a\",{\"a\":\"aa`\"}]]"
  end
  it "test4:EOF in tag name state " do
    assert_lexes "<a", "[]"
  end
  it "test4:EOF in before attribute name state" do
    assert_lexes "<a ", "[]"
  end
  it "test4:EOF in attribute name state" do
    assert_lexes "<a a", "[]"
  end
  it "test4:EOF in after attribute name state" do
    assert_lexes "<a a ", "[]"
  end
  it "test4:EOF in before attribute value state" do
    assert_lexes "<a a =", "[]"
  end
  it "test4:EOF in attribute value (double quoted) state" do
    assert_lexes "<a a =\"a", "[]"
  end
  it "test4:EOF in attribute value (single quoted) state" do
    assert_lexes "<a a ='a", "[]"
  end
  it "test4:EOF in attribute value (unquoted) state" do
    assert_lexes "<a a =a", "[]"
  end
  it "test4:EOF in after attribute value state" do
    assert_lexes "<a a ='a'", "[]"
  end
end
describe "html5lib-tests/tokenizer/unicodeChars.test" do
  it "unicodeChars:Invalid Unicode character U+0001" do
    assert_lexes "\u0001", "[[\"Character\",\"\\u0001\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0002" do
    assert_lexes "\u0002", "[[\"Character\",\"\\u0002\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0003" do
    assert_lexes "\u0003", "[[\"Character\",\"\\u0003\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0004" do
    assert_lexes "\u0004", "[[\"Character\",\"\\u0004\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0005" do
    assert_lexes "\u0005", "[[\"Character\",\"\\u0005\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0006" do
    assert_lexes "\u0006", "[[\"Character\",\"\\u0006\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0007" do
    assert_lexes "\a", "[[\"Character\",\"\\u0007\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0008" do
    assert_lexes "\b", "[[\"Character\",\"\\b\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+000B" do
    assert_lexes "\v", "[[\"Character\",\"\\u000b\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+000E" do
    assert_lexes "\u000E", "[[\"Character\",\"\\u000e\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+000F" do
    assert_lexes "\u000F", "[[\"Character\",\"\\u000f\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0010" do
    assert_lexes "\u0010", "[[\"Character\",\"\\u0010\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0011" do
    assert_lexes "\u0011", "[[\"Character\",\"\\u0011\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0012" do
    assert_lexes "\u0012", "[[\"Character\",\"\\u0012\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0013" do
    assert_lexes "\u0013", "[[\"Character\",\"\\u0013\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0014" do
    assert_lexes "\u0014", "[[\"Character\",\"\\u0014\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0015" do
    assert_lexes "\u0015", "[[\"Character\",\"\\u0015\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0016" do
    assert_lexes "\u0016", "[[\"Character\",\"\\u0016\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0017" do
    assert_lexes "\u0017", "[[\"Character\",\"\\u0017\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0018" do
    assert_lexes "\u0018", "[[\"Character\",\"\\u0018\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+0019" do
    assert_lexes "\u0019", "[[\"Character\",\"\\u0019\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+001A" do
    assert_lexes "\u001A", "[[\"Character\",\"\\u001a\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+001B" do
    assert_lexes "\e", "[[\"Character\",\"\\u001b\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+001C" do
    assert_lexes "\u001C", "[[\"Character\",\"\\u001c\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+001D" do
    assert_lexes "\u001D", "[[\"Character\",\"\\u001d\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+001E" do
    assert_lexes "\u001E", "[[\"Character\",\"\\u001e\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+001F" do
    assert_lexes "\u001F", "[[\"Character\",\"\\u001f\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+007F" do
    assert_lexes "\u007F", "[[\"Character\",\"\\u007f\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD0" do
    assert_lexes "﷐", "[[\"Character\",\"﷐\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD1" do
    assert_lexes "﷑", "[[\"Character\",\"﷑\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD2" do
    assert_lexes "﷒", "[[\"Character\",\"﷒\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD3" do
    assert_lexes "﷓", "[[\"Character\",\"﷓\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD4" do
    assert_lexes "﷔", "[[\"Character\",\"﷔\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD5" do
    assert_lexes "﷕", "[[\"Character\",\"﷕\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD6" do
    assert_lexes "﷖", "[[\"Character\",\"﷖\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD7" do
    assert_lexes "﷗", "[[\"Character\",\"﷗\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD8" do
    assert_lexes "﷘", "[[\"Character\",\"﷘\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDD9" do
    assert_lexes "﷙", "[[\"Character\",\"﷙\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDDA" do
    assert_lexes "﷚", "[[\"Character\",\"﷚\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDDB" do
    assert_lexes "﷛", "[[\"Character\",\"﷛\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDDC" do
    assert_lexes "﷜", "[[\"Character\",\"﷜\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDDD" do
    assert_lexes "﷝", "[[\"Character\",\"﷝\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDDE" do
    assert_lexes "﷞", "[[\"Character\",\"﷞\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDDF" do
    assert_lexes "﷟", "[[\"Character\",\"﷟\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE0" do
    assert_lexes "﷠", "[[\"Character\",\"﷠\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE1" do
    assert_lexes "﷡", "[[\"Character\",\"﷡\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE2" do
    assert_lexes "﷢", "[[\"Character\",\"﷢\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE3" do
    assert_lexes "﷣", "[[\"Character\",\"﷣\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE4" do
    assert_lexes "﷤", "[[\"Character\",\"﷤\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE5" do
    assert_lexes "﷥", "[[\"Character\",\"﷥\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE6" do
    assert_lexes "﷦", "[[\"Character\",\"﷦\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE7" do
    assert_lexes "﷧", "[[\"Character\",\"﷧\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE8" do
    assert_lexes "﷨", "[[\"Character\",\"﷨\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDE9" do
    assert_lexes "﷩", "[[\"Character\",\"﷩\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDEA" do
    assert_lexes "﷪", "[[\"Character\",\"﷪\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDEB" do
    assert_lexes "﷫", "[[\"Character\",\"﷫\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDEC" do
    assert_lexes "﷬", "[[\"Character\",\"﷬\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDED" do
    assert_lexes "﷭", "[[\"Character\",\"﷭\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDEE" do
    assert_lexes "﷮", "[[\"Character\",\"﷮\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FDEF" do
    assert_lexes "﷯", "[[\"Character\",\"﷯\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FFFE" do
    assert_lexes "￾", "[[\"Character\",\"￾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FFFF" do
    assert_lexes "￿", "[[\"Character\",\"￿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+1FFFE" do
    assert_lexes "🿾", "[[\"Character\",\"🿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+1FFFF" do
    assert_lexes "🿿", "[[\"Character\",\"🿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+2FFFE" do
    assert_lexes "𯿾", "[[\"Character\",\"𯿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+2FFFF" do
    assert_lexes "𯿿", "[[\"Character\",\"𯿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+3FFFE" do
    assert_lexes "𿿾", "[[\"Character\",\"𿿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+3FFFF" do
    assert_lexes "𿿿", "[[\"Character\",\"𿿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+4FFFE" do
    assert_lexes "񏿾", "[[\"Character\",\"񏿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+4FFFF" do
    assert_lexes "񏿿", "[[\"Character\",\"񏿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+5FFFE" do
    assert_lexes "񟿾", "[[\"Character\",\"񟿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+5FFFF" do
    assert_lexes "񟿿", "[[\"Character\",\"񟿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+6FFFE" do
    assert_lexes "񯿾", "[[\"Character\",\"񯿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+6FFFF" do
    assert_lexes "񯿿", "[[\"Character\",\"񯿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+7FFFE" do
    assert_lexes "񿿾", "[[\"Character\",\"񿿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+7FFFF" do
    assert_lexes "񿿿", "[[\"Character\",\"񿿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+8FFFE" do
    assert_lexes "򏿾", "[[\"Character\",\"򏿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+8FFFF" do
    assert_lexes "򏿿", "[[\"Character\",\"򏿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+9FFFE" do
    assert_lexes "򟿾", "[[\"Character\",\"򟿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+9FFFF" do
    assert_lexes "򟿿", "[[\"Character\",\"򟿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+AFFFE" do
    assert_lexes "򯿾", "[[\"Character\",\"򯿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+AFFFF" do
    assert_lexes "򯿿", "[[\"Character\",\"򯿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+BFFFE" do
    assert_lexes "򿿾", "[[\"Character\",\"򿿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+BFFFF" do
    assert_lexes "򿿿", "[[\"Character\",\"򿿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+CFFFE" do
    assert_lexes "󏿾", "[[\"Character\",\"󏿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+CFFFF" do
    assert_lexes "󏿿", "[[\"Character\",\"󏿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+DFFFE" do
    assert_lexes "󟿾", "[[\"Character\",\"󟿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+DFFFF" do
    assert_lexes "󟿿", "[[\"Character\",\"󟿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+EFFFE" do
    assert_lexes "󯿾", "[[\"Character\",\"󯿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+EFFFF" do
    assert_lexes "󯿿", "[[\"Character\",\"󯿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FFFFE" do
    assert_lexes "󿿾", "[[\"Character\",\"󿿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+FFFFF" do
    assert_lexes "󿿿", "[[\"Character\",\"󿿿\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+10FFFE" do
    assert_lexes "􏿾", "[[\"Character\",\"􏿾\"]]"
  end
  it "unicodeChars:Invalid Unicode character U+10FFFF" do
    assert_lexes "􏿿", "[[\"Character\",\"􏿿\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0009" do
    assert_lexes "\t", "[[\"Character\",\"\\t\"]]"
  end
  it "unicodeChars:Valid Unicode character U+000A" do
    assert_lexes "\n", "[[\"Character\",\"\\n\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0020" do
    assert_lexes " ", "[[\"Character\",\" \"]]"
  end
  it "unicodeChars:Valid Unicode character U+0021" do
    assert_lexes "!", "[[\"Character\",\"!\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0022" do
    assert_lexes "\"", "[[\"Character\",\"\\\"\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0023" do
    assert_lexes "#", "[[\"Character\",\"#\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0024" do
    assert_lexes "$", "[[\"Character\",\"$\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0025" do
    assert_lexes "%", "[[\"Character\",\"%\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0026" do
    assert_lexes "&", "[[\"Character\",\"&\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0027" do
    assert_lexes "'", "[[\"Character\",\"'\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0028" do
    assert_lexes "(", "[[\"Character\",\"(\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0029" do
    assert_lexes ")", "[[\"Character\",\")\"]]"
  end
  it "unicodeChars:Valid Unicode character U+002A" do
    assert_lexes "*", "[[\"Character\",\"*\"]]"
  end
  it "unicodeChars:Valid Unicode character U+002B" do
    assert_lexes "+", "[[\"Character\",\"+\"]]"
  end
  it "unicodeChars:Valid Unicode character U+002C" do
    assert_lexes ",", "[[\"Character\",\",\"]]"
  end
  it "unicodeChars:Valid Unicode character U+002D" do
    assert_lexes "-", "[[\"Character\",\"-\"]]"
  end
  it "unicodeChars:Valid Unicode character U+002E" do
    assert_lexes ".", "[[\"Character\",\".\"]]"
  end
  it "unicodeChars:Valid Unicode character U+002F" do
    assert_lexes "/", "[[\"Character\",\"/\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0030" do
    assert_lexes "0", "[[\"Character\",\"0\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0031" do
    assert_lexes "1", "[[\"Character\",\"1\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0032" do
    assert_lexes "2", "[[\"Character\",\"2\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0033" do
    assert_lexes "3", "[[\"Character\",\"3\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0034" do
    assert_lexes "4", "[[\"Character\",\"4\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0035" do
    assert_lexes "5", "[[\"Character\",\"5\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0036" do
    assert_lexes "6", "[[\"Character\",\"6\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0037" do
    assert_lexes "7", "[[\"Character\",\"7\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0038" do
    assert_lexes "8", "[[\"Character\",\"8\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0039" do
    assert_lexes "9", "[[\"Character\",\"9\"]]"
  end
  it "unicodeChars:Valid Unicode character U+003A" do
    assert_lexes ":", "[[\"Character\",\":\"]]"
  end
  it "unicodeChars:Valid Unicode character U+003B" do
    assert_lexes ";", "[[\"Character\",\";\"]]"
  end
  it "unicodeChars:Valid Unicode character U+003D" do
    assert_lexes "=", "[[\"Character\",\"=\"]]"
  end
  it "unicodeChars:Valid Unicode character U+003E" do
    assert_lexes ">", "[[\"Character\",\">\"]]"
  end
  it "unicodeChars:Valid Unicode character U+003F" do
    assert_lexes "?", "[[\"Character\",\"?\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0040" do
    assert_lexes "@", "[[\"Character\",\"@\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0041" do
    assert_lexes "A", "[[\"Character\",\"A\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0042" do
    assert_lexes "B", "[[\"Character\",\"B\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0043" do
    assert_lexes "C", "[[\"Character\",\"C\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0044" do
    assert_lexes "D", "[[\"Character\",\"D\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0045" do
    assert_lexes "E", "[[\"Character\",\"E\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0046" do
    assert_lexes "F", "[[\"Character\",\"F\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0047" do
    assert_lexes "G", "[[\"Character\",\"G\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0048" do
    assert_lexes "H", "[[\"Character\",\"H\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0049" do
    assert_lexes "I", "[[\"Character\",\"I\"]]"
  end
  it "unicodeChars:Valid Unicode character U+004A" do
    assert_lexes "J", "[[\"Character\",\"J\"]]"
  end
  it "unicodeChars:Valid Unicode character U+004B" do
    assert_lexes "K", "[[\"Character\",\"K\"]]"
  end
  it "unicodeChars:Valid Unicode character U+004C" do
    assert_lexes "L", "[[\"Character\",\"L\"]]"
  end
  it "unicodeChars:Valid Unicode character U+004D" do
    assert_lexes "M", "[[\"Character\",\"M\"]]"
  end
  it "unicodeChars:Valid Unicode character U+004E" do
    assert_lexes "N", "[[\"Character\",\"N\"]]"
  end
  it "unicodeChars:Valid Unicode character U+004F" do
    assert_lexes "O", "[[\"Character\",\"O\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0050" do
    assert_lexes "P", "[[\"Character\",\"P\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0051" do
    assert_lexes "Q", "[[\"Character\",\"Q\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0052" do
    assert_lexes "R", "[[\"Character\",\"R\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0053" do
    assert_lexes "S", "[[\"Character\",\"S\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0054" do
    assert_lexes "T", "[[\"Character\",\"T\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0055" do
    assert_lexes "U", "[[\"Character\",\"U\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0056" do
    assert_lexes "V", "[[\"Character\",\"V\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0057" do
    assert_lexes "W", "[[\"Character\",\"W\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0058" do
    assert_lexes "X", "[[\"Character\",\"X\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0059" do
    assert_lexes "Y", "[[\"Character\",\"Y\"]]"
  end
  it "unicodeChars:Valid Unicode character U+005A" do
    assert_lexes "Z", "[[\"Character\",\"Z\"]]"
  end
  it "unicodeChars:Valid Unicode character U+005B" do
    assert_lexes "[", "[[\"Character\",\"[\"]]"
  end
  it "unicodeChars:Valid Unicode character U+005C" do
    assert_lexes "\\", "[[\"Character\",\"\\\\\"]]"
  end
  it "unicodeChars:Valid Unicode character U+005D" do
    assert_lexes "]", "[[\"Character\",\"]\"]]"
  end
  it "unicodeChars:Valid Unicode character U+005E" do
    assert_lexes "^", "[[\"Character\",\"^\"]]"
  end
  it "unicodeChars:Valid Unicode character U+005F" do
    assert_lexes "_", "[[\"Character\",\"_\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0060" do
    assert_lexes "`", "[[\"Character\",\"`\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0061" do
    assert_lexes "a", "[[\"Character\",\"a\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0062" do
    assert_lexes "b", "[[\"Character\",\"b\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0063" do
    assert_lexes "c", "[[\"Character\",\"c\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0064" do
    assert_lexes "d", "[[\"Character\",\"d\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0065" do
    assert_lexes "e", "[[\"Character\",\"e\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0066" do
    assert_lexes "f", "[[\"Character\",\"f\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0067" do
    assert_lexes "g", "[[\"Character\",\"g\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0068" do
    assert_lexes "h", "[[\"Character\",\"h\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0069" do
    assert_lexes "i", "[[\"Character\",\"i\"]]"
  end
  it "unicodeChars:Valid Unicode character U+006A" do
    assert_lexes "j", "[[\"Character\",\"j\"]]"
  end
  it "unicodeChars:Valid Unicode character U+006B" do
    assert_lexes "k", "[[\"Character\",\"k\"]]"
  end
  it "unicodeChars:Valid Unicode character U+006C" do
    assert_lexes "l", "[[\"Character\",\"l\"]]"
  end
  it "unicodeChars:Valid Unicode character U+006D" do
    assert_lexes "m", "[[\"Character\",\"m\"]]"
  end
  it "unicodeChars:Valid Unicode character U+006E" do
    assert_lexes "n", "[[\"Character\",\"n\"]]"
  end
  it "unicodeChars:Valid Unicode character U+006F" do
    assert_lexes "o", "[[\"Character\",\"o\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0070" do
    assert_lexes "p", "[[\"Character\",\"p\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0071" do
    assert_lexes "q", "[[\"Character\",\"q\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0072" do
    assert_lexes "r", "[[\"Character\",\"r\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0073" do
    assert_lexes "s", "[[\"Character\",\"s\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0074" do
    assert_lexes "t", "[[\"Character\",\"t\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0075" do
    assert_lexes "u", "[[\"Character\",\"u\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0076" do
    assert_lexes "v", "[[\"Character\",\"v\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0077" do
    assert_lexes "w", "[[\"Character\",\"w\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0078" do
    assert_lexes "x", "[[\"Character\",\"x\"]]"
  end
  it "unicodeChars:Valid Unicode character U+0079" do
    assert_lexes "y", "[[\"Character\",\"y\"]]"
  end
  it "unicodeChars:Valid Unicode character U+007A" do
    assert_lexes "z", "[[\"Character\",\"z\"]]"
  end
  it "unicodeChars:Valid Unicode character U+007B" do
    assert_lexes "{", "[[\"Character\",\"{\"]]"
  end
  it "unicodeChars:Valid Unicode character U+007C" do
    assert_lexes "|", "[[\"Character\",\"|\"]]"
  end
  it "unicodeChars:Valid Unicode character U+007D" do
    assert_lexes "}", "[[\"Character\",\"}\"]]"
  end
  it "unicodeChars:Valid Unicode character U+007E" do
    assert_lexes "~", "[[\"Character\",\"~\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A0" do
    assert_lexes "\u00A0", "[[\"Character\",\"\u00A0\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A1" do
    assert_lexes "¡", "[[\"Character\",\"¡\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A2" do
    assert_lexes "¢", "[[\"Character\",\"¢\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A3" do
    assert_lexes "£", "[[\"Character\",\"£\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A4" do
    assert_lexes "¤", "[[\"Character\",\"¤\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A5" do
    assert_lexes "¥", "[[\"Character\",\"¥\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A6" do
    assert_lexes "¦", "[[\"Character\",\"¦\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A7" do
    assert_lexes "§", "[[\"Character\",\"§\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A8" do
    assert_lexes "¨", "[[\"Character\",\"¨\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00A9" do
    assert_lexes "©", "[[\"Character\",\"©\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00AA" do
    assert_lexes "ª", "[[\"Character\",\"ª\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00AB" do
    assert_lexes "«", "[[\"Character\",\"«\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00AC" do
    assert_lexes "¬", "[[\"Character\",\"¬\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00AD" do
    assert_lexes "\u00AD", "[[\"Character\",\"\u00AD\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00AE" do
    assert_lexes "®", "[[\"Character\",\"®\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00AF" do
    assert_lexes "¯", "[[\"Character\",\"¯\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B0" do
    assert_lexes "°", "[[\"Character\",\"°\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B1" do
    assert_lexes "±", "[[\"Character\",\"±\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B2" do
    assert_lexes "²", "[[\"Character\",\"²\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B3" do
    assert_lexes "³", "[[\"Character\",\"³\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B4" do
    assert_lexes "´", "[[\"Character\",\"´\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B5" do
    assert_lexes "µ", "[[\"Character\",\"µ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B6" do
    assert_lexes "¶", "[[\"Character\",\"¶\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B7" do
    assert_lexes "·", "[[\"Character\",\"·\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B8" do
    assert_lexes "¸", "[[\"Character\",\"¸\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00B9" do
    assert_lexes "¹", "[[\"Character\",\"¹\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00BA" do
    assert_lexes "º", "[[\"Character\",\"º\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00BB" do
    assert_lexes "»", "[[\"Character\",\"»\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00BC" do
    assert_lexes "¼", "[[\"Character\",\"¼\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00BD" do
    assert_lexes "½", "[[\"Character\",\"½\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00BE" do
    assert_lexes "¾", "[[\"Character\",\"¾\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00BF" do
    assert_lexes "¿", "[[\"Character\",\"¿\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C0" do
    assert_lexes "À", "[[\"Character\",\"À\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C1" do
    assert_lexes "Á", "[[\"Character\",\"Á\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C2" do
    assert_lexes "Â", "[[\"Character\",\"Â\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C3" do
    assert_lexes "Ã", "[[\"Character\",\"Ã\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C4" do
    assert_lexes "Ä", "[[\"Character\",\"Ä\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C5" do
    assert_lexes "Å", "[[\"Character\",\"Å\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C6" do
    assert_lexes "Æ", "[[\"Character\",\"Æ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C7" do
    assert_lexes "Ç", "[[\"Character\",\"Ç\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C8" do
    assert_lexes "È", "[[\"Character\",\"È\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00C9" do
    assert_lexes "É", "[[\"Character\",\"É\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00CA" do
    assert_lexes "Ê", "[[\"Character\",\"Ê\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00CB" do
    assert_lexes "Ë", "[[\"Character\",\"Ë\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00CC" do
    assert_lexes "Ì", "[[\"Character\",\"Ì\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00CD" do
    assert_lexes "Í", "[[\"Character\",\"Í\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00CE" do
    assert_lexes "Î", "[[\"Character\",\"Î\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00CF" do
    assert_lexes "Ï", "[[\"Character\",\"Ï\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D0" do
    assert_lexes "Ð", "[[\"Character\",\"Ð\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D1" do
    assert_lexes "Ñ", "[[\"Character\",\"Ñ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D2" do
    assert_lexes "Ò", "[[\"Character\",\"Ò\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D3" do
    assert_lexes "Ó", "[[\"Character\",\"Ó\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D4" do
    assert_lexes "Ô", "[[\"Character\",\"Ô\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D5" do
    assert_lexes "Õ", "[[\"Character\",\"Õ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D6" do
    assert_lexes "Ö", "[[\"Character\",\"Ö\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D7" do
    assert_lexes "×", "[[\"Character\",\"×\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D8" do
    assert_lexes "Ø", "[[\"Character\",\"Ø\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00D9" do
    assert_lexes "Ù", "[[\"Character\",\"Ù\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00DA" do
    assert_lexes "Ú", "[[\"Character\",\"Ú\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00DB" do
    assert_lexes "Û", "[[\"Character\",\"Û\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00DC" do
    assert_lexes "Ü", "[[\"Character\",\"Ü\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00DD" do
    assert_lexes "Ý", "[[\"Character\",\"Ý\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00DE" do
    assert_lexes "Þ", "[[\"Character\",\"Þ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00DF" do
    assert_lexes "ß", "[[\"Character\",\"ß\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E0" do
    assert_lexes "à", "[[\"Character\",\"à\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E1" do
    assert_lexes "á", "[[\"Character\",\"á\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E2" do
    assert_lexes "â", "[[\"Character\",\"â\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E3" do
    assert_lexes "ã", "[[\"Character\",\"ã\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E4" do
    assert_lexes "ä", "[[\"Character\",\"ä\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E5" do
    assert_lexes "å", "[[\"Character\",\"å\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E6" do
    assert_lexes "æ", "[[\"Character\",\"æ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E7" do
    assert_lexes "ç", "[[\"Character\",\"ç\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E8" do
    assert_lexes "è", "[[\"Character\",\"è\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00E9" do
    assert_lexes "é", "[[\"Character\",\"é\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00EA" do
    assert_lexes "ê", "[[\"Character\",\"ê\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00EB" do
    assert_lexes "ë", "[[\"Character\",\"ë\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00EC" do
    assert_lexes "ì", "[[\"Character\",\"ì\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00ED" do
    assert_lexes "í", "[[\"Character\",\"í\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00EE" do
    assert_lexes "î", "[[\"Character\",\"î\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00EF" do
    assert_lexes "ï", "[[\"Character\",\"ï\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F0" do
    assert_lexes "ð", "[[\"Character\",\"ð\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F1" do
    assert_lexes "ñ", "[[\"Character\",\"ñ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F2" do
    assert_lexes "ò", "[[\"Character\",\"ò\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F3" do
    assert_lexes "ó", "[[\"Character\",\"ó\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F4" do
    assert_lexes "ô", "[[\"Character\",\"ô\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F5" do
    assert_lexes "õ", "[[\"Character\",\"õ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F6" do
    assert_lexes "ö", "[[\"Character\",\"ö\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F7" do
    assert_lexes "÷", "[[\"Character\",\"÷\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F8" do
    assert_lexes "ø", "[[\"Character\",\"ø\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00F9" do
    assert_lexes "ù", "[[\"Character\",\"ù\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00FA" do
    assert_lexes "ú", "[[\"Character\",\"ú\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00FB" do
    assert_lexes "û", "[[\"Character\",\"û\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00FC" do
    assert_lexes "ü", "[[\"Character\",\"ü\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00FD" do
    assert_lexes "ý", "[[\"Character\",\"ý\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00FE" do
    assert_lexes "þ", "[[\"Character\",\"þ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+00FF" do
    assert_lexes "ÿ", "[[\"Character\",\"ÿ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+D7FF" do
    assert_lexes "퟿", "[[\"Character\",\"퟿\"]]"
  end
  it "unicodeChars:Valid Unicode character U+E000" do
    assert_lexes "\uE000", "[[\"Character\",\"\uE000\"]]"
  end
  it "unicodeChars:Valid Unicode character U+FDCF" do
    assert_lexes "﷏", "[[\"Character\",\"﷏\"]]"
  end
  it "unicodeChars:Valid Unicode character U+FDF0" do
    assert_lexes "ﷰ", "[[\"Character\",\"ﷰ\"]]"
  end
  it "unicodeChars:Valid Unicode character U+FFFD" do
    assert_lexes "�", "[[\"Character\",\"�\"]]"
  end
  it "unicodeChars:Valid Unicode character U+10000" do
    assert_lexes "𐀀", "[[\"Character\",\"𐀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+1FFFD" do
    assert_lexes "🿽", "[[\"Character\",\"🿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+20000" do
    assert_lexes "𠀀", "[[\"Character\",\"𠀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+2FFFD" do
    assert_lexes "𯿽", "[[\"Character\",\"𯿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+30000" do
    assert_lexes "𰀀", "[[\"Character\",\"𰀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+3FFFD" do
    assert_lexes "𿿽", "[[\"Character\",\"𿿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+40000" do
    assert_lexes "񀀀", "[[\"Character\",\"񀀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+4FFFD" do
    assert_lexes "񏿽", "[[\"Character\",\"񏿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+50000" do
    assert_lexes "񐀀", "[[\"Character\",\"񐀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+5FFFD" do
    assert_lexes "񟿽", "[[\"Character\",\"񟿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+60000" do
    assert_lexes "񠀀", "[[\"Character\",\"񠀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+6FFFD" do
    assert_lexes "񯿽", "[[\"Character\",\"񯿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+70000" do
    assert_lexes "񰀀", "[[\"Character\",\"񰀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+7FFFD" do
    assert_lexes "񿿽", "[[\"Character\",\"񿿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+80000" do
    assert_lexes "򀀀", "[[\"Character\",\"򀀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+8FFFD" do
    assert_lexes "򏿽", "[[\"Character\",\"򏿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+90000" do
    assert_lexes "򐀀", "[[\"Character\",\"򐀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+9FFFD" do
    assert_lexes "򟿽", "[[\"Character\",\"򟿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+A0000" do
    assert_lexes "򠀀", "[[\"Character\",\"򠀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+AFFFD" do
    assert_lexes "򯿽", "[[\"Character\",\"򯿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+B0000" do
    assert_lexes "򰀀", "[[\"Character\",\"򰀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+BFFFD" do
    assert_lexes "򿿽", "[[\"Character\",\"򿿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+C0000" do
    assert_lexes "󀀀", "[[\"Character\",\"󀀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+CFFFD" do
    assert_lexes "󏿽", "[[\"Character\",\"󏿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+D0000" do
    assert_lexes "󐀀", "[[\"Character\",\"󐀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+DFFFD" do
    assert_lexes "󟿽", "[[\"Character\",\"󟿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+E0000" do
    assert_lexes "󠀀", "[[\"Character\",\"󠀀\"]]"
  end
  it "unicodeChars:Valid Unicode character U+EFFFD" do
    assert_lexes "󯿽", "[[\"Character\",\"󯿽\"]]"
  end
  it "unicodeChars:Valid Unicode character U+F0000" do
    assert_lexes "\u{F0000}", "[[\"Character\",\"\u{F0000}\"]]"
  end
  it "unicodeChars:Valid Unicode character U+FFFFD" do
    assert_lexes "\u{FFFFD}", "[[\"Character\",\"\u{FFFFD}\"]]"
  end
  it "unicodeChars:Valid Unicode character U+100000" do
    assert_lexes "\u{100000}", "[[\"Character\",\"\u{100000}\"]]"
  end
  it "unicodeChars:Valid Unicode character U+10FFFD" do
    assert_lexes "\u{10FFFD}", "[[\"Character\",\"\u{10FFFD}\"]]"
  end
end
describe "html5lib-tests/tokenizer/unicodeCharsProblematic.test" do
  it "unicodeCharsProblematic:Invalid Unicode character U+DFFF" do
    skip
  end
  it "unicodeCharsProblematic:Invalid Unicode character U+D800" do
    skip
  end
  it "unicodeCharsProblematic:Invalid Unicode character U+DFFF with valid preceding character" do
    skip
  end
  it "unicodeCharsProblematic:Invalid Unicode character U+D800 with valid following character" do
    skip
  end
  it "unicodeCharsProblematic:CR followed by U+0000" do
    assert_lexes "\r\u0000", "[[\"Character\",\"\\n\\u0000\"]]"
  end
end
