require "../spec_helper"

describe "tests10" do
  it "00" do
    input = "<!DOCTYPE html><svg></svg>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!DOCTYPE html><svg></svg><![CDATA[a]]>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <!-- [CDATA[a]] -->\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!DOCTYPE html><body><svg></svg>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!DOCTYPE html><body><select><svg></svg></select>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!DOCTYPE html><body><select><option><svg></svg></option></select>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!DOCTYPE html><body><table><svg></svg></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!DOCTYPE html><body><table><svg><g>foo</g></svg></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!DOCTYPE html><body><table><svg><g>foo</g><g>bar</g></svg></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!DOCTYPE html><body><table><tbody><svg><g>foo</g><g>bar</g></svg></tbody></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <table>\n|       <tbody>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!DOCTYPE html><body><table><tbody><tr><svg><g>foo</g><g>bar</g></svg></tr></tbody></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!DOCTYPE html><body><table><tbody><tr><td><svg><g>foo</g><g>bar</g></svg></td></tr></tbody></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg g>\n|                 \"foo\"\n|               <svg g>\n|                 \"bar\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!DOCTYPE html><body><table><tbody><tr><td><svg><g>foo</g><g>bar</g></svg><p>baz</td></tr></tbody></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg g>\n|                 \"foo\"\n|               <svg g>\n|                 \"bar\"\n|             <p>\n|               \"baz\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!DOCTYPE html><body><table><caption><svg><g>foo</g><g>bar</g></svg><p>baz</caption></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <svg svg>\n|           <svg g>\n|             \"foo\"\n|           <svg g>\n|             \"bar\"\n|         <p>\n|           \"baz\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!DOCTYPE html><body><table><caption><svg><g>foo</g><g>bar</g><p>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <svg svg>\n|           <svg g>\n|             \"foo\"\n|           <svg g>\n|             \"bar\"\n|         <p>\n|           \"baz\"\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!DOCTYPE html><body><table><caption><svg><g>foo</g><g>bar</g>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <svg svg>\n|           <svg g>\n|             \"foo\"\n|           <svg g>\n|             \"bar\"\n|           \"baz\"\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<!DOCTYPE html><body><table><colgroup><svg><g>foo</g><g>bar</g><p>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <p>\n|       \"baz\"\n|     <table>\n|       <colgroup>\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!DOCTYPE html><body><table><tr><td><select><svg><g>foo</g><g>bar</g><p>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|               \"foobarbaz\"\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!DOCTYPE html><body><table><select><svg><g>foo</g><g>bar</g><p>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       \"foobarbaz\"\n|     <table>\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!DOCTYPE html><body></body></html><svg><g>foo</g><g>bar</g><p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <p>\n|       \"baz\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!DOCTYPE html><body></body><svg><g>foo</g><g>bar</g><p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg g>\n|         \"foo\"\n|       <svg g>\n|         \"bar\"\n|     <p>\n|       \"baz\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<!DOCTYPE html><frameset><svg><g></g><g></g><p><span>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<!DOCTYPE html><frameset></frameset><svg><g></g><g></g><p><span>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<!DOCTYPE html><body xlink:href=foo><svg xlink:href=foo></svg>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     <svg svg>\n|       xlink href=\"foo\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<!DOCTYPE html><body xlink:href=foo xml:lang=en><svg><g xml:lang=en xlink:href=foo></g></svg>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     xml:lang=\"en\"\n|     <svg svg>\n|       <svg g>\n|         xlink href=\"foo\"\n|         xml lang=\"en\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<!DOCTYPE html><body xlink:href=foo xml:lang=en><svg><g xml:lang=en xlink:href=foo /></svg>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     xml:lang=\"en\"\n|     <svg svg>\n|       <svg g>\n|         xlink href=\"foo\"\n|         xml lang=\"en\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!DOCTYPE html><body xlink:href=foo xml:lang=en><svg><g xml:lang=en xlink:href=foo />bar</svg>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     xml:lang=\"en\"\n|     <svg svg>\n|       <svg g>\n|         xlink href=\"foo\"\n|         xml lang=\"en\"\n|       \"bar\"\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<svg></path>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<div><svg></div>a"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|     \"a\"\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<div><svg><path></div>a"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|     \"a\"\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<div><svg><path></svg><path>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|       <path>\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<div><svg><path><foreignObject><math></div>a"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|           <svg foreignObject>\n|             <math math>\n|               \"a\"\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "<div><svg><path><foreignObject><p></div>a"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|           <svg foreignObject>\n|             <p>\n|               \"a\"\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<!DOCTYPE html><svg><desc><div><svg><ul>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg desc>\n|         <div>\n|           <svg svg>\n|           <ul>\n|             \"a\"\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<!DOCTYPE html><svg><desc><svg><ul>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg desc>\n|         <svg svg>\n|         <ul>\n|           \"a\"\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "<!DOCTYPE html><p><svg><desc><p>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <svg svg>\n|         <svg desc>\n|           <p>\n\n"
    assert_parses input, output
  end
  it "35" do
    input = "<!DOCTYPE html><p><svg><title><p>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <svg svg>\n|         <svg title>\n|           <p>\n\n"
    assert_parses input, output
  end
  it "36" do
    input = "<div><svg><path><foreignObject><p></foreignObject><p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <svg svg>\n|         <svg path>\n|           <svg foreignObject>\n|             <p>\n|             <p>\n\n"
    assert_parses input, output
  end
  it "37" do
    input = "<math><mi><div><object><div><span></span></div></object></div></mi><mi>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         <div>\n|           <object>\n|             <div>\n|               <span>\n|       <math mi>\n\n"
    assert_parses input, output
  end
  it "38" do
    input = "<math><mi><svg><foreignObject><div><div></div></div></foreignObject></svg></mi><mi>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         <svg svg>\n|           <svg foreignObject>\n|             <div>\n|               <div>\n|       <math mi>\n\n"
    assert_parses input, output
  end
  it "39" do
    input = "<svg><script></script><path>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg script>\n|       <svg path>\n\n"
    assert_parses input, output
  end
  it "40" do
    input = "<table><svg></svg><tr>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "41" do
    input = "<math><mi><mglyph>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         <math mglyph>\n\n"
    assert_parses input, output
  end
  it "42" do
    input = "<math><mi><malignmark>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         <math malignmark>\n\n"
    assert_parses input, output
  end
  it "43" do
    input = "<math><mo><mglyph>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mo>\n|         <math mglyph>\n\n"
    assert_parses input, output
  end
  it "44" do
    input = "<math><mo><malignmark>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mo>\n|         <math malignmark>\n\n"
    assert_parses input, output
  end
  it "45" do
    input = "<math><mn><mglyph>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mn>\n|         <math mglyph>\n\n"
    assert_parses input, output
  end
  it "46" do
    input = "<math><mn><malignmark>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mn>\n|         <math malignmark>\n\n"
    assert_parses input, output
  end
  it "47" do
    input = "<math><ms><mglyph>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math ms>\n|         <math mglyph>\n\n"
    assert_parses input, output
  end
  it "48" do
    input = "<math><ms><malignmark>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math ms>\n|         <math malignmark>\n\n"
    assert_parses input, output
  end
  it "49" do
    input = "<math><mtext><mglyph>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mtext>\n|         <math mglyph>\n\n"
    assert_parses input, output
  end
  it "50" do
    input = "<math><mtext><malignmark>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mtext>\n|         <math malignmark>\n\n"
    assert_parses input, output
  end
  it "51" do
    input = "<math><annotation-xml><svg></svg></annotation-xml><mi>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         <svg svg>\n|       <math mi>\n\n"
    assert_parses input, output
  end
  it "52" do
    input = "<math><annotation-xml><svg><foreignObject><div><math><mi></mi></math><span></span></div></foreignObject><path></path></svg></annotation-xml><mi>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         <svg svg>\n|           <svg foreignObject>\n|             <div>\n|               <math math>\n|                 <math mi>\n|               <span>\n|           <svg path>\n|       <math mi>\n\n"
    assert_parses input, output
  end
  it "53" do
    input = "<math><annotation-xml><svg><foreignObject><math><mi><svg></svg></mi><mo></mo></math><span></span></foreignObject><path></path></svg></annotation-xml><mi>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         <svg svg>\n|           <svg foreignObject>\n|             <math math>\n|               <math mi>\n|                 <svg svg>\n|               <math mo>\n|             <span>\n|           <svg path>\n|       <math mi>\n"
    assert_parses input, output
  end
end
