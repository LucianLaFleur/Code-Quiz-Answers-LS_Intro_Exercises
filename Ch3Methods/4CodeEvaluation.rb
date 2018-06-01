#Ch3Q4_Code_Evaluation
puts "--- Scream Version 1 ---"

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

=begin
The above code doesn't print anything to the screen.
explicitly returning from a method stops running all the code beneath it.
So, it never reaches the "puts" part.
Apparently putting return on a blank line tells the method to return nil,
since even putting "puts" in the line calling the method will not print
anything, meaning there is no stored value
=end
puts "--- Scream Version 2 ---"

def scream(words)
  words = words + "!!!!"
  return
  puts words
end
#adding puts
puts scream("Yippeee")

# We get a newline there, thanks to puts, but it's empt
#Now, if I move some value to the explicit return line, then that gets
#stored as the value for the method

puts "--- Scream Version 3 ---"

def scream(words)
  words = words + "!!!!"
  return puts words
  #Or I could leave out "return" altogether, since methods auto-return the
  #last line within them.
end

scream("Yippeee")

#I think that's working as intended
#Now, let's demonstrate that the explicit return ignores other stuff

puts "--- Scream Version 4 ---"

def scream(words)
  words = words + "!!!!"
  return "I'm the center of attention"
  puts words
  puts "I don't matter because return has already been called in this method
  above me"
end

puts scream("Yippeee")

# Huh, I guess this would be more useful when you have a lot of
# branching conditionals and you want to stop the script if a
# certain condition is met ... I'd need more examples to see how it's
# properly employed for something more dynamic
