#variables, ch 2, ex 2
#???? For some reason, when I run this, it demands a use input BEFORE
# printing out a single darn string, so there's no input prompt
# gets.chomp ain't workin' right for me...

puts "How old are you? (please input a number)"
user_age = gets.chomp.to_i
# ??? How do I write "if user input is not an integer, loop back and present
# another message asking for input again?"
# if user_age.intiger? == true
# then run code ... Else return to line 3?
#??? How do I make a conditional return to a pervious line in Ruby?


puts "Then in 10 years you'll be:"
# Keeping the sum as an integer
puts user_age + 10

puts "Okay, so in 20 years you'll be:"
# Operating on the sum within a call, within a string
puts "#{user_age + 20}"

#Putting the string all on one line with \newline escape key and a #call
puts "And in 30 years, you'll be:\n#{user_age + 30}"

puts "That means, in 40 years you'll be, like, 53? No, wait, I mean you'll be:
#{user_age + 40} years old."

# as a more interactive thing, I added another gets.chomp that will let you
# input the number of decades you want to calculate into the future
# Uncomment the below code to use it ... and have a giggle at the strings

# counter1 = 0
# puts "How many decades do you want your age breakdown to go for?"
#   desired_decades = gets.chomp.to_i
#
# (desired_decades).times do
#   counter1 +=1
#   decade_counter = counter1*10
#     if (decade_counter + user_age) >= 70
#       puts "In #{decade_counter} years, you're probably going to have
#       one foot in the grave at #{decade_counter + user_age}."
#     elsif (decade_counter + user_age) >= 40
#       puts "In #{decade_counter} years, you'll be over the hill, at
#       #{decade_counter + user_age} years old."
#     elsif (decade_counter + user_age) >= 30
#       puts "In #{decade_counter} years, your chances for getting married are
#       slim if you're #{decade_counter + user_age} and still unwed."
#     else
#     puts "In #{decade_counter} years, you'll be #{decade_counter + user_age}
#     years old."
#     end
#   end
