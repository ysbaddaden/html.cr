require "../spec_helper"

describe "inbody01" do
  it "0" do
    input = "<button>1</foo>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <button>\n|       \"1\"\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<foo>1<p>2</foo>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <foo>\n|       \"1\"\n|       <p>\n|         \"2\"\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<dd>1</foo>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <dd>\n|       \"1\"\n\n"
    assert_parses input, output
  end
  it "3" do
    input = "<foo>1<dd>2</foo>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <foo>\n|       \"1\"\n|       <dd>\n|         \"2\"\n"
    assert_parses input, output
  end
end
