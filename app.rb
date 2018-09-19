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
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
   
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  get '/attack' do
    @player1 = $player1
    @player2 = $player2
    Game.new.attack(@player2)
    erb(:attack)
  end

  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
