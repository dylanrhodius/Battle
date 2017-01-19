require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2)}
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe "On initialization." do
    it "Has a player 1" do
      expect(game.player_1).to eq player_1
    end
    it "Has a player 2" do
      expect(game.player_2).to eq player_2
    end
    it "Sets the first turn to player 1" do
      expect(game.active_player).to eq player_1
    end
  end

  describe "::attack." do
    it "Attacks the other player" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe "::switch_turn" do
    it "Switches player turns." do
      game.switch_turn
      expect(game.active_player).to eq player_2
    end
  end

  describe '#opponent_of' do
    it 'finds the opponent of a player' do
      expect(game.opponent_of(player_1)).to eq player_2
      expect(game.opponent_of(player_2)).to eq player_1
    end
  end





end
