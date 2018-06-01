# Hash question 1
#
# Objective:
# Given a hash of family members, with keys as the title and an array of names
# as the values, use Ruby's built-in select method to gather only immediate
# family members' names into a new array.

 family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

close_fam = []

 family.each do |k, v|
   if k == :sisters
     close_fam << v
   elsif k == :brothers
     close_fam << v
   end
 end

print close_fam.flatten

# Huh, I guess my conditional append is a bit sloppier than using select.
# I see the online solution takes two steps to get the target keys first
# then take out their values into an array .

# immediate_family = family.select do |k, v|
#   k == :sisters || k == :brothers
# end
#
# arr = immediate_family.values.flatten
#
# p arr

puts "\n--- verion 2 with || ---"
#That gives me an idea to tidy up my work

close_fam = []

 family.each do |k, v|
   if k == :sisters || k == :brothers
     close_fam << v
   end
 end

print close_fam.flatten
