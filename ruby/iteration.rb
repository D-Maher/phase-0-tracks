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