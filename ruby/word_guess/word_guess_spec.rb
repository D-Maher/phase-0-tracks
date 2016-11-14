require_relative 'word_guess'

describe WordGame do
  let(:word_game) { WordGame.new }
  let(:secret_word) { "dragon" }

  it "converts the secret word to an array of letters" do
    expect(word_game.split_word(secret_word)).to eq ["d", "r", "a", "g", "o", "n"]
  end

  it "generates an array of blanks with same length as the secret word letter array" do
    expect(word_game.blanks_array_generator(["d", "r", "a", "g", "o", "n"])).to eq ["_ ", "_ ", "_ ", "_ ", "_ ", "_ "]
  end

  it "checks if the user's guess (in the form of a letter) exists in the secret word" do
    word_game.instance_variable_set(:@secret_word_array, "dragon".split(''))
    word_game.instance_variable_get(:@word_progress)

    expect(word_game.guess_check("d")).to eq "d_ _ _ _ _ "
  end

end