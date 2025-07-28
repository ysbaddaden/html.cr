require "json"

puts %(require "./spec_helper")

Dir["html5lib-tests/tokenizer/*.test"].sort.each do |path|
  suite = File.basename(path, ".test")
  next if suite == "xmlViolation"

  tests = File.open(path, "r") { |file| JSON.parse(file) }

  puts %(describe #{path.inspect} do)
  tests["tests"].as_a.each do |test|
    name = "#{suite}:#{test["description"]}"

    puts %(  it #{name.inspect} do)
    if test["doubleEscaped"]? || test["initialStates"]? || test["lastStartTag"]?
      puts "  skip"
    else
      puts %(    assert_lexes #{test["input"].inspect}, #{test["output"].to_json.inspect})
    end
    puts %(  end)
  end
  puts %(end)
end
