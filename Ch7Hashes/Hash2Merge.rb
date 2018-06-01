# Hash Question 2
#
# Objective:
# What is the difference between merge and merge! ?
# Write a program that uses both and illustrate the differences.
#
# Answer: .merge only returns the modified value for that line, it doesn't
# change the value of the operated-on array

h1 = {
"x" => 1,
"y" => 2,
"z" => 3
}

h2 = {
"q" => 24,
"w" => 26,
"o" => 33,
"p" => 36
}

#I can print the whole darn thing with puts in front of the following line
h1.merge(h2)
# However, this is non-destructive, so h1 does not change it's stored values

puts h1
# Even though I ran the code on line 24, this puts should just be the
# original set of x,y,z and their values

puts "--- and now with a bang ---"

h1.merge!(h2)

puts h1
#Note that h1 now includes the keys and values from h2, showing it was changed
