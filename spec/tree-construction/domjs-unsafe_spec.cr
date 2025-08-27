require "../spec_helper"

describe "domjs-unsafe" do
  it "00" do
    input = "<svg><![CDATA[foo\nbar]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\nbar\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<svg><![CDATA[foo\rbar]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\nbar\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<svg><![CDATA[foo\r\nbar]]>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"foo\nbar\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<script>a='\u0000'</script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"a='�'\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<script type=\"data\"><!--\u0000</script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--�\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<script type=\"data\"><!--foo\u0000</script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--foo�\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<script type=\"data\"><!-- foo-\u0000</script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-�\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<script type=\"data\"><!-- foo--\u0000</script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo--�\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<script type=\"data\"><!-- foo-"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<script type=\"data\"><!-- foo-<</script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-<\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<script type=\"data\"><!-- foo-<S"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-<S\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<script type=\"data\"><!-- foo-</SCRIPT>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!-- foo-\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<script type=\"data\"><!--<p></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<p>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<script type=\"data\"><!--<script></script></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script></script>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<script type=\"data\"><!--<script>\u0000</script></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script>�</script>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<script type=\"data\"><!--<script>-\u0000</script></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script>-�</script>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<script type=\"data\"><!--<script>--\u0000</script></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script>--�</script>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<script type=\"data\"><!--<script>---</script></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script>---</script>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<script type=\"data\"><!--<script></scrip></SCRIPT></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script></scrip></SCRIPT>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<script type=\"data\"><!--<script></scrip </SCRIPT></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script></scrip </SCRIPT>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<script type=\"data\"><!--<script></scrip/</SCRIPT></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--<script></scrip/</SCRIPT>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<script type=\"data\"></scrip/></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"</scrip/>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<script type=\"data\"></scrip ></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"</scrip >\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<script type=\"data\"><!--</scrip></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--</scrip>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<script type=\"data\"><!--</scrip </script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--</scrip \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<script type=\"data\"><!--</scrip/</script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       type=\"data\"\n|       \"<!--</scrip/\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<!DOCTYPE html><!DOCTYPE html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<html><!DOCTYPE html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<html><head><!DOCTYPE html></head>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<html><head></head><!DOCTYPE html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<body></body><!DOCTYPE html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "<table><!DOCTYPE html></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<select><!DOCTYPE html></select>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<table><colgroup><!DOCTYPE html></colgroup></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "<table><colgroup><!--test--></colgroup></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n|         <!-- test -->\n\n"
    assert_parses input, output
  end
  it "35" do
    input = "<table><colgroup><html></colgroup></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n\n"
    assert_parses input, output
  end
  it "36" do
    input = "<table><colgroup> foo</colgroup></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"foo\"\n|     <table>\n|       <colgroup>\n|         \" \"\n\n"
    assert_parses input, output
  end
  it "37" do
    input = "<select><!--test--></select>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <!-- test -->\n\n"
    assert_parses input, output
  end
  it "38" do
    input = "<select><html></select>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "39" do
    input = "<frameset><html></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "40" do
    input = "<frameset></frameset><html>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "41" do
    input = "<frameset></frameset><!DOCTYPE html>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "42" do
    input = "<html><body></body></html><!DOCTYPE html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "43" do
    input = "<svg><!DOCTYPE html></svg>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n\n"
    assert_parses input, output
  end
  it "44" do
    input = "<svg><font></font></svg>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg font>\n\n"
    assert_parses input, output
  end
  it "45" do
    input = "<svg><font id=foo></font></svg>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg font>\n|         id=\"foo\"\n\n"
    assert_parses input, output
  end
  it "46" do
    input = "<svg><font size=4></font></svg>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <font>\n|       size=\"4\"\n\n"
    assert_parses input, output
  end
  it "47" do
    input = "<svg><font color=red></font></svg>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <font>\n|       color=\"red\"\n\n"
    assert_parses input, output
  end
  it "48" do
    input = "<svg><font font=sans></font></svg>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg font>\n|         font=\"sans\"\n"
    assert_parses input, output
  end
end
