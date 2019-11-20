require "dice_app"

describe Game do

  context "roll dice method" do

    game = Game.new

    it "rolls a dice to get a random number" do
      srand(4)
      expect(game.roll).to eq 3
    end

  end

end
