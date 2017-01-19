require 'player'

describe Player do
  subject(:dylan) { described_class.new('dylan') }
  subject(:edyta) { described_class.new('edyta') }




  describe "::name" do
    it "returns the player's name" do
      expect(dylan.name).to eq "dylan"
    end
  end

  describe "::reduce_damage" do
    it "reduces the players health points by 10" do
      expect{ dylan.receive_damage }.to change { dylan.hit_points }.by(-10)
    end
  end



end
