require "../spec_helper"

describe "template" do
  it "000" do
    input = "<body><template>Hello</template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         \"Hello\"\n\n"
    assert_parses input, output
  end
  it "001" do
    input = "<template>Hello</template>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         \"Hello\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "002" do
    input = "<template></template><div></div>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|   <body>\n|     <div>\n\n"
    assert_parses input, output
  end
  it "003" do
    input = "<html><template>Hello</template>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         \"Hello\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "004" do
    input = "<head><template><div></div></template></head>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <div>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "005" do
    input = "<div><template><div><span></template><b>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <template>\n|         content\n|           <div>\n|             <span>\n|       <b>\n\n"
    assert_parses input, output
  end
  it "006" do
    input = "<div><template></div>Hello"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <template>\n|         content\n|           \"Hello\"\n\n"
    assert_parses input, output
  end
  it "007" do
    input = "<div></template></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n\n"
    assert_parses input, output
  end
  it "008" do
    input = "<table><template></template></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <template>\n|         content\n\n"
    assert_parses input, output
  end
  it "009" do
    input = "<table><template></template></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <template>\n|         content\n\n"
    assert_parses input, output
  end
  it "010" do
    input = "<table><div><template></template></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <template>\n|         content\n|     <table>\n\n"
    assert_parses input, output
  end
  it "011" do
    input = "<table><template></template><div></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|     <table>\n|       <template>\n|         content\n\n"
    assert_parses input, output
  end
  it "012" do
    input = "<table>   <template></template></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       \"   \"\n|       <template>\n|         content\n\n"
    assert_parses input, output
  end
  it "013" do
    input = "<table><tbody><template></template></tbody>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <template>\n|           content\n\n"
    assert_parses input, output
  end
  it "014" do
    input = "<table><tbody><template></tbody></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <template>\n|           content\n\n"
    assert_parses input, output
  end
  it "015" do
    input = "<table><tbody><template></template></tbody></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <template>\n|           content\n\n"
    assert_parses input, output
  end
  it "016" do
    input = "<table><thead><template></template></thead>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <thead>\n|         <template>\n|           content\n\n"
    assert_parses input, output
  end
  it "017" do
    input = "<table><tfoot><template></template></tfoot>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tfoot>\n|         <template>\n|           content\n\n"
    assert_parses input, output
  end
  it "018" do
    input = "<select><template></template></select>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <template>\n|         content\n\n"
    assert_parses input, output
  end
  it "019" do
    input = "<select><template><option></option></template></select>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <template>\n|         content\n|           <option>\n\n"
    assert_parses input, output
  end
  it "020" do
    input = "<template><option></option></select><option></option></template>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <option>\n|         <option>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "021" do
    input = "<select><template></template><option></select>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <template>\n|         content\n|       <option>\n\n"
    assert_parses input, output
  end
  it "022" do
    input = "<select><option><template></template></select>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|         <template>\n|           content\n\n"
    assert_parses input, output
  end
  it "023" do
    input = "<select><template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <template>\n|         content\n\n"
    assert_parses input, output
  end
  it "024" do
    input = "<select><option></option><template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|       <template>\n|         content\n\n"
    assert_parses input, output
  end
  it "025" do
    input = "<select><option></option><template><option>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|       <template>\n|         content\n|           <option>\n\n"
    assert_parses input, output
  end
  it "026" do
    input = "<table><thead><template><td></template></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <thead>\n|         <template>\n|           content\n|             <td>\n\n"
    assert_parses input, output
  end
  it "027" do
    input = "<table><template><thead></template></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <template>\n|         content\n|           <thead>\n\n"
    assert_parses input, output
  end
  it "028" do
    input = "<body><table><template><td></tr><div></template></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <template>\n|         content\n|           <td>\n|             <div>\n\n"
    assert_parses input, output
  end
  it "029" do
    input = "<table><template><thead></template></thead></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <template>\n|         content\n|           <thead>\n\n"
    assert_parses input, output
  end
  it "030" do
    input = "<table><thead><template><tr></template></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <thead>\n|         <template>\n|           content\n|             <tr>\n\n"
    assert_parses input, output
  end
  it "031" do
    input = "<table><template><tr></template></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <template>\n|         content\n|           <tr>\n\n"
    assert_parses input, output
  end
  it "032" do
    input = "<table><tr><template><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <template>\n|             content\n|               <td>\n\n"
    assert_parses input, output
  end
  it "033" do
    input = "<table><template><tr><template><td></template></tr></template></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <template>\n|         content\n|           <tr>\n|             <template>\n|               content\n|                 <td>\n\n"
    assert_parses input, output
  end
  it "034" do
    input = "<table><template><tr><template><td></td></template></tr></template></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <template>\n|         content\n|           <tr>\n|             <template>\n|               content\n|                 <td>\n\n"
    assert_parses input, output
  end
  it "035" do
    input = "<table><template><td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <template>\n|         content\n|           <td>\n\n"
    assert_parses input, output
  end
  it "036" do
    input = "<body><template><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <td>\n\n"
    assert_parses input, output
  end
  it "037" do
    input = "<body><template><template><tr></tr></template><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <tr>\n|         <td>\n\n"
    assert_parses input, output
  end
  it "038" do
    input = "<table><colgroup><template><col>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n|         <template>\n|           content\n|             <col>\n\n"
    assert_parses input, output
  end
  it "039" do
    input = "<frameset><template><frame></frame></template></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n|     <frame>\n\n"
    assert_parses input, output
  end
  it "040" do
    input = "<template><frame></frame></frameset><frame></frame></template>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|   <body>\n\n"
    assert_parses input, output
  end
  it "041" do
    input = "<template><div><frameset><span></span></div><span></span></template>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <div>\n|           <span>\n|         <span>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "042" do
    input = "<body><template><div><frameset><span></span></div><span></span></template></body>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <div>\n|           <span>\n|         <span>\n\n"
    assert_parses input, output
  end
  it "043" do
    input = "<body><template><script>var i = 1;</script><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <script>\n|           \"var i = 1;\"\n|         <td>\n\n"
    assert_parses input, output
  end
  it "044" do
    input = "<body><template><tr><div></div></tr></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <tr>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "045" do
    input = "<body><template><tr></tr><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <tr>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "046" do
    input = "<body><template><td></td></tr><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <td>\n|         <td>\n\n"
    assert_parses input, output
  end
  it "047" do
    input = "<body><template><td></td><tbody><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <td>\n|         <td>\n\n"
    assert_parses input, output
  end
  it "048" do
    input = "<body><template><td></td><caption></caption><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <td>\n|         <td>\n\n"
    assert_parses input, output
  end
  it "049" do
    input = "<body><template><td></td><colgroup></caption><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <td>\n|         <td>\n\n"
    assert_parses input, output
  end
  it "050" do
    input = "<body><template><td></td></table><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <td>\n|         <td>\n\n"
    assert_parses input, output
  end
  it "051" do
    input = "<body><template><tr></tr><tbody><tr></tr></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <tr>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "052" do
    input = "<body><template><tr></tr><caption><tr></tr></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <tr>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "053" do
    input = "<body><template><tr></tr></table><tr></tr></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <tr>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "054" do
    input = "<body><template><thead></thead><caption></caption><tbody></tbody></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <thead>\n|         <caption>\n|         <tbody>\n\n"
    assert_parses input, output
  end
  it "055" do
    input = "<body><template><thead></thead></table><tbody></tbody></template></body>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <thead>\n|         <tbody>\n\n"
    assert_parses input, output
  end
  it "056" do
    input = "<body><template><div><tr></tr></div></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <div>\n\n"
    assert_parses input, output
  end
  it "057" do
    input = "<body><template><em>Hello</em></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <em>\n|           \"Hello\"\n\n"
    assert_parses input, output
  end
  it "058" do
    input = "<body><template><!--comment--></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <!-- comment -->\n\n"
    assert_parses input, output
  end
  it "059" do
    input = "<body><template><style></style><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <style>\n|         <td>\n\n"
    assert_parses input, output
  end
  it "060" do
    input = "<body><template><meta><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <meta>\n|         <td>\n\n"
    assert_parses input, output
  end
  it "061" do
    input = "<body><template><link><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <link>\n|         <td>\n\n"
    assert_parses input, output
  end
  it "062" do
    input = "<body><table><colgroup><template><col></col></template></colgroup></table></body>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n|         <template>\n|           content\n|             <col>\n\n"
    assert_parses input, output
  end
  it "063" do
    input = "<body a=b><template><div></div><body c=d><div></div></body></template></body>"
    output = "| <html>\n|   <head>\n|   <body>\n|     a=\"b\"\n|     <template>\n|       content\n|         <div>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "064" do
    input = "<html a=b><template><div><html b=c><span></template>"
    output = "| <html>\n|   a=\"b\"\n|   <head>\n|     <template>\n|       content\n|         <div>\n|           <span>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "065" do
    input = "<html a=b><template><col></col><html b=c><col></col></template>"
    output = "| <html>\n|   a=\"b\"\n|   <head>\n|     <template>\n|       content\n|         <col>\n|         <col>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "066" do
    input = "<html a=b><template><frame></frame><html b=c><frame></frame></template>"
    output = "| <html>\n|   a=\"b\"\n|   <head>\n|     <template>\n|       content\n|   <body>\n\n"
    assert_parses input, output
  end
  it "067" do
    input = "<body><template><tr></tr><template></template><td></td></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <tr>\n|         <template>\n|           content\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "068" do
    input = "<body><template><thead></thead><template><tr></tr></template><tr></tr><tfoot></tfoot></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <thead>\n|         <template>\n|           content\n|             <tr>\n|         <tbody>\n|           <tr>\n|         <tfoot>\n\n"
    assert_parses input, output
  end
  it "069" do
    input = "<body><template><template><b><template></template></template>text</template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <b>\n|               <template>\n|                 content\n|         \"text\"\n\n"
    assert_parses input, output
  end
  it "070" do
    input = "<body><template><col><colgroup>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <col>\n\n"
    assert_parses input, output
  end
  it "071" do
    input = "<body><template><col></colgroup>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <col>\n\n"
    assert_parses input, output
  end
  it "072" do
    input = "<body><template><col><colgroup></template></body>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <col>\n\n"
    assert_parses input, output
  end
  it "073" do
    input = "<body><template><col><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <col>\n\n"
    assert_parses input, output
  end
  it "074" do
    input = "<body><template><col></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <col>\n\n"
    assert_parses input, output
  end
  it "075" do
    input = "<body><template><col>Hello"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <col>\n\n"
    assert_parses input, output
  end
  it "076" do
    input = "<body><template><i><menu>Foo</i>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <i>\n|         <menu>\n|           <i>\n|             \"Foo\"\n\n"
    assert_parses input, output
  end
  it "077" do
    input = "<body><template></div><div>Foo</div><template></template><tr></tr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n|         <div>\n|           \"Foo\"\n|         <template>\n|           content\n\n"
    assert_parses input, output
  end
  it "078" do
    input = "<body><div><template></div><tr><td>Foo</td></tr></template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <template>\n|         content\n|           <tr>\n|             <td>\n|               \"Foo\"\n\n"
    assert_parses input, output
  end
  it "079" do
    input = "<template></figcaption><sub><table></table>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <sub>\n|           <table>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "080" do
    input = "<template><template>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|   <body>\n\n"
    assert_parses input, output
  end
  it "081" do
    input = "<template><div>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <div>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "082" do
    input = "<template><template><div>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <div>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "083" do
    input = "<template><template><table>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <table>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "084" do
    input = "<template><template><tbody>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <tbody>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "085" do
    input = "<template><template><tr>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <tr>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "086" do
    input = "<template><template><td>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <td>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "087" do
    input = "<template><template><caption>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <caption>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "088" do
    input = "<template><template><colgroup>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <colgroup>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "089" do
    input = "<template><template><col>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <col>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "090" do
    input = "<template><template><tbody><select>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <tbody>\n|             <select>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "091" do
    input = "<template><template><table>Foo"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             \"Foo\"\n|             <table>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "092" do
    input = "<template><template><frame>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|   <body>\n\n"
    assert_parses input, output
  end
  it "093" do
    input = "<template><template><script>var i"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <script>\n|               \"var i\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "094" do
    input = "<template><template><style>var i"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <template>\n|           content\n|             <style>\n|               \"var i\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "095" do
    input = "<template><table></template><body><span>Foo"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <table>\n|   <body>\n|     <span>\n|       \"Foo\"\n\n"
    assert_parses input, output
  end
  it "096" do
    input = "<template><td></template><body><span>Foo"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <td>\n|   <body>\n|     <span>\n|       \"Foo\"\n\n"
    assert_parses input, output
  end
  it "097" do
    input = "<template><object></template><body><span>Foo"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <object>\n|   <body>\n|     <span>\n|       \"Foo\"\n\n"
    assert_parses input, output
  end
  it "098" do
    input = "<template><svg><template>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <svg svg>\n|           <svg template>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "099" do
    input = "<template><svg><foo><template><foreignObject><div></template><div>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <svg svg>\n|           <svg foo>\n|             <svg template>\n|               <svg foreignObject>\n|                 <div>\n|   <body>\n|     <div>\n\n"
    assert_parses input, output
  end
  it "100" do
    input = "<dummy><template><span></dummy>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <dummy>\n|       <template>\n|         content\n|           <span>\n\n"
    assert_parses input, output
  end
  it "101" do
    input = "<body><table><tr><td><select><template>Foo</template><caption>A</table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|               <template>\n|                 content\n|                   \"Foo\"\n|       <caption>\n|         \"A\"\n\n"
    assert_parses input, output
  end
  it "102" do
    input = "<body></body><template>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <template>\n|       content\n\n"
    assert_parses input, output
  end
  it "103" do
    input = "<head></head><template>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|   <body>\n\n"
    assert_parses input, output
  end
  it "104" do
    input = "<head></head><template>Foo</template>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         \"Foo\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "105" do
    input = "<html><head></head><template></template><head>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|   <body>\n\n"
    assert_parses input, output
  end
  it "106" do
    input = "<!DOCTYPE HTML><dummy><table><template><table><template><table><script>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <dummy>\n|       <table>\n|         <template>\n|           content\n|             <table>\n|               <template>\n|                 content\n|                   <table>\n|                     <script>\n\n"
    assert_parses input, output
  end
  it "107" do
    input = "<template><a><table><a>"
    output = "| <html>\n|   <head>\n|     <template>\n|       content\n|         <a>\n|           <a>\n|           <table>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "108" do
    skip "missing support for #document-fragment"
  end
  it "109" do
    input = "<!DOCTYPE HTML><template><tr><td>cell</td></tr></template>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <template>\n|       content\n|         <tr>\n|           <td>\n|             \"cell\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "110" do
    input = "<!DOCTYPE HTML><template> <tr> <td>cell</td> </tr> </template>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <template>\n|       content\n|         \" \"\n|         <tr>\n|           \" \"\n|           <td>\n|             \"cell\"\n|           \" \"\n|         \" \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "111" do
    input = "<!DOCTYPE HTML><template><tr><td>cell</td></tr>a</template>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <template>\n|       content\n|         <tr>\n|           <td>\n|             \"cell\"\n|         \"a\"\n|   <body>\n"
    assert_parses input, output
  end
end
