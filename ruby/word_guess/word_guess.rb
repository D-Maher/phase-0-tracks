class WordGame
  attr_accessor :secret_word

  def initialize
    @secret_word = nil
    @guess_count = 0
    @is_over = false
  end

  def split_word(word_to_guess)
    word_to_guess.split('')
  end



end