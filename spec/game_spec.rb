require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe "#player_1" do
    it "return player 1" do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe "#player_2" do
    it "return player 2" do
      expect(game.player_2).to eq(player_2)
    end
  end

  describe '#attack' do
    it "reduces the player hit points" do
      expect(player_2).to receive(:receive_attack)
      game.attack(player_2)
    end
  end

  describe "#current turn" do
    it "starts with player_1" do
      expect(game.current_turn).to eq(player_1)
    end
  end

  describe "#switch turn" do
    it "switches turn to player_2" do
      game.switch_turn
      expect(game.current_turn).to eq(player_2)
    end
  end
end
