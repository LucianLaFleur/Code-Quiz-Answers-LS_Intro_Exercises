# Arrays Question 5
# Objective
# What is the value of a, b, and c in the following program?

string = "Welcome to America!"
puts a = string[6]
    # Returns "e", the seventh letter in the string
    # Again, arrays start counting up from 0, so we have to bump up our
    # English ordinals by one to match what the code refers to.
    # thus sting[6] meaning the "seventh" character, in plain English.
puts b = string[11]
    # Returns "A", the twelfth character. Remember that spaces and
    # punctuation also take up index-slots.
puts c = string[19]
    # The string is only 19 characters long, and the 19th index would be
    # the 20th character. So anything above the number of actual characters
    # would return nil because there is no value at that excessive index.

# Just to show how long the string itself is...
puts "The string length is #{string.length}"
