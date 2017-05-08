require_relative 'game'

describe Game do
  let(:game) { Game.new("lakers") }

  it "stores the word array and guess count on initialization" do
    expect(game.store_user_input).to eq "lakers"
  end

end