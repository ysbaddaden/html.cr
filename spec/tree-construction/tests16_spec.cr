require "../spec_helper"

describe "tests16" do
  it "000" do
    input = "<!doctype html><script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "001" do
    input = "<!doctype html><script>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "002" do
    input = "<!doctype html><script><"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "003" do
    input = "<!doctype html><script></"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "004" do
    input = "<!doctype html><script></S"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</S\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "005" do
    input = "<!doctype html><script></SC"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</SC\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "006" do
    input = "<!doctype html><script></SCR"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</SCR\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "007" do
    input = "<!doctype html><script></SCRI"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</SCRI\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "008" do
    input = "<!doctype html><script></SCRIP"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</SCRIP\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "009" do
    input = "<!doctype html><script></SCRIPT"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</SCRIPT\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "010" do
    input = "<!doctype html><script></SCRIPT "
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "011" do
    input = "<!doctype html><script></s"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</s\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "012" do
    input = "<!doctype html><script></sc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</sc\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "013" do
    input = "<!doctype html><script></scr"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</scr\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "014" do
    input = "<!doctype html><script></scri"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</scri\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "015" do
    input = "<!doctype html><script></scrip"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</scrip\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "016" do
    input = "<!doctype html><script></script"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"</script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "017" do
    input = "<!doctype html><script></script "
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "018" do
    input = "<!doctype html><script><!"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "019" do
    input = "<!doctype html><script><!a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "020" do
    input = "<!doctype html><script><!-"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!-\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "021" do
    input = "<!doctype html><script><!-a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!-a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "022" do
    input = "<!doctype html><script><!--"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "023" do
    input = "<!doctype html><script><!--a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "024" do
    input = "<!doctype html><script><!--<"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "025" do
    input = "<!doctype html><script><!--<a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "026" do
    input = "<!doctype html><script><!--</"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--</\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "027" do
    input = "<!doctype html><script><!--</script"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--</script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "028" do
    input = "<!doctype html><script><!--</script "
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "029" do
    input = "<!doctype html><script><!--<s"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<s\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "030" do
    input = "<!doctype html><script><!--<script"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "031" do
    input = "<!doctype html><script><!--<script "
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "032" do
    input = "<!doctype html><script><!--<script <"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script <\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "033" do
    input = "<!doctype html><script><!--<script <a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script <a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "034" do
    input = "<!doctype html><script><!--<script </"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "035" do
    input = "<!doctype html><script><!--<script </s"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </s\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "036" do
    input = "<!doctype html><script><!--<script </script"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "037" do
    input = "<!doctype html><script><!--<script </scripta"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </scripta\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "038" do
    input = "<!doctype html><script><!--<script </script "
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "039" do
    input = "<!doctype html><script><!--<script </script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "040" do
    input = "<!doctype html><script><!--<script </script/"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script/\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "041" do
    input = "<!doctype html><script><!--<script </script <"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script <\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "042" do
    input = "<!doctype html><script><!--<script </script <a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script <a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "043" do
    input = "<!doctype html><script><!--<script </script </"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script </\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "044" do
    input = "<!doctype html><script><!--<script </script </script"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script </script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "045" do
    input = "<!doctype html><script><!--<script </script </script "
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "046" do
    input = "<!doctype html><script><!--<script </script </script/"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "047" do
    input = "<!doctype html><script><!--<script </script </script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "048" do
    input = "<!doctype html><script><!--<script -"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "049" do
    input = "<!doctype html><script><!--<script -a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "050" do
    input = "<!doctype html><script><!--<script -<"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -<\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "051" do
    input = "<!doctype html><script><!--<script --"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "052" do
    input = "<!doctype html><script><!--<script --a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "053" do
    input = "<!doctype html><script><!--<script --<"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --<\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "054" do
    input = "<!doctype html><script><!--<script -->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "055" do
    input = "<!doctype html><script><!--<script --><"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --><\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "056" do
    input = "<!doctype html><script><!--<script --></"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --></\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "057" do
    input = "<!doctype html><script><!--<script --></script"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --></script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "058" do
    input = "<!doctype html><script><!--<script --></script "
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "059" do
    input = "<!doctype html><script><!--<script --></script/"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "060" do
    input = "<!doctype html><script><!--<script --></script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "061" do
    input = "<!doctype html><script><!--<script><\\/script>--></script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script><\\/script>-->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "062" do
    input = "<!doctype html><script><!--<script></scr'+'ipt>--></script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></scr'+'ipt>-->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "063" do
    input = "<!doctype html><script><!--<script></script><script></script></script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "064" do
    input = "<!doctype html><script><!--<script></script><script></script>--><!--</script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>--><!--\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "065" do
    input = "<!doctype html><script><!--<script></script><script></script>-- ></script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>-- >\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "066" do
    input = "<!doctype html><script><!--<script></script><script></script>- -></script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>- ->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "067" do
    input = "<!doctype html><script><!--<script></script><script></script>- - ></script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>- - >\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "068" do
    input = "<!doctype html><script><!--<script></script><script></script>-></script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "069" do
    input = "<!doctype html><script><!--<script>--!></script>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script>--!></script>X\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "070" do
    input = "<!doctype html><script><!--<scr'+'ipt></script>--></script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<scr'+'ipt>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "071" do
    input = "<!doctype html><script><!--<script></scr'+'ipt></script>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></scr'+'ipt></script>X\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "072" do
    input = "<!doctype html><style><!--<style></style>--></style>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <style>\n|       \"<!--<style>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "073" do
    input = "<!doctype html><style><!--</style>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <style>\n|       \"<!--\"\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "074" do
    input = "<!doctype html><style><!--...</style>...--></style>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <style>\n|       \"<!--...\"\n|   <body>\n|     \"...-->\"\n\n"
    assert_parses input, output
  end
  it "075" do
    input = "<!doctype html><style><!--<br><html xmlns:v=\"urn:schemas-microsoft-com:vml\"><!--[if !mso]><style></style>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <style>\n|       \"<!--<br><html xmlns:v=\"urn:schemas-microsoft-com:vml\"><!--[if !mso]><style>\"\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "076" do
    input = "<!doctype html><style><!--...<style><!--...--!></style>--></style>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <style>\n|       \"<!--...<style><!--...--!>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "077" do
    input = "<!doctype html><style><!--...</style><!-- --><style>@import ...</style>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <style>\n|       \"<!--...\"\n|     <!--   -->\n|     <style>\n|       \"@import ...\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "078" do
    input = "<!doctype html><style>...<style><!--...</style><!-- --></style>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <style>\n|       \"...<style><!--...\"\n|     <!--   -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "079" do
    input = "<!doctype html><style>...<!--[if IE]><style>...</style>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <style>\n|       \"...<!--[if IE]><style>...\"\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "080" do
    input = "<!doctype html><title><!--<title></title>--></title>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"<!--<title>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "081" do
    input = "<!doctype html><title>&lt;/title></title>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"</title>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "082" do
    input = "<!doctype html><title>foo/title><link></head><body>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"foo/title><link></head><body>X\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "084" do
    input = "<!doctype html><noscript><!--<noscript></noscript>--></noscript>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <noscript>\n|       <!-- <noscript></noscript> -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "086" do
    input = "<!doctype html><noscript><!--</noscript>X<noscript>--></noscript>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <noscript>\n|       <!-- </noscript>X<noscript> -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "088" do
    input = "<!doctype html><noscript><iframe></noscript>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <noscript>\n|   <body>\n|     <iframe>\n|       \"</noscript>X\"\n\n"
    assert_parses input, output
  end
  it "089" do
    input = "<!doctype html><noframes><!--<noframes></noframes>--></noframes>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <noframes>\n|       \"<!--<noframes>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "090" do
    input = "<!doctype html><noframes><body><script><!--...</script></body></noframes></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <noframes>\n|       \"<body><script><!--...</script></body>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "091" do
    input = "<!doctype html><textarea><!--<textarea></textarea>--></textarea>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"<!--<textarea>\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "092" do
    input = "<!doctype html><textarea>&lt;/textarea></textarea>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"</textarea>\"\n\n"
    assert_parses input, output
  end
  it "093" do
    input = "<!doctype html><textarea>&lt;</textarea>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"<\"\n\n"
    assert_parses input, output
  end
  it "094" do
    input = "<!doctype html><textarea>a&lt;b</textarea>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"a<b\"\n\n"
    assert_parses input, output
  end
  it "095" do
    input = "<!doctype html><iframe><!--<iframe></iframe>--></iframe>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <iframe>\n|       \"<!--<iframe>\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "096" do
    input = "<!doctype html><iframe>...<!--X->...<!--/X->...</iframe>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <iframe>\n|       \"...<!--X->...<!--/X->...\"\n\n"
    assert_parses input, output
  end
  it "097" do
    input = "<!doctype html><xmp><!--<xmp></xmp>--></xmp>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <xmp>\n|       \"<!--<xmp>\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "098" do
    input = "<!doctype html><noembed><!--<noembed></noembed>--></noembed>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <noembed>\n|       \"<!--<noembed>\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "099" do
    input = "<script>"
    output = "| <html>\n|   <head>\n|     <script>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "100" do
    input = "<script>a"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "101" do
    input = "<script><"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "102" do
    input = "<script></"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "103" do
    input = "<script></S"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</S\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "104" do
    input = "<script></SC"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</SC\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "105" do
    input = "<script></SCR"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</SCR\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "106" do
    input = "<script></SCRI"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</SCRI\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "107" do
    input = "<script></SCRIP"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</SCRIP\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "108" do
    input = "<script></SCRIPT"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</SCRIPT\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "109" do
    input = "<script></SCRIPT "
    output = "| <html>\n|   <head>\n|     <script>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "110" do
    input = "<script></s"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</s\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "111" do
    input = "<script></sc"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</sc\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "112" do
    input = "<script></scr"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</scr\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "113" do
    input = "<script></scri"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</scri\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "114" do
    input = "<script></scrip"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</scrip\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "115" do
    input = "<script></script"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"</script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "116" do
    input = "<script></script "
    output = "| <html>\n|   <head>\n|     <script>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "117" do
    input = "<script><!"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "118" do
    input = "<script><!a"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "119" do
    input = "<script><!-"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!-\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "120" do
    input = "<script><!-a"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!-a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "121" do
    input = "<script><!--"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "122" do
    input = "<script><!--a"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "123" do
    input = "<script><!--<"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "124" do
    input = "<script><!--<a"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "125" do
    input = "<script><!--</"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--</\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "126" do
    input = "<script><!--</script"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--</script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "127" do
    input = "<script><!--</script "
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "128" do
    input = "<script><!--<s"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<s\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "129" do
    input = "<script><!--<script"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "130" do
    input = "<script><!--<script "
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "131" do
    input = "<script><!--<script <"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script <\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "132" do
    input = "<script><!--<script <a"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script <a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "133" do
    input = "<script><!--<script </"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "134" do
    input = "<script><!--<script </s"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </s\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "135" do
    input = "<script><!--<script </script"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "136" do
    input = "<script><!--<script </scripta"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </scripta\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "137" do
    input = "<script><!--<script </script "
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "138" do
    input = "<script><!--<script </script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "139" do
    input = "<script><!--<script </script/"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script/\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "140" do
    input = "<script><!--<script </script <"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script <\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "141" do
    input = "<script><!--<script </script <a"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script <a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "142" do
    input = "<script><!--<script </script </"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script </\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "143" do
    input = "<script><!--<script </script </script"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script </script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "144" do
    input = "<script><!--<script </script </script "
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "145" do
    input = "<script><!--<script </script </script/"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "146" do
    input = "<script><!--<script </script </script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script </script \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "147" do
    input = "<script><!--<script -"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "148" do
    input = "<script><!--<script -a"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "149" do
    input = "<script><!--<script --"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "150" do
    input = "<script><!--<script --a"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --a\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "151" do
    input = "<script><!--<script -->"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "152" do
    input = "<script><!--<script --><"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --><\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "153" do
    input = "<script><!--<script --></"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --></\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "154" do
    input = "<script><!--<script --></script"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script --></script\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "155" do
    input = "<script><!--<script --></script "
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "156" do
    input = "<script><!--<script --></script/"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "157" do
    input = "<script><!--<script --></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script -->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "158" do
    input = "<script><!--<script><\\/script>--></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script><\\/script>-->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "159" do
    input = "<script><!--<script></scr'+'ipt>--></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></scr'+'ipt>-->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "160" do
    input = "<script><!--<script></script><script></script></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "161" do
    input = "<script><!--<script></script><script></script>--><!--</script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>--><!--\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "162" do
    input = "<script><!--<script></script><script></script>-- ></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>-- >\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "163" do
    input = "<script><!--<script></script><script></script>- -></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>- ->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "164" do
    input = "<script><!--<script></script><script></script>- - ></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>- - >\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "165" do
    input = "<script><!--<script></script><script></script>-></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></script><script></script>->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "166" do
    input = "<script><!--<script>--!></script>X"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script>--!></script>X\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "167" do
    input = "<script><!--<scr'+'ipt></script>--></script>"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<scr'+'ipt>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "168" do
    input = "<script><!--<script></scr'+'ipt></script>X"
    output = "| <html>\n|   <head>\n|     <script>\n|       \"<!--<script></scr'+'ipt></script>X\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "169" do
    input = "<style><!--<style></style>--></style>"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"<!--<style>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "170" do
    input = "<style><!--</style>X"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"<!--\"\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "171" do
    input = "<style><!--...</style>...--></style>"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"<!--...\"\n|   <body>\n|     \"...-->\"\n\n"
    assert_parses input, output
  end
  it "172" do
    input = "<style><!--<br><html xmlns:v=\"urn:schemas-microsoft-com:vml\"><!--[if !mso]><style></style>X"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"<!--<br><html xmlns:v=\"urn:schemas-microsoft-com:vml\"><!--[if !mso]><style>\"\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "173" do
    input = "<style><!--...<style><!--...--!></style>--></style>"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"<!--...<style><!--...--!>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "174" do
    input = "<style><!--...</style><!-- --><style>@import ...</style>"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"<!--...\"\n|     <!--   -->\n|     <style>\n|       \"@import ...\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "175" do
    input = "<style>...<style><!--...</style><!-- --></style>"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"...<style><!--...\"\n|     <!--   -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "176" do
    input = "<style>...<!--[if IE]><style>...</style>X"
    output = "| <html>\n|   <head>\n|     <style>\n|       \"...<!--[if IE]><style>...\"\n|   <body>\n|     \"X\"\n\n"
    assert_parses input, output
  end
  it "177" do
    input = "<title><!--<title></title>--></title>"
    output = "| <html>\n|   <head>\n|     <title>\n|       \"<!--<title>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "178" do
    input = "<title>&lt;/title></title>"
    output = "| <html>\n|   <head>\n|     <title>\n|       \"</title>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "179" do
    input = "<title>foo/title><link></head><body>X"
    output = "| <html>\n|   <head>\n|     <title>\n|       \"foo/title><link></head><body>X\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "181" do
    input = "<noscript><!--<noscript></noscript>--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <!-- <noscript></noscript> -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "183" do
    input = "<noscript><!--</noscript>X<noscript>--></noscript>"
    output = "| <html>\n|   <head>\n|     <noscript>\n|       <!-- </noscript>X<noscript> -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "185" do
    input = "<noscript><iframe></noscript>X"
    output = "| <html>\n|   <head>\n|     <noscript>\n|   <body>\n|     <iframe>\n|       \"</noscript>X\"\n\n"
    assert_parses input, output
  end
  it "186" do
    input = "<noframes><!--<noframes></noframes>--></noframes>"
    output = "| <html>\n|   <head>\n|     <noframes>\n|       \"<!--<noframes>\"\n|   <body>\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "187" do
    input = "<noframes><body><script><!--...</script></body></noframes></html>"
    output = "| <html>\n|   <head>\n|     <noframes>\n|       \"<body><script><!--...</script></body>\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "188" do
    input = "<textarea><!--<textarea></textarea>--></textarea>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"<!--<textarea>\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "189" do
    input = "<textarea>&lt;/textarea></textarea>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <textarea>\n|       \"</textarea>\"\n\n"
    assert_parses input, output
  end
  it "190" do
    input = "<iframe><!--<iframe></iframe>--></iframe>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <iframe>\n|       \"<!--<iframe>\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "191" do
    input = "<iframe>...<!--X->...<!--/X->...</iframe>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <iframe>\n|       \"...<!--X->...<!--/X->...\"\n\n"
    assert_parses input, output
  end
  it "192" do
    input = "<xmp><!--<xmp></xmp>--></xmp>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <xmp>\n|       \"<!--<xmp>\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "193" do
    input = "<noembed><!--<noembed></noembed>--></noembed>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <noembed>\n|       \"<!--<noembed>\"\n|     \"-->\"\n\n"
    assert_parses input, output
  end
  it "194" do
    input = "<!doctype html><table>\n"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       \"\n\"\n\n"
    assert_parses input, output
  end
  it "195" do
    input = "<!doctype html><table><td><span><font></span><span>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <span>\n|               <font>\n|             <font>\n|               <span>\n\n"
    assert_parses input, output
  end
  it "196" do
    input = "<!doctype html><form><table></form><form></table></form>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <form>\n|       <table>\n|         <form>\n"
    assert_parses input, output
  end
end
