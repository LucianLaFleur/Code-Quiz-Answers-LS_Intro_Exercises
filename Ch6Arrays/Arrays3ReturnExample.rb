# Arrays Question 3
#
# Objective:
# How do you return the word "example" from the following array?
# arr = [["test", "hello", "world"],["example", "mem"]]

#Answer: "examaple" is the first item of the second array, targeting from
# outermost via indexes and working our way in, it should be arr[1][0].

arr = [["test", "hello", "world"],["example", "mem"]]
puts arr[1][0]

#or I could save it as a variable...
puts "---"

var1 = arr[1][0]

puts var1

puts "---"
# Or, less flexibly, you can use .last and .first, since "example"
# is in the array that's the last object of the big array, and then it is the
# first item therein.

puts arr.last.first
