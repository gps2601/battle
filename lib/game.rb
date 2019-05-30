class Game
  def initialize(player_one, player_two)
    @players = [player_one, player_two]
    @current_turn = player_one
  end

  def attack
    not_turn.receive_damage
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def current_turn
    @current_turn
  end

  def switch_turn
    @current_turn == player_1 ? @current_turn = player_2 : @current_turn = player_1
  end

  def not_turn
    current_turn == player_1() ? player_2() : player_1()
  end
end
