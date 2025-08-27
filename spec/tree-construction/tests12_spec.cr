require "../spec_helper"

describe "tests12" do
  it "0" do
    input = "<!DOCTYPE html><body><p>foo<math><mtext><i>baz</i></mtext><annotation-xml><svg><desc><b>eggs</b></desc><g><foreignObject><P>spam<TABLE><tr><td><img></td></table></foreignObject></g><g>quux</g></svg></annotation-xml></math>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|       <math math>\n|         <math mtext>\n|           <i>\n|             \"baz\"\n|         <math annotation-xml>\n|           <svg svg>\n|             <svg desc>\n|               <b>\n|                 \"eggs\"\n|             <svg g>\n|               <svg foreignObject>\n|                 <p>\n|                   \"spam\"\n|                 <table>\n|                   <tbody>\n|                     <tr>\n|                       <td>\n|                         <img>\n|             <svg g>\n|               \"quux\"\n|       \"bar\"\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<!DOCTYPE html><body>foo<math><mtext><i>baz</i></mtext><annotation-xml><svg><desc><b>eggs</b></desc><g><foreignObject><P>spam<TABLE><tr><td><img></td></table></foreignObject></g><g>quux</g></svg></annotation-xml></math>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"foo\"\n|     <math math>\n|       <math mtext>\n|         <i>\n|           \"baz\"\n|       <math annotation-xml>\n|         <svg svg>\n|           <svg desc>\n|             <b>\n|               \"eggs\"\n|           <svg g>\n|             <svg foreignObject>\n|               <p>\n|                 \"spam\"\n|               <table>\n|                 <tbody>\n|                   <tr>\n|                     <td>\n|                       <img>\n|           <svg g>\n|             \"quux\"\n|     \"bar\"\n"
    assert_parses input, output
  end
end
