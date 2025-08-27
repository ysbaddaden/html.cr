require "../spec_helper"

describe "namespace-sensitivity" do
  it "0" do
    input = "<body><table><tr><td><svg><td><foreignObject><span></td>Foo"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"Foo\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg td>\n|                 <svg foreignObject>\n|                   <span>\n"
    assert_parses input, output
  end
end
