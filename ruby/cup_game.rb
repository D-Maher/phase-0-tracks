# game class

class CupGame
  attr_reader :guess_count
  attr_reader :is_over
  
  def initialize
    @cups = ["ball", "empty", "empty"]
    @guess_count = 0
    @is_over = false
  end
  
  def shuffle
    @cups.shuffle!
  end
  
  def check_cup(index)
    @guess_count += 1
    if @cups[index] == "ball"
      @is_over = true
    else
      false
    end
  end
  
end

# user interface

puts "Welcome to the Cup Game!"
game = CupGame.new

puts "Shuffling cups ..."
game.shuffle

while !game.is_over
  puts "Which cup has the ball? Enter a guess of 1, 2, or 3:"
  guess = gets.chomp.to_i
  if !game.check_cup(guess - 1)
    puts "Nope! Try again."
  end
end

puts "You won in #{game.guess_count} guesses!"