require "../spec_helper"

describe "tests19" do
  it "000" do
    input = "<!doctype html><math><mn DefinitionUrl=\"foo\">"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mn>\n|         definitionURL=\"foo\"\n\n"
    assert_parses input, output
  end
  it "001" do
    input = "<!doctype html><html></p><!--foo-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <!-- foo -->\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "002" do
    input = "<!doctype html><head></head></p><!--foo-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <!-- foo -->\n|   <body>\n\n"
    assert_parses input, output
  end
  it "003" do
    input = "<!doctype html><body><p><pre>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <pre>\n\n"
    assert_parses input, output
  end
  it "004" do
    input = "<!doctype html><body><p><listing>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <listing>\n\n"
    assert_parses input, output
  end
  it "005" do
    input = "<!doctype html><p><plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <plaintext>\n\n"
    assert_parses input, output
  end
  it "006" do
    input = "<!doctype html><p><h1>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <h1>\n\n"
    assert_parses input, output
  end
  it "007" do
    input = "<!doctype html><isindex type=\"hidden\">"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <isindex>\n|       type=\"hidden\"\n\n"
    assert_parses input, output
  end
  it "008" do
    input = "<!doctype html><ruby><p><rp>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <p>\n|       <rp>\n\n"
    assert_parses input, output
  end
  it "009" do
    input = "<!doctype html><ruby><div><span><rp>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <div>\n|         <span>\n|           <rp>\n\n"
    assert_parses input, output
  end
  it "010" do
    input = "<!doctype html><ruby><div><p><rp>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <div>\n|         <p>\n|         <rp>\n\n"
    assert_parses input, output
  end
  it "011" do
    input = "<!doctype html><ruby><p><rt>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <p>\n|       <rt>\n\n"
    assert_parses input, output
  end
  it "012" do
    input = "<!doctype html><ruby><div><span><rt>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <div>\n|         <span>\n|           <rt>\n\n"
    assert_parses input, output
  end
  it "013" do
    input = "<!doctype html><ruby><div><p><rt>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       <div>\n|         <p>\n|         <rt>\n\n"
    assert_parses input, output
  end
  it "014" do
    input = "<html><ruby>a<rb>b<rt></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rb>\n|         \"b\"\n|       <rt>\n\n"
    assert_parses input, output
  end
  it "015" do
    input = "<html><ruby>a<rp>b<rt></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rp>\n|         \"b\"\n|       <rt>\n\n"
    assert_parses input, output
  end
  it "016" do
    input = "<html><ruby>a<rt>b<rt></ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rt>\n|         \"b\"\n|       <rt>\n\n"
    assert_parses input, output
  end
  it "017" do
    input = "<html><ruby>a<rtc>b<rt>c<rb>d</ruby></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <ruby>\n|       \"a\"\n|       <rtc>\n|         \"b\"\n|         <rt>\n|           \"c\"\n|       <rb>\n|         \"d\"\n\n"
    assert_parses input, output
  end
  it "018" do
    input = "<!doctype html><math/><foo>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|     <foo>\n\n"
    assert_parses input, output
  end
  it "019" do
    input = "<!doctype html><svg/><foo>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <foo>\n\n"
    assert_parses input, output
  end
  it "020" do
    input = "<!doctype html><div></body><!--foo-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <div>\n|   <!-- foo -->\n\n"
    assert_parses input, output
  end
  it "021" do
    input = "<!doctype html><h1><div><h3><span></h1>foo"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <h1>\n|       <div>\n|         <h3>\n|           <span>\n|         \"foo\"\n\n"
    assert_parses input, output
  end
  it "022" do
    input = "<!doctype html><p></h3>foo"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n\n"
    assert_parses input, output
  end
  it "023" do
    input = "<!doctype html><h3><li>abc</h2>foo"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <h3>\n|       <li>\n|         \"abc\"\n|     \"foo\"\n\n"
    assert_parses input, output
  end
  it "024" do
    input = "<!doctype html><table>abc<!--foo-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"abc\"\n|     <table>\n|       <!-- foo -->\n\n"
    assert_parses input, output
  end
  it "025" do
    input = "<!doctype html><table>  <!--foo-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       \"  \"\n|       <!-- foo -->\n\n"
    assert_parses input, output
  end
  it "026" do
    input = "<!doctype html><table> b <!--foo-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \" b \"\n|     <table>\n|       <!-- foo -->\n\n"
    assert_parses input, output
  end
  it "027" do
    input = "<!doctype html><select><option><option>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|       <option>\n\n"
    assert_parses input, output
  end
  it "028" do
    input = "<!doctype html><select><option></optgroup>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n\n"
    assert_parses input, output
  end
  it "029" do
    input = "<!doctype html><dd><optgroup><dd>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <dd>\n|       <optgroup>\n|     <dd>\n\n"
    assert_parses input, output
  end
  it "030" do
    input = "<!doctype html><p><math><mi><p><h1>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <math math>\n|         <math mi>\n|           <p>\n|           <h1>\n\n"
    assert_parses input, output
  end
  it "031" do
    input = "<!doctype html><p><math><mo><p><h1>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <math math>\n|         <math mo>\n|           <p>\n|           <h1>\n\n"
    assert_parses input, output
  end
  it "032" do
    input = "<!doctype html><p><math><mn><p><h1>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <math math>\n|         <math mn>\n|           <p>\n|           <h1>\n\n"
    assert_parses input, output
  end
  it "033" do
    input = "<!doctype html><p><math><ms><p><h1>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <math math>\n|         <math ms>\n|           <p>\n|           <h1>\n\n"
    assert_parses input, output
  end
  it "034" do
    input = "<!doctype html><p><math><mtext><p><h1>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <math math>\n|         <math mtext>\n|           <p>\n|           <h1>\n\n"
    assert_parses input, output
  end
  it "035" do
    input = "<!doctype html><frameset></noframes>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "036" do
    input = "<!doctype html><html c=d><body></html><html a=b>"
    output = "| <!DOCTYPE html>\n| <html>\n|   a=\"b\"\n|   c=\"d\"\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "037" do
    input = "<!doctype html><html c=d><frameset></frameset></html><html a=b>"
    output = "| <!DOCTYPE html>\n| <html>\n|   a=\"b\"\n|   c=\"d\"\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "038" do
    input = "<!doctype html><html><frameset></frameset></html><!--foo-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n| <!-- foo -->\n\n"
    assert_parses input, output
  end
  it "039" do
    input = "<!doctype html><html><frameset></frameset></html>  "
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   \"  \"\n\n"
    assert_parses input, output
  end
  it "040" do
    input = "<!doctype html><html><frameset></frameset></html>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "041" do
    input = "<!doctype html><html><frameset></frameset></html><p>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "042" do
    input = "<!doctype html><html><frameset></frameset></html></p>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "043" do
    input = "<html><frameset></frameset></html><!doctype html>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "044" do
    input = "<!doctype html><body><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "045" do
    input = "<!doctype html><p><frameset><frame>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|     <frame>\n\n"
    assert_parses input, output
  end
  it "046" do
    input = "<!doctype html><p>a<frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"a\"\n\n"
    assert_parses input, output
  end
  it "047" do
    input = "<!doctype html><p> <frameset><frame>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|     <frame>\n\n"
    assert_parses input, output
  end
  it "048" do
    input = "<!doctype html><pre><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n\n"
    assert_parses input, output
  end
  it "049" do
    input = "<!doctype html><listing><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <listing>\n\n"
    assert_parses input, output
  end
  it "050" do
    input = "<!doctype html><li><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <li>\n\n"
    assert_parses input, output
  end
  it "051" do
    input = "<!doctype html><dd><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <dd>\n\n"
    assert_parses input, output
  end
  it "052" do
    input = "<!doctype html><dt><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <dt>\n\n"
    assert_parses input, output
  end
  it "053" do
    input = "<!doctype html><button><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <button>\n\n"
    assert_parses input, output
  end
  it "054" do
    input = "<!doctype html><applet><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <applet>\n\n"
    assert_parses input, output
  end
  it "055" do
    input = "<!doctype html><marquee><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <marquee>\n\n"
    assert_parses input, output
  end
  it "056" do
    input = "<!doctype html><object><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <object>\n\n"
    assert_parses input, output
  end
  it "057" do
    input = "<!doctype html><table><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "058" do
    input = "<!doctype html><area><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <area>\n\n"
    assert_parses input, output
  end
  it "059" do
    input = "<!doctype html><basefont><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <basefont>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "060" do
    input = "<!doctype html><bgsound><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <bgsound>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "061" do
    input = "<!doctype html><br><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <br>\n\n"
    assert_parses input, output
  end
  it "062" do
    input = "<!doctype html><embed><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <embed>\n\n"
    assert_parses input, output
  end
  it "063" do
    input = "<!doctype html><img><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <img>\n\n"
    assert_parses input, output
  end
  it "064" do
    input = "<!doctype html><input><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <input>\n\n"
    assert_parses input, output
  end
  it "065" do
    input = "<!doctype html><keygen><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <keygen>\n\n"
    assert_parses input, output
  end
  it "066" do
    input = "<!doctype html><wbr><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <wbr>\n\n"
    assert_parses input, output
  end
  it "067" do
    input = "<!doctype html><hr><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <hr>\n\n"
    assert_parses input, output
  end
  it "068" do
    input = "<!doctype html><textarea></textarea><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <textarea>\n\n"
    assert_parses input, output
  end
  it "069" do
    input = "<!doctype html><xmp></xmp><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <xmp>\n\n"
    assert_parses input, output
  end
  it "070" do
    input = "<!doctype html><iframe></iframe><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <iframe>\n\n"
    assert_parses input, output
  end
  it "071" do
    input = "<!doctype html><select></select><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "072" do
    input = "<!doctype html><svg></svg><frameset><frame>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|     <frame>\n\n"
    assert_parses input, output
  end
  it "073" do
    input = "<!doctype html><math></math><frameset><frame>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|     <frame>\n\n"
    assert_parses input, output
  end
  it "074" do
    input = "<!doctype html><svg><foreignObject><div> <frameset><frame>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|     <frame>\n\n"
    assert_parses input, output
  end
  it "075" do
    input = "<!doctype html><svg>a</svg><frameset><frame>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       \"a\"\n\n"
    assert_parses input, output
  end
  it "076" do
    input = "<!doctype html><svg> </svg><frameset><frame>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|     <frame>\n\n"
    assert_parses input, output
  end
  it "077" do
    input = "<html>aaa<frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"aaa\"\n\n"
    assert_parses input, output
  end
  it "078" do
    input = "<html> a <frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"a \"\n\n"
    assert_parses input, output
  end
  it "079" do
    input = "<!doctype html><div><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "080" do
    input = "<!doctype html><div><body><frameset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <div>\n\n"
    assert_parses input, output
  end
  it "081" do
    input = "<!doctype html><p><math></p>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <math math>\n|     \"a\"\n\n"
    assert_parses input, output
  end
  it "082" do
    input = "<!doctype html><p><math><mn><span></p>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <math math>\n|         <math mn>\n|           <span>\n|             <p>\n|             \"a\"\n\n"
    assert_parses input, output
  end
  it "083" do
    input = "<!doctype html><math></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n\n"
    assert_parses input, output
  end
  it "084" do
    input = "<!doctype html><meta charset=\"ascii\">"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <meta>\n|       charset=\"ascii\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "085" do
    input = "<!doctype html><meta http-equiv=\"content-type\" content=\"text/html;charset=ascii\">"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <meta>\n|       content=\"text/html;charset=ascii\"\n|       http-equiv=\"content-type\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "086" do
    input = "<!doctype html><head><!--aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa--><meta charset=\"utf8\">"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->\n|     <meta>\n|       charset=\"utf8\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "087" do
    input = "<!doctype html><html a=b><head></head><html c=d>"
    output = "| <!DOCTYPE html>\n| <html>\n|   a=\"b\"\n|   c=\"d\"\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "088" do
    input = "<!doctype html><image/>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <img>\n\n"
    assert_parses input, output
  end
  it "089" do
    input = "<!doctype html>a<i>b<table>c<b>d</i>e</b>f"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"a\"\n|     <i>\n|       \"bc\"\n|       <b>\n|         \"de\"\n|       \"f\"\n|       <table>\n\n"
    assert_parses input, output
  end
  it "090" do
    input = "<!doctype html><table><i>a<b>b<div>c<a>d</i>e</b>f"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <i>\n|       \"a\"\n|       <b>\n|         \"b\"\n|     <b>\n|     <div>\n|       <b>\n|         <i>\n|           \"c\"\n|           <a>\n|             \"d\"\n|         <a>\n|           \"e\"\n|       <a>\n|         \"f\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "091" do
    input = "<!doctype html><i>a<b>b<div>c<a>d</i>e</b>f"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <i>\n|       \"a\"\n|       <b>\n|         \"b\"\n|     <b>\n|     <div>\n|       <b>\n|         <i>\n|           \"c\"\n|           <a>\n|             \"d\"\n|         <a>\n|           \"e\"\n|       <a>\n|         \"f\"\n\n"
    assert_parses input, output
  end
  it "092" do
    input = "<!doctype html><table><i>a<b>b<div>c</i>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <i>\n|       \"a\"\n|       <b>\n|         \"b\"\n|     <b>\n|       <div>\n|         <i>\n|           \"c\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "093" do
    input = "<!doctype html><table><i>a<div>b<tr>c<b>d</i>e"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <i>\n|       \"a\"\n|       <div>\n|         \"b\"\n|     <i>\n|       \"c\"\n|       <b>\n|         \"d\"\n|     <b>\n|       \"e\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "094" do
    input = "<!doctype html><table><td><table><i>a<div>b<b>c</i>d"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <i>\n|               \"a\"\n|             <div>\n|               <i>\n|                 \"b\"\n|                 <b>\n|                   \"c\"\n|               <b>\n|                 \"d\"\n|             <table>\n\n"
    assert_parses input, output
  end
  it "095" do
    input = "<!doctype html><body><bgsound>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <bgsound>\n\n"
    assert_parses input, output
  end
  it "096" do
    input = "<!doctype html><body><basefont>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <basefont>\n\n"
    assert_parses input, output
  end
  it "097" do
    input = "<!doctype html><a><b></a><basefont>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <b>\n|     <basefont>\n\n"
    assert_parses input, output
  end
  it "098" do
    input = "<!doctype html><a><b></a><bgsound>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <a>\n|       <b>\n|     <bgsound>\n\n"
    assert_parses input, output
  end
  it "099" do
    input = "<!doctype html><figcaption><article></figcaption>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <figcaption>\n|       <article>\n|     \"a\"\n\n"
    assert_parses input, output
  end
  it "100" do
    input = "<!doctype html><summary><article></summary>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <summary>\n|       <article>\n|     \"a\"\n\n"
    assert_parses input, output
  end
  it "101" do
    input = "<!doctype html><p><a><plaintext>b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <a>\n|     <plaintext>\n|       <a>\n|         \"b\"\n\n"
    assert_parses input, output
  end
  it "102" do
    input = "<!DOCTYPE html><div>a<a></div>b<p>c</p>d"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"a\"\n|       <a>\n|     <a>\n|       \"b\"\n|       <p>\n|         \"c\"\n|       \"d\"\n"
    assert_parses input, output
  end
end
