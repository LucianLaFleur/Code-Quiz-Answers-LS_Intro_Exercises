#Exercises 1 through 6 are included in this group

puts "--- Exercise 1 ---"
# Objective: print an array of 1..10 to the screen

a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a1.each do |x|
  p x
end

puts " --- Exercise 2 ---"
# print all numbers above 5

a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a1.each do |x|
  if x > 5
  p x
  end
end

puts "--- Exercise 3 ---"
# Extract all odd numbers into a new array

a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a2 = a1.select { |x| x % 2 == 1 }

p a2

#Without .select...

# a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# a2 = []
#
# a1.each do |x|
#   if x % 2 == 1
#   a2 << x
#   end
# end
#
# p a2

puts "--- Exercise 4 ---"
# objective: Append "11" to the end of the original array.
# then Prepend "0" to the beginning.

a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

#.push adds the (arg) to the end of the array
a1.push(11)

#.unshift adds the (arg) to the front
a1.unshift(0)
p a1

puts "--- Exercise 5 ---"
#objective: delete 11 from the end of the array and add 3 to the end instead

a1.delete(11)
# or .pop works to delete the last item in an array too...
a1.push(3)
p a1

puts "--- Exercise 6 ---"
#Objective: get rid of duplicates without specifically removing any one variable
# Instructions unclear, I can just "print" the non dupes pretty easy

# the print-only solution, leaving array unchanged
a2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
p a2.uniq

# however if "get rid of" means "delete dupes from the array", then I'll try
# to make a method for that too
# The deletion of repeated elements solution:
def del_dupes(array)
  if array.length != array.uniq.length
  array = array.uniq
  end
end

p del_dupes(a2)
puts "and just to test"
dupe_arr = [1,1,1,3,3,33,3,3,4,4,4,4,4,1,1,1,2,2,3,3,5,5,5,5,5]
#using .sort just to make the output neater...
p del_dupes(dupe_arr).sort
