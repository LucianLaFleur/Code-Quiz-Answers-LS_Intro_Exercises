#Ch3Multiply

def multiply (x,y)
  puts x * y
  #and since puts on its own returns nill, i need to add the following line:
  return x * y
end

multiply(4,5)

multiply(29,5)

multiply(1.3, 33)

#And to show that it returns the value, I can run puts on the result of
# multiply, and it'll give me the number twice over from using 2 puts
puts multiply(23.3, 6.41)

#As an additional demonstration...
#Now, I'll comment out the return below, and I'll get nil from puts
puts"Now, with \"return\" commented out"

def multiply_return_nil (x,y)
  puts x * y
# return x * y
end

puts multiply_return_nil(12,12)
puts "There should be a resulting number on one line, followed by a
blank line above me from nil getting passed to (puts)"
