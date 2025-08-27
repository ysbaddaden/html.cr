require "../spec_helper"

describe "tests25" do
  it "00" do
    input = "<!DOCTYPE html><body><foo>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <foo>\n|       \"A\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!DOCTYPE html><body><area>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <area>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!DOCTYPE html><body><base>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <base>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!DOCTYPE html><body><basefont>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <basefont>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!DOCTYPE html><body><bgsound>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <bgsound>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!DOCTYPE html><body><br>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <br>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!DOCTYPE html><body><col>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!DOCTYPE html><body><command>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <command>\n|       \"A\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!DOCTYPE html><body><embed>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <embed>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!DOCTYPE html><body><frame>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!DOCTYPE html><body><hr>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <hr>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!DOCTYPE html><body><img>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <img>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!DOCTYPE html><body><input>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <input>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!DOCTYPE html><body><keygen>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <keygen>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!DOCTYPE html><keygen>A</keygen>B"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <keygen>\n|     \"AB\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "</keygen>A"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!DOCTYPE html></keygen>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!DOCTYPE html><head></keygen>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!DOCTYPE html><head></head></keygen>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!DOCTYPE html><body></keygen>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<!DOCTYPE html><body><link>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <link>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<!DOCTYPE html><body><meta>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <meta>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<!DOCTYPE html><body><param>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <param>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<!DOCTYPE html><body><source>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <source>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<!DOCTYPE html><body><track>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <track>\n|     \"A\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!DOCTYPE html><body><wbr>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <wbr>\n|     \"A\"\n"
    assert_parses input, output
  end
end
