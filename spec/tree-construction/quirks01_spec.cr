require "../spec_helper"

describe "quirks01" do
  it "0" do
    input = "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\"\n\"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\"><p><table>"
    output = "| <!DOCTYPE html \"-//W3C//DTD XHTML 1.0 Frameset//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|     <table>\n\n"
    assert_parses input, output
  end
  it "1" do
    input = "<!DOCTYPE html SYSTEM \"http://www.ibm.com/data/dtd/v11/ibmxhtml1-transitional.dtd\"><p><table>"
    output = "| <!DOCTYPE html \"\" \"http://www.ibm.com/data/dtd/v11/ibmxhtml1-transitional.dtd\">\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <table>\n\n"
    assert_parses input, output
  end
  it "2" do
    input = "<!DOCTYPE html PUBLIC \"html\"><p><table>"
    output = "| <!DOCTYPE html \"html\" \"\">\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <table>\n\n"
    assert_parses input, output
  end
  it "3" do
    input = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2//EN\"\n   \"http://www.w3.org/TR/html4/strict.dtd\"><p><table>"
    output = "| <!DOCTYPE html \"-//W3C//DTD HTML 3.2//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">\n| <html>\n|   <head>\n|   <body>\n|     <p>\n|       <table>\n"
    assert_parses input, output
  end
end
