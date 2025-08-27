require "../spec_helper"

describe "tests18" do
  it "00" do
    input = "<plaintext></plaintext>"
    output = "| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "01" do
    input = "<!doctype html><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "02" do
    input = "<!doctype html><html><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "03" do
    input = "<!doctype html><head><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "04" do
    input = "<!doctype html><html><noscript><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <noscript>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "05" do
    input = "<!doctype html></head><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "06" do
    input = "<!doctype html><body><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "07" do
    input = "<!doctype html><table><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "08" do
    input = "<!doctype html><table><tbody><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n|     <table>\n|       <tbody>\n\n"
    assert_parses input, output
  end
  it "09" do
    input = "<!doctype html><table><tbody><tr><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "10" do
    input = "<!doctype html><table><td><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <plaintext>\n|               \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "11" do
    input = "<!doctype html><table><caption><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <plaintext>\n|           \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "12" do
    input = "<!doctype html><table><colgroup><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n|     <table>\n|       <colgroup>\n\n"
    assert_parses input, output
  end
  it "13" do
    input = "<!doctype html><select><plaintext></plaintext>X"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       \"X\"\n\n"
    assert_parses input, output
  end
  it "14" do
    input = "<!doctype html><table><select><plaintext>a<caption>b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       \"a\"\n|     <table>\n|       <caption>\n|         \"b\"\n\n"
    assert_parses input, output
  end
  it "15" do
    input = "<!doctype html><template><plaintext>a</template>b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|     <template>\n|       content\n|         <plaintext>\n|           \"a</template>b\"\n|   <body>\n\n"
    assert_parses input, output
  end
  it "16" do
    input = "<!doctype html><body></body><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "17" do
    input = "<!doctype html><frameset><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "18" do
    input = "<!doctype html><frameset></frameset><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "19" do
    input = "<!doctype html><body></body></html><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <plaintext>\n|       \"</plaintext>\"\n\n"
    assert_parses input, output
  end
  it "20" do
    input = "<!doctype html><frameset></frameset></html><plaintext></plaintext>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n\n"
    assert_parses input, output
  end
  it "21" do
    input = "<!doctype html><svg><plaintext>a</plaintext>b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg plaintext>\n|         \"a\"\n|       \"b\"\n\n"
    assert_parses input, output
  end
  it "22" do
    input = "<!doctype html><svg><title><plaintext>a</plaintext>b"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <svg svg>\n|       <svg title>\n|         <plaintext>\n|           \"a</plaintext>b\"\n\n"
    assert_parses input, output
  end
  it "23" do
    input = "<!doctype html><table><tr><style></script></style>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"abc\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <style>\n|             \"</script>\"\n\n"
    assert_parses input, output
  end
  it "24" do
    input = "<!doctype html><table><tr><script></style></script>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     \"abc\"\n|     <table>\n|       <tbody>\n|         <tr>\n|           <script>\n|             \"</style>\"\n\n"
    assert_parses input, output
  end
  it "25" do
    input = "<!doctype html><table><caption><style></script></style>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <caption>\n|         <style>\n|           \"</script>\"\n|         \"abc\"\n\n"
    assert_parses input, output
  end
  it "26" do
    input = "<!doctype html><table><td><style></script></style>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <style>\n|               \"</script>\"\n|             \"abc\"\n\n"
    assert_parses input, output
  end
  it "27" do
    input = "<!doctype html><select><script></style></script>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <script>\n|         \"</style>\"\n|       \"abc\"\n\n"
    assert_parses input, output
  end
  it "28" do
    input = "<!doctype html><table><select><script></style></script>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <script>\n|         \"</style>\"\n|       \"abc\"\n|     <table>\n\n"
    assert_parses input, output
  end
  it "29" do
    input = "<!doctype html><table><tr><select><script></style></script>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <select>\n|       <script>\n|         \"</style>\"\n|       \"abc\"\n|     <table>\n|       <tbody>\n|         <tr>\n\n"
    assert_parses input, output
  end
  it "30" do
    input = "<!doctype html><frameset></frameset><noframes>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   <noframes>\n|     \"abc\"\n\n"
    assert_parses input, output
  end
  it "31" do
    input = "<!doctype html><frameset></frameset><noframes>abc</noframes><!--abc-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   <noframes>\n|     \"abc\"\n|   <!-- abc -->\n\n"
    assert_parses input, output
  end
  it "32" do
    input = "<!doctype html><frameset></frameset></html><noframes>abc"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   <noframes>\n|     \"abc\"\n\n"
    assert_parses input, output
  end
  it "33" do
    input = "<!doctype html><frameset></frameset></html><noframes>abc</noframes><!--abc-->"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <frameset>\n|   <noframes>\n|     \"abc\"\n| <!-- abc -->\n\n"
    assert_parses input, output
  end
  it "34" do
    input = "<!doctype html><table><tr></tbody><tfoot>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|       <tfoot>\n\n"
    assert_parses input, output
  end
  it "35" do
    input = "<!doctype html><table><td><svg></svg>abc<td>"
    output = "| <!DOCTYPE html>\n| <html>\n|   <head>\n|   <body>\n|     <table>\n|       <tbody>\n|         <tr>\n|           <td>\n|             <svg svg>\n|             \"abc\"\n|           <td>\n"
    assert_parses input, output
  end
end
