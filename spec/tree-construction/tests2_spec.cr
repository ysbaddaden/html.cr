require "../spec_helper"

describe "tests2" do
  it "00" do
    input = "<!DOCTYPE html>Test"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"Test\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<textarea>test</div>test"
    output = "| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"test</div>test\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<table><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<table><td>test</tbody></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"test\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<frame>test"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"test\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!DOCTYPE html><frameset>test"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!DOCTYPE html><frameset> te st"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|     \"  \"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!DOCTYPE html><frameset></frameset> te st"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   \"  \"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!DOCTYPE html><frameset><!DOCTYPE html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!DOCTYPE html><font><p><b>test</font>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <font>\n|     <p>\n|       <font>\n|         <b>\n|           \"test\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!DOCTYPE html><dt><div><dd>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <dt>\n|       <div>\n|     <dd>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<script></x"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</x\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<table><plaintext><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"<td>\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<plaintext></plaintext>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!DOCTYPE html><table><tr>TEST"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"TEST\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<!DOCTYPE html><body t1=1><body t2=2><body t3=3 t4=4>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     t1=\"1\"\n|     t2=\"2\"\n|     t3=\"3\"\n|     t4=\"4\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "</b test"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!DOCTYPE html></b test<b &=&amp>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!doctypehtml><scrIPt type=text/x-foobar;baz>X</SCRipt"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       type=\"text/x-foobar;baz\"\n|       \"X</SCRipt\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "&"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"&\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "&#"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"&#\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "&#X"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"&#X\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "&#x"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"&#x\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "&#45"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"-\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "&x-test"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"&x-test\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!doctypehtml><p><li>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <li>\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<!doctypehtml><p><dt>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <dt>\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<!doctypehtml><p><dd>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <dd>\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<!doctypehtml><p><form>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <form>\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<!DOCTYPE html><p></P>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "&AMP"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"&\"\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "&AMp;"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"&AMp;\"\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<!DOCTYPE html><html><head></head><body><thisISasillyTESTelementNameToMakeSureCrazyTagNamesArePARSEDcorrectLY>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <thisisasillytestelementnametomakesurecrazytagnamesareparsedcorrectly>\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<!DOCTYPE html>X</body>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"XX\"\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "<!DOCTYPE html><!-- X"
    output = "| <!DOCTYPE html>\n| <!--  X -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "35" do
    input = "<!DOCTYPE html><table><caption>test TEST</caption><td>test"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         \"test TEST\"\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"test\"\n\n"
    assert_parses input, output
  end
  it "36" do
    input = "<!DOCTYPE html><select><option><optgroup>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|       <optgroup>\n\n"
    assert_parses input, output
  end
  it "37" do
    input = "<!DOCTYPE html><select><optgroup><option></optgroup><option><select><option>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <optgroup>\n|         <option>\n|       <option>\n|     <option>\n\n"
    assert_parses input, output
  end
  it "38" do
    input = "<!DOCTYPE html><select><optgroup><option><optgroup>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <optgroup>\n|         <option>\n|       <optgroup>\n\n"
    assert_parses input, output
  end
  it "39" do
    input = "<!DOCTYPE html><datalist><option>foo</datalist>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <datalist>\n|       <option>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "40" do
    input = "<!DOCTYPE html><font><input><input></font>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <font>\n|       <input>\n|       <input>\n\n"
    assert_parses input, output
  end
  it "41" do
    input = "<!DOCTYPE html><!-- XXX - XXX -->"
    output = "| <!DOCTYPE html>\n| <!--  XXX - XXX  -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "42" do
    input = "<!DOCTYPE html><!-- XXX - XXX"
    output = "| <!DOCTYPE html>\n| <!--  XXX - XXX -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "43" do
    input = "<!DOCTYPE html><!-- XXX - XXX - XXX -->"
    output = "| <!DOCTYPE html>\n| <!--  XXX - XXX - XXX  -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "44" do
    input = "<!DOCTYPE html> <!DOCTYPE html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "45" do
    input = "test\ntest"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"test\ntest\"\n\n"
    assert_parses input, output
  end
  it "46" do
    input = "<!DOCTYPE html><body><title>test</body></title>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <title>\n|       \"test</body>\"\n\n"
    assert_parses input, output
  end
  it "47" do
    input = "<!DOCTYPE html><body><title>X</title><meta name=z><link rel=foo><style>\nx { content:\"</style\" } </style>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <title>\n|       \"X\"\n|     <meta>\n|       name=\"z\"\n|     <link>\n|       rel=\"foo\"\n|     <style>\n|       \"\nx { content:\"</style\" } \"\n\n"
    assert_parses input, output
  end
  it "48" do
    input = "<!DOCTYPE html><select><optgroup></optgroup></select>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <optgroup>\n\n"
    assert_parses input, output
  end
  it "49" do
    input = " \n "
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "50" do
    input = "<!DOCTYPE html>  <html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "51" do
    input = "<!DOCTYPE html><script>\n</script>  <title>x</title>  </head>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"\n\"\n|     \"  \"\n|     <title>\n|       \"x\"\n|     \"  \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "52" do
    input = "<!DOCTYPE html><html><body><html id=x>"
    output = "| <!DOCTYPE html>\n| <html>\n|   id=\"x\"\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "53" do
    input = "<!DOCTYPE html>X</body><html id=\"x\">"
    output = "| <!DOCTYPE html>\n| <html>\n|   id=\"x\"\n|   <head>\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "54" do
    input = "<!DOCTYPE html><head><html id=x>"
    output = "| <!DOCTYPE html>\n| <html>\n|   id=\"x\"\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "55" do
    input = "<!DOCTYPE html>X</html>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"XX\"\n\n"
    assert_parses input, output
  end
  it "56" do
    input = "<!DOCTYPE html>X</html> "
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"X \"\n\n"
    assert_parses input, output
  end
  it "57" do
    input = "<!DOCTYPE html>X</html><p>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"X\"\n|     <p>\n|       \"X\"\n\n"
    assert_parses input, output
  end
  it "58" do
    input = "<!DOCTYPE html>X<p/x/y/z>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"X\"\n|     <p>\n|       x=\"\"\n|       y=\"\"\n|       z=\"\"\n\n"
    assert_parses input, output
  end
  it "59" do
    input = "<!DOCTYPE html><!--x--"
    output = "| <!DOCTYPE html>\n| <!-- x -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "60" do
    input = "<!DOCTYPE html><table><tr><td></p></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <p>\n\n"
    assert_parses input, output
  end
  it "61" do
    input = "<!DOCTYPE <!DOCTYPE HTML>><!--<!--x-->-->"
    output = "| <!DOCTYPE <!doctype>\n| <html>\n|   <head>\n|   <body>\n|     \">\"\n|     <!-- <!--x -->\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "62" do
    input = "<!doctype html><div><form></form><div></div></div>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <form>\n|       <div>\n"
    assert_parses input, output
  end
end
