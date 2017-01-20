require 'sinatra/base'
require 'sinatra'
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions


  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    @game.attack(@game.opponent_of(@game.active_player))
    if @game.game_over == true
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    erb :attack
  end

  post '/switch-turn' do
    @game.switch_turn
    redirect '/play'
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
