require 'player'

describe Player do
  subject(:fran) { Player.new("Fran") }
  subject(:chris) { Player.new("Chris") }

  describe "#name" do
    it "returns the player's name" do
      expect(fran.name).to eq("Fran")
    end
  end

  describe "#hit_points" do
    it "shows the hit points by default" do
      expect(chris.hit_points).to eq described_class::HIT_POINTS
    end
  end

  describe "#receive_attack" do
    xit "reduces the player hit points" do
      expect(chris.receive_attack).to change { chris.hit_points }.by(-5)
    end
  end
end
