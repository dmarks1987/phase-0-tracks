require_relative 'game'

describe Game do
  let(:game) { Game.new("lakers") }

  it "stores the word array and guess count on initialization" do
    expect(game.store_user_input).to eq "lakers"
  end

  it "takes the users guess to see if it's in the original word" do
    expect(game.check_guess("l")).to eq "l_____"
  end


end