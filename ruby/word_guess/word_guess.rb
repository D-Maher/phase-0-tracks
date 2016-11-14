class WordGame
  attr_reader :word_is_guessed, :guess_count, :blanks 
  attr_accessor :is_over

  def initialize
    @blanks = []
    @guesses = []
    @guess_count = 0
    @is_over = false
  end

  def split_word(word_to_guess)
    @secret_word_array = word_to_guess.split('')
  end

  def blanks_array_generator(secret_word_array)
    secret_word_array.length.times do 
      @blanks << "_ "
    end
    @blanks
  end

  def guess_check(secret_word, guess) # could be refactored: each control flow statement could evaluate to simply a boolean, then, in driver code, different statements could be printed depending on those booleans... we'll see
    if guess == secret_word
      @word_is_guessed = true
      @guess_count += 1
    elsif @blanks.join.rstrip == secret_word
      @word_is_guessed = true
    elsif @guesses.include?(guess)
      puts "You already guessed the letter '#{guess}'! Please guess a different letter."
      puts "Here is your progress so far:"
      puts @blanks.join.rstrip.to_s
      # repeat_guess = true
    elsif @secret_word_array.include?(guess)
      @guess_count += 1
      @guesses << guess
      puts "Nice! '#{guess}' is in the secret word!"
      @secret_indices = @secret_word_array.each_index.select { |i| @secret_word_array[i] == guess }
      @secret_indices.each do |index|
        @blanks[index] = guess
      end
        puts "Here is your progress so far:"
        puts @blanks.join.rstrip.to_s
      # good_guess = true
    else 
      @guess_count += 1
      @guesses << guess
      puts "Aw darn, looks like '#{guess}' is not a letter in the secret word."
      puts "Here is your progress so far:"
      puts @blanks.join.rstrip.to_s
      # good_guess = false
    end
  end

end


# DRIVER CODE and USER INTERFACE

puts "Welcome to the Word Guesser Game!"
game = WordGame.new

puts "Player 1, please enter a secret word for Player 2 to guess. Player 2, keep those eyes closed!"
secret_word = gets.chomp.downcase
blanks = game.blanks_array_generator(game.split_word(secret_word))

puts "Great! Let's begin."
puts "Try and guess this secret word:" 
puts "#{game.blanks.join.rstrip}" 

guesses_left = (game.blanks.length * 2)

while !game.is_over && game.guess_count < game.blanks.length * 2
  puts "Player 2, please enter a letter to guess. Hit 'enter' once you've filled in all the blanks."
  puts "You have #{guesses_left} guesses remaining..."
  guess = gets.chomp.downcase

  game.guess_check(secret_word, guess)

  guesses_left -= 1

  if game.word_is_guessed == true
    game.is_over = true
  end
    
end

if game.word_is_guessed == true && game.guess_count == 1
  puts "Congratulations, Player 2! You correctly guessed that the secret word is '#{secret_word}'! It took you #{game.guess_count} guess."
elsif game.word_is_guessed == true && game.guess_count > 1
  puts "Congratulations, Player 2! You correctly guessed that the secret word is '#{secret_word}'! It took you #{game.guess_count} guesses."
else
  puts "MWAHAHAHAHAHA! You've run out of guesses! Better luck next time, pathetic human. Player 1 wins!"
end