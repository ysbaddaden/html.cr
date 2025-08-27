require "../spec_helper"

describe "tests21" do
  it "00" do
    input = "<svg><![CDATA[foo]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<math><![CDATA[foo]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       \"foo\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<div><![CDATA[foo]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <!-- [CDATA[foo]] -->\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<svg><![CDATA[foo"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<svg><![CDATA["
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<svg><![CDATA[]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<svg><![CDATA[]] >]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]] >\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<svg><![CDATA[]]"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]]\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<svg><![CDATA[]"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<svg><![CDATA[]>a"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"]>a\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!DOCTYPE html><svg><![CDATA[foo]]]>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo]\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!DOCTYPE html><svg><![CDATA[foo]]]]>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo]]\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!DOCTYPE html><svg><![CDATA[foo]]]]]>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo]]]\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<svg><foreignObject><div><![CDATA[foo]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg foreignObject>\n|         <div>\n|           <!-- [CDATA[foo]] -->\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<svg><![CDATA[<svg>]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<svg><![CDATA[</svg>a]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"</svg>a\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<svg><![CDATA[<svg>a"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>a\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<svg><![CDATA[</svg>a"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"</svg>a\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<svg><![CDATA[<svg>]]><path>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n|       <svg path>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<svg><![CDATA[<svg>]]></path>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<svg><![CDATA[<svg>]]><!--path-->"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>\"\n|       <!-- path -->\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<svg><![CDATA[<svg>]]>path"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<svg>path\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<svg><![CDATA[<!--svg-->]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"<!--svg-->\"\n"
    assert_parses input, output
  end
end
