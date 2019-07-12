require 'sinatra'
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require_relative './lib/game'
require_relative './lib/player'


class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    erb :attack
  end

  post '/switching_turn' do
    $game.switching_turn
    redirect('/play')
  end

  run! if app_file == $0
end
