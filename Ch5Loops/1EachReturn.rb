# loopyQ1
#
# Objective:
# What does the each method in the following program return
# after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

#Answer : It returns the same value for the array that you started with
#because .each is non-destructive. You want .map if you wanna change the
# array in a permanent manner
