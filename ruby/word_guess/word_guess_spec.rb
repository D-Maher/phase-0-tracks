require_relative 'word_guess'

describe WordGame do
  let(:word_game) { WordGame.new }

  it "converts the secret word to an array of letters" do
    expect(word_game.split_word("dragon")).to eq ["d", "r", "a", "g", "o", "n"]
  end


end