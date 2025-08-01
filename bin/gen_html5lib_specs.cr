require "json"

puts %(require "./spec_helper")

Dir["html5lib-tests/tokenizer/*.test"].sort.each do |path|
  suite = File.basename(path, ".test")
  next if suite == "xmlViolation"

  tests = File.open(path, "r") { |file| JSON.parse(file) }

  puts %(describe #{path.inspect} do)
  tests["tests"].as_a.each do |test|
    name = "#{suite}:#{test["description"]}"
    input = test["input"].inspect
    output = test["output"].to_json.inspect
    tag_name = (test["lastStartTag"]? || "__invalid__").inspect

    puts %(  it #{name.inspect} do)

    if test["doubleEscaped"]?
      puts %(    skip)
    elsif (any = test["initialStates"]?) && (states = any.as_a?)
      states.each do |state|
        case state.as_s
        when "Data state"
          puts %(    assert_lexes #{input}, #{output})
        when "RCDATA state"
          puts %(    assert_lexes #{input}, #{output}, HTML::Lexer::State::RCDATA, #{tag_name})
        when "RAWTEXT state"
          puts %(    assert_lexes #{input}, #{output}, HTML::Lexer::State::RAWTEXT, #{tag_name})
        when "PLAINTEXT state"
          puts %(    assert_lexes #{input}, #{output}, HTML::Lexer::State::PLAINTEXT, #{tag_name})
        when "Script data state"
          puts %(    assert_lexes #{input}, #{output}, HTML::Lexer::State::SCRIPT_DATA, #{tag_name})
        else
          puts %(    skip # #{states.inspect})
        end
      end
    else
      puts %(    assert_lexes #{input}, #{output})
    end
    puts %(  end)
  end
  puts %(end)
end
