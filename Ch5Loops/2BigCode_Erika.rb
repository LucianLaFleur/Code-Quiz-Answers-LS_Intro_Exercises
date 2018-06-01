=begin
loopyQ2
Objective:
Write a while loop that takes input from the user, performs an action, and only
stops when the user types "STOP". Each loop can get info from the user.
=end

#I have a few structural questions around line 65 that reach towards some
# more complicated quesitons than what's covered here.

# I decided to make my loop program more interactive. It's doing a simple
# conversation loop, like a super-basic chatbot.
# you can say "stop" on either prompt and she will stop talking. Also, when
# she asks if she can pose another question "no" will end her program too.
# I thought these were intuitive response functions to add in
# Also, some random combos of responses sound choppy, and it ain't Shakespeare
# level writing, but she's a nice concept, at least.

#---
#\"Tears help to wash away our sorrows\" -Anonymous
puts " ---
You see a shy girl with long black hair and wearing white sun-dress standing
before you. Her name is Erika.
She will keep asking you questions that pull on your heartstrings.
--- Instructions ---
*If you feel a bit nervous at a question, feel free to \"lol\" at her.
** AT ANY POINT, Tell her 'stop' if you want her to stop talking.
---
Erika stammers as she begins to speak: "

cork = ""
response = ""
while cork != "STOP" and response != "STOP"
  prompter = rand(1..11)
    if prompter == 1
      puts "What's your name?"
      user_name = gets.chomp
      if user_name.include?("already")
        sleep 1
        puts "Sorry, it slipped my mind."
        next
        next
        # You can stop the script when she asks your name
      elsif user_name.upcase == "STOP"
        puts "I didn't mean to be too forward..."
        break
      else
        puts "Nice to meet you #{user_name}"
        sleep 1
        next
      end
    elsif prompter == 2 or prompter == 3
      puts "Why are you so sad?"
    elsif prompter == 4
      puts "Why does nobody care about you?"
    elsif prompter == 5
      puts "Where are all your friends?"
    elsif prompter == 6
      puts "S-sorry, am I bothering you?"
    elsif prompter == 7
      puts "The moonlight shines brightly, doesn't it?"
    elsif prompter == 8 or prompter == 9
      puts "How come your heart feels so... cold?"
    elsif prompter > 9
      puts "Do you feel lonely?"
      lonely_ans = gets.chomp
      sleep 1
      # Special response if the person is lonely
      # "time" assumes phrases like "all the time" or "sometimes"
      if (lonely_ans.downcase == "yes") || (lonely_ans.downcase == "yeah") ||
        (lonely_ans.downcase.include?("time"))
        puts "I'll be your friend. You don't have to feel lonely anymore."
        sleep 1
        next
      elsif lonely_ans.upcase == "STOP"
        puts "Please... I don't want to be lonely too.."
        break
      else
        # she asks another question if not lonely
        next
        next
      end
    end
    #User response
  response = gets.chomp.upcase
    affection_reply = rand(1..7)
    if response == "STOP"
      puts "My apologies for my rudeness."
      break
    end
    if response.include?("LOL")
    puts "I'm glad I could make you laugh. *She smiles warmly at you*"
    sleep 1
    puts "Erika gathers the courage to ask another question:"
    next
    end
    # If the user points out she repeated a question, she will
    # apologize for her repetition and ask another question instead
    if response.include?("ALREADY") ||
      response.include?("SAME") || response.include?("REPEAT")
      repetitve_apology = rand(1..3)
      if repetitve_apology == 1
        puts "Sorry for repeating myself."
        next
      elsif repetitve_apology == 2
        puts "Oh, I guess I'm a bit scatterbrained sometimes..."
        next
      elsif repetitve_apology == 3
        puts "Dear me, did I already say that?"
        next
      end
    end
    if affection_reply == 1
      sleep 1
      puts "Even if I don't know you, I love you... you need to hear that"
    elsif affection_reply == 2 or affection_reply == 3
      puts "I promise everything will be alright"
    elsif affection_reply == 4
      sleep 1
      puts "Shh, it's all going to be okay"
    elsif affection_reply == 5
      puts "You're a good person, you know? You deserve to feel happy."
    elsif affection_reply == 6
      puts "Things will get better. I'm sure of it."
    elsif affection_reply == 7
      puts "Is that why it's hard for you to...? Um, n-nevermind"
    elsif affection_reply == 8
      puts "Relax. I'm here for you now."
    end
#??? Hmm, how do I make ^^ this ^^ so I set a certain reply to always
#come up first, then make it random after that?
# ??? Also, how do I set up a trigger so that i can make a string trigger
# as one thing the first time, then something else the second time?
# ??? How do I make a placeholder to give a flat response after all the unique
# responses are exhausted?
#??? How do I make it save the user's name after triggering her question asking
# the user's name; I want to call the user's name in her response to that...

sleep 1
  puts "Can I ask another question?"
  # user reply
  cork = gets.chomp.upcase
  affirmation_tag = rand (1..6)
    if cork == "STOP" or cork == "NO"
    puts "I... I'm sorry. I just wanted to help."
    break
    end
    if affirmation_tag == 1
      print "Okay. "
    elsif affirmation_tag == 2
      print "Well then. "
    elsif affirmation_tag == 3
      print "Alright, umm... "
    elsif affirmation_tag == 4
      print "*Hesitates, looking to the ground* "
    elsif affirmation_tag == 5
      print "Here goes... "
    elsif affirmation_tag == 6
      print "Erika gathers the courage to ask another question: "
    end
end

#??? Another note on writing a better program, I don't know how to set a flag
# after a question is asked so she doesn't repeat herself until all other
# questions are run trhough. This is just randomized, so it can get a bit
# awkaward.
#??? Another tweak I'd like to learn is making her not give the same
# affirmation_tag twice in a row, though it's okay to repeat
# after an intermittent response.
