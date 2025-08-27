require "../spec_helper"

describe "comments01" do
  it "00" do
    input = "FOO<!-- BAR -->BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  BAR  -->\n|     \"BAZ\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "FOO<!-- BAR --!>BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  BAR  -->\n|     \"BAZ\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "FOO<!-- BAR --! >BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  BAR --! >BAZ -->\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "FOO<!-- BAR --!\n>BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  BAR --!\n>BAZ -->\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "FOO<!-- BAR --   >BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  BAR --   >BAZ -->\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "FOO<!-- BAR -- <QUX> -- MUX -->BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  BAR -- <QUX> -- MUX  -->\n|     \"BAZ\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "FOO<!-- BAR -- <QUX> -- MUX --!>BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  BAR -- <QUX> -- MUX  -->\n|     \"BAZ\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "FOO<!-- BAR -- <QUX> -- MUX -- >BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  BAR -- <QUX> -- MUX -- >BAZ -->\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "FOO<!---->BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  -->\n|     \"BAZ\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "FOO<!--->BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  -->\n|     \"BAZ\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "FOO<!-->BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!--  -->\n|     \"BAZ\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<?xml version=\"1.0\">Hi"
    output = "| <!-- ?xml version=\"1.0\" -->\n| <html>\n|   <head>\n|   <body>\n|     \"Hi\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<?xml version=\"1.0\">"
    output = "| <!-- ?xml version=\"1.0\" -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<?xml version"
    output = "| <!-- ?xml version -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "FOO<!----->BAZ"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\"\n|     <!-- - -->\n|     \"BAZ\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<html><!-- comment --><title>Comment before head</title>"
    output = "| <html>\n|   <!--  comment  -->\n|   <head>\n|     <title>\n|       \"Comment before head\"\n|   <body>\n"
    assert_parses input, output
  end
end
