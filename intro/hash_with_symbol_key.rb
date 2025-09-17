instrument_section = {
  :cello => "string",
  :clarinet => "woodwind",
  :drum => "percussion",
  :oboe => "woodwind",
  :trumpet => "brass",
  :violin => "string"
}

puts instrument_section[:oboe] 
puts instrument_section[:cello]
puts instrument_section["cello"]
puts "An oboe is a #{instrument_section[:oboe]} instrument"
