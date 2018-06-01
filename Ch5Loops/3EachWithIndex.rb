# Loops Question 3
#
# Use the each_with_index method to iterate through an array of your creation
# that prints each index and value of the array.

a_few_good_taters = ["Po", "tay", "toes", "Boil 'em", "Mash 'em",
  "Stick 'em in a stew"]
  
a_few_good_taters.each_with_index do |chip, index|
puts "#{index}) #{chip}"
end

# I'm going to assume it's okay to leave the first item as 0) since
# arrays are zero-indexed. To make "normal" numbering, I'd just make the call
# #{index + 1}
