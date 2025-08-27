require "../spec_helper"

describe "blocks" do
  it "00" do
    input = "<!doctype html><p>foo<address>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <address>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!doctype html><address><p>foo</address>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <address>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!doctype html><p>foo<article>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <article>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!doctype html><article><p>foo</article>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <article>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!doctype html><p>foo<aside>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <aside>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!doctype html><aside><p>foo</aside>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <aside>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!doctype html><p>foo<blockquote>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <blockquote>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!doctype html><blockquote><p>foo</blockquote>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <blockquote>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!doctype html><p>foo<center>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <center>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!doctype html><center><p>foo</center>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <center>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!doctype html><p>foo<details>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <details>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!doctype html><details><p>foo</details>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <details>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!doctype html><p>foo<dialog>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <dialog>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!doctype html><dialog><p>foo</dialog>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <dialog>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!doctype html><p>foo<dir>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <dir>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<!doctype html><dir><p>foo</dir>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <dir>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!doctype html><p>foo<div>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <div>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!doctype html><div><p>foo</div>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!doctype html><p>foo<dl>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <dl>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!doctype html><dl><p>foo</dl>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <dl>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<!doctype html><p>foo<fieldset>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <fieldset>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<!doctype html><fieldset><p>foo</fieldset>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <fieldset>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<!doctype html><p>foo<figcaption>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <figcaption>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<!doctype html><figcaption><p>foo</figcaption>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <figcaption>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<!doctype html><p>foo<figure>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <figure>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!doctype html><figure><p>foo</figure>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <figure>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<!doctype html><p>foo<footer>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <footer>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<!doctype html><footer><p>foo</footer>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <footer>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<!doctype html><p>foo<header>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <header>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<!doctype html><header><p>foo</header>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <header>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<!doctype html><p>foo<hgroup>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <hgroup>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "<!doctype html><hgroup><p>foo</hgroup>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <hgroup>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<!doctype html><p>foo<listing>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <listing>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<!doctype html><listing><p>foo</listing>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <listing>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "<!doctype html><p>foo<menu>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <menu>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "35" do
    input = "<!doctype html><menu><p>foo</menu>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menu>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "36" do
    input = "<!doctype html><p>foo<nav>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <nav>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "37" do
    input = "<!doctype html><nav><p>foo</nav>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <nav>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "38" do
    input = "<!doctype html><p>foo<ol>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <ol>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "39" do
    input = "<!doctype html><ol><p>foo</ol>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <ol>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "40" do
    input = "<!doctype html><p>foo<pre>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <pre>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "41" do
    input = "<!doctype html><pre><p>foo</pre>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <pre>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "42" do
    input = "<!doctype html><p>foo<section>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <section>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "43" do
    input = "<!doctype html><section><p>foo</section>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <section>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "44" do
    input = "<!doctype html><p>foo<summary>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <summary>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "45" do
    input = "<!doctype html><summary><p>foo</summary>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <summary>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n\n"
    assert_parses input, output
  end
  it "46" do
    input = "<!doctype html><p>foo<ul>bar<p>baz"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       \"foo\"\n|     <ul>\n|       \"bar\"\n|       <p>\n|         \"baz\"\n\n"
    assert_parses input, output
  end
  it "47" do
    input = "<!doctype html><ul><p>foo</ul>bar"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <ul>\n|       <p>\n|         \"foo\"\n|     \"bar\"\n"
    assert_parses input, output
  end
end
