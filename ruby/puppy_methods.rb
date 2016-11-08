class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times { puts "Woof!" }
  end

  def roll_over
    puts "*rolls over*"
  end
    
  def dog_years(human_years)
    dog_years = human_years * 7
    p dog_years
  end

  def play_dead(minutes)
    puts "The puppy played dead for #{minutes} minutes."
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end


class Programmer

  def initialize
    puts "Initializing new programmer instance..."
  end

  def panic(minutes)
    puts "Programmer panicked for #{minutes} minutes."
  end

  def grab_snack(snack)
    puts "Programmer grabbed #{snack} to eat."
  end

end



# Driver code

rufus = Puppy.new

rufus.fetch("ball")
rufus.speak(3)
rufus.roll_over
rufus.dog_years(7)
rufus.play_dead(5)