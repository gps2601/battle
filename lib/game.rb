class Game
  def initialize(player_one, player_two)
    @players = [player_one, player_two]
  end

  def attack(player)
    player_2().receive_damage
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end
end
