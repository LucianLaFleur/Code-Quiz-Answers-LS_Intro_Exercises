# Example question 13
# Objective:
# Using the hash you created from the previous exercise, demonstrate how you
# would access Joe's email and Sally's phone number?

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

#Starting out with the hash data from the previous exercise...
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:street] = contact_data[0][1]
contacts["Joe Smith"][:phone_num] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:street] = contact_data[1][1]
contacts["Sally Johnson"][:phone_num] = contact_data[1][2]

# Accessing Joe's email, and printing to screen
p contacts["Joe Smith"][:email]

# Accessing Sally's phone
p contacts["Sally Johnson"][:phone_num]
