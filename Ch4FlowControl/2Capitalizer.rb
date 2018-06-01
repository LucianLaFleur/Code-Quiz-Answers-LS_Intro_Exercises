#Flowcontrol Q2

def upcase_if_over_ten_chars(input)
  if input.length > 10
    puts input.upcase
  else puts "*blows raspberry* #{input}? That is too short!"
  end
end

puts upcase_if_over_ten_chars("Good morning Vietnam!")

puts upcase_if_over_ten_chars("Pie")

puts upcase_if_over_ten_chars("123456 rigged")
#numbers count as characters

puts upcase_if_over_ten_chars("DECOY")
#I can still pass a fully upcased short-string to it.

#... And then I played around with some things


puts "-- V.2 --"

def decoy_upcaser(input)
long_string = input.length > 10
short_string = input.length < 10
  if long_string
    puts input.upcase+ "!!!"
  elsif input.downcase == "decoy"
    return puts input.upcase+ "!!!"
    # I'm already giggling at my petty, benign subversions
  elsif short_string
    puts "Yawn... #{input} is short..."
  else puts "Heh, #{input} is exactly 10 letters long"
  end
end

decoy_upcaser("a considerably long string")
decoy_upcaser("fox")
decoy_upcaser("hound")
decoy_upcaser("DeCoY")
decoy_upcaser("OtherDecoy")
decoy_upcaser("totally not a decoy this time, i swear")

puts "--- V.3 --- (broken, but beyond the scope of this exercise)"
#I need help understanding how to manipulate strings in a way
# that was not clear from reading the documentation.

def upcase_alter(input)
  if input.length > 10


    #I don't know how to select every other character in a string and then
    #capitalize them, but here's the basic idea even though it doesn't work
    #((If the input is even, upcase it)) I just don't know
    # how to tell the computer to do this
    #Example output => "GoOd mOrNiNg vIeTnAm!"
    # I just fell down this rabbit hole and can't cook up a solution.

#this below code doesn't work...

    # if input.index % 2 == 0
    #    input.upcase
    #    print input
    #  end
    #

#Can't make a darn loop work either, so this is a failure

    # input.each do |letter|
    #   if letter.index % 2 == 0
    #     letter.capitalize
    #   end
    # end

#and another failed attempt below...

    # alt2 = input[2]
    # alt4 = input[4]
    # alt6 = input[6]
    # alt8 = input[8]
    # alt10 = input[10]
    # alt12 = input[12]
    # alt14 = input[14]
    # alternate_letters = [alt2, alt4, alt6, alt8, alt10, alt12, alt14]
    # puts alternate_letters.upcase
#...

#apparently I can't make a variable equal all the even numbers like this...

  else puts "*blows raspberry* #{input}? That is too short!"
  end
end

puts upcase_alter("Good morning Vietnam!")
