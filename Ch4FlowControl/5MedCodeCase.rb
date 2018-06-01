#FlowControl Q5

=begin
Objective:
Rewrite your program from exercise 3 using a case statement.
Wrap this new case statement in a method and make sure it still works.
=end

# re-writing this since comparison operators don't chain well
# with a case statement


def case_reporter(num)
  case num
  when 0 .. 50
      puts "Meh, #{num} is between zero and fifty."
  when 51 .. 100
      puts "Cool, #{num} is between fifty and a hundred."
  when 101 .. 9000
      puts "Wow, #{num} is over a hundred!"
  else
    if num > 9000
    puts "It's over 9000!!!"
    else num < 0
    puts "Blech, #{num} is negative. :( "
    end
  end
end

# Still using random selections to demonstrate

10.times do
case_reporter(rand -50..150)
end
# and just to be silly
puts "---"
case_reporter(9999)
