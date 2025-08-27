require "../spec_helper"

describe "entities02" do
  it "00" do
    input = "<div bar=\"ZZ&gt;YY\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ>YY\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<div bar=\"ZZ&\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<div bar='ZZ&'></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<div bar=ZZ&></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<div bar=\"ZZ&gt=YY\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&gt=YY\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<div bar=\"ZZ&gt0YY\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&gt0YY\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<div bar=\"ZZ&gt9YY\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&gt9YY\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<div bar=\"ZZ&gtaYY\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&gtaYY\"\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<div bar=\"ZZ&gtZYY\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&gtZYY\"\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<div bar=\"ZZ&gt YY\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ> YY\"\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<div bar=\"ZZ&gt\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ>\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<div bar='ZZ&gt'></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ>\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<div bar=ZZ&gt></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ>\"\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<div bar=\"ZZ&pound_id=23\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ£_id=23\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<div bar=\"ZZ&prod_id=23\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&prod_id=23\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<div bar=\"ZZ&pound;_id=23\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ£_id=23\"\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<div bar=\"ZZ&prod;_id=23\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ∏_id=23\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<div bar=\"ZZ&pound=23\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&pound=23\"\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<div bar=\"ZZ&prod=23\"></div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       bar=\"ZZ&prod=23\"\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<div>ZZ&pound_id=23</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"ZZ£_id=23\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<div>ZZ&prod_id=23</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"ZZ&prod_id=23\"\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<div>ZZ&pound;_id=23</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"ZZ£_id=23\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<div>ZZ&prod;_id=23</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"ZZ∏_id=23\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<div>ZZ&pound=23</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"ZZ£=23\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<div>ZZ&prod=23</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"ZZ&prod=23\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<div>ZZ&AElig=</div>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <div>\n|       \"ZZÆ=\"\n"
    assert_parses input, output
  end
end
