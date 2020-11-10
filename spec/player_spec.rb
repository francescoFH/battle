require 'player'

describe Player do
  subject(:fran) { Player.new("Fran") }

  describe '#name' do
    it "returns the player's name" do
      expect(fran.name).to eq("Fran")
    end
  end
end
