# example question 12
#
# Given the following data structures. Write a program that moves the
# information from the array into the empty hash that applies to
# the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Yeah, i couldn't figure out a way to itterate over this,
# though I'm sure there is some way I might be able to append the data

contacts["Joe Smith"][:email] = contact_data[0][0]
# 1st layer key is the person, second, make a key for the e-mail
# then target the contact_data sub array index 0 for joe's info
# and then call the index of the info contained therein...
contacts["Joe Smith"][:street] = contact_data[0][1]
contacts["Joe Smith"][:phone_num] = contact_data[0][2]
# Man, this is kinda boring... straightforward, but can't wiggle
# with much creativity here...
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:street] = contact_data[1][1]
contacts["Sally Johnson"][:phone_num] = contact_data[1][2]

p contacts
