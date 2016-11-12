# game class

class CupGame
  attr_reader :guess_count
  attr_reader :is_over
  
  def initialize
    @cups = ["ball", "empty", "empty"] # initializes starting @cups array
    @guess_count = 0 # starts the @guess_count at 0 whenever an instance of the 'CupGame' class is initialized
    @is_over = false # the game is "not over" when it begins
  end
  
  def shuffle
    @cups.shuffle! # shuffles the items of the array @cups (in place!)
  end
  
  def check_cup(index) # index is the user's guess - 1 (zero indexed)
    @guess_count += 1 # adds one to the @guess_count each time the method check_cup is called
    if @cups[index] == "ball" # if the user's guess - 1 is equal to the index of the item "ball" within the @cups array...
      @is_over = true # ...then the game ends
    else
      false # otherwise the game continues
    end
  end

end

# user interface

puts "Welcome to the Cup Game!"
game = CupGame.new # initializes new instance of 'CupGame' called 'game'

puts "Shuffling cups ..."
game.shuffle # calls the instance method 'game.shuffle' (lines 13-15)

while !game.is_over # while the game is not over... (another way to write this code would be 'while game.is_over == false')
  puts "Which cup has the ball? Enter a guess of 1, 2, or 3:"
  guess = gets.chomp.to_i # asks for user input and converts it to an integer
  if !game.check_cup(guess - 1) # if the user's guess - 1 does not equal the index of "ball" in the array @cups (i.e. if game.check_cup evaluates to false since the 'if' statement was not met)
    puts "Nope! Try again."
  end
end

puts "You won in #{game.guess_count} guesses!"