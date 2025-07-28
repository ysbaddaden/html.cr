require "json"

# TODO: download from <https://html.spec.whatwg.org/entities.json>

puts "module HTML"
puts "  ENTITIES = Hash(String, String){"
JSON.parse(File.read("entities.json")).as_h.each do |name, h|
  name = name[1..] # drop leading '&'
  print "    "
  print name.inspect
  print " => "
  print h["characters"].inspect
  puts ","
end
puts "  }"
puts "end"
