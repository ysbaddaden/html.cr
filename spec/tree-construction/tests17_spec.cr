require "../spec_helper"

describe "tests17" do
  it "00" do
    input = "<!doctype html><table><tbody><select><tr>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!doctype html><table><tr><select><td>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!doctype html><table><tr><td><select><td>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <select>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!doctype html><table><tr><th><select><td>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <th>\n|             <select>\n|           <td>\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!doctype html><table><caption><select><tr>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <select>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!doctype html><select><tr>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!doctype html><select><td>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!doctype html><select><th>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!doctype html><select><tbody>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!doctype html><select><thead>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!doctype html><select><tfoot>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!doctype html><select><caption>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!doctype html><table><tr></table>a"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|     \"a\"\n"
    assert_parses input, output
  end
end
