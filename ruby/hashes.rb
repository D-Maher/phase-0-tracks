# PSEUDOCODE

# prompt user for following info:
  # name
  # age
  # number of children
  # decor theme
  # lover of taxidermy?

# convert user input to appropriate data types (from strings to whatever)

# store data in a hash

# print hash to console after all questions have been answered

# give user one opportunity to update the value of a key
  # if user says "none", skip this step
  # otherwise, ask user for a key they want to update then the new value for that key
    # then update the key with this new value

# lastly, print latest version of hash

#---------------------------------------------------------------------

# HASH SETUP

client = {
  name: name,
  age: age,
  number_of_children: children,
  decor_theme: theme,
  loves_taxidermy?: taxidermy
}


# DRIVER CODE

puts "Hello and welcome!"

puts "What is your name?"
  name = gets.chomp
  client[:name] = name

puts ""
