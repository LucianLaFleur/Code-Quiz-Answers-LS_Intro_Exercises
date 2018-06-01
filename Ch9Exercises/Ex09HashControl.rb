# Example questions 9
#
# Objectives:
# Given the following hash:
h = {a:1, b:2, c:3, d:4}
#Complete questions 1, 2, and 3 given below

# Q 1. Get the value of key `:b`.
# 1 Answer:
h[:b]

# Q 2. Add to this hash the key:value pair `{e:5}`
# 2 Answer:
h[:e] = 5
# adds :e => 5 to the hash

# Q 3. Remove all key:value pairs whose value is less than 3.5
# 3 Answer:
h.each do |key, val|
  if val < 3.5
    h.delete(key)
  end
end

# you can also use the delete_if function to truncate this...
# h.delete_if { |k, v| v < 3.5 }

p h
