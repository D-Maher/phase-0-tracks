# Our reindeer needs a state:
  # name
  # location


# BUSINESS LOGIC

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


# DRIVER CODE

reindeer = Reindeer.new("Blitzen")
reindeer.take_off(3000)
reindeer.land("Dublin")


reindeer = Reindeer.new("Rudolph")
reindeer.take_off(3000)
reindeer.land("London")



# GENERAL COMMENTS

# It is common to declare instance variables (attributes) inside 'initialize' (though it can be done in any method)
  # Usually, the initialize method takes a few arguments of the attributes that are desired and then they are initialized inside the body of that method 'initialize'