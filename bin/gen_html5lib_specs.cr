#! /usr/bin/env -S crystal i
# Copyright 2025 Julien PORTALIER
# Distributed under the Apache-2.0 LICENSE

require "json"

Dir.mkdir "spec" unless Dir.exists?("spec")
Dir.mkdir "spec/tokenizer" unless Dir.exists?("spec/tokenizer")

Dir["html5lib-tests/tokenizer/*.test"].sort.each do |path|
  suite = File.basename(path, ".test")
  next if suite == "xmlViolation"

  puts "Writing spec/tokenizer/#{suite}_spec.cr"

  File.open("spec/tokenizer/#{suite}_spec.cr", "w") do |io|
    cases = File.open(path, "r") { |file| JSON.parse(file) }

    io.puts %(require "../spec_helper")
    io.puts %(describe "tokenizer/#{suite}" do)

    cases["tests"].as_a.each do |test|
      name = "#{test["description"]}"
      tag_name = (test["lastStartTag"]? || "__invalid__").inspect
      unescape = !!test["doubleEscaped"]?
      errors = test["errors"]?.inspect

      io.puts %(  it #{name.inspect} do)
      io.puts %(    output = #{test["output"].to_json.inspect})

      if unescape
        io.puts %(    input = unescape(#{test["input"].inspect}))
      else
        io.puts %(    input = #{test["input"].inspect})
      end

      if (any = test["initialStates"]?) && (states = any.as_a?)
        states.each do |state|
          case state.as_s
          when "Data state"
            io.puts %(    assert_lexes input, output, #{errors}, HTML::Lexer::State::DATA, "", #{unescape})
          when "RCDATA state"
            io.puts %(    assert_lexes input, output, #{errors}, HTML::Lexer::State::RCDATA, #{tag_name}, #{unescape})
          when "RAWTEXT state"
            io.puts %(    assert_lexes input, output, #{errors}, HTML::Lexer::State::RAWTEXT, #{tag_name}, #{unescape})
          when "PLAINTEXT state"
            io.puts %(    assert_lexes input, output, #{errors}, HTML::Lexer::State::PLAINTEXT, "", #{unescape})
          when "Script data state"
            io.puts %(    assert_lexes input, output, #{errors}, HTML::Lexer::State::SCRIPT_DATA, #{tag_name}, #{unescape})
          when "CDATA section state"
            io.puts %(    assert_lexes input, output, #{errors}, HTML::Lexer::State::CDATA_SECTION, #{tag_name}, #{unescape})
          else
            io.puts %(    skip "Unsupported states: #{states.join(", ")}")
          end
        end
      else
        io.puts %(    assert_lexes input, output, #{errors}, HTML::Lexer::State::DATA, "", #{unescape})
      end

      io.puts %(  end)
    end
    io.puts %(end)
  end
end
