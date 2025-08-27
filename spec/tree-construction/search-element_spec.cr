require "../spec_helper"

describe "search-element" do
  it "0" do
    input = "<!doctype html><p>foo<search>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <search>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<!doctype html><search><p>foo</search>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <search>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<!DOCTYPE html>xxx<svg><x><g><a><search><b>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"xxx\"\n|     <svg svg>\n|       <svg x>\n|         <svg g>\n|           <svg a>\n|             <svg search>\n|     <b>\n"
    assert_parses input, output
  end
end
