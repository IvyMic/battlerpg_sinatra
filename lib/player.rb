class Player
  attr_reader :name, :hp
  STARTING_HP = 100
  def initialize(name)
    @name = name
    @hp = STARTING_HP
  end

  def decrease_hp
    @hp -= 10
  end

  def attack(player)
    player.decrease_hp
  end
end