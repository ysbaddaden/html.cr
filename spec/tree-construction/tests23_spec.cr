require "../spec_helper"

describe "tests23" do
  it "0" do
    input = "<p><font size=4><font color=red><font size=4><font size=4><font size=4><font size=4><font size=4><font color=red><p>X"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <font>\n|         size=\"4\"\n|         <font>\n|           color=\"red\"\n|           <font>\n|             size=\"4\"\n|             <font>\n|               size=\"4\"\n|               <font>\n|                 size=\"4\"\n|                 <font>\n|                   size=\"4\"\n|                   <font>\n|                     size=\"4\"\n|                     <font>\n|                       color=\"red\"\n|     <p>\n|       <font>\n|         color=\"red\"\n|         <font>\n|           size=\"4\"\n|           <font>\n|             size=\"4\"\n|             <font>\n|               size=\"4\"\n|               <font>\n|                 color=\"red\"\n|                 \"X\"\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<p><font size=4><font size=4><font size=4><font size=4><p>X"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <font>\n|         size=\"4\"\n|         <font>\n|           size=\"4\"\n|           <font>\n|             size=\"4\"\n|             <font>\n|               size=\"4\"\n|     <p>\n|       <font>\n|         size=\"4\"\n|         <font>\n|           size=\"4\"\n|           <font>\n|             size=\"4\"\n|             \"X\"\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<p><font size=4><font size=4><font size=4><font size=\"5\"><font size=4><p>X"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <font>\n|         size=\"4\"\n|         <font>\n|           size=\"4\"\n|           <font>\n|             size=\"4\"\n|             <font>\n|               size=\"5\"\n|               <font>\n|                 size=\"4\"\n|     <p>\n|       <font>\n|         size=\"4\"\n|         <font>\n|           size=\"4\"\n|           <font>\n|             size=\"5\"\n|             <font>\n|               size=\"4\"\n|               \"X\"\n\n"
    assert_parses input, output
  end
  it "3" do
    input = "<p><font size=4 id=a><font size=4 id=b><font size=4><font size=4><p>X"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <font>\n|         id=\"a\"\n|         size=\"4\"\n|         <font>\n|           id=\"b\"\n|           size=\"4\"\n|           <font>\n|             size=\"4\"\n|             <font>\n|               size=\"4\"\n|     <p>\n|       <font>\n|         id=\"a\"\n|         size=\"4\"\n|         <font>\n|           id=\"b\"\n|           size=\"4\"\n|           <font>\n|             size=\"4\"\n|             <font>\n|               size=\"4\"\n|               \"X\"\n\n"
    assert_parses input, output
  end
  it "4" do
    input = "<p><b id=a><b id=a><b id=a><b><object><b id=a><b id=a>X</object><p>Y"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <b>\n|         id=\"a\"\n|         <b>\n|           id=\"a\"\n|           <b>\n|             id=\"a\"\n|             <b>\n|               <object>\n|                 <b>\n|                   id=\"a\"\n|                   <b>\n|                     id=\"a\"\n|                     \"X\"\n|     <p>\n|       <b>\n|         id=\"a\"\n|         <b>\n|           id=\"a\"\n|           <b>\n|             id=\"a\"\n|             <b>\n|               \"Y\"\n"
    assert_parses input, output
  end
end
