require 'attack_class'

describe Attack do
  subject(:object) { described_class }
  let(:player) { double :player }

  describe "#run" do
    it "reduces the player hit points" do
      expect(player).to receive(:receive_attack)
      object.run(player)
    end
  end
end
