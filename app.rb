require "sinatra/base"
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"
class Battle < Sinatra::Application
  enable :sessions
  

  get "/" do
    'Testing infrastructure working!'
    erb(:index)
  end

  post "/names" do
    $game = Game.new(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    redirect '/play'
  end

  get '/play' do
    # @player1 = $game.player1
    # @player2 = $game.player2
    @active_player = $game.active_player
    @inactive_player = $game.inactive_player
    erb(:play)
  end

  get '/attack' do
    # @player1 = $game.player1
    # @player2 = $game.player2
    @active_player = $game.active_player
    @inactive_player = $game.inactive_player
    $game.attack(@inactive_player)
    $game.switch_players
    erb(:attack)
  end

  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
