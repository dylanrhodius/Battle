class Game

attr_reader :active_player

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @active_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def game_over
    true if @active_player.hit_points == 0 || opponent_of(active_player).hit_points == 0
  end

  def switch_turn
    @active_player = opponent_of(active_player)
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end
