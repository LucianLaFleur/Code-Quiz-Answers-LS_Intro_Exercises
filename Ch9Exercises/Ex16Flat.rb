# Example questions 16
# Objective:
# Given the array:
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# Turn it into a new array that consists of strings containing one
# word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into
# using Array's map and flatten methods, as well as String's split method.
split_up = a.map {|x| x.split}
all_together = split_up.flatten
p all_together
#

#Just to test if I can put it all in a single string...

puts "--- and as a single string ---"
# in_a_single_string = all_together.join
# p in_a_single_string

#Eh, that's ugly. Let's try and clean that up
# Prepending a string before the last item of the list
all_together.last.prepend ("and ")
# And I want to see if I can capitalize the first item, just 'cause
# gotta bang the capitalization if I want it to stick... eew, that sounded bad
all_together.first.capitalize!
in_a_single_string = all_together.join(", ")

p in_a_single_string
