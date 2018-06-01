# arrays question 1
# Objective:
# Write a program that checks if the given number is in the given array

arr = [1, 3, 5, 7, 9, 11]
number = 3

puts "--By .include?---"
if arr.include?(number)
  puts "#{number} is in the array."
end

# The .include? method helps find a designated value in an array
puts "--- with a conditional now ---"
# just to point out a difference, .include? only looks to see if "at least"
# one value is the designated one. If I have a repeated value, and I use a
# conditional, then I'll trigger the condition for each flagged value in
# the array.

repeated_items_array = [1, 3, 5, 6, 6, 6, 7, 9, 11]

target2 = 6

repeated_items_array.each do |n|
    if n == target2
      puts "Beetlejuice"
    end
  end

  # ??? I've mentioned this in previous comments, but ...
  # Something I'd like to learn is how to make a conditional that only
  # triggers once when the condition is met, like to only print the above
  # string once.
  # Then I'd like to learn how to set a different value for the second time it
  # gets triggered.
  # Then I'd like to know how to target the last time it is triggered to make
  # the string say "this is the last one".
  # This is more about wanting a holistic understanding of functionality than
  # "needing" these capabilities at this point in the learning process.
  # for my output on the conditional, I just have "Beetlejuice" three times
  # I want to give custom strings for each ordinal:
  # I want to be able to customize it to say "First of all, Beetlejuice,"
  # Then the second until (last - 1) times say, "another Beetlejuice,"
  # And for the last, I want it to say, "And finally, Beetlejuice"
  # ***
  # To practice manipulating outputs triggered by conditionoals...
  # In a different matter, if I have a set of stocked up responses, I want
  # to say "Awesome" the first time triggered, "Cool", the second time,
  # "Neat-o" the third, and then "meh" every time thereafter.
