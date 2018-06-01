# Arrays Question 4
#
# Objective: What does each method return in the following examples?

arr = [15, 7, 18, 5, 12, 8, 5, 1]
#
# Q 1.
# puts arr.index(5)

# A 1.
# Returns 3
# the first 5 numeral is in the 3 index spot in the array.
# arrays start counting at zero, so 3 is actually the fourth position...

# Q 2.
# puts arr.index[5]

# A 2.
# Returns a (no method error), saying [] is an unudefined method for the
# enumerator of the array's index(es).
# To fix it, those square brackets should be changes to () parentheses. Or,
# just remove the .index part.

# Q 3.
# puts "3."
# puts arr[5]

# A 3.
# returns 8, since 5 draws up the sixth item in a 0-indexed array.

# If we wanted to count backwards from the end, since 8 is closer to the end
# than the start of the array, we could use arr[-3].
# However, the negative indexing doesn't appear to work in the .index(-3)
# which returns nil as I tested below.

# Test : : : : :
# puts arr.index(-3)
# puts "---"
# puts arr[-3]

# I think this exercise is trying to show that .index is a method that takes
# an (argument), and similarly the square brackets when doing arr[5] also
# constitute a method that's acting on the array, scanning the index for
# a value at the indicated location.
