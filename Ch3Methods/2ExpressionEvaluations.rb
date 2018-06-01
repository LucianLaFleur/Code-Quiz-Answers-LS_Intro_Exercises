#Expression Evaluations
#??? General question, when posting notes to git, is there a recommended
# file type to use for text-info, rather than doing this comment-out thing
# that I have going on here with Ruby?
# Like, would .txt be good for that purpose in git?

#1)
x = 2
# => 2
# Defining a variable returns the value of the variable defined

#2)
puts x = 2
# => nil
# The return value of "puts" is nil, even though x has a value.
# the puts method is what's getting returned, not just the variable
# that we see printed to the screen.
# I think it has something to do with puts making a newline?

def x_instantiater
  puts x = 2
end
#In the output, you'll see two "2"s, each on their own line
#from the above "puts" commands. Then check the following code:

if x_instantiater == nil then puts "See? It returns the value => nil"
else puts "I can write whatever I want here because it's not going to be
  displayed to the screen, so I'll admit it: I liked the first Twilight book."
end

#3)
p name = "Joe"
# => "Joe"
# the "p" method DOES return the contained value, unlike "puts"

#4)
four = "four"
# => "four"
# The quotes are important here, showing we defined the variable four as
# pointing to the string "four". Like in example 1, defining a variable
# returns the value of that variable

#5)
print something = "nothing"
# => nil
=begin (comment rolls into the example below)
both "puts" and "print" methods return nil after displaying text
to the screen. "p" both displays a value to the screen AND returns
that value to the computer. There is a custom gem called "reputs" that
can do the same for "puts", or you can jury-rig a method to print a
value to the screen then return it.

I play around with what is returned to the screen, as well as what is
returned to the method below.
=end

#just adding a newline because #5 is a "print", and butts-up against this
# in the stuff printed to the screen
print "\n"

def bootleg_print_n_return
  puts "An angel on the streets"
  #but secretly...
  "A demon in the sheets"
end

if bootleg_print_n_return ==  "A demon in the sheets"
  puts " ... Oh, I know what you mean *wink*"
else puts "She's a good girl, I swear!"
end
