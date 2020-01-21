class Team
  attr_reader :team_name, :players
  attr_accessor :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
    # points is not a parameter because we begin every team with 0 points!
  end

  # the below have been commented out as the attr_reader does this instead

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

  def find_player(name)
    # for player in @players
    #   return true if name == player
    # end
    # return false
    return @players.include?(name)
  end

  def points(result)
    @points += 3 if result == "win"
    @points += 1 if result == "draw"
    @points += 0 if result == "loss"
    return @points
  end
end
