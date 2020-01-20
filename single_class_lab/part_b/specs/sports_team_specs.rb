require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test
  def setup
    @team01 = Team.new("Newcastle United",["Miguel Almiron", "Jamaal Lascelles", "Allan Saint-Maxamin"], "Steve Bruce", 0)
  end

  def test_team_name
    assert_equal("Newcastle United", @team01.team_name)
  end

  def test_get_players
    assert_equal(["Miguel Almiron", "Jamaal Lascelles", "Allan Saint-Maxamin"], @team01.players)
  end

  def test_get_coach
    assert_equal("Steve Bruce", @team01.coach)
  end

  def test_add_player
    assert_equal("Martin Dubravka", @team01.add_player("Martin Dubravka").last)
  end

  def test_add_points
    assert_equal(3, @team01.points("win"))
  end
end
