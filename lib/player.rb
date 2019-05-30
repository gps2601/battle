class Player
  attr_reader :name, :points

  def initialize(name)
    @name = name
    @points = 100
  end

  def receive_damage
    @points -= 10
  end
end
