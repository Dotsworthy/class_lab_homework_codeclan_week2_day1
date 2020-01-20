class Team
  attr_reader :team_name, :players, :coach

  def initialize (team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  # def get_name
  #     return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end

  def add_player(name)
    @players.push(name)
  end

  def points(result)
    @points += 3 if result == "win"
    @points += 1 if result == "draw"
    @points += 0 if result == "loss"
    return @points
  end
end
