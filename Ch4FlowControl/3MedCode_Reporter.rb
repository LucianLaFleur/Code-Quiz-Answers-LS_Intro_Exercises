#FlowControl Q5

=begin
Objective:
Rewrite your program from exercise 3 using a case statement.
Wrap this new case statement in a method and make sure it still works.
=end

#I added a bit of functionality to check for negatives too

def fifties_reporter(num)
# (I can take out argument for num and ask for 'gets' instead...)
#  puts "Please enter a number to check"
#  num = gets.chomp
# (Drawback here is that human input slows down the number crunching so I
# can't crank out 10 examples quickly with 10.times do)
    if (num >= 0) and (num < 50)
      puts "Meh, #{num} is between zero and fifty."
    elsif (num > 50) and (num <101)
      puts "Cool, #{num} is between fifty and a hundred."
    elsif (num >= 101) and (num <= 9000)
      puts "Wow, #{num} is over a hundred!"
      # next line won't get hit in my demo, but it's funny, so I added it
      # anyways.
    elsif num > 9000
      puts "It's over 9000!!!"
    else puts "Blech, #{num} is negative. :( "
    end
end

#To demonstrate, I'll select some random numbers to plug into it

10.times do
fifties_reporter(rand -50..150)
end

fifties_reporter(9999)
