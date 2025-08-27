require "../spec_helper"

describe "tests26" do
  it "00" do
    input = "<!DOCTYPE html><body><a href='#1'><nobr>1<nobr></a><br><a href='#2'><nobr>2<nobr></a><br><a href='#3'><nobr>3<nobr></a>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <a>\n|       href=\"#1\"\n|       <nobr>\n|         \"1\"\n|       <nobr>\n|     <nobr>\n|       <br>\n|       <a>\n|         href=\"#2\"\n|     <a>\n|       href=\"#2\"\n|       <nobr>\n|         \"2\"\n|       <nobr>\n|     <nobr>\n|       <br>\n|       <a>\n|         href=\"#3\"\n|     <a>\n|       href=\"#3\"\n|       <nobr>\n|         \"3\"\n|       <nobr>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!DOCTYPE html><body><b><nobr>1<nobr></b><i><nobr>2<nobr></i>3"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <nobr>\n|         \"1\"\n|       <nobr>\n|     <nobr>\n|       <i>\n|     <i>\n|       <nobr>\n|         \"2\"\n|       <nobr>\n|     <nobr>\n|       \"3\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!DOCTYPE html><body><b><nobr>1<table><nobr></b><i><nobr>2<nobr></i>3"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <nobr>\n|         \"1\"\n|         <nobr>\n|           <i>\n|         <i>\n|           <nobr>\n|             \"2\"\n|           <nobr>\n|         <nobr>\n|           \"3\"\n|         <table>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!DOCTYPE html><body><b><nobr>1<table><tr><td><nobr></b><i><nobr>2<nobr></i>3"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <nobr>\n|         \"1\"\n|         <table>\n|           <tbody>\n|             <tr>\n|               <td>\n|                 <nobr>\n|                   <i>\n|                 <i>\n|                   <nobr>\n|                     \"2\"\n|                   <nobr>\n|                 <nobr>\n|                   \"3\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!DOCTYPE html><body><b><nobr>1<div><nobr></b><i><nobr>2<nobr></i>3"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <nobr>\n|         \"1\"\n|     <div>\n|       <b>\n|         <nobr>\n|         <nobr>\n|       <nobr>\n|         <i>\n|       <i>\n|         <nobr>\n|           \"2\"\n|         <nobr>\n|       <nobr>\n|         \"3\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!DOCTYPE html><body><b><nobr>1<nobr></b><div><i><nobr>2<nobr></i>3"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <nobr>\n|         \"1\"\n|       <nobr>\n|     <div>\n|       <nobr>\n|         <i>\n|       <i>\n|         <nobr>\n|           \"2\"\n|         <nobr>\n|       <nobr>\n|         \"3\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!DOCTYPE html><body><b><nobr>1<nobr><ins></b><i><nobr>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <nobr>\n|         \"1\"\n|       <nobr>\n|         <ins>\n|     <nobr>\n|       <i>\n|     <i>\n|       <nobr>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!DOCTYPE html><body><b><nobr>1<ins><nobr></b><i>2"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <b>\n|       <nobr>\n|         \"1\"\n|         <ins>\n|       <nobr>\n|     <nobr>\n|       <i>\n|         \"2\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!DOCTYPE html><body><b>1<nobr></b><i><nobr>2</i>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <b>\n|       \"1\"\n|       <nobr>\n|     <nobr>\n|       <i>\n|     <i>\n|       <nobr>\n|         \"2\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<p><code x</code></p>\n"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <code>\n|         code=\"\"\n|         x<=\"\"\n|     <code>\n|       code=\"\"\n|       x<=\"\"\n|       \"\n\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!DOCTYPE html><svg><foreignObject><p><i></p>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg foreignObject>\n|         <p>\n|           <i>\n|         <i>\n|           \"a\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!DOCTYPE html><table><tr><td><svg><foreignObject><p><i></p>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|               <svg foreignObject>\n|                 <p>\n|                   <i>\n|                 <i>\n|                   \"a\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!DOCTYPE html><math><mtext><p><i></p>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math mtext>\n|         <p>\n|           <i>\n|         <i>\n|           \"a\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!DOCTYPE html><table><tr><td><math><mtext><p><i></p>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <math math>\n|               <math mtext>\n|                 <p>\n|                   <i>\n|                 <i>\n|                   \"a\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!DOCTYPE html><body><div><!/div>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <div>\n|       <!-- /div -->\n|       \"a\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<button><p><button>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <button>\n|       <p>\n|     <button>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<svg></p><foo>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <p>\n|     <foo>\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<svg></br><foo>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|     <br>\n|     <foo>\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<math></p><foo>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|     <p>\n|     <foo>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<math></br><foo>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|     <br>\n|     <foo>\n"
    assert_parses input, output
  end
end
