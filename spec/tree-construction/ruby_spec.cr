require "../spec_helper"

describe "ruby" do
  it "00" do
    input = "<html><ruby>a<rb>b<rb></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rb>\n|         \"b\"\n|       <rb>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<html><ruby>a<rb>b<rt></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rb>\n|         \"b\"\n|       <rt>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<html><ruby>a<rb>b<rtc></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rb>\n|         \"b\"\n|       <rtc>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<html><ruby>a<rb>b<rp></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rb>\n|         \"b\"\n|       <rp>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<html><ruby>a<rb>b<span></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rb>\n|         \"b\"\n|         <span>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<html><ruby>a<rt>b<rb></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rt>\n|         \"b\"\n|       <rb>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<html><ruby>a<rt>b<rt></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rt>\n|         \"b\"\n|       <rt>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<html><ruby>a<rt>b<rtc></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rt>\n|         \"b\"\n|       <rtc>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<html><ruby>a<rt>b<rp></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rt>\n|         \"b\"\n|       <rp>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<html><ruby>a<rt>b<span></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rt>\n|         \"b\"\n|         <span>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<html><ruby>a<rtc>b<rb></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rtc>\n|         \"b\"\n|       <rb>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<html><ruby>a<rtc>b<rt>c<rt>d</ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rtc>\n|         \"b\"\n|         <rt>\n|           \"c\"\n|         <rt>\n|           \"d\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<html><ruby>a<rtc>b<rtc></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rtc>\n|         \"b\"\n|       <rtc>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<html><ruby>a<rtc>b<rp></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rtc>\n|         \"b\"\n|         <rp>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<html><ruby>a<rtc>b<span></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rtc>\n|         \"b\"\n|         <span>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<html><ruby>a<rp>b<rb></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rp>\n|         \"b\"\n|       <rb>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<html><ruby>a<rp>b<rt></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rp>\n|         \"b\"\n|       <rt>\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<html><ruby>a<rp>b<rtc></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rp>\n|         \"b\"\n|       <rtc>\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<html><ruby>a<rp>b<rp></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rp>\n|         \"b\"\n|       <rp>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<html><ruby>a<rp>b<span></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rp>\n|         \"b\"\n|         <span>\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<html><ruby><rtc><ruby>a<rb>b<rt></ruby></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <rtc>\n|         <ruby>\n|           \"a\"\n|           <rb>\n|             \"b\"\n|           <rt>\n"
    assert_parses input, output
  end
end
