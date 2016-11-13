class WordGame
  attr_accessor :secret_word

  def initialize
    @secret_word = nil
    @blanks = []
    @guess_count = 0
    @is_over = false
  end

  def split_word(word_to_guess)
    word_to_guess.split('')
  end

  def blank_generator(secret_word_array)
    secret_word_array.length.times do 
      @blanks << "_"
    end
    @blanks
  end

end