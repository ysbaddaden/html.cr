require "../spec_helper"

describe "tests15" do
  it "00" do
    input = "<!DOCTYPE html><p><b><i><u></p> <p>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <b>\n|         <i>\n|           <u>\n|     <b>\n|       <i>\n|         <u>\n|           \" \"\n|           <p>\n|             \"X\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<p><b><i><u></p>\n<p>X"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <b>\n|         <i>\n|           <u>\n|     <b>\n|       <i>\n|         <u>\n|           \"\n\"\n|           <p>\n|             \"X\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!doctype html></html> <head>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \" \"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!doctype html></body><meta>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <meta>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<html></html><!-- foo -->"
    output = "| <html>\n|   <head>\n|   <body>\n| <!--  foo  -->\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!doctype html></body><title>X</title>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <title>\n|       \"X\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!doctype html><table> X<meta></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \" X\"\n|     <meta>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!doctype html><table> x</table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \" x\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!doctype html><table> x </table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \" x \"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!doctype html><table><tr> x</table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \" x\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!doctype html><table>X<style> <tr>x </style> </table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"X\"\n|     <table>\n|       <style>\n|         \" <tr>x \"\n|       \" \"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!doctype html><div><table><a>foo</a> <tr><td>bar</td> </tr></table></div>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <a>\n|         \"foo\"\n|       <table>\n|         \" \"\n|         <tbody>\n|           <tr>\n|             <td>\n|               \"bar\"\n|             \" \"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<frame></frame></frame><frameset><frame><frameset><frame></frameset><noframes></frameset><noframes>"
    output = "| <html>\n|   <head>\n|   <frameset>\n|     <frame>\n|     <frameset>\n|       <frame>\n|     <noframes>\n|       \"</frameset><noframes>\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!DOCTYPE html><object></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <object>\n"
    assert_parses input, output
  end
end
