require "../spec_helper"

describe "tests24" do
  it "0" do
    input = "<!DOCTYPE html>&NotEqualTilde;"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"≂̸\"\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<!DOCTYPE html>&NotEqualTilde;A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"≂̸A\"\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<!DOCTYPE html>&ThickSpace;"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"\u205F\u200A\"\n\n"
    assert_parses input, output
  end
  it "3" do
    input = "<!DOCTYPE html>&ThickSpace;A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"\u205F\u200AA\"\n\n"
    assert_parses input, output
  end
  it "4" do
    input = "<!DOCTYPE html>&NotSubset;"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"⊂⃒\"\n\n"
    assert_parses input, output
  end
  it "5" do
    input = "<!DOCTYPE html>&NotSubset;A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"⊂⃒A\"\n\n"
    assert_parses input, output
  end
  it "6" do
    input = "<!DOCTYPE html>&Gopf;"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"𝔾\"\n\n"
    assert_parses input, output
  end
  it "7" do
    input = "<!DOCTYPE html>&Gopf;A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"𝔾A\"\n"
    assert_parses input, output
  end
end
