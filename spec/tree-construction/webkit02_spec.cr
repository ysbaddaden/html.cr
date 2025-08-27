require "../spec_helper"

describe "webkit02" do
  it "00" do
    input = "<foo bar=qux/>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <foo>\n|       bar=\"qux/\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<p id=\"status\"><noscript><strong>A</strong></noscript><span>B</span></p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       id=\"status\"\n|       <noscript>\n|         <strong>\n|           \"A\"\n|       <span>\n|         \"B\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<div><sarcasm><div></div></sarcasm></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <sarcasm>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<html><body><img src=\"\" border=\"0\" alt=\"><div>A</div></body></html>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<table><td></tbody>A"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"A\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<table><td></thead>A"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"A\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<table><td></tfoot>A"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             \"A\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<table><thead><td></tbody>A"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <thead>\n|         <tr>\n|           <td>\n|             \"A\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<legend>test</legend>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <legend>\n|       \"test\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<table><input>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <input>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "11" do
    skip "missing support for #document-fragment"
  end
  it "12" do
    input = "<b><em><foo><foo><aside></b>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <em>\n|         <foo>\n|           <foo>\n|     <em>\n|       <aside>\n|         <b>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<b><em><foo><foo><aside></b></em>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <em>\n|         <foo>\n|           <foo>\n|     <em>\n|     <aside>\n|       <em>\n|         <b>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<b><em><foo><foo><foo><aside></b>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <em>\n|         <foo>\n|           <foo>\n|             <foo>\n|     <aside>\n|       <b>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<b><em><foo><foo><foo><aside></b></em>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <em>\n|         <foo>\n|           <foo>\n|             <foo>\n|     <aside>\n|       <b>\n\n"
    assert_parses input, output
  end
  it "16" do
    skip "missing support for #document-fragment"
  end
  it "17" do
    skip "missing support for #document-fragment"
  end
  it "18" do
    skip "missing support for #document-fragment"
  end
  it "19" do
    input = "<svg><foreignObject><div>foo</div><plaintext></foreignObject></svg><div>bar</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg foreignObject>\n|         <div>\n|           \"foo\"\n|         <plaintext>\n|           \"</foreignObject></svg><div>bar</div>\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<svg><foreignObject></foreignObject><title></svg>foo"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg foreignObject>\n|       <svg title>\n|     \"foo\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "</foreignObject><plaintext><div>foo</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"<div>foo</div>\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<svg xml:base xml:lang xml:space xml:baaah definitionurl>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       definitionurl=\"\"\n|       xml lang=\"\"\n|       xml space=\"\"\n|       xml:baaah=\"\"\n|       xml:base=\"\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<math definitionurl xlink:title xlink:show>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       definitionURL=\"\"\n|       xlink show=\"\"\n|       xlink title=\"\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<math DEFINITIONURL>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       definitionURL=\"\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<select><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <hr>\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<select><option><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|       <hr>\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<select><optgroup><option><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <optgroup>\n|         <option>\n|       <hr>\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<select><optgroup><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <optgroup>\n|       <hr>\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<select><option><optgroup><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n|       <optgroup>\n|       <hr>\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<table><tr><td><select><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|               <hr>\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "<table><tr><td><select><option><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|               <option>\n|               <hr>\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<table><tr><td><select><optgroup><option><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|               <optgroup>\n|                 <option>\n|               <hr>\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<table><tr><td><select><optgroup><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|               <optgroup>\n|               <hr>\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "<table><tr><td><select><option><optgroup><hr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|               <option>\n|               <optgroup>\n|               <hr>\n"
    assert_parses input, output
  end
end
