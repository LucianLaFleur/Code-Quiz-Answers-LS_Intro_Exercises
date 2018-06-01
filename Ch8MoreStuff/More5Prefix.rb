# More Stuff question 5
#
# The following code raises an error:
#
#   def execute(block)
#     block.call
#   end
#
#   execute { puts "Hello from inside the execute method!" }
#
#   block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
#   from test.rb:5:in `<main>'
#
# Why does it raise the above error?
#
# ***
# Answer: when we define a method and want to pass a block as a parameter, we
# must identify our block with the & sign.
# in the method :
#                   def execute(block)
#                     block.call
#                   end
#
# we see that (block) lacks the & sign. It should be (&block)
# without the signifying prefix, Ruby thinks we're pointing her to some variable
# named "block" that we're passing as parameter for our method
# it also can't take in our {puts "string"} while trying to execute the method
# because it's expecting an argument.
# We always need & as a prefix to identify our blocks
