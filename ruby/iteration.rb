# methods that takes a block
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