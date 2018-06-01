# More Stuff question 2

# What will the following program print to the screen? What will it return?

# def execute(&block)
#   block
# end
#
# execute { puts "Hello from inside the execute method!" }

# ***
#Answer: Nothing was printed to the screen from the given program, but that's
# because the block was inactive, lacking the .call method attached to it.
# The proc object is all that's returned from running "execute", but
# inside the method we need to activate the block (by using .call) to get it
# to actually work.

#I've added .call below, so it prints out the string

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
