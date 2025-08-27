require "../spec_helper"

describe "tricky01" do
  it "0" do
    input = "<b><p>Bold </b> Not bold</p>\nAlso not bold."
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|     <p>\n|       <b>\n|         \"Bold \"\n|       \" Not bold\"\n|     \"\nAlso not bold.\"\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<html>\n<font color=red><i>Italic and Red<p>Italic and Red </font> Just italic.</p> Italic only.</i> Plain\n<p>I should not be red. <font color=red>Red. <i>Italic and red.</p>\n<p>Italic and red. </i> Red.</font> I should not be red.</p>\n<b>Bold <i>Bold and italic</b> Only Italic </i> Plain"
    output = "| <html>\n|   <head>\n|   <body>\n|     <font>\n|       color=\"red\"\n|       <i>\n|         \"Italic and Red\"\n|     <i>\n|       <p>\n|         <font>\n|           color=\"red\"\n|           \"Italic and Red \"\n|         \" Just italic.\"\n|       \" Italic only.\"\n|     \" Plain\n\"\n|     <p>\n|       \"I should not be red. \"\n|       <font>\n|         color=\"red\"\n|         \"Red. \"\n|         <i>\n|           \"Italic and red.\"\n|     <font>\n|       color=\"red\"\n|       <i>\n|         \"\n\"\n|     <p>\n|       <font>\n|         color=\"red\"\n|         <i>\n|           \"Italic and red. \"\n|         \" Red.\"\n|       \" I should not be red.\"\n|     \"\n\"\n|     <b>\n|       \"Bold \"\n|       <i>\n|         \"Bold and italic\"\n|     <i>\n|       \" Only Italic \"\n|     \" Plain\"\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<html><body>\n<p><font size=\"7\">First paragraph.</p>\n<p>Second paragraph.</p></font>\n<b><p><i>Bold and Italic</b> Italic</p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"\n\"\n|     <p>\n|       <font>\n|         size=\"7\"\n|         \"First paragraph.\"\n|     <font>\n|       size=\"7\"\n|       \"\n\"\n|       <p>\n|         \"Second paragraph.\"\n|     \"\n\"\n|     <b>\n|     <p>\n|       <b>\n|         <i>\n|           \"Bold and Italic\"\n|       <i>\n|         \" Italic\"\n\n"
    assert_parses input, output
  end
  it "3" do
    input = "<html>\n<dl>\n<dt><b>Boo\n<dd>Goo?\n</dl>\n</html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <dl>\n|       \"\n\"\n|       <dt>\n|         <b>\n|           \"Boo\n\"\n|       <dd>\n|         <b>\n|           \"Goo?\n\"\n|     <b>\n|       \"\n\"\n\n"
    assert_parses input, output
  end
  it "4" do
    input = "<html><body>\n<label><a><div>Hello<div>World</div></a></label>  \n</body></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"\n\"\n|     <label>\n|       <a>\n|       <div>\n|         <a>\n|           \"Hello\"\n|           <div>\n|             \"World\"\n|         \"  \n\"\n\n"
    assert_parses input, output
  end
  it "5" do
    input = "<table><center> <font>a</center> <img> <tr><td> </td> </tr> </table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <center>\n|       \" \"\n|       <font>\n|         \"a\"\n|     <font>\n|       <img>\n|       \" \"\n|     <table>\n|       \" \"\n|       <tbody>\n|         <tr>\n|           <td>\n|             \" \"\n|           \" \"\n|         \" \"\n\n"
    assert_parses input, output
  end
  it "6" do
    input = "<table><tr><p><a><p>You should see this text."
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <a>\n|     <p>\n|       <a>\n|         \"You should see this text.\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "7" do
    input = "<TABLE>\n<TR>\n<CENTER><CENTER><TD></TD></TR><TR>\n<FONT>\n<TABLE><tr></tr></TABLE>\n</P>\n<a></font><font></a>\nThis page contains an insanely badly-nested tag sequence."
    output = "| <html>\n|   <head>\n|   <body>\n|     <center>\n|       <center>\n|     <font>\n|       \"\n\"\n|     <table>\n|       \"\n\"\n|       <tbody>\n|         <tr>\n|           \"\n\"\n|           <td>\n|         <tr>\n|           \"\n\"\n|     <table>\n|       <tbody>\n|         <tr>\n|     <font>\n|       \"\n\"\n|       <p>\n|       \"\n\"\n|       <a>\n|     <a>\n|       <font>\n|     <font>\n|       \"\nThis page contains an insanely badly-nested tag sequence.\"\n\n"
    assert_parses input, output
  end
  it "8" do
    input = "<html>\n<body>\n<b><nobr><div>This text is in a div inside a nobr</nobr>More text that should not be in the nobr, i.e., the\nnobr should have closed the div inside it implicitly. </b><pre>A pre tag outside everything else.</pre>\n</body>\n</html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"\n\"\n|     <b>\n|       <nobr>\n|     <div>\n|       <b>\n|         <nobr>\n|           \"This text is in a div inside a nobr\"\n|         \"More text that should not be in the nobr, i.e., the\nnobr should have closed the div inside it implicitly. \"\n|       <pre>\n|         \"A pre tag outside everything else.\"\n|       \"\n\n\"\n"
    assert_parses input, output
  end
end
