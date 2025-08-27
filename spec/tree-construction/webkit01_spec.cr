require "../spec_helper"

describe "webkit01" do
  it "00" do
    input = "Test"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"Test\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<div></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<div>Test</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"Test\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<di"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<div>Hello</div>\n<script>\nconsole.log(\"PASS\");\n</script>\n<div>Bye</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"Hello\"\n|     \"\n\"\n|     <script>\n|       \"\nconsole.log(\"PASS\");\n\"\n|     \"\n\"\n|     <div>\n|       \"Bye\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<div foo=\"bar\">Hello</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       foo=\"bar\"\n|       \"Hello\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<div>Hello</div>\n<script>\nconsole.log(\"FOO<span>BAR</span>BAZ\");\n</script>\n<div>Bye</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"Hello\"\n|     \"\n\"\n|     <script>\n|       \"\nconsole.log(\"FOO<span>BAR</span>BAZ\");\n\"\n|     \"\n\"\n|     <div>\n|       \"Bye\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<foo bar=\"baz\"></foo><potato quack=\"duck\"></potato>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <foo>\n|       bar=\"baz\"\n|     <potato>\n|       quack=\"duck\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<foo bar=\"baz\"><potato quack=\"duck\"></potato></foo>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <foo>\n|       bar=\"baz\"\n|       <potato>\n|         quack=\"duck\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<foo></foo bar=\"baz\"><potato></potato quack=\"duck\">"
    output = "| <html>\n|   <head>\n|   <body>\n|     <foo>\n|     <potato>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "</ tttt>"
    output = "| <!--  tttt -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<div FOO ><img><img></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       foo=\"\"\n|       <img>\n|       <img>\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<p>Test</p<p>Test2</p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"TestTest2\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<rdar://problem/6869687>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <rdar:>\n|       6869687=\"\"\n|       problem=\"\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<A>test< /A>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|       \"test< /A>\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "&lt;"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"<\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<body foo='bar'><body foo='baz' yo='mama'>"
    output = "| <html>\n|   <head>\n|   <body>\n|     foo=\"bar\"\n|     yo=\"mama\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<body></br foo=\"bar\"></body>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <br>\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<bdy><br foo=\"bar\"></body>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <bdy>\n|       <br>\n|         foo=\"bar\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<body></body></br foo=\"bar\">"
    output = "| <html>\n|   <head>\n|   <body>\n|     <br>\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<bdy></body><br foo=\"bar\">"
    output = "| <html>\n|   <head>\n|   <body>\n|     <bdy>\n|       <br>\n|         foo=\"bar\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<html><body></body></html><!-- Hi there -->"
    output = "| <html>\n|   <head>\n|   <body>\n| <!--  Hi there  -->\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<html><body></body></html><!-- Comment A --><!-- Comment B --><!-- Comment C --><!-- Comment D --><!-- Comment E -->"
    output = "| <html>\n|   <head>\n|   <body>\n| <!--  Comment A  -->\n| <!--  Comment B  -->\n| <!--  Comment C  -->\n| <!--  Comment D  -->\n| <!--  Comment E  -->\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<html><body></body></html>x<!-- Hi there -->"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"x\"\n|     <!--  Hi there  -->\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<html><body></body></html>x<!-- Hi there --></html><!-- Again -->"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"x\"\n|     <!--  Hi there  -->\n| <!--  Again  -->\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<html><body></body></html>x<!-- Hi there --></body></html><!-- Again -->"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"x\"\n|     <!--  Hi there  -->\n| <!--  Again  -->\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<html><body></body>\n   <!-- Hi there --></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"\n   \"\n|   <!--  Hi there  -->\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<html><body></body></html>\n   <!-- Hi there -->"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"\n   \"\n| <!--  Hi there  -->\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<html><body><ruby><div><rp>xx</rp></div></ruby></body></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <div>\n|         <rp>\n|           \"xx\"\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<html><body><ruby><div><rt>xx</rt></div></ruby></body></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <div>\n|         <rt>\n|           \"xx\"\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<html><frameset><!--1--><noframes>A</noframes><!--2--></frameset><!--3--><noframes>B</noframes><!--4--></html><!--5--><noframes>C</noframes><!--6-->"
    output = "| <html>\n|   <head>\n|   <frameset>\n|     <!-- 1 -->\n|     <noframes>\n|       \"A\"\n|     <!-- 2 -->\n|   <!-- 3 -->\n|   <noframes>\n|     \"B\"\n|   <!-- 4 -->\n|   <noframes>\n|     \"C\"\n| <!-- 5 -->\n| <!-- 6 -->\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "<select><option>A<select><option>B<select><option>C<select><option>D<select><option>E<select><option>F<select><option>G<select>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|         \"A\"\n|     <option>\n|       \"B\"\n|       <select>\n|         <option>\n|           \"C\"\n|     <option>\n|       \"D\"\n|       <select>\n|         <option>\n|           \"E\"\n|     <option>\n|       \"F\"\n|       <select>\n|         <option>\n|           \"G\"\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<dd><dd><dt><dt><dd><li><li>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <dd>\n|     <dd>\n|     <dt>\n|     <dt>\n|     <dd>\n|       <li>\n|       <li>\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<div><b></div><div><nobr>a<nobr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <b>\n|     <div>\n|       <b>\n|         <nobr>\n|           \"a\"\n|         <nobr>\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "<head></head>\n<body></body>"
    output = "| <html>\n|   <head>\n|   \"\n\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "35" do
    input = "<head></head> <style></style>ddd"
    output = "| <html>\n|   <head>\n|     <style>\n|   \" \"\n|   <body>\n|     \"ddd\"\n\n"
    assert_parses input, output
  end
  it "36" do
    input = "<kbd><table></kbd><col><select><tr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <kbd>\n|       <select>\n|       <table>\n|         <colgroup>\n|           <col>\n|         <tbody>\n|           <tr>\n\n"
    assert_parses input, output
  end
  it "37" do
    input = "<kbd><table></kbd><col><select><tr></table><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <kbd>\n|       <select>\n|       <table>\n|         <colgroup>\n|           <col>\n|         <tbody>\n|           <tr>\n|       <div>\n\n"
    assert_parses input, output
  end
  it "38" do
    input = "<a><li><style></style><title></title></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <li>\n|       <a>\n|         <style>\n|         <title>\n\n"
    assert_parses input, output
  end
  it "39" do
    input = "<font></p><p><meta><title></title></font>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <font>\n|       <p>\n|     <p>\n|       <font>\n|         <meta>\n|         <title>\n\n"
    assert_parses input, output
  end
  it "40" do
    input = "<a><center><title></title><a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <center>\n|       <a>\n|         <title>\n|       <a>\n\n"
    assert_parses input, output
  end
  it "41" do
    input = "<svg><title><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg title>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "42" do
    input = "<svg><title><rect><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg title>\n|         <rect>\n|           <div>\n\n"
    assert_parses input, output
  end
  it "43" do
    input = "<svg><title><svg><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg title>\n|         <svg svg>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "44" do
    input = "<img <=\"\" FAIL>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <img>\n|       <=\"\"\n|       fail=\"\"\n\n"
    assert_parses input, output
  end
  it "45" do
    input = "<ul><li><div id='foo'/>A</li><li>B<div>C</div></li></ul>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ul>\n|       <li>\n|         <div>\n|           id=\"foo\"\n|           \"A\"\n|       <li>\n|         \"B\"\n|         <div>\n|           \"C\"\n\n"
    assert_parses input, output
  end
  it "46" do
    input = "<svg><em><desc></em>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <em>\n|       <desc>\n\n"
    assert_parses input, output
  end
  it "47" do
    input = "<table><tr><td><svg><desc><td></desc><circle>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg desc>\n|           <td>\n|             <circle>\n\n"
    assert_parses input, output
  end
  it "48" do
    input = "<svg><tfoot></mi><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg tfoot>\n|         <svg td>\n\n"
    assert_parses input, output
  end
  it "49" do
    input = "<math><mrow><mrow><mn>1</mn></mrow><mi>a</mi></mrow></math>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mrow>\n|         <math mrow>\n|           <math mn>\n|             \"1\"\n|         <math mi>\n|           \"a\"\n\n"
    assert_parses input, output
  end
  it "50" do
    input = "<!doctype html><input type=\"hidden\"><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "51" do
    input = "<!doctype html><input type=\"button\"><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <input>\n|       type=\"button\"\n"
    assert_parses input, output
  end
end
