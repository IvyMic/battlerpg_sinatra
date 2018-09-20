
class Game
  attr_reader :active_player, :inactive_player, :game 
   def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @active_player = @player1
    @inactive_player = @player2
   end

   def self.create(player1, player2)
    @game = Game.new(player1, player2)
   end

   def self.instance
    @game
   end

   def attack(attacked_player)
    attacked_player.decrease_hp
   end

   def switch_players
    @active_player = @inactive_player
    @inactive_player = @inactive_player == @player1 ? @player2 : @player1
   end

   def game_over?
    @inactive_player.hp <= 0
   end
end