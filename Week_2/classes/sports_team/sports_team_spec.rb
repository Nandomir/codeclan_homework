require('minitest/autorun')
require_relative('./sports_team')

class TestSportsTeam < Minitest::Test

  def test_give_name
    sports = SportsTeam.new("Don't care", 5)
    assert_equal("Don't care", sports.team_name)
  end

  def test_give_players
    sports = SportsTeam.new("Don't care", 5)
    assert_equal(5, sports.players)
  end

  def test_add_players__regardless
    sports = SportsTeam.new("Don't care", ["1","4","6"])
    player_addition = sports.add_players("7")
    assert_equal(["1","4","6","7"], player_addition)
  end

  def test_add_players__name_check
    sports = SportsTeam.new("Don't care", ["1","4","6"])
    player_addition = sports.add_players("6")
    assert_equal(["1","4","6"], player_addition)
  end

  def test_score__winning
    sports = SportsTeam.new("Don't care", ["1","4","6"])
    win = sports.score(2)
    assert_equal(2, win)
  end

  def test_score_losing
    sports = SportsTeam.new("Don't care", ["1","4","6"])
    lose = sports.score(-4)
    assert_equal(-4, lose)
  end
end