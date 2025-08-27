require "../spec_helper"

describe "tests6" do
  it "00" do
    input = "<!doctype html></head> <head>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   \" \"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!doctype html><form><div></form><div>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <form>\n|       <div>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!doctype html><title>&amp;</title>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"&\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!doctype html><title><!--&amp;--></title>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <title>\n|       \"<!--&-->\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!doctype>"
    output = "| <!DOCTYPE >\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!---x"
    output = "| <!-- -x -->\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "06" do
    skip "missing support for #document-fragment"
  end
  it "07" do
    input = "<frameset></frameset>\nfoo"
    output = "| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<frameset></frameset>\n<noframes>"
    output = "| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n|   <noframes>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<frameset></frameset>\n<div>"
    output = "| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<frameset></frameset>\n</html>"
    output = "| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<frameset></frameset>\n</div>"
    output = "| <html>\n|   <head>\n|   <frameset>\n|   \"\n\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<form><form>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <form>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<button><button>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <button>\n|     <button>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<table><tr><td></th>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<table><caption><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|       <tbody>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<table><caption><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "17" do
    skip "missing support for #document-fragment"
  end
  it "18" do
    input = "<table><caption><div></caption>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<table><caption></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n\n"
    assert_parses input, output
  end
  it "20" do
    skip "missing support for #document-fragment"
  end
  it "21" do
    input = "<table><caption></body></col></colgroup></html></tbody></td></tfoot></th></thead></tr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<table><caption><div></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<table><tr><td></body></caption></col></colgroup></html>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "24" do
    skip "missing support for #document-fragment"
  end
  it "25" do
    input = "<table><colgroup>foo"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"foo\"\n|     <table>\n|       <colgroup>\n\n"
    assert_parses input, output
  end
  it "26" do
    skip "missing support for #document-fragment"
  end
  it "27" do
    input = "<table><colgroup></col>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <colgroup>\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<frameset><div>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "29" do
    skip "missing support for #document-fragment"
  end
  it "30" do
    input = "<frameset></div>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "31" do
    skip "missing support for #document-fragment"
  end
  it "32" do
    input = "<table><tr><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "33" do
    skip "missing support for #document-fragment"
  end
  it "34" do
    skip "missing support for #document-fragment"
  end
  it "35" do
    input = "<table><tr><div><td>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "36" do
    skip "missing support for #document-fragment"
  end
  it "37" do
    input = "<table><tbody></thead>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n\n"
    assert_parses input, output
  end
  it "38" do
    skip "missing support for #document-fragment"
  end
  it "39" do
    input = "<table><tbody></body></caption></col></colgroup></html></td></th></tr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n\n"
    assert_parses input, output
  end
  it "40" do
    input = "<table><tbody></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n\n"
    assert_parses input, output
  end
  it "41" do
    input = "<table><table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "42" do
    input = "<table></body></caption></col></colgroup></html></tbody></td></tfoot></th></thead></tr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "43" do
    skip "missing support for #document-fragment"
  end
  it "44" do
    skip "missing support for #document-fragment"
  end
  it "45" do
    input = "<html><frameset></frameset></html> "
    output = "| <html>\n|   <head>\n|   <frameset>\n|   \" \"\n\n"
    assert_parses input, output
  end
  it "46" do
    input = "<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01//EN\"><html></html>"
    output = "| <!DOCTYPE html \"-//W3C//DTD HTML 4.01//EN\" \"\">\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "47" do
    input = "<param><frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "48" do
    input = "<source><frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "49" do
    input = "<track><frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "50" do
    input = "</html><frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "51" do
    input = "</body><frameset></frameset>"
    output = "| <html>\n|   <head>\n|   <frameset>\n"
    assert_parses input, output
  end
end
