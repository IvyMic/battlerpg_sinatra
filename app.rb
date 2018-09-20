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
    @active_player = $game.active_player
    @inactive_player = $game.inactive_player
    erb(:play)
  end

  get '/attack' do
    @active_player = $game.active_player
    @inactive_player = $game.inactive_player
    $game.attack(@inactive_player)
    redirect '/game_over' if $game.game_over?
    erb(:attack)
  end

  post '/switch_players' do
    $game.switch_players
    redirect '/play'
  end

  get "/game_over" do
    @inactive_player = $game.inactive_player 
    erb(:game_over)
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
