#Ch3Q5_Print
puts "original: prints nothing, returns nothing"

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

puts "Augmented: prints the concatenated string, but still returns nil"

def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")

#puts returns as nil, just for reference
