require "../spec_helper"

describe "adoption02" do
  it "0" do
    input = "<b>1<i>2<p>3</b>4"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       \"1\"\n|       <i>\n|         \"2\"\n|     <i>\n|       <p>\n|         <b>\n|           \"3\"\n|         \"4\"\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<a><div><style></style><address><a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <div>\n|       <a>\n|         <style>\n|       <address>\n|         <a>\n|         <a>\n"
    assert_parses input, output
  end
end
