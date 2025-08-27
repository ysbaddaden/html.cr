require "../spec_helper"

describe "tests20" do
  it "00" do
    input = "<!doctype html><p><button><button>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|       <button>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!doctype html><p><button><address>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <address>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!doctype html><p><button><article>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <article>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!doctype html><p><button><aside>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <aside>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!doctype html><p><button><blockquote>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <blockquote>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!doctype html><p><button><center>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <center>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!doctype html><p><button><details>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <details>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!doctype html><p><button><dialog>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <dialog>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!doctype html><p><button><dir>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <dir>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!doctype html><p><button><div>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <div>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!doctype html><p><button><dl>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <dl>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!doctype html><p><button><fieldset>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <fieldset>\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!doctype html><p><button><figcaption>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <figcaption>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!doctype html><p><button><figure>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <figure>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!doctype html><p><button><footer>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <footer>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<!doctype html><p><button><header>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <header>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!doctype html><p><button><hgroup>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <hgroup>\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!doctype html><p><button><main>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <main>\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!doctype html><p><button><menu>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <menu>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!doctype html><p><button><nav>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <nav>\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<!doctype html><p><button><ol>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <ol>\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<!doctype html><p><button><p>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <p>\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<!doctype html><p><button><search>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <search>\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<!doctype html><p><button><section>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <section>\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<!doctype html><p><button><summary>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <summary>\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!doctype html><p><button><ul>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <ul>\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<!doctype html><p><button><h1>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <h1>\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<!doctype html><p><button><h6>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <h6>\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<!doctype html><p><button><listing>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <listing>\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<!doctype html><p><button><pre>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <pre>\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<!doctype html><p><button><form>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <form>\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "<!doctype html><p><button><li>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <li>\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<!doctype html><p><button><dd>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <dd>\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<!doctype html><p><button><dt>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <dt>\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "<!doctype html><p><button><plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <plaintext>\n\n"
    assert_parses input, output
  end
  it "35" do
    input = "<!doctype html><p><button><table>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <table>\n\n"
    assert_parses input, output
  end
  it "36" do
    input = "<!doctype html><p><button><hr>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <hr>\n\n"
    assert_parses input, output
  end
  it "37" do
    input = "<!doctype html><p><button><xmp>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <xmp>\n\n"
    assert_parses input, output
  end
  it "38" do
    input = "<!doctype html><p><button></p>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <button>\n|         <p>\n\n"
    assert_parses input, output
  end
  it "39" do
    input = "<!doctype html><button><p></button>x"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <button>\n|       <p>\n|     \"x\"\n\n"
    assert_parses input, output
  end
  it "40" do
    input = "<!doctype html><address><button></address>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <address>\n|       <button>\n|     \"a\"\n\n"
    assert_parses input, output
  end
  it "41" do
    input = "<p><table></p>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <p>\n|       <table>\n\n"
    assert_parses input, output
  end
  it "42" do
    input = "<!doctype html><svg>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n\n"
    assert_parses input, output
  end
  it "43" do
    input = "<!doctype html><p><figcaption>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <figcaption>\n\n"
    assert_parses input, output
  end
  it "44" do
    input = "<!doctype html><p><summary>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <summary>\n\n"
    assert_parses input, output
  end
  it "45" do
    input = "<!doctype html><form><table><form>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <form>\n|       <table>\n\n"
    assert_parses input, output
  end
  it "46" do
    input = "<!doctype html><table><form><form>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <form>\n\n"
    assert_parses input, output
  end
  it "47" do
    input = "<!doctype html><table><form></table><form>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <form>\n\n"
    assert_parses input, output
  end
  it "48" do
    input = "<!doctype html><svg><foreignObject><p>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg foreignObject>\n|         <p>\n\n"
    assert_parses input, output
  end
  it "49" do
    input = "<!doctype html><svg><title>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg title>\n|         \"abc\"\n\n"
    assert_parses input, output
  end
  it "50" do
    input = "<option><span><option>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <option>\n|       <span>\n|         <option>\n\n"
    assert_parses input, output
  end
  it "51" do
    input = "<option><option>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <option>\n|     <option>\n\n"
    assert_parses input, output
  end
  it "52" do
    input = "<math><annotation-xml><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|     <div>\n\n"
    assert_parses input, output
  end
  it "53" do
    input = "<math><annotation-xml encoding=\"application/svg+xml\"><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"application/svg+xml\"\n|     <div>\n\n"
    assert_parses input, output
  end
  it "54" do
    input = "<math><annotation-xml encoding=\"application/xhtml+xml\"><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"application/xhtml+xml\"\n|         <div>\n\n"
    assert_parses input, output
  end
  it "55" do
    input = "<math><annotation-xml encoding=\"aPPlication/xhtmL+xMl\"><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"aPPlication/xhtmL+xMl\"\n|         <div>\n\n"
    assert_parses input, output
  end
  it "56" do
    input = "<math><annotation-xml encoding=\"text/html\"><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"text/html\"\n|         <div>\n\n"
    assert_parses input, output
  end
  it "57" do
    input = "<math><annotation-xml encoding=\"Text/htmL\"><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\"Text/htmL\"\n|         <div>\n\n"
    assert_parses input, output
  end
  it "58" do
    input = "<math><annotation-xml encoding=\" text/html \"><div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         encoding=\" text/html \"\n|     <div>\n\n"
    assert_parses input, output
  end
  it "59" do
    input = "<math><annotation-xml> </annotation-xml>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         \" \"\n\n"
    assert_parses input, output
  end
  it "60" do
    input = "<math><annotation-xml>c</annotation-xml>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         \"c\"\n\n"
    assert_parses input, output
  end
  it "61" do
    input = "<math><annotation-xml><!--foo-->"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         <!-- foo -->\n\n"
    assert_parses input, output
  end
  it "62" do
    input = "<math><annotation-xml></svg>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         \"x\"\n\n"
    assert_parses input, output
  end
  it "63" do
    input = "<math><annotation-xml><svg>x"
    output = "| <html>\n|   <head>\n|   <body>\n|     <math math>\n|       <math annotation-xml>\n|         <svg svg>\n|           \"x\"\n"
    assert_parses input, output
  end
end
