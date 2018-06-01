# Examples question 10
#
# Can hash values be arrays?
# Can you have an array of hashes? (give examples of each)

hash_of_array_values = {
example_key: [1,2,3],
another_key: ["a string", "another string", "a third-string string"]
}
p hash_of_array_values
# ^^ eh, the printout is messy ^^ but hashes usually aren't printed out anyway

puts "---"

array_of_hashes = [
  {crystals: "quartz", semi_precious: "Turqoise " "Laguna Agate"},
  {ores: "iron", rocks: "granite"},
  {tools: "pickaxe", wearable_gear: "miner's helmet"}]

# I guess you'd usually have hashes divided up by genre, right?
# Can't think of a good example for that...
  puts array_of_hashes

  puts "___---___---___"

  # I'd probably assign each hash a variable name first, then just put
  # the variables in a hash, to be honest, though that's still actually
  # putting the data of a hash into an array via the value of a variable.
  # Looks a bit neater that way, and would make locating info easier. 

  valuable_stones = {crystals: "quartz",
                    semi_precious: "Turqoise " "Laguna Agate"}
  mined_material = {ores: "Iron " "Copper " "Tin", rocks: "granite"}
  equips = {tools: "pickaxe", wearable_gear: "miner's helmet"}

  array2_of_hashes2 = [ valuable_stones, mined_material, equips]

  puts array2_of_hashes2
