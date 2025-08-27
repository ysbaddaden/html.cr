require "../spec_helper"

describe "main-element" do
  it "0" do
    input = "<!doctype html><p>foo<main>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <main>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<!doctype html><main><p>foo</main>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <main>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<!DOCTYPE html>xxx<svg><x><g><a><main><b>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"xxx\"\n|     <svg svg>\n|       <svg x>\n|         <svg g>\n|           <svg a>\n|             <svg main>\n|     <b>\n"
    assert_parses input, output
  end
end
