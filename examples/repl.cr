require "../src/iuliia"

PROMPT = "[iuliia] >> "

loop do
  print PROMPT
  cyrilic = gets
  if cyrilic
    result = Iuliia::Wikipedia.translate(cyrilic)
    puts "=> #{result}"
  end
end
