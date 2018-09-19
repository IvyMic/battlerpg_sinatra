require 'player.rb'
describe Player do
  subject(:dave) { described_class.new("Dave") }
  subject(:john) { described_class.new("John") }
  it 'responds to name' do
    expect(john.name).to eql("John")
  end

  it {is_expected.to respond_to :hp}

  describe '#decrease_hp' do
    it "decreases player's hp by 10" do
      expect { dave.decrease_hp }.to change { dave.hp }.by(-10)
    end
  end

end