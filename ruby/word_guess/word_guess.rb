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
    word_to_guess.split('')
  end

  def blanks_array_generator(secret_word_array)
    secret_word_array.length.times do 
      @blanks << "_ "
    end
    @blanks
  end

  def blanks_array_joiner(blanks_array)
    @word_progress = blanks_array.join
  end

end


game = WordGame.new

word_array = game.split_word("dragon")

p word_array

p word_array.length

p blanks_array = game.blanks_array_generator(word_array)

p game.blanks_array_joiner(blanks_array)
