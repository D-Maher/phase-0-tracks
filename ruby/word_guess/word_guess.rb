class WordGame
  attr_reader
  attr_accessor :secret_word, :blanks, :word_progress

  def initialize
    @secret_word = nil
    @blanks = []
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
    if @secret_word_array.include?(guess)
      @blanks[@secret_word_array.index(guess)] = guess
      p @word_progress = @blanks.join
    else
      puts "NOPE"
    end
  end


end


game = WordGame.new

word_array = game.split_word("dragon")

p 

p word_array

p word_array.length

p blanks_array = game.blanks_array_generator(word_array)

game.guess_check("r")