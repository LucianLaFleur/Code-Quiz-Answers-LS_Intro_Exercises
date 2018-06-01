# Example question 17
# Objective: Determine the output:

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# ***
# Answer:
# The output is "These hashes are the same!"
# Order does not matter in hashes, order only matters to arrays.
# The two hases contain the same key-value pairs, even if the way the pairs
# are written is different, the contents are the same.
# thus hash1 == hash2 => true

# Also, this person is probably not dressed well for a job interview...
