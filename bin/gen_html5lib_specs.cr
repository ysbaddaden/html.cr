require "json"

puts %(require "./spec_helper")

Dir["html5lib-tests/tokenizer/*.test"].sort.each do |path|
  suite = File.basename(path, ".test")
  next if suite == "xmlViolation"

  tests = File.open(path, "r") { |file| JSON.parse(file) }

  puts %(describe #{path.inspect} do)
  tests["tests"].as_a.each do |test|
    name = "#{suite}:#{test["description"]}"
    tag_name = (test["lastStartTag"]? || "__invalid__").inspect
    unescape = !!test["doubleEscaped"]?

    puts %(  it #{name.inspect} do)
    puts %(    output = #{test["output"].to_json.inspect})

    if unescape
      puts %(    input = unescape(#{test["input"].inspect}))
    else
      puts %(    input = #{test["input"].inspect})
    end

    if (any = test["initialStates"]?) && (states = any.as_a?)
      states.each do |state|
        case state.as_s
        when "Data state"
          puts %(    assert_lexes input, output, HTML::Lexer::State::DATA, "", #{unescape})
        when "RCDATA state"
          puts %(    assert_lexes input, output, HTML::Lexer::State::RCDATA, #{tag_name}, #{unescape})
        when "RAWTEXT state"
          puts %(    assert_lexes input, output, HTML::Lexer::State::RAWTEXT, #{tag_name}, #{unescape})
        when "PLAINTEXT state"
          puts %(    assert_lexes input, output, HTML::Lexer::State::PLAINTEXT, "", #{unescape})
        when "Script data state"
          puts %(    assert_lexes input, output, HTML::Lexer::State::SCRIPT_DATA, #{tag_name}, #{unescape})
        when "CDATA section state"
          puts %(    assert_lexes input, output, HTML::Lexer::State::CDATA_SECTION, #{tag_name}, #{unescape})
        else
          puts %(    skip "Unsupported states: #{states.join(", ")}")
        end
      end
    else
      puts %(    assert_lexes input, output, HTML::Lexer::State::DATA, "", #{unescape})
    end

    puts %(  end)
  end
  puts %(end)
end
