require "../spec_helper"

describe "pending-spec-changes" do
  it "0" do
    input = "<input type=\"hidden\"><frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<!DOCTYPE html><table><caption><svg>foo</table>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <svg svg>\n|           \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<table><tr><td><svg><desc><td></desc><circle>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg desc>\n|           <td>\n|             <circle>\n"
    assert_parses input, output
  end
end
