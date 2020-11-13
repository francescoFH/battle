class Player
  HIT_POINTS = 30
  attr_accessor :hit_points
  attr_reader :name

  def initialize(name, hit_points = HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def receive_attack
    @hit_points -= 5
  end
end
