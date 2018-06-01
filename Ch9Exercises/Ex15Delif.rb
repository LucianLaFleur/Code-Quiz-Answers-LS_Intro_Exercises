# Exercise question 15
# Use Ruby's Array method delete_if and String method start_with? to delete all
# of the words that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# Then recreate the arr and get rid of all of the words
# that start with "s" or "w".
# *** Answer
puts arr

puts "---"
arr.delete_if {|word| word.start_with?("s")}
# salted roads got deleted, but "roads" doesn't start with "s"
arr << "roads"
puts arr

puts "-- Getting rid of \"s\" and \"w\" --"
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if {|word| word.start_with?("s", "w") }
arr << "roads"
arr << "trees"
puts arr

puts "--V3-- (everything below here is broken)"

# On a variation, trying to get it to recognize the individual words
# within the strings, using .split and then using regex selection
# I don't understand why the following code doesn't work, because I'm trying
# to split all strings at the space then target all strings starting with s
# or W, and it still returns "winter" and "salted roads"...
#
# arr.each do |word|
#   word.split(" ")
#   if (word =~ /^s/) || (word =~ /^w/)
#     arr.delete(word)
#   end
# end
#
# p arr => winter, ice, salted roads

# Again, I try to split the words up, but for some reason the same three
# bootleg words get output

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# arr.each do |word|
#   word.split("")
#   if word.start_with?("s", "w")
#     arr.delete(word)
#   end
# end
# puts arr

#nope, that still doesn't work

# arr.each do |word|
#   word.split(" ")
#     if (word.split(" ") =~ /^s/) || (word.split(" ") =~ /^w/)
#       arr.delete(word)
#     else
#       puts word
#     end
# end

# I still can't explain what is going wrong here in the selection...

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.each do |word|
 puts word.split(" ")
end

puts "--just showing that .split actually splits the strings--"


# arr.each do |word|
#     if (word.split(" ") =~ /^s/)
#       word.delete
#     elsif (word.split(" ") =~ /^w/)
#       word.delete
#     else
#       puts word
#     end
# end

#darn, nothing is working to split and delete starting words, but I
# don't understand why, please help and explain what is going wrong here...
# Am i not using .map in a certain way, because I've tried these code bits
# with .map and it doesn't change anyhting. The selection is the problem...
