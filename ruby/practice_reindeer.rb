# Our reindeer needs a state:
  # name
  # location

class Reindeer

  def initialize(name) # initialize method now takes a parameter 'name'
    @name = name # this instance variable's data is accessible to any instance methods of the Reindeer class
    @location = "the North Pole" # same with this instance variable # we leave "the North Pole" as the reindeer's default location, which we can update later in the code
  end

  def take_off(altitude)
    puts "#{@name} took off." # this method take_off "knows" about the variable @name because it is an instance variable
    puts "#{@name} ascended to #{altitude} feet."
  end

  def land(location)
    puts "Landed safely in #{location}."
  end

end

reindeer = Reindeer.new("Blitzen")
reindeer.take_off(3000)
reindeer.land("Dublin")