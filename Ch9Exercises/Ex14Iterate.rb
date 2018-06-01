# Objective:
# Programmatically loop or iterate over the contacts hash from exercise 12,
# and populate the associated data from the contact_data array. Hint: you
# will probably need to iterate over ([:email, :address, :phone]),
# and some helpful methods might be the Array shift and first methods.

# Instantly anxiety-striking since I couldn't make a loop work before...

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

key_contact_info = [:email, :street, :phone_num]

# for a one-dimensional array: using two layers of .each

  # contacts.each do |person, info_set|
  #     # First, iterate over the "contacts" hash
  #   key_contact_info.each do |data|
  #     # Then iterate over the array of keys we want to assign in the
  #     # sub-hash that we're creating
  #     info_set[data] = contact_data.shift
  #     #.shift removes and returns the first element of an array
  #     # The contact data array get progressively deleted at the same time that
  #     # each element is defined in the name-keyed hash within "contacts"
  #   end


# LONG FORM FOR REFERENCE
# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:street] = contact_data[0][1]
# contacts["Joe Smith"][:phone_num] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:street] = contact_data[1][1]
# contacts["Sally Johnson"][:phone_num] = contact_data[1][2]

# We're making an outer hash of the people, then an inner hash containing
# their informational details for the fields like address and email.
# for this, I need to use .each_with_index

    contacts.each_with_index do |(person, info_set), index|
#Add in an index to identify the place that will be manipulated
      key_contact_info.each do |info_piece|
        # info_piece relates to each key in the key_contact_info array
      info_set[info_piece] = contact_data[index].shift
# the item from contact_data gets shifted at the index of the sub-array,
# allowing it assign data from multiple sub-arrays, and removing the index
# numbers with the destruction from the shift method
      end
    end

p contacts
