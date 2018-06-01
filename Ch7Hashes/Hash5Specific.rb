# Hashes question 5
#
# What method could you use to find out if a Hash contains a specific value
# in it? Write a program to demonstrate this use.

# .has_value? seems like the obvious choice here

yorha_units = {Attacker: "A2", Operator: "21-O", Scanner: "9S",
              Enemy: "The Alien Machines" }

if yorha_units.has_value?("The Alien Machines")
  print "Alien Infiltration Detected"
else
  print "All systems clear"
end

# # Other examples of targeting below...

# # .include? could target something, right?
# puts "---"
#
# if yorha_units.include?(:Enemy)
#   print "Enemies are trying to hack the system"
# else
#   print "Functionality at 100%"
# end
#
# puts "---"
# # .include? only deals with Keys by default, so I should be able to
# # nudge that with .values
# if yorha_units.values.include?("The Alien Machines")
#   print "Command Notified of Infiltration Attempt"
# else
#   print "It's all just peachy"
# end
# #
# puts "---"
# # Huh... I can directly use .fetch on a key that I want the value from too
# p yorha_units.fetch(:Enemy)
# # => "The Alien Machines"
