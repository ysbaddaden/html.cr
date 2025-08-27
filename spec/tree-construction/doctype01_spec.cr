require "../spec_helper"

describe "doctype01" do
  it "00" do
    input = "<!DOCTYPE html>Hello"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!dOctYpE HtMl>Hello"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!DOCTYPEhtml>Hello"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!DOCTYPE>Hello"
    output = "| <!DOCTYPE >\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!DOCTYPE >Hello"
    output = "| <!DOCTYPE >\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!DOCTYPE potato>Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!DOCTYPE potato >Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!DOCTYPE potato taco>Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!DOCTYPE potato taco \"ddd>Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!DOCTYPE potato sYstEM>Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!DOCTYPE potato sYstEM    >Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!DOCTYPE   potato       sYstEM  ggg>Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!DOCTYPE potato SYSTEM taco  >Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!DOCTYPE potato SYSTEM 'taco\"'>Hello"
    output = "| <!DOCTYPE potato \"\" \"taco\"\">\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!DOCTYPE potato SYSTEM \"taco\">Hello"
    output = "| <!DOCTYPE potato \"\" \"taco\">\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<!DOCTYPE potato SYSTEM \"tai'co\">Hello"
    output = "| <!DOCTYPE potato \"\" \"tai'co\">\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!DOCTYPE potato SYSTEMtaco \"ddd\">Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!DOCTYPE potato grass SYSTEM taco>Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!DOCTYPE potato pUbLIc>Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!DOCTYPE potato pUbLIc >Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<!DOCTYPE potato pUbLIcgoof>Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<!DOCTYPE potato PUBLIC goof>Hello"
    output = "| <!DOCTYPE potato>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<!DOCTYPE potato PUBLIC \"go'of\">Hello"
    output = "| <!DOCTYPE potato \"go'of\" \"\">\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<!DOCTYPE potato PUBLIC 'go'of'>Hello"
    output = "| <!DOCTYPE potato \"go\" \"\">\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<!DOCTYPE potato PUBLIC 'go:hh   of' >Hello"
    output = "| <!DOCTYPE potato \"go:hh   of\" \"\">\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!DOCTYPE potato PUBLIC \"W3C-//dfdf\" SYSTEM ggg>Hello"
    output = "| <!DOCTYPE potato \"W3C-//dfdf\" \"\">\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\n   \"http://www.w3.org/TR/html4/strict.dtd\">Hello"
    output = "| <!DOCTYPE html \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<!DOCTYPE ...>Hello"
    output = "| <!DOCTYPE ...>\n| <html>\n|   <head>\n|   <body>\n|     \"Hello\"\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">"
    output = "| <!DOCTYPE html \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">"
    output = "| <!DOCTYPE html \"-//W3C//DTD XHTML 1.0 Frameset//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<!DOCTYPE root-element [SYSTEM OR PUBLIC FPI] \"uri\" [ \n<!-- internal declarations -->\n]>"
    output = "| <!DOCTYPE root-element>\n| <html>\n|   <head>\n|   <body>\n|     \"]>\"\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "<!DOCTYPE html PUBLIC\n  \"-//WAPFORUM//DTD XHTML Mobile 1.0//EN\"\n    \"http://www.wapforum.org/DTD/xhtml-mobile10.dtd\">"
    output = "| <!DOCTYPE html \"-//WAPFORUM//DTD XHTML Mobile 1.0//EN\" \"http://www.wapforum.org/DTD/xhtml-mobile10.dtd\">\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<!DOCTYPE HTML SYSTEM \"http://www.w3.org/DTD/HTML4-strict.dtd\"><body><b>Mine!</b></body>"
    output = "| <!DOCTYPE html \"\" \"http://www.w3.org/DTD/HTML4-strict.dtd\">\n| <html>\n|   <head>\n|   <body>\n|     <b>\n|       \"Mine!\"\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"\"http://www.w3.org/TR/html4/strict.dtd\">"
    output = "| <!DOCTYPE html \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\"'http://www.w3.org/TR/html4/strict.dtd'>"
    output = "| <!DOCTYPE html \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "35" do
    input = "<!DOCTYPE HTML PUBLIC\"-//W3C//DTD HTML 4.01//EN\"'http://www.w3.org/TR/html4/strict.dtd'>"
    output = "| <!DOCTYPE html \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "36" do
    input = "<!DOCTYPE HTML PUBLIC'-//W3C//DTD HTML 4.01//EN''http://www.w3.org/TR/html4/strict.dtd'>"
    output = "| <!DOCTYPE html \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n| <html>\n|   <head>\n|   <body>\n"
    assert_parses input, output
  end
end
