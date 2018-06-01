# More Stuff Question 1
# Objective:
#
# Write a program that checks if the sequence of characters "lab" exists in the
# following strings. If it does exist, print out the word.

# laboratory
# experiment
# Pans Labyrinth
# elaborate
# polar bear

def contain_lab(word)
  if /lab/ =~ word
  # if "lab" is included in the word...
  puts "The term \"#{word}\" contains \"lab\"."
  else
  puts "\"#{word}\" does not match"
  end
end

contain_lab("laboratory")
contain_lab("experiment")
contain_lab("Pans Labyrinth")
contain_lab("elaborate")
contain_lab("polar bear")
puts "---"
contain_lab("astrolabe")

def contain_lab2(word)
  #changing it to downcase the target word
  if /lab/ =~ word
  puts "The term \"#{word}\" contains \"lab\"."
  #If that's false, but I downcase all letters and check again... then I
  # can compensate for capitalilzation.
  elsif /lab/ =~ word.downcase
  puts "Ignoring capitalization, \"#{word}\" contains \"lab\"."
  else
  puts "\"#{word}\" does not match"
  end
end

contain_lab2("Pans Labyrinth")
contain_lab2("Pork and beans")

puts "---"

# So, "polar bear" has the letters "l, a, b" in it...
# let's detect if the letters individually appear

def contain_lab_particles(word)
  if (/l/ =~ word) and (/a/ =~ word) and (/b/ =~ word)
    puts "Letters l-a-b detected in \"#{word}\""
  else
  puts "\"#{word}\" does not match"
  end
end

contain_lab_particles("polar bear")
#And because order doesn't matter here
contain_lab_particles("ball")

# ??? How do I make order matter in detecting letters so polar bear triggers,
# but ball does not?
