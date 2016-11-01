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

colors.each { |color| puts "I like the color #{color}." }

state_capitals.each { |state, capital| puts "The capital of #{state} is #{capital}."}


# using .map! on an array

colors.map! do |color|
  puts color
  color.reverse
end

p colors