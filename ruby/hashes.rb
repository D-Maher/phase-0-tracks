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

client = {} # empty hash


# DRIVER CODE

puts "Hello and welcome!"

puts "What is your name?"
  name = gets.chomp
  client[:name] = name

puts "How old are you?"
  age = gets.chomp.to_i
  client[:age] = age

puts "How many children do you have?"
  children = gets.chomp.to_i
  client[:number_of_children] = children

puts "What decor theme are you looking for?"
  theme = gets.chomp
  client[:decor_theme] = theme

puts "Do you love taxidermy? (y/n)"
  taxidermy = gets.chomp
    if taxidermy == "y"
      taxidermy = true
    elsif taxidermy == "n"
      taxidermy = false
    else
      puts "Okay, I am assuming you love taxidermy, because who doesn't?"
      taxidermy = true
    end
  client[:loves_taxidermy] = taxidermy


p client


puts "Would you like to update any of the fields above? If so, please type the name of the field you would like to update. Otherwise, type 'none' to skip this step."
  answer = gets.chomp.to_sym

case answer
when :name
  puts "What would you like to change your name to?"
  name = gets.chomp
  client[:name] = name
when :age
  puts "What would you like to change your age to?"
  age = gets.chomp.to_i
  client[:age] = age
when :number_of_children
  puts "How many children do you have?"
  children = gets.chomp.to_i
  client[:number_of_children] = children
when :decor_theme
  puts "What decor theme are you interested in instead?"
  theme = gets.chomp
  client[:decor_theme] = theme
when :loves_taxidermy
  puts "Do you love taxidermy?"
  taxidermy = gets.chomp
    if taxidermy == "y"
      taxidermy = true
    elsif taxidermy == "n"
      taxidermy = false
    else
      puts "Okay, I am assuming you love taxidermy, because who doesn't?"
      taxidermy = true
    end
  client[:loves_taxidermy] = taxidermy
when :none
end


p client