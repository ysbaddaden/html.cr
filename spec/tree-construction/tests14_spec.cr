require "../spec_helper"

describe "tests14" do
  it "0" do
    input = "<!DOCTYPE html><html><body><xyz:abc></xyz:abc>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <xyz:abc>\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<!DOCTYPE html><html><body><xyz:abc></xyz:abc><span></span>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <xyz:abc>\n|     <span>\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<!DOCTYPE html><html><html abc:def=gh><xyz:abc></xyz:abc>"
    output = "| <!DOCTYPE html>\n| <html>\n|   abc:def=\"gh\"\n|   <head>\n|   <body>\n|     <xyz:abc>\n\n"
    assert_parses input, output
  end
  it "3" do
    input = "<!DOCTYPE html><html xml:lang=bar><html xml:lang=foo>"
    output = "| <!DOCTYPE html>\n| <html>\n|   xml:lang=\"bar\"\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "4" do
    input = "<!DOCTYPE html><html 123=456>"
    output = "| <!DOCTYPE html>\n| <html>\n|   123=\"456\"\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "5" do
    input = "<!DOCTYPE html><html 123=456><html 789=012>"
    output = "| <!DOCTYPE html>\n| <html>\n|   123=\"456\"\n|   789=\"012\"\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "6" do
    input = "<!DOCTYPE html><html><body 789=012>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     789=\"012\"\n"
    assert_parses input, output
  end
end
