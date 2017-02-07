class SportsTeam

  attr_accessor :team_name, :players
  def initialize(team_name, players)
    @team_name = team_name
    @players = players
    @points = 0
  end

  def add_players(someone)
     players.include?(someone) ? @players :  @players << someone # true condition doesn't work with a "return" cmd
  end

  def score(points)
    @points += points
  end

  # def add_players(someone)
  #   for athlete in @players
  #     if @players.include?(someone)
  #     return @players
  #   else
  #     return @players << someone
  #     end
  #   end
  # end

end