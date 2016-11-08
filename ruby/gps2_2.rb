# Method to create a list
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
  # steps: 
    # separate string of items into individual items 
    # set empty hash
    # iterate through the array of items and those will become the keys of the empty hash
    # set default quantity
    # print the list to the console [can you use one of your other methods here?]
  # output: grocery list hash

def list_generator(string_of_items)
  grocery_list = {}
  grocery_array = string_of_items.split(' ')
  grocery_array.each do |item|
  grocery_list[item] = 0
  end
  grocery_list
end

initial_list = list_generator("apple orange pear")


# Method to add an item to a list
  # input: item name and optional quantity
  # steps: method will take two arguments and will be added to hash
  # output: return grocery list with updated item and quantity

def grocery_add(list, item, quantity)
 list[item] = quantity
 list
end

grocery_add(initial_list, "pizza", 20)
grocery_add(initial_list, "steak", 30)


# Method to remove an item from the list
  # input: item to be removed
  # steps: delete the key from the hash
  # output: updated grocery list with updated item list

def grocery_delete(list, item)
  list.delete(item)
  list
end

grocery_delete(initial_list, "apple")
grocery_delete(initial_list, "pear")


# Method to update the quantity of an item
  # input: specify item in the hash to be updated
  # steps: reassign quantity to the item
  # output: updated grocery list with updated quantities

def grocery_update(list, item, quantity)
  if list.include?(item)
    list[item] = quantity
  else
    puts "Food does not exist!"
  end
  list
end

grocery_update(initial_list, "pizza", 1000)
grocery_update(initial_list, "waffles", 7)


# Method to print a list and make it look pretty
  # input: grocery list
  # steps: print grocery list to console
  # output: a nice looking list

def print_list(list)
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

print_list(initial_list)


  
# REFLECTION:

=begin

What did you learn about pseudocode from working on this challenge?

  I learned that pseudocode should really be strictly in plain English, with no language-specific code included. Additionally, I learned that pseudocode for methods can be broken into the subsections 'input', 'steps', and 'output'. I found this extremely helpful, especially when juggling several different methods.


What are the tradeoffs of using arrays and hashes for this challenge?

  Arrays are far simpler to both visualize and handle/modify, but hashes allow for data to be stored with a label. This labeled data allowed us to print a list of items, each with a corresponding quantity.


What does a method return?

  A method will return the evaluation of the code on the very last line of the method's "body". If, however, 'return' appears explicitly on an earlier line, the method will return the result of the code that appears on that line.


What kind of things can you pass into methods as arguments?

  You can pass strings, integers, arrays, hashes, and the return values of other methods as arguments of methods.


How can you pass information between methods?

  Setting the return value of a method to a variable, and then passing that variable to another method as an argument is a good way to pass information between methods. This also keeps the scope as small as possible. 


What concepts were solidified in this challenge, and what concepts are still confusing?

  This GPS really helped me begin to gain a better understanding of the idea of scope and method arguments. I now understand that a method's contents should be written in terms of the parameters included in the definition of the method. I would not say that I am confused with any of the concepts in the challenge, I just need to work on solidifying Ruby best practices.

=end