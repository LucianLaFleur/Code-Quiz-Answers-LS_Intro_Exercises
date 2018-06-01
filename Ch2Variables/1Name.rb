#Ch2, Variables, exercise 1
# puts "\n"
puts "---For Exercise 1---"
#name.rb

puts "Ho there, good sir. What might your name be?"
their_name = gets.chomp

puts "Ah, good day #{their_name}!"

#or, if you just have the name alone on the end, I could concatanate it with
# puts "Then I'll call you" + their_name
#Drawback: no punctuation or text following the name, unless you cat another
# string onto it. The call is more efficient in that case.

# puts "---For Exercise 3---"

# puts "please input your name"
# name_inputted = gets.chomp
#
# puts "Let me repeat that 10 times for you."
# # 10.times do
# #   puts name_inputted
# # end
#
# #Note: after instantiating name_inputted, I could run the code below.
# #    repeating a name by a gets-indicated number of times, (as long
# #    as I remember to turn the gets string into an integer)
#
# "How many times shall I repeat your name?"
# desired_times_repeated = gets.chomp.to_i
#
# counter= 0
# desired_times_repeated.times do
#   counter += 1
#   puts "#{counter}. " + name_inputted + " is awesome!"
# end
