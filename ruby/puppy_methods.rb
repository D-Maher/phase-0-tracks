class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    integer.times { puts "Woof!" }
  end



end

# Driver code

rufus = Puppy.new

rufus.fetch("ball")
rufus.speak(3)