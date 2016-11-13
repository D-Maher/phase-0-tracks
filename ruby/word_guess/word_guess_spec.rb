require_relative 'word_guess'

describe WordGame do
  let(:word_game) { WordGame.new }

  it "converts the secret word to an array of letters" do
    expect(word_game.split_word("dragon")).to eq ["d", "r", "a", "g", "o", "n"]
  end

  it "generates an array of blanks with same length as the secret word letter array" do
    expect(word_game.blanks_array_generator(["d", "r", "a", "g", "o", "n"])).to eq ["_ ", "_ ", "_ ", "_ ", "_ ", "_ "]
  end

  it "joins the array of blanks into a string of blanks" do
    expect(word_game.blanks_array_joiner(["_ ", "_ ", "_ ", "_ ", "_ ", "_ "])).to eq "_ _ _ _ _ _ "
  end

end