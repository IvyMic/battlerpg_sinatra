require 'game.rb'

describe Game do
  let(:player1) { double(:player1, name: "John", hp: 100 ) }
  let(:player2) { double(:player2, name: "Dave", hp: 100 ) }
  subject { described_class.new(player1,player2) }

  describe '#attack' do
    it 'attacks player' do
      expect(player2).to receive(:decrease_hp)
      subject.attack(player2)
    end
  end

  describe '#switch_players' do
    it 'changes the active player' do
      subject.switch_players
      expect(subject.active_player).to eql(player2)
    end    
  end

  describe '#inactive_player' do
    it 'returns the inactive player' do
      expect(subject.inactive_player).to eq(player2)
    end
    
    it 'works after switching' do
      expect { subject.switch_players }.to change { subject.inactive_player }.to (player1)
    end
  end

  describe '#game_over' do
    it "returns true when active player's hp is 0 or less" do
      allow(player2).to receive(:hp).and_return(0)
      expect(subject.game_over?).to eql(true)
    end
  end
end