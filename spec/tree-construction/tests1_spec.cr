require "../spec_helper"

describe "tests1" do
  it "000" do
    input = "Test"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"Test\"\n\n"
    assert_parses input, output
  end
  it "001" do
    input = "<p>One<p>Two"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"One\"\n|     <p>\n|       \"Two\"\n\n"
    assert_parses input, output
  end
  it "002" do
    input = "Line1<br>Line2<br>Line3<br>Line4"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"Line1\"\n|     <br>\n|     \"Line2\"\n|     <br>\n|     \"Line3\"\n|     <br>\n|     \"Line4\"\n\n"
    assert_parses input, output
  end
  it "003" do
    input = "<html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "004" do
    input = "<head>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "005" do
    input = "<body>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "006" do
    input = "<html><head>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "007" do
    input = "<html><head></head>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "008" do
    input = "<html><head></head><body>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "009" do
    input = "<html><head></head><body></body>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "010" do
    input = "<html><head><body></body></html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "011" do
    input = "<html><head></body></html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "012" do
    input = "<html><head><body></html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "013" do
    input = "<html><body></html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "014" do
    input = "<body></html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "015" do
    input = "<head></html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "016" do
    input = "</head>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "017" do
    input = "</body>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "018" do
    input = "</html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "019" do
    input = "<b><table><td><i></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <table>\n|         <tbody>\n|           <tr>\n|             <td>\n|               <i>\n\n"
    assert_parses input, output
  end
  it "020" do
    input = "<b><table><td></b><i></table>X"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <table>\n|         <tbody>\n|           <tr>\n|             <td>\n|               <i>\n|       \"X\"\n\n"
    assert_parses input, output
  end
  it "021" do
    input = "<h1>Hello<h2>World"
    output = "| <html>\n|   <head>\n|   <body>\n|     <h1>\n|       \"Hello\"\n|     <h2>\n|       \"World\"\n\n"
    assert_parses input, output
  end
  it "022" do
    input = "<a><p>X<a>Y</a>Z</p></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <p>\n|       <a>\n|         \"X\"\n|       <a>\n|         \"Y\"\n|       \"Z\"\n\n"
    assert_parses input, output
  end
  it "023" do
    input = "<b><button>foo</b>bar"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|     <button>\n|       <b>\n|         \"foo\"\n|       \"bar\"\n\n"
    assert_parses input, output
  end
  it "024" do
    input = "<!DOCTYPE html><span><button>foo</span>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <span>\n|       <button>\n|         \"foobar\"\n\n"
    assert_parses input, output
  end
  it "025" do
    input = "<p><b><div><marquee></p></b></div>X"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <b>\n|     <div>\n|       <b>\n|         <marquee>\n|           <p>\n|           \"X\"\n\n"
    assert_parses input, output
  end
  it "026" do
    input = "<script><div></script></div><title><p></title><p><p>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<div>\"\n|     <title>\n|       \"<p>\"\n|   <body>\n|     <p>\n|     <p>\n\n"
    assert_parses input, output
  end
  it "027" do
    input = "<!--><div>--<!-->"
    output = "| <!--  -->\n| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"--\"\n|       <!--  -->\n\n"
    assert_parses input, output
  end
  it "028" do
    input = "<p><hr></p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <hr>\n|     <p>\n\n"
    assert_parses input, output
  end
  it "029" do
    input = "<select><b><option><select><option></b></select>X"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|     <option>\n|       \"X\"\n\n"
    assert_parses input, output
  end
  it "030" do
    input = "<a><table><td><a><table></table><a></tr><a></table><b>X</b>C<a>Y"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <a>\n|       <table>\n|         <tbody>\n|           <tr>\n|             <td>\n|               <a>\n|                 <table>\n|               <a>\n|     <a>\n|       <b>\n|         \"X\"\n|       \"C\"\n|     <a>\n|       \"Y\"\n\n"
    assert_parses input, output
  end
  it "031" do
    input = "<a X>0<b>1<a Y>2"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       x=\"\"\n|       \"0\"\n|       <b>\n|         \"1\"\n|     <b>\n|       <a>\n|         y=\"\"\n|         \"2\"\n\n"
    assert_parses input, output
  end
  it "032" do
    input = "<!-----><font><div>hello<table>excite!<b>me!<th><i>please!</tr><!--X-->"
    output = "| <!-- - -->\n| <html>\n|   <head>\n|   <body>\n|     <font>\n|       <div>\n|         \"helloexcite!\"\n|         <b>\n|           \"me!\"\n|         <table>\n|           <tbody>\n|             <tr>\n|               <th>\n|                 <i>\n|                   \"please!\"\n|             <!-- X -->\n\n"
    assert_parses input, output
  end
  it "033" do
    input = "<!DOCTYPE html><li>hello<li>world<ul>how<li>do</ul>you</body><!--do-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <li>\n|       \"hello\"\n|     <li>\n|       \"world\"\n|       <ul>\n|         \"how\"\n|         <li>\n|           \"do\"\n|       \"you\"\n|   <!-- do -->\n\n"
    assert_parses input, output
  end
  it "034" do
    input = "<!DOCTYPE html>A<option>B<optgroup>C<select>D</option>E"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"A\"\n|     <option>\n|       \"B\"\n|     <optgroup>\n|       \"C\"\n|       <select>\n|         \"DE\"\n\n"
    assert_parses input, output
  end
  it "035" do
    input = "<"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"<\"\n\n"
    assert_parses input, output
  end
  it "036" do
    input = "<#"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"<#\"\n\n"
    assert_parses input, output
  end
  it "037" do
    input = "</"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"</\"\n\n"
    assert_parses input, output
  end
  it "038" do
    input = "</#"
    output = "| <!-- # -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "039" do
    input = "<?"
    output = "| <!-- ? -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "040" do
    input = "<?#"
    output = "| <!-- ?# -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "041" do
    input = "<!"
    output = "| <!--  -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "042" do
    input = "<!#"
    output = "| <!-- # -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "043" do
    input = "<?COMMENT?>"
    output = "| <!-- ?COMMENT? -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "044" do
    input = "<!COMMENT>"
    output = "| <!-- COMMENT -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "045" do
    input = "</ COMMENT >"
    output = "| <!--  COMMENT  -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "046" do
    input = "<?COM--MENT?>"
    output = "| <!-- ?COM--MENT? -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "047" do
    input = "<!COM--MENT>"
    output = "| <!-- COM--MENT -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "048" do
    input = "</ COM--MENT >"
    output = "| <!--  COM--MENT  -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "049" do
    input = "<!DOCTYPE html><style> EOF"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <style>\n|       \" EOF\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "050" do
    input = "<!DOCTYPE html><script> <!-- </script> --> </script> EOF"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \" <!-- \"\n|     \" \"\n|   <body>\n|     \"-->  EOF\"\n\n"
    assert_parses input, output
  end
  it "051" do
    input = "<b><p></b>TEST"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|     <p>\n|       <b>\n|       \"TEST\"\n\n"
    assert_parses input, output
  end
  it "052" do
    input = "<p id=a><b><p id=b></b>TEST"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       id=\"a\"\n|       <b>\n|     <p>\n|       id=\"b\"\n|       \"TEST\"\n\n"
    assert_parses input, output
  end
  it "053" do
    input = "<b id=a><p><b id=b></p></b>TEST"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       id=\"a\"\n|       <p>\n|         <b>\n|           id=\"b\"\n|       \"TEST\"\n\n"
    assert_parses input, output
  end
  it "054" do
    input = "<!DOCTYPE html><title>U-test</title><body><div><p>Test<u></p></div></body>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"U-test\"\n|   <body>\n|     <div>\n|       <p>\n|         \"Test\"\n|         <u>\n\n"
    assert_parses input, output
  end
  it "055" do
    input = "<!DOCTYPE html><font><table></font></table></font>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <font>\n|       <table>\n\n"
    assert_parses input, output
  end
  it "056" do
    input = "<font><p>hello<b>cruel</font>world"
    output = "| <html>\n|   <head>\n|   <body>\n|     <font>\n|     <p>\n|       <font>\n|         \"hello\"\n|         <b>\n|           \"cruel\"\n|       <b>\n|         \"world\"\n\n"
    assert_parses input, output
  end
  it "057" do
    input = "<b>Test</i>Test"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       \"TestTest\"\n\n"
    assert_parses input, output
  end
  it "058" do
    input = "<b>A<cite>B<div>C"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       \"A\"\n|       <cite>\n|         \"B\"\n|         <div>\n|           \"C\"\n\n"
    assert_parses input, output
  end
  it "059" do
    input = "<b>A<cite>B<div>C</cite>D"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       \"A\"\n|       <cite>\n|         \"B\"\n|         <div>\n|           \"CD\"\n\n"
    assert_parses input, output
  end
  it "060" do
    input = "<b>A<cite>B<div>C</b>D"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       \"A\"\n|       <cite>\n|         \"B\"\n|     <div>\n|       <b>\n|         \"C\"\n|       \"D\"\n\n"
    assert_parses input, output
  end
  it "061" do
    input = ""
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "062" do
    input = "<DIV>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n\n"
    assert_parses input, output
  end
  it "063" do
    input = "<DIV> abc"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc\"\n\n"
    assert_parses input, output
  end
  it "064" do
    input = "<DIV> abc <B>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n\n"
    assert_parses input, output
  end
  it "065" do
    input = "<DIV> abc <B> def"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def\"\n\n"
    assert_parses input, output
  end
  it "066" do
    input = "<DIV> abc <B> def <I>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n\n"
    assert_parses input, output
  end
  it "067" do
    input = "<DIV> abc <B> def <I> ghi"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n|           \" ghi\"\n\n"
    assert_parses input, output
  end
  it "068" do
    input = "<DIV> abc <B> def <I> ghi <P>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n|           \" ghi \"\n|           <p>\n\n"
    assert_parses input, output
  end
  it "069" do
    input = "<DIV> abc <B> def <I> ghi <P> jkl"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n|           \" ghi \"\n|           <p>\n|             \" jkl\"\n\n"
    assert_parses input, output
  end
  it "070" do
    input = "<DIV> abc <B> def <I> ghi <P> jkl </B>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n|           \" ghi \"\n|       <i>\n|         <p>\n|           <b>\n|             \" jkl \"\n\n"
    assert_parses input, output
  end
  it "071" do
    input = "<DIV> abc <B> def <I> ghi <P> jkl </B> mno"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n|           \" ghi \"\n|       <i>\n|         <p>\n|           <b>\n|             \" jkl \"\n|           \" mno\"\n\n"
    assert_parses input, output
  end
  it "072" do
    input = "<DIV> abc <B> def <I> ghi <P> jkl </B> mno </I>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n|           \" ghi \"\n|       <i>\n|       <p>\n|         <i>\n|           <b>\n|             \" jkl \"\n|           \" mno \"\n\n"
    assert_parses input, output
  end
  it "073" do
    input = "<DIV> abc <B> def <I> ghi <P> jkl </B> mno </I> pqr"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n|           \" ghi \"\n|       <i>\n|       <p>\n|         <i>\n|           <b>\n|             \" jkl \"\n|           \" mno \"\n|         \" pqr\"\n\n"
    assert_parses input, output
  end
  it "074" do
    input = "<DIV> abc <B> def <I> ghi <P> jkl </B> mno </I> pqr </P>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n|           \" ghi \"\n|       <i>\n|       <p>\n|         <i>\n|           <b>\n|             \" jkl \"\n|           \" mno \"\n|         \" pqr \"\n\n"
    assert_parses input, output
  end
  it "075" do
    input = "<DIV> abc <B> def <I> ghi <P> jkl </B> mno </I> pqr </P> stu"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \" abc \"\n|       <b>\n|         \" def \"\n|         <i>\n|           \" ghi \"\n|       <i>\n|       <p>\n|         <i>\n|           <b>\n|             \" jkl \"\n|           \" mno \"\n|         \" pqr \"\n|       \" stu\"\n\n"
    assert_parses input, output
  end
  it "076" do
    input = "<test attribute---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->"
    output = "| <html>\n|   <head>\n|   <body>\n|     <test>\n|       attribute----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------=\"\"\n\n"
    assert_parses input, output
  end
  it "077" do
    input = "<a href=\"blah\">aba<table><a href=\"foo\">br<tr><td></td></tr>x</table>aoe"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       href=\"blah\"\n|       \"aba\"\n|       <a>\n|         href=\"foo\"\n|         \"br\"\n|       <a>\n|         href=\"foo\"\n|         \"x\"\n|       <table>\n|         <tbody>\n|           <tr>\n|             <td>\n|     <a>\n|       href=\"foo\"\n|       \"aoe\"\n\n"
    assert_parses input, output
  end
  it "078" do
    input = "<a href=\"blah\">aba<table><tr><td><a href=\"foo\">br</td></tr>x</table>aoe"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       href=\"blah\"\n|       \"abax\"\n|       <table>\n|         <tbody>\n|           <tr>\n|             <td>\n|               <a>\n|                 href=\"foo\"\n|                 \"br\"\n|       \"aoe\"\n\n"
    assert_parses input, output
  end
  it "079" do
    input = "<table><a href=\"blah\">aba<tr><td><a href=\"foo\">br</td></tr>x</table>aoe"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       href=\"blah\"\n|       \"aba\"\n|     <a>\n|       href=\"blah\"\n|       \"x\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <a>\n|               href=\"foo\"\n|               \"br\"\n|     <a>\n|       href=\"blah\"\n|       \"aoe\"\n\n"
    assert_parses input, output
  end
  it "080" do
    input = "<a href=a>aa<marquee>aa<a href=b>bb</marquee>aa"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       href=\"a\"\n|       \"aa\"\n|       <marquee>\n|         \"aa\"\n|         <a>\n|           href=\"b\"\n|           \"bb\"\n|       \"aa\"\n\n"
    assert_parses input, output
  end
  it "081" do
    input = "<wbr><strike><code></strike><code><strike></code>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <wbr>\n|     <strike>\n|       <code>\n|     <code>\n|       <code>\n|         <strike>\n\n"
    assert_parses input, output
  end
  it "082" do
    input = "<!DOCTYPE html><spacer>foo"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <spacer>\n|       \"foo\"\n\n"
    assert_parses input, output
  end
  it "083" do
    input = "<title><meta></title><link><title><meta></title>"
    output = "| <html>\n|   <head>\n|     <title>\n|       \"<meta>\"\n|     <link>\n|     <title>\n|       \"<meta>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "084" do
    input = "<style><!--</style><meta><script>--><link></script>"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"<!--\"\n|     <meta>\n|     <script>\n|       \"--><link>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "085" do
    input = "<head><meta></head><link>"
    output = "| <html>\n|   <head>\n|     <meta>\n|     <link>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "086" do
    input = "<table><tr><tr><td><td><span><th><span>X</table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|         <tr>\n|           <td>\n|           <td>\n|             <span>\n|           <th>\n|             <span>\n|               \"X\"\n\n"
    assert_parses input, output
  end
  it "087" do
    input = "<body><body><base><link><meta><title><p></title><body><p></body>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <base>\n|     <link>\n|     <meta>\n|     <title>\n|       \"<p>\"\n|     <p>\n\n"
    assert_parses input, output
  end
  it "088" do
    input = "<textarea><p></textarea>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"<p>\"\n\n"
    assert_parses input, output
  end
  it "089" do
    input = "<p><image></p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <img>\n\n"
    assert_parses input, output
  end
  it "090" do
    input = "<a><table><a></table><p><a><div><a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <a>\n|       <table>\n|     <p>\n|       <a>\n|     <div>\n|       <a>\n\n"
    assert_parses input, output
  end
  it "091" do
    input = "<head></p><meta><p>"
    output = "| <html>\n|   <head>\n|     <meta>\n|   <body>\n|     <p>\n\n"
    assert_parses input, output
  end
  it "092" do
    input = "<head></html><meta><p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <meta>\n|     <p>\n\n"
    assert_parses input, output
  end
  it "093" do
    input = "<b><table><td></b><i></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <table>\n|         <tbody>\n|           <tr>\n|             <td>\n|               <i>\n\n"
    assert_parses input, output
  end
  it "094" do
    input = "<h1><h2>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <h1>\n|     <h2>\n\n"
    assert_parses input, output
  end
  it "095" do
    input = "<a><p><a></a></p></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <p>\n|       <a>\n|       <a>\n\n"
    assert_parses input, output
  end
  it "096" do
    input = "<b><button></b></button></b>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|     <button>\n|       <b>\n\n"
    assert_parses input, output
  end
  it "097" do
    input = "<p><b><div><marquee></p></b></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <b>\n|     <div>\n|       <b>\n|         <marquee>\n|           <p>\n\n"
    assert_parses input, output
  end
  it "098" do
    input = "<script></script></div><title></title><p><p>"
    output = "| <html>\n|   <head>\n|     <script>\n|     <title>\n|   <body>\n|     <p>\n|     <p>\n\n"
    assert_parses input, output
  end
  it "099" do
    input = "<select><b><option><select><option></b></select>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|     <option>\n\n"
    assert_parses input, output
  end
  it "100" do
    input = "<html><head><title></title><body></body></html>"
    output = "| <html>\n|   <head>\n|     <title>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "101" do
    input = "<a><table><td><a><table></table><a></tr><a></table><a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <a>\n|       <table>\n|         <tbody>\n|           <tr>\n|             <td>\n|               <a>\n|                 <table>\n|               <a>\n|     <a>\n\n"
    assert_parses input, output
  end
  it "102" do
    input = "<ul><li></li><div><li></div><li><li><div><li><address><li><b><em></b><li></ul>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ul>\n|       <li>\n|       <div>\n|         <li>\n|       <li>\n|       <li>\n|         <div>\n|       <li>\n|         <address>\n|       <li>\n|         <b>\n|           <em>\n|       <li>\n\n"
    assert_parses input, output
  end
  it "103" do
    input = "<ul><li><ul></li><li>a</li></ul></li></ul>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ul>\n|       <li>\n|         <ul>\n|           <li>\n|             \"a\"\n\n"
    assert_parses input, output
  end
  it "104" do
    input = "<frameset><frame><frameset><frame></frameset><noframes></noframes></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n|     <frame>\n|     <frameset>\n|       <frame>\n|     <noframes>\n\n"
    assert_parses input, output
  end
  it "105" do
    input = "<h1><table><td><h3></table><h3></h1>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <h1>\n|       <table>\n|         <tbody>\n|           <tr>\n|             <td>\n|               <h3>\n|     <h3>\n\n"
    assert_parses input, output
  end
  it "106" do
    input = "<table><colgroup><col><colgroup><col><col><col><colgroup><col><col><thead><tr><td></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n|         <col>\n|       <colgroup>\n|         <col>\n|         <col>\n|         <col>\n|       <colgroup>\n|         <col>\n|         <col>\n|       <thead>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "107" do
    input = "<table><col><tbody><col><tr><col><td><col></table><col>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n|         <col>\n|       <tbody>\n|       <colgroup>\n|         <col>\n|       <tbody>\n|         <tr>\n|       <colgroup>\n|         <col>\n|       <tbody>\n|         <tr>\n|           <td>\n|       <colgroup>\n|         <col>\n\n"
    assert_parses input, output
  end
  it "108" do
    input = "<table><colgroup><tbody><colgroup><tr><colgroup><td><colgroup></table><colgroup>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n|       <tbody>\n|       <colgroup>\n|       <tbody>\n|         <tr>\n|       <colgroup>\n|       <tbody>\n|         <tr>\n|           <td>\n|       <colgroup>\n\n"
    assert_parses input, output
  end
  it "109" do
    input = "</strong></b></em></i></u></strike></s></blink></tt></pre></big></small></font></select></h1></h2></h3></h4></h5></h6></body></br></a></img></title></span></style></script></table></th></td></tr></frame></area></link></param></hr></input></col></base></meta></basefont></bgsound></embed></spacer></p></dd></dt></caption></colgroup></tbody></tfoot></thead></address></blockquote></center></dir></div></dl></fieldset></listing></menu></ol></ul></li></nobr></wbr></form></button></marquee></object></html></frameset></head></iframe></image></isindex></noembed></noframes></noscript></optgroup></option></plaintext></textarea>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <br>\n|     <p>\n\n"
    assert_parses input, output
  end
  it "110" do
    input = "<table><tr></strong></b></em></i></u></strike></s></blink></tt></pre></big></small></font></select></h1></h2></h3></h4></h5></h6></body></br></a></img></title></span></style></script></table></th></td></tr></frame></area></link></param></hr></input></col></base></meta></basefont></bgsound></embed></spacer></p></dd></dt></caption></colgroup></tbody></tfoot></thead></address></blockquote></center></dir></div></dl></fieldset></listing></menu></ol></ul></li></nobr></wbr></form></button></marquee></object></html></frameset></head></iframe></image></isindex></noembed></noframes></noscript></optgroup></option></plaintext></textarea>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <br>\n|     <table>\n|       <tbody>\n|         <tr>\n|     <p>\n\n"
    assert_parses input, output
  end
  it "111" do
    input = "<frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n"
    assert_parses input, output
  end
end
