require "../spec_helper"

describe "tables01" do
  it "00" do
    input = "<table><th>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <th>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<table><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<table><col foo='bar'>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n|         <col>\n|           foo=\"bar\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<table><colgroup></html>foo"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"foo\"\n|     <table>\n|       <colgroup>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<table></table><p>foo"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|     <p>\n|       \"foo\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<table></body></caption></col></colgroup></html></tbody></td></tfoot></th></thead></tr><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<table><select><option>3</select></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|         \"3\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<table><select><table></table></select></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <table>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<table><select></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<table><select><option>A<tr><td>B</td></tr></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|         \"A\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"B\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<table><td></body></caption></col></colgroup></html>foo"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"foo\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<table><td>A</table>B"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"A\"\n|     \"B\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<table><tr><caption>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|       <caption>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<table><tr></body></caption></col></colgroup></html></td></th><td>foo"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"foo\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<table><td><tr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<table><td><button><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <button>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<table><tr><td><svg><desc><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg desc>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<div><table><svg><foreignObject><select><table><s>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg foreignObject>\n|           <select>\n|       <table>\n|       <s>\n|       <table>\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<table>a<!doctype html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"a\"\n|     <table>\n"
    assert_parses input, output
  end
end
