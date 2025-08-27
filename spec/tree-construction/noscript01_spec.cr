require "../spec_helper"

describe "noscript01" do
  it "00" do
    input = "<head><noscript><!doctype html><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<head><noscript><html class=\"foo\"><!--foo--></noscript>"
    output = "| <html>\n|   class=\"foo\"\n|   <head>\n|     <noscript>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<head><noscript></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<head><noscript>   </noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       \"   \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<head><noscript><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<head><noscript><basefont><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <basefont>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<head><noscript><bgsound><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <bgsound>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<head><noscript><link><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <link>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<head><noscript><meta><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <meta>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<head><noscript><noframes>XXX</noscript></noframes></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <noframes>\n|         \"XXX</noscript>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<head><noscript><style>XXX</style></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <style>\n|         \"XXX\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<head><noscript></br><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|   <body>\n|     <br>\n|     <!-- foo -->\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<head><noscript><head class=\"foo\"><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<head><noscript><noscript class=\"foo\"><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<head><noscript></p><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<head><noscript><p><!--foo--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|   <body>\n|     <p>\n|       <!-- foo -->\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<head><noscript>XXX<!--foo--></noscript></head>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|   <body>\n|     \"XXX\"\n|     <!-- foo -->\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<head><noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|   <body>\n"
    assert_parses input, output
  end
end
