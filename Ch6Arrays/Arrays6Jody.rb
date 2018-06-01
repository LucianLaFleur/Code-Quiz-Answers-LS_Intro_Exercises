# Arrays Question 6

# You run the following code...

# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# ...and get the following error message:

# TypeError: no implicit conversion of String into Integer
#   from (irb):2:in `[]='
#   from (irb):2
#   from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# What is the problem and how can it be fixed?

# Answer :
names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# Above, the writer tried to target the index 'margaret' within the names array.
# 'margaret' is a value in the array, not an index. That value is stored as the
# last item of the array though. They probably meant to write
# names[-1] = 'jody'

#To fix the problem, you need to properly target the last item of the array
# and change it to the desired value by re-defining its value.
# Let's try and do this in an interesting way...

#Trying to change the value with .map...

# names.map do |a,b,c,d|
#   d = 'jody'
# end

# Well darn, that didn't work, but I can't explain why...

# names.last = 'jody'

# Well, that becomes an undefined method for the array somehow.
# Apparently you can't stack .last with a variable definition

# I guess I can pop the last item and shovel jody on at the end...

names.pop
names << 'jody'

#??? Is there a command to substitue one value for another, so I don't
# have to chain things like

# names.last.delete then names << 'jody'

# but instead where I could go names.substitute('margaret', 'jody')
# How would I write such a custom method?

# Or, you know I could do it the boring way with names[3] or names [-1]

# names[-1] = 'jody'

print names
# and because I have mild OCD...
puts "\nAnd if you want 'em capitalized: "

print names.map{|x| x.capitalize}
