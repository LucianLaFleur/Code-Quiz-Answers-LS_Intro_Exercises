# Arrays Question 7
#
# Objective:
#
# Write a program that iterates over an array and builds a new array that is the
# result of incrementing each value in the original array by a value of 2. You
# should have two arrays at the end of this program, The original array and the
# new array you've created. Print both arrays to the screen using the p method
# instead of puts.

# Answer: The easiest thing for me is defining a new variable with the
# value of the original array operated on by +2 for each element...

arr1 = [1,2,3]

arr2 = arr1.map{|x| x + 2}

print arr1
puts "\n and the second"
print arr2


# After reviewing the online solution recommended, I see how << can be used too
# Using the append operation << I can move the values to an empty array

#arr1 = [1, 2, 3]
# arr2 = []
#
# arr1.each do |x|
#   arr2 << x + 2
# end
