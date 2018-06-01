# Hash Question 3
#
# objective:
# 1) Write a program that loops through a hash and prints all of the keys.
# 2) Then write a program that does the same thing except printing the values.
# 3) Finally, write a program that prints both.

h1 = { hero: "Link", princess: "Zelda", evil_power: "Ganon"}

#Just the keys below
h1.each_key {|x| puts x}

puts "---"
# Just the names below
h1.each_value {|y| puts y}

puts "---"
# Now for both together
# My keys are the role, and the values are the names, so bear with me even
# though I have to switch up the order in the next line
h1.each_pair{|role, name| puts "#{name} is the #{role}"}

# Not much of a comment for this, it's a straightforward exercise
