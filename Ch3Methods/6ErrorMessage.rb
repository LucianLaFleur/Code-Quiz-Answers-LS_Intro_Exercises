#Ch3Q6_ErrorMessage
=begin
objective: explain what the following error message means

ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

You got some method that requires two arguments, and you only input one
argument, so the method can't run.

I think I can re-create this error by making and breaking a
functional program

=end

#arguments are the two things (in parentheses) on the defining line below.
def calculate_product(triceratops, velociraptor)
  # and I can make them whatever I want because they're placeholders
  explosion = triceratops * velociraptor
  puts "The product of #{triceratops} and #{velociraptor} is #{explosion}."
end

calculate_product(23, 7)

#above line works, having 2 arguments
#below, the line only has one argument and will raise the error about
#having the wrong number of args, (given 1, expected 2).

calculate_product(8)

#Yeah, it looks ugly when run, but I was deliberately trying to raise an error
# so mission accomplished... with the help of exploding dinosaurs!
