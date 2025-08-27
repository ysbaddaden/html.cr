require "../spec_helper"

describe "tests9" do
  it "00" do
    input = "<!DOCTYPE html><math></math>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!DOCTYPE html><body><math></math>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!DOCTYPE html><math><mi>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!DOCTYPE html><math><annotation-xml><svg><u>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         <svg svg>\n|     <u>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!DOCTYPE html><body><select><math></math></select>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!DOCTYPE html><body><select><option><math></math></option></select>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <option>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!DOCTYPE html><body><table><math></math></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!DOCTYPE html><body><table><math><mi>foo</mi></math></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         \"foo\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!DOCTYPE html><body><table><math><mi>foo</mi><mi>bar</mi></math></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         \"foo\"\n|       <math mi>\n|         \"bar\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!DOCTYPE html><body><table><tbody><math><mi>foo</mi><mi>bar</mi></math></tbody></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         \"foo\"\n|       <math mi>\n|         \"bar\"\n|     <table>\n|       <tbody>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!DOCTYPE html><body><table><tbody><tr><math><mi>foo</mi><mi>bar</mi></math></tr></tbody></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         \"foo\"\n|       <math mi>\n|         \"bar\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!DOCTYPE html><body><table><tbody><tr><td><math><mi>foo</mi><mi>bar</mi></math></td></tr></tbody></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <math math>\n|               <math mi>\n|                 \"foo\"\n|               <math mi>\n|                 \"bar\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!DOCTYPE html><body><table><tbody><tr><td><math><mi>foo</mi><mi>bar</mi></math><p>baz</td></tr></tbody></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <math math>\n|               <math mi>\n|                 \"foo\"\n|               <math mi>\n|                 \"bar\"\n|             <p>\n|               \"baz\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!DOCTYPE html><body><table><caption><math><mi>foo</mi><mi>bar</mi></math><p>baz</caption></table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <math math>\n|           <math mi>\n|             \"foo\"\n|           <math mi>\n|             \"bar\"\n|         <p>\n|           \"baz\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!DOCTYPE html><body><table><caption><math><mi>foo</mi><mi>bar</mi><p>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <math math>\n|           <math mi>\n|             \"foo\"\n|           <math mi>\n|             \"bar\"\n|         <p>\n|           \"baz\"\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<!DOCTYPE html><body><table><caption><math><mi>foo</mi><mi>bar</mi>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <math math>\n|           <math mi>\n|             \"foo\"\n|           <math mi>\n|             \"bar\"\n|           \"baz\"\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!DOCTYPE html><body><table><colgroup><math><mi>foo</mi><mi>bar</mi><p>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         \"foo\"\n|       <math mi>\n|         \"bar\"\n|     <p>\n|       \"baz\"\n|     <table>\n|       <colgroup>\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!DOCTYPE html><body><table><tr><td><select><math><mi>foo</mi><mi>bar</mi><p>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|               \"foobarbaz\"\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!DOCTYPE html><body><table><select><math><mi>foo</mi><mi>bar</mi><p>baz</table><p>quux"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       \"foobarbaz\"\n|     <table>\n|     <p>\n|       \"quux\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!DOCTYPE html><body></body></html><math><mi>foo</mi><mi>bar</mi><p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         \"foo\"\n|       <math mi>\n|         \"bar\"\n|     <p>\n|       \"baz\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<!DOCTYPE html><body></body><math><mi>foo</mi><mi>bar</mi><p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mi>\n|         \"foo\"\n|       <math mi>\n|         \"bar\"\n|     <p>\n|       \"baz\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<!DOCTYPE html><frameset><math><mi></mi><mi></mi><p><span>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<!DOCTYPE html><frameset></frameset><math><mi></mi><mi></mi><p><span>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<!DOCTYPE html><body xlink:href=foo><math xlink:href=foo></math>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     <math math>\n|       xlink href=\"foo\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<!DOCTYPE html><body xlink:href=foo xml:lang=en><math><mi xml:lang=en xlink:href=foo></mi></math>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     xml:lang=\"en\"\n|     <math math>\n|       <math mi>\n|         xlink href=\"foo\"\n|         xml lang=\"en\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!DOCTYPE html><body xlink:href=foo xml:lang=en><math><mi xml:lang=en xlink:href=foo /></math>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     xml:lang=\"en\"\n|     <math math>\n|       <math mi>\n|         xlink href=\"foo\"\n|         xml lang=\"en\"\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<!DOCTYPE html><body xlink:href=foo xml:lang=en><math><mi xml:lang=en xlink:href=foo />bar</math>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     xlink:href=\"foo\"\n|     xml:lang=\"en\"\n|     <math math>\n|       <math mi>\n|         xlink href=\"foo\"\n|         xml lang=\"en\"\n|       \"bar\"\n"
    assert_parses input, output
  end
end
