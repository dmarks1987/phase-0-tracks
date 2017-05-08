require_relative 'game'

describe Game do
  let(:game) { Game.new(["a","b"], 2) }

  it "stores the word array and guess count on initialization" do
    expect(game.store_initial_data).to eq ["a", "b"]
  end
  
end