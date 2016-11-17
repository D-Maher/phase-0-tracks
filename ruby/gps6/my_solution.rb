# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Loads a "nearby" file (i.e. in the same directory as the current file) and allows the current file access to the data/contents of the file next to require_relative 
#
require_relative 'state_data'

class VirusPredictor

  # sets up the instance of the class VirusPredictor with three parameters, defines instance variable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls the two other instance methods 'predicted_deaths' and 'speed_of_spread' (below)
  def virus_effects
    @deaths = predicted_deaths
    @speed = speed_of_spread
  end

  def print_effects # single responsibility -- printing!
    puts "#{@state} will lose #{@deaths} people in this outbreak and will spread across the state in #{@speed} months. \n\n" 
  end

  private # protected below here...

  # takes data from state_data.rb and uses it to calculate the number of deaths in each state passed in, and the PRINTS number_of_deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # takes data from state_data.rb and uses it to calculate speed of spread for each state passed in, and PRINTS the speed in months of the virus spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    # puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])
  state.virus_effects
  state.print_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

  # The hash-rocket syntax (=>) allows strings to be used as keys, while the colon syntax, though perhaps more efficient, only works if the keys are symbols.


# What does require_relative do? How is it different from require?

  # 'require_relative' gives the current file access to the contents of another file within the same directory as the current file. 'require', in contrast, effectively does the same as 'require_relative' but it needs the entire path of the file whose data the current file wants to access. 'require_relative' is more of a convenience.


# What are some ways to iterate through a hash?

  # To iterate through a hash, you can choose to iterate through a hash's keys alone...:
    # hash.each do |key|
      # code
    # end
  # ...or you can iterate through both the hash's keys and the hash's values:
    # hash.each do |key, value|
      # code
    # end


# When refactoring virus_effects, what stood out to you about the variables, if anything?

  # It was immediately evident that the variables within 'virus_effects' were instance variables, which seemed perfectly reasonable at first. Then we realized that the instance variables DID NOT need to be passed into the method because the method already could "see" those instance variables (given their scope within the class declaration). Additionally, the parameters of both 'predicted_deaths' and 'speed_of_spread' were completely unnecessary, as the code inside those methods made use of instance variables (to which those methods already had access).

# What concept did you most solidify in this challenge?

  # This GPS helped me greatly in becoming more comfortable with variable scope and best practices for refactoring (e.g. single-responsibility methods and eliminating redundancy through iteration).