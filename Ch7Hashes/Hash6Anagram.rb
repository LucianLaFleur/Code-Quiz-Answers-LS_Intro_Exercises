# Hash question 6
#
# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
#
# Write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but
# in a different order. Your output should look something like this:
#       ["demo", "dome", "mode"]
#       ["neon", "none"]
#       (etc)

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams = {}
  words.each do |x|
  template = x.split('').sort.join
# gotta make a template of all the words in a standardized order to compare
# so anagrams will match. Cut apart the chars with split, then sort 'em and
# put 'em back together with .join
  if anagrams.has_key?(template)
  anagrams[template] << x
# Check if our hash already has the template included so we don't repeat
# the same template twice. Yield the value if the anagram template is already
# included.
  else
  anagrams[template] = [x]
# set the unique template as a key in our hash
# And, just because I want to see the templates to make sure, I'll print 'em
   puts template
  end
end
puts "--- The organized anagram hash ---"
# just to show  how the hash has the template as the key and all the anagrarm
# variants as the values, I'll print the anagrams hash
p anagrams

puts "--- showing the word sets now ---"

anagrams.each_value do |y|
  p y
end
