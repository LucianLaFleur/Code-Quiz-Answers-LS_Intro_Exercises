# FlowControlQ4
# Objective: What will each block of code below print to the screen?

#1)
  '4' == 4 ? puts("TRUE") : puts("FALSE")

#1) Prints "FALSE" because a 'string' is not equal to an integer

puts "---"

#2)
   x = 2
   if ((x * 3) / 2) == (4 + 4 - x - 3)
     puts "Did you get it right?"
   else
     puts "Did you?"
   end
#1) kind of a shame that this isn't a more practical example,
# but maybe that would take a lot of fabricated context to set up...

# plugging x-2 in: ((2*3)/2) == (4+4-2-3)
#                    6/2 == 8-2-3
#                     3 == 6-3
#                       3 == 3
#                  this is true, so the "if" part runs,
# the program puts "Did you get it right?" to the screen

puts"---"

#3)
# Comments are interspersed between lines of code to use context better:
# it puts "Alright now!" to the screen from the first elsif being fulfilled

   y = 9
   x = 10
   if (x + 1) <= (y)
  # 10 + 1 <= 9  ... 11 <= 9 ... FALSE, move on
     puts "Alright."
   elsif (x + 1) >= (y)
  # 10 + 1 >= 9 ... 11 >= 9 ... TRUE, so run this block and stop
     puts "Alright now!"
  #the above line appears on the screen. None of the below code gets run.
   elsif (y + 1) == x
     puts "ALRIGHT NOW!"
   else
     puts "Alrighty!"
   end
