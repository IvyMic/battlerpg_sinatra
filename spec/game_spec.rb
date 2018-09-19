require 'game.rb'

describe Game do
  let(:player1) { double(:player1, name: "John", hp: 100 ) }
  let(:player2) { double(:player2, name: "Dave", hp: 100 ) }

  describe '#attack' do
    it 'attacks player' do
      expect(player2).to receive(:decrease_hp)
      subject.attack(player2)
    end
  end
end