# a method that takes a block
def ice_cream
  yield("vanilla", "strawberry")
end

ice_cream { |flavor1, flavor2| puts "Two ice cream flavors I enjoy are #{flavor1} and #{flavor2}."}