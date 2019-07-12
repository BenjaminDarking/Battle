require './app'

class Player
  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 60

  def initialize(name)
    @name = name
    @hit_points = 60
  end

  def receive_damage
    @hit_points -= 10
  end

  def random_damage
    rand(1..10)
  end

end
