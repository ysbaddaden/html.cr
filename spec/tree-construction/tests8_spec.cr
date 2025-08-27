require "../spec_helper"

describe "tests8" do
  it "00" do
    input = "<div>\n<div></div>\n</span>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"\n\"\n|       <div>\n|       \"\nx\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<div>x<div></div>\n</span>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"x\"\n|       <div>\n|       \"\nx\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<div>x<div></div>x</span>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"x\"\n|       <div>\n|       \"xx\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<div>x<div></div>y</span>z"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"x\"\n|       <div>\n|       \"yz\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<table><div>x<div></div>x</span>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"x\"\n|       <div>\n|       \"xx\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<table><li><li></table>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <li>\n|     <li>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "x<table>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"xx\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "x<table><table>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"x\"\n|     <table>\n|     \"x\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<b>a<div></div><div></b>y"
    output = "| <html>\n|   <head>\n|   <body>\n|     <b>\n|       \"a\"\n|       <div>\n|     <div>\n|       <b>\n|       \"y\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<a><div><p></a>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <a>\n|     <div>\n|       <a>\n|       <p>\n|         <a>\n"
    assert_parses input, output
  end
end
