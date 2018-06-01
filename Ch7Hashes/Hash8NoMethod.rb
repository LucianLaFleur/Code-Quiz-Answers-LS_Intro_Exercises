# Hashes Question 8
#
puts "Question: If you see this error,
what do you suspect is the most likely problem?
  (all multiple choice responses shown in code-comments)"

 puts "NoMethodError: undefined method `keys' for Array"
#
# A. We're missing keys in an array variable.
# Response:
# While not "technically" wrong, since there are no "keys" in arrays, the
# issue is the method we're trying to call for an array object. The user
# probably meant ".each_index" for the array.
#
puts "Answer:"
puts "B. There is no method called keys for Array objects."
#
# C. keys is an Array object, but it hasn't been defined yet.
# Response:
# No problem about undefined variables gets raised.

# D. There's an array of strings, and we're trying to get the string keys
# out of the array, but it doesn't exist.
# Response:
# The array exists; if we were trying to do something and there was no array,
# but our code presupposed an array to operate on, the error would say
# say something like "expecting Array" in the message.

puts "Explained: Rather explicitly, \"NoMethodError\" means that the user
tried to employ a method that the system doesn't recognize for the given
context. While .keys \"does\" exist for hashes, .keys cannot be called on an
array because arrays don't have keys, only indexes and values.
Some methods only make sense for certain objects, but not others."
