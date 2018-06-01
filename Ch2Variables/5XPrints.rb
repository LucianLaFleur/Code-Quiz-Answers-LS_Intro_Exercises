#Ch 2 Exercise 5

# Objectives
# What does x print to the screen in each case?
# Do they both give errors?
# Are the errors different? Why?

# sample_1:

# x = 0
# 3.times do
#   x += 1
# end
# puts x

# sample_2:

# here, you ought to have   x=0
y = 0
3.times do
  y += 1
  x = y
end
puts x

#Answers:
#a)   sample_1 prints 3 to the screen. x is defined as 0, then the do-loop
# incriments the value of x up by one, three times.
# essentially, it's ((x + 1) + 1) + 1
#    sample_2 gives the error
#    Ch2Ex5.rb:23:in `<main>': undefined local variable or method `x'
#     for main:Object (NameError)

# x is made up within the do/end block, so it's not available outside of
# that limited scope. An easy solution is defining x = 0 as a placeholder
# before the do/end block starts.

# Also, I wouldn't consider this efficient because it's overwriting the value
#of X each time y is modified... I'd move this redefinition outside the
# do/end block and then run it, as shown below


# y = 0
# 3.times do
#   y += 1
# #deleted redefinition and moved it out of the loop
# end
#   x = y
# puts x
