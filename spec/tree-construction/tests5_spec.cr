require "../spec_helper"

describe "tests5" do
  it "00" do
    input = "<style> <!-- </style>x"
    output = "| <html>\n|   <head>\n|     <style>\n|       \" <!-- \"\n|   <body>\n|     \"x\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<style> <!-- </style> --> </style>x"
    output = "| <html>\n|   <head>\n|     <style>\n|       \" <!-- \"\n|     \" \"\n|   <body>\n|     \"--> x\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<style> <!--> </style>x"
    output = "| <html>\n|   <head>\n|     <style>\n|       \" <!--> \"\n|   <body>\n|     \"x\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<style> <!---> </style>x"
    output = "| <html>\n|   <head>\n|     <style>\n|       \" <!---> \"\n|   <body>\n|     \"x\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<iframe> <!---> </iframe>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <iframe>\n|       \" <!---> \"\n|     \"x\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<iframe> <!--- </iframe>->x</iframe> --> </iframe>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <iframe>\n|       \" <!--- \"\n|     \"->x --> x\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<script> <!-- </script> --> </script>x"
    output = "| <html>\n|   <head>\n|     <script>\n|       \" <!-- \"\n|     \" \"\n|   <body>\n|     \"--> x\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<title> <!-- </title> --> </title>x"
    output = "| <html>\n|   <head>\n|     <title>\n|       \" <!-- \"\n|     \" \"\n|   <body>\n|     \"--> x\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<textarea> <!--- </textarea>->x</textarea> --> </textarea>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \" <!--- \"\n|     \"->x --> x\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<style> <!</-- </style>x"
    output = "| <html>\n|   <head>\n|     <style>\n|       \" <!</-- \"\n|   <body>\n|     \"x\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<p><xmp></xmp>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <xmp>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<xmp> <!-- > --> </xmp>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <xmp>\n|       \" <!-- > --> \"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<title>&amp;</title>"
    output = "| <html>\n|   <head>\n|     <title>\n|       \"&\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<title><!--&amp;--></title>"
    output = "| <html>\n|   <head>\n|     <title>\n|       \"<!--&-->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<title><!--</title>"
    output = "| <html>\n|   <head>\n|     <title>\n|       \"<!--\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<noscript><!--</noscript>--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <!-- </noscript> -->\n|   <body>\n"
    assert_parses input, output
  end
end
