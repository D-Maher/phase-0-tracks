class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  # attribute-changing methods
  def celebrate_birthday
    @age += 1
    @age
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

  # getter methods
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  # setter method
  def gender=(new_gender)
    @gender = new_gender
    @gender
  end

end


# DRIVER CODE

# Santa class test code
  santa_1 = Santa.new("agender", "black")

  santa_1.speak
  santa_1.eat_milk_and_cookies("chocolate chip")
  santa_1.celebrate_birthday
  santa_1.get_mad_at("Cupid")
  santa_1.gender = "undecided"
  p santa_1.age
  p santa_1.ethnicity

# Adding different instances of Santa to a 'santas' array
  # santas = []

  # santas << Santa.new("agender", "black")
  # santas << Santa.new("female", "Latino")
  # santas << Santa.new("bigender", "white")
  # santas << Santa.new("male", "Japanese")
  # santas << Santa.new("female", "prefer not to say")
  # santas << Santa.new("gender fluid", "Mystical creature (unicorn)")
  # santas << Santa.new("N/A", "N/A")

  # p santas 


# Refactoring adding Santa instances to 'santas' array
  genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A"]

  ethnicities = ["black", "Latino", "white", "Japanese-African", "Samoan", "prefer not to say", "N/A", "Australian", "Native American"]

  santas = []

  4.times do
    santas << Santa.new(genders.sample, ethnicities.sample) # '.sample' selects a random item from the array it is called on
  end