require "../spec_helper"

describe "entities01" do
  it "00" do
    input = "FOO&gt;BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO>BAR\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "FOO&gtBAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO>BAR\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "FOO&gt BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO> BAR\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "FOO&gt;;;BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO>;;BAR\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "I'm &notit; I tell you"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"I'm ¬it; I tell you\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "I'm &notin; I tell you"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"I'm ∉ I tell you\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "&ammmp;"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"&ammmp;\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "&ammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmp;"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"&ammmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmp;\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "FOO& BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO& BAR\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "FOO&<BAR>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO&\"\n|     <bar>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "FOO&&&&gt;BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO&&&>BAR\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "FOO&#41;BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO)BAR\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "FOO&#x41;BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOABAR\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "FOO&#X41;BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOABAR\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "FOO&#BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO&#BAR\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "FOO&#ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO&#ZOO\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "FOO&#xBAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOºR\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "FOO&#xZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO&#xZOO\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "FOO&#XZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO&#XZOO\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "FOO&#41BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO)BAR\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "FOO&#x41BAR"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO䆺R\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "FOO&#x41ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOAZOO\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "FOO&#x0000;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "FOO&#x0078;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOxZOO\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "FOO&#x0079;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOyZOO\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "FOO&#x0080;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO€ZOO\"\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "FOO&#x0081;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\u0081ZOO\"\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "FOO&#x0082;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO‚ZOO\"\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "FOO&#x0083;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOƒZOO\"\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "FOO&#x0084;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO„ZOO\"\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "FOO&#x0085;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO…ZOO\"\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "FOO&#x0086;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO†ZOO\"\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "FOO&#x0087;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO‡ZOO\"\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "FOO&#x0088;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOˆZOO\"\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "FOO&#x0089;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO‰ZOO\"\n\n"
    assert_parses input, output
  end
  it "35" do
    input = "FOO&#x008A;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOŠZOO\"\n\n"
    assert_parses input, output
  end
  it "36" do
    input = "FOO&#x008B;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO‹ZOO\"\n\n"
    assert_parses input, output
  end
  it "37" do
    input = "FOO&#x008C;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOŒZOO\"\n\n"
    assert_parses input, output
  end
  it "38" do
    input = "FOO&#x008D;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\u008DZOO\"\n\n"
    assert_parses input, output
  end
  it "39" do
    input = "FOO&#x008E;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOŽZOO\"\n\n"
    assert_parses input, output
  end
  it "40" do
    input = "FOO&#x008F;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\u008FZOO\"\n\n"
    assert_parses input, output
  end
  it "41" do
    input = "FOO&#x0090;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\u0090ZOO\"\n\n"
    assert_parses input, output
  end
  it "42" do
    input = "FOO&#x0091;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO‘ZOO\"\n\n"
    assert_parses input, output
  end
  it "43" do
    input = "FOO&#x0092;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO’ZOO\"\n\n"
    assert_parses input, output
  end
  it "44" do
    input = "FOO&#x0093;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO“ZOO\"\n\n"
    assert_parses input, output
  end
  it "45" do
    input = "FOO&#x0094;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO”ZOO\"\n\n"
    assert_parses input, output
  end
  it "46" do
    input = "FOO&#x0095;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO•ZOO\"\n\n"
    assert_parses input, output
  end
  it "47" do
    input = "FOO&#x0096;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO–ZOO\"\n\n"
    assert_parses input, output
  end
  it "48" do
    input = "FOO&#x0097;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO—ZOO\"\n\n"
    assert_parses input, output
  end
  it "49" do
    input = "FOO&#x0098;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO˜ZOO\"\n\n"
    assert_parses input, output
  end
  it "50" do
    input = "FOO&#x0099;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO™ZOO\"\n\n"
    assert_parses input, output
  end
  it "51" do
    input = "FOO&#x009A;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOšZOO\"\n\n"
    assert_parses input, output
  end
  it "52" do
    input = "FOO&#x009B;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO›ZOO\"\n\n"
    assert_parses input, output
  end
  it "53" do
    input = "FOO&#x009C;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOœZOO\"\n\n"
    assert_parses input, output
  end
  it "54" do
    input = "FOO&#x009D;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\u009DZOO\"\n\n"
    assert_parses input, output
  end
  it "55" do
    input = "FOO&#x009E;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOžZOO\"\n\n"
    assert_parses input, output
  end
  it "56" do
    input = "FOO&#x009F;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOOŸZOO\"\n\n"
    assert_parses input, output
  end
  it "57" do
    input = "FOO&#x00A0;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\u00A0ZOO\"\n\n"
    assert_parses input, output
  end
  it "58" do
    input = "FOO&#xD7FF;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO퟿ZOO\"\n\n"
    assert_parses input, output
  end
  it "59" do
    input = "FOO&#xD800;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n\n"
    assert_parses input, output
  end
  it "60" do
    input = "FOO&#xD801;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n\n"
    assert_parses input, output
  end
  it "61" do
    input = "FOO&#xDFFE;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n\n"
    assert_parses input, output
  end
  it "62" do
    input = "FOO&#xDFFF;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n\n"
    assert_parses input, output
  end
  it "63" do
    input = "FOO&#xE000;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\uE000ZOO\"\n\n"
    assert_parses input, output
  end
  it "64" do
    input = "FOO&#x10FFFE;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO􏿾ZOO\"\n\n"
    assert_parses input, output
  end
  it "65" do
    input = "FOO&#x1087D4;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\u{1087D4}ZOO\"\n\n"
    assert_parses input, output
  end
  it "66" do
    input = "FOO&#x10FFFF;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO􏿿ZOO\"\n\n"
    assert_parses input, output
  end
  it "67" do
    input = "FOO&#x110000;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n\n"
    assert_parses input, output
  end
  it "68" do
    input = "FOO&#xFFFFFF;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n\n"
    assert_parses input, output
  end
  it "69" do
    input = "FOO&#11111111111"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�\"\n\n"
    assert_parses input, output
  end
  it "70" do
    input = "FOO&#1111111111"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�\"\n\n"
    assert_parses input, output
  end
  it "71" do
    input = "FOO&#111111111111"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�\"\n\n"
    assert_parses input, output
  end
  it "72" do
    input = "FOO&#11111111111ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n\n"
    assert_parses input, output
  end
  it "73" do
    input = "FOO&#1111111111ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n\n"
    assert_parses input, output
  end
  it "74" do
    input = "FOO&#111111111111ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO�ZOO\"\n"
    assert_parses input, output
  end
end
