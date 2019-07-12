require './lib/player.rb'

class Game
  attr_reader :players, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

def attack(player)
  player.receive_damage
end

def player_1
  players.first
end

def player_2
  players.last
end

def switching_turn
  @current_turn = opponent_of(current_turn)
end

def opponent_of(cureent_turn)
  @players.select { |player| player != current_turn }.first
end

end
