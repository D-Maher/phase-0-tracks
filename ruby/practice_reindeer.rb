# Our reindeer needs a state:
  # name
  # location

class Reindeer

  def take_off(altitude)
    puts "Took off."
    puts "Ascended to #{altitude} feet."
  end

  def land(location)
    puts "Landed safely in #{location}."
  end

end