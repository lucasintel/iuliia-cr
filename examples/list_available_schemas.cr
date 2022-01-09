require "../src/iuliia"

Iuliia.available_schemas.each do |schema|
  puts "#{schema} => #{schema.description}"
end
