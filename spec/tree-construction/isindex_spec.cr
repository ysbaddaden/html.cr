require "../spec_helper"

describe "isindex" do
  it "0" do
    input = "<isindex>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <isindex>\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<isindex name=\"A\" action=\"B\" prompt=\"C\" foo=\"D\">"
    output = "| <html>\n|   <head>\n|   <body>\n|     <isindex>\n|       action=\"B\"\n|       foo=\"D\"\n|       name=\"A\"\n|       prompt=\"C\"\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<form><isindex>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <form>\n|       <isindex>\n\n"
    assert_parses input, output
  end
  it "3" do
    input = "<!doctype html><isindex>x</isindex>x"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <isindex>\n|       \"x\"\n|     \"x\"\n"
    assert_parses input, output
  end
end
