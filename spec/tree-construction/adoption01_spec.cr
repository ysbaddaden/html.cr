require "../spec_helper"

describe "adoption01" do
  it "00" do
    input = "<a><p></a></p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <p>\n|       <a>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<a>1<p>2</a>3</p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <p>\n|       <a>\n|         \"2\"\n|       \"3\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<a>1<button>2</a>3</button>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <button>\n|       <a>\n|         \"2\"\n|       \"3\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<a>1<b>2</a>3</b>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|       <b>\n|         \"2\"\n|     <b>\n|       \"3\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<a>1<div>2<div>3</a>4</div>5</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <div>\n|       <a>\n|         \"2\"\n|       <div>\n|         <a>\n|           \"3\"\n|         \"4\"\n|       \"5\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<table><a>1<p>2</a>3</p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <p>\n|       <a>\n|         \"2\"\n|       \"3\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<b><b><a><p></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <b>\n|         <a>\n|         <p>\n|           <a>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<b><a><b><p></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <a>\n|         <b>\n|       <b>\n|         <p>\n|           <a>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<a><b><b><p></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <b>\n|         <b>\n|     <b>\n|       <b>\n|         <p>\n|           <a>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<p>1<s id=\"A\">2<b id=\"B\">3</p>4</s>5</b>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"1\"\n|       <s>\n|         id=\"A\"\n|         \"2\"\n|         <b>\n|           id=\"B\"\n|           \"3\"\n|     <s>\n|       id=\"A\"\n|       <b>\n|         id=\"B\"\n|         \"4\"\n|     <b>\n|       id=\"B\"\n|       \"5\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<table><a>1<td>2</td>3</table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"1\"\n|     <a>\n|       \"3\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"2\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<table>A<td>B</td>C</table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"AC\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"B\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<a><svg><tr><input></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <svg svg>\n|         <svg tr>\n|           <svg input>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<div><a><b><div><div><div><div><div><div><div><div><div><div></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <a>\n|         <b>\n|       <b>\n|         <div>\n|           <a>\n|           <div>\n|             <a>\n|             <div>\n|               <a>\n|               <div>\n|                 <a>\n|                 <div>\n|                   <a>\n|                   <div>\n|                     <a>\n|                     <div>\n|                       <a>\n|                       <div>\n|                         <a>\n|                           <div>\n|                             <div>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<div><a><b><u><i><code><div></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <a>\n|         <b>\n|           <u>\n|             <i>\n|               <code>\n|       <u>\n|         <i>\n|           <code>\n|             <div>\n|               <a>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<b><b><b><b>x</b></b></b></b>y"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <b>\n|         <b>\n|           <b>\n|             \"x\"\n|     \"y\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<p><b><b><b><b><p>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <b>\n|         <b>\n|           <b>\n|             <b>\n|     <p>\n|       <b>\n|         <b>\n|           <b>\n|             \"x\"\n\n"
    assert_parses input, output
  end
  it "17" do
    skip "missing support for #document-fragment"
  end
end
