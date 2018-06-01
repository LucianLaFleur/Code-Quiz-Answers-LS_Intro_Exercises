#More Stuff question 4

# I already did this in Question 2, but here it is again
# The block needed to be activated with .call to actually run our {input}.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
