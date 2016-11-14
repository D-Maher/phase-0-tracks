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

  it "checks if the user's guess is the secret word" do
    word_game.instance_variable_set(:@secret_word, "dragon")

    expect(word_game.guess_check("dragon")).to eq true 
  end

  it "checks if the user's guess is a repeat of a previous guess" do
    word_game.instance_variable_set(:@guesses, ["r"])

    expect(word_game.guess_check("r")).to eq true
  end

  it "checks if the user's guess (in the form of a letter) DOES exist in the secret word" do
    word_game.instance_variable_set(:@secret_word_array, "dragon".split(''))

    expect(word_game.guess_check("r")).to eq true
  end

  it "checks if the user's guess (in the form of a letter) DOES NOT exist in the secret word" do
    word_game.instance_variable_set(:@secret_word_array, "dragon".split(''))
    word_game.instance_variable_set(:@blanks, ["_ ", "_ ", "_ ", "_ ", "_ ", "_ "])

    expect(word_game.guess_check("e")).to eq false 
  end

end