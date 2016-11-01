# RELEASE 0

# methods that take a block
def ice_cream
  yield("vanilla", "strawberry")
end

ice_cream { |flavor1, flavor2| puts "Two ice cream flavors I enjoy are #{flavor1} and #{flavor2}." }

def animals
  x = "platypus"
  y = "wolf"
  z = "sloth"
  yield(x, y, z)
end

animals { |x, y, z| puts "A few of my favorite animals are #{x}, #{y}, and #{z}." }


# RELEASE 1

colors = ["red", "blue", "yellow"]

state_capitals = {
  Illinois: "Springfield",
  Wisconsin: "Madison",
  Arizona: "Phoenix"
}

# using .each on hash and array

puts "This is the colors array before .each:"
p colors

puts "This is the colors array after .each:"
p colors.each { |color| puts "I like the color #{color}." }

puts "This is the state_capitals hash before .each:"
p state_capitals

puts "This is the state_capitals hash after .each:"
p state_capitals.each { |state, capital| puts "The capital of #{state} is #{capital}."}


# using .map! on an array

puts "This is the colors array before .map!:"
p colors

puts "This is the colors array after .map!:"
colors.map! do |color|
  color.reverse
end

p colors


# RELEASE 2

# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

numbers1 = [67, 4, 4, 1, 82, 3, 734, 2, 5, 1, 3, 75]

numbers1.each do |n|
  if n < 5
    numbers1.delete(n)
  elsif n > 5
    n
  else
    n
  end
end

p numbers1

# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

numbers2 = [67, 4, 4, 1, 82, 3, 734, 2, 5, 1, 3, 75]

numbers2.keep_if {|n| n < 5 }

p numbers2

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!



# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).