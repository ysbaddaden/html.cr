require "../spec_helper"

describe "plain-text-unsafe" do
  it "00" do
    input = "FOO&#x000D;ZOO"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"FOO\rZOO\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<html>\u0000<frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<html> \u0000 <frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<html>a\u0000a<frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"aa\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<html>\u0000\u0000<frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<html>\u0000\n<frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<html><select>\u0000"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "\u0000"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<body>\u0000"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<plaintext>\u0000filler\u0000text\u0000"
    output = "| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"�filler�text�\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<svg><![CDATA[\u0000filler\u0000text\u0000]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"�filler�text�\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<body><!\u0000>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <!-- � -->\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<body><!\u0000filler\u0000text>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <!-- �filler�text -->\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<body><svg><foreignObject>\u0000filler\u0000text"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg foreignObject>\n|         \"fillertext\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<svg>\u0000filler\u0000text"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"�filler�text\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<svg>\u0000<frameset>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"�\"\n|       <svg frameset>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<svg>\u0000 <frameset>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"� \"\n|       <svg frameset>\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<svg>\u0000a<frameset>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"�a\"\n|       <svg frameset>\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<svg>\u0000</svg><frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<svg>\u0000 </svg><frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<svg>\u0000a</svg><frameset>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"�a\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<svg><path></path></svg><frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<svg><p><frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<!DOCTYPE html><pre>\r\n\r\nA</pre>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"\nA\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<!DOCTYPE html><pre>\r\rA</pre>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"\nA\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!DOCTYPE html><pre>\rA</pre>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       \"A\"\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<!DOCTYPE html><table><tr><td><math><mtext>\u0000a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <math math>\n|               <math mtext>\n|                 \"a\"\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<!DOCTYPE html><table><tr><td><svg><foreignObject>\u0000a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg foreignObject>\n|                 \"a\"\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<!DOCTYPE html><math><mi>a\u0000b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         \"ab\"\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<!DOCTYPE html><math><mo>a\u0000b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mo>\n|         \"ab\"\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<!DOCTYPE html><math><mn>a\u0000b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mn>\n|         \"ab\"\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "<!DOCTYPE html><math><ms>a\u0000b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math ms>\n|         \"ab\"\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<!DOCTYPE html><math><mtext>a\u0000b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mtext>\n|         \"ab\"\n"
    assert_parses input, output
  end
end
