require "../spec_helper"

describe "pending-spec-changes-plain-text-unsafe" do
  it "0" do
    input = "<body><table>\u0000filler\u0000text\u0000"
    output = "| <html>\n|   <head>\n|   <body>\n|     \"fillertext\"\n|     <table>\n"
    assert_parses input, output
  end
end
