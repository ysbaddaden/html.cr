require "../spec_helper"

describe "menuitem-element" do
  it "00" do
    input = "<menuitem>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "</menuitem>"
    output = "| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!DOCTYPE html><body><menuitem>A"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n|       \"A\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!DOCTYPE html><body><menuitem>A<menuitem>B"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n|       \"A\"\n|       <menuitem>\n|         \"B\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!DOCTYPE html><body><menuitem>A<menu>B</menu>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n|       \"A\"\n|       <menu>\n|         \"B\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!DOCTYPE html><body><menuitem>A<hr>B"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n|       \"A\"\n|       <hr>\n|       \"B\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!DOCTYPE html><li><menuitem><li>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <li>\n|       <menuitem>\n|     <li>\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!DOCTYPE html><menuitem><p></menuitem>x"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n|       <p>\n|         \"x\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!DOCTYPE html><p><b></p><menuitem>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <b>\n|     <b>\n|       <menuitem>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!DOCTYPE html><menuitem><asdf></menuitem>x"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n|       <asdf>\n|     \"x\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!DOCTYPE html></menuitem>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!DOCTYPE html><html></menuitem>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!DOCTYPE html><head></menuitem>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!DOCTYPE html><select><menuitem></select>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!DOCTYPE html><option><menuitem>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <option>\n|       <menuitem>\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<!DOCTYPE html><menuitem><option>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n|       <option>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!DOCTYPE html><menuitem></body>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!DOCTYPE html><menuitem></html>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!DOCTYPE html><menuitem><p>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n|       <p>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!DOCTYPE html><menuitem><li>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <menuitem>\n|       <li>\n"
    assert_parses input, output
  end
end
