# Copyright 2025 Julien PORTALIER
# Distributed under the Apache-2.0 LICENSE

require "json"

# TODO: download from <https://html.spec.whatwg.org/entities.json>

puts "module HTML"
puts "  ENTITIES = {"
JSON.parse(File.read("entities.json")).as_h.each do |name, hash|
  name = name[1..] # drop leading '&'
  print "    "
  print name.inspect
  print " => "
  print hash["characters"].inspect
  puts ","
end
puts "  }"
puts "end"
