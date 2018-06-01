# hashes question 7
#
# Objective: What's the difference between the two hashes created? :
#
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

# The first uses X: which is a symbol, for the key
# This symbol x: is unique from the variable x = "hi there" defined above it.
# Symbols don't point to a value, they ARE unique values
#
# The second uses the variable x to point to the instantiated string "hi there"
# So, the second key is a string, shown by variable X, making the key
# value the string "hi there".
#
# Also, if we didn't want to define a variable,
# we can make a string a key directly
# :::example:::
my_hash3 = {"y" => "Why not?"}

p my_hash
p my_hash2
p my_hash3
