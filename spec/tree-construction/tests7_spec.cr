require "../spec_helper"

describe "tests7" do
  it "00" do
    input = "<!doctype html><body><title>X</title>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <title>\n|       \"X\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!doctype html><table><title>X</title></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <title>\n|       \"X\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!doctype html><head></head><title>X</title>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"X\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!doctype html></head><title>X</title>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"X\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!doctype html></head><base>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <base>\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!doctype html></head><basefont>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <basefont>\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!doctype html></head><bgsound>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <bgsound>\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!doctype html><table><meta></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <meta>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!doctype html><table>X<tr><td><table> <meta></table></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"X\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <meta>\n|             <table>\n|               \" \"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!doctype html><html> <head>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!doctype html> <head>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!doctype html><table><style> <tr>x </style> </table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <style>\n|         \" <tr>x \"\n|       \" \"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!doctype html><table><TBODY><script> <tr>x </script> </table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <script>\n|           \" <tr>x \"\n|         \" \"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!doctype html><p><applet><p>X</p></applet>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <applet>\n|         <p>\n|           \"X\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!doctype html><p><object type=\"application/x-non-existant-plugin\"><p>X</p></object>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <object>\n|         type=\"application/x-non-existant-plugin\"\n|         <p>\n|           \"X\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<!doctype html><listing>\nX</listing>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <listing>\n|       \"X\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!doctype html><select><input>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <input>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!doctype html><select><select>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!doctype html><table><input type=hidDEN></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <input>\n|         type=\"hidDEN\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!doctype html><table>X<input type=hidDEN></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"X\"\n|     <table>\n|       <input>\n|         type=\"hidDEN\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<!doctype html><table>  <input type=hidDEN></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       \"  \"\n|       <input>\n|         type=\"hidDEN\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<!doctype html><table>  <input type='hidDEN'></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       \"  \"\n|       <input>\n|         type=\"hidDEN\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<!doctype html><table><input type=\" hidden\"><input type=hidDEN></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <input>\n|       type=\" hidden\"\n|     <table>\n|       <input>\n|         type=\"hidDEN\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<!doctype html><table><select>X<tr>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       \"X\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<!doctype html><select>X</select>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       \"X\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!DOCTYPE hTmL><html></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<!DOCTYPE HTML><html></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "27" do
    skip "missing support for #document-fragment"
  end
  it "28" do
    input = "<div><p>a</x> b"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <p>\n|         \"a b\"\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<table><tr><td><code></code> </table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <code>\n|             \" \"\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<table><b><tr><td>aaa</td></tr>bbb</table>ccc"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|     <b>\n|       \"bbb\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"aaa\"\n|     <b>\n|       \"ccc\"\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "A<table><tr> B</tr> B</table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"A B B\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "A<table><tr> B</tr> </em>C</table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"A BC\"\n|     <table>\n|       <tbody>\n|         <tr>\n|         \" \"\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<select><keygen>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <keygen>\n"
    assert_parses input, output
  end
end
