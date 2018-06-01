# Loopy 4
# Objective: Use recursion to count down to zero

def countdown(n)
  unless n < 0
    puts n
    countdown(n - 1)
  end
end

countdown(4)
#nothing returned for negative here...
countdown(-2)
puts "---"
countdown(0)
#I guess counting from 0 to 0 is still technically counting to zero...

puts "--- V2 Countdown---"


def try_case_countdown(n)
  bump_down = (n - 1)
  case
  when n > 0
    puts n
    try_case_countdown(bump_down)
      if bump_down == 0
        puts "0, liftoff!"
      end
  when n < 0
    puts "Can't count 'down' to zero from #{n}"
  end
# ??? I can't figure out how to make a special message if the user gets cheeky
# and inputs 0 in my "count down to zero" program. When I try and add the
# following code, it also gets executed with the normal countdown.
# How do I scan for previous input so that you only get the crude message
# if the start-number is zero?
# ????????????????

  # if n == 0
  #   puts "You put in zero when we're counting TO zero?"
  # end

  #doesn't work as an additional "when" statement either

  #Also doesn't work to tack on an if-statement at the
# start or at the end like below

  # if bump_down == -1
  # puts "You put in zero when we're counting TO zero?"
  # end
end

    try_case_countdown(4)
    puts "---"
    try_case_countdown(-2)
# 0 returns nothing
    try_case_countdown(0)

    puts "--- V3 Iterator Comparison---"
# I know this is itteration rather than recursion, but it serves a good point
# of comparison... for handling numbers, itteration really makes sense
# since you can manipulate numbers in arrays to form order easily.

puts "Please type a number you want to count down from:"

  top_num = gets.chomp.to_i
  puts "You selected #{top_num}. Enjoy the countdown:"
da_numbers = *(0 .. top_num)
      puts da_numbers.reverse
