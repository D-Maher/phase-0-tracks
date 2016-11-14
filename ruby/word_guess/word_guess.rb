class WordGame
  attr_accessor :secret_word, :blanks, :guesses, :word_progress

  def initialize
    @secret_word = nil
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

  def guess_check(guess)
    if guess == @secret_word
      is_over = true
    elsif @guesses.include?(guess)
      puts "You already guessed the letter '#{guess}'! Please guess a different letter."
      puts "Here is your progress so far..."
      p @word_progress = @blanks.join.chop
      repeat_guess = true
    elsif @secret_word_array.include?(guess)
      @guess_count += 1
      @guesses << guess
      puts "Nice! '#{guess}' is in the secret word!"
      @blanks[@secret_word_array.index(guess)] = guess
      puts "Here is your progress so far..."
      p @word_progress = @blanks.join.chop
      good_guess = true
    else
      @guess_count += 1
      @guesses << guess
      puts "Aw darn, looks like '#{guess}' is not in the secret word."
      puts "Here is your progress so far..."
      p @word_progress = @blanks.join.chop
      good_guess = false
    end
  end


end


# DRIVER CODE

game = WordGame.new

word_array = game.split_word("dragon")

p word_array

p blanks_array = game.blanks_array_generator(word_array)

game.guess_check("r")
game.guess_check("d")
game.guess_check("e")
game.guess_check("d")
game.guess_check("e")
