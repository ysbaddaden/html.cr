require "../spec_helper"

describe "html5test-com" do
  it "00" do
    input = "<div<div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div<div>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<div foo<bar=''>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       foo<bar=\"\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<div foo=`bar`>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       foo=\"`bar`\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<div \\\"foo=''>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \\\"foo=\"\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<a href='\\nbar'></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       href=\"\\nbar\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!DOCTYPE html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "&lang;&rang;"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"⟨⟩\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "&apos;"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"'\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "&ImaginaryI;"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"ⅈ\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "&Kopf;"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"𝕂\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "&notinva;"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"∉\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<?import namespace=\"foo\" implementation=\"#bar\">"
    output = "| <!-- ?import namespace=\"foo\" implementation=\"#bar\" -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!--foo--bar-->"
    output = "| <!-- foo--bar -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<![CDATA[x]]>"
    output = "| <!-- [CDATA[x]] -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<textarea><!--</textarea>--></textarea>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"<!--\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<textarea><!--</textarea>-->"
    output = "| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"<!--\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<style><!--</style>--></style>"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"<!--\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<style><!--</style>-->"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"<!--\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<ul><li>A </li> <li>B</li></ul>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ul>\n|       <li>\n|         \"A \"\n|       \" \"\n|       <li>\n|         \"B\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<table><form><input type=hidden><input></form><div></div></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <input>\n|     <div>\n|     <table>\n|       <form>\n|       <input>\n|         type=\"hidden\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<i>A<b>B<p></i>C</b>D"
    output = "| <html>\n|   <head>\n|   <body>\n|     <i>\n|       \"A\"\n|       <b>\n|         \"B\"\n|     <b>\n|     <p>\n|       <b>\n|         <i>\n|         \"C\"\n|       \"D\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<div></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<svg></svg>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<math></math>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n"
    assert_parses input, output
  end
end
