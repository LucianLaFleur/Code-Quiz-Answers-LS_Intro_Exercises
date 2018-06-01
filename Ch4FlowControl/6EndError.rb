=begin
flow Control Question 6

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

gives you the error message:

exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

Why'd you get the error, and how do ya fix it?

---ANSWER---

you forgot to close the definition with an end... I mean, sure you have
ONE end, but that only closes the if/else portion, you need another end to
close the method that you opened up with def.

for the purpose of good style hygene, I tabbed the first end so it lines
up with the if/else block

=end
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(9001)
equal_to_four(4)
equal_to_four(3)
