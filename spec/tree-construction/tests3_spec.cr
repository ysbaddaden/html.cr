require "../spec_helper"

describe "tests3" do
  it "00" do
    input = "<head></head><style></style>"
    output = "| <html>\n|   <head>\n|     <style>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<head></head><script></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<head></head><!-- --><style></style><!-- --><script></script>"
    output = "| <html>\n|   <head>\n|     <style>\n|     <script>\n|   <!--   -->\n|   <!--   -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<head></head><!-- -->x<style></style><!-- --><script></script>"
    output = "| <html>\n|   <head>\n|   <!--   -->\n|   <body>\n|     \"x\"\n|     <style>\n|     <!--   -->\n|     <script>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!DOCTYPE html><html><head></head><body><pre>\n</pre></body></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!DOCTYPE html><html><head></head><body><pre>\nfoo</pre></body></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"foo\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!DOCTYPE html><html><head></head><body><pre>\n\nfoo</pre></body></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"\nfoo\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!DOCTYPE html><html><head></head><body><pre>\nfoo\n</pre></body></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"foo\n\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!DOCTYPE html><html><head></head><body><pre>x</pre><span>\n</span></body></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"x\"\n|     <span>\n|       \"\n\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!DOCTYPE html><html><head></head><body><pre>x\ny</pre></body></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"x\ny\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!DOCTYPE html><html><head></head><body><pre>x<div>\ny</pre></body></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"x\"\n|       <div>\n|         \"\ny\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!DOCTYPE html><pre>&#x0a;&#x0a;A</pre>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"\nA\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!DOCTYPE html><HTML><META><HEAD></HEAD></HTML>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <meta>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!DOCTYPE html><HTML><HEAD><head></HEAD></HTML>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<textarea>foo<span>bar</span><i>baz"
    output = "| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"foo<span>bar</span><i>baz\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<title>foo<span>bar</em><i>baz"
    output = "| <html>\n|   <head>\n|     <title>\n|       \"foo<span>bar</em><i>baz\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!DOCTYPE html><textarea>\n</textarea>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <textarea>\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!DOCTYPE html><textarea>\nfoo</textarea>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"foo\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!DOCTYPE html><textarea>\n\nfoo</textarea>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"\nfoo\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!DOCTYPE html><html><head></head><body><ul><li><div><p><li></ul></body></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <ul>\n|       <li>\n|         <div>\n|           <p>\n|       <li>\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<!doctype html><nobr><nobr><nobr>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <nobr>\n|     <nobr>\n|     <nobr>\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<!doctype html><nobr><nobr></nobr><nobr>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <nobr>\n|     <nobr>\n|     <nobr>\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<!doctype html><html><body><p><table></table></body></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<p><table></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <table>\n"
    assert_parses input, output
  end
end
