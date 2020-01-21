require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test
  def setup
    @team01 = Team.new("Newcastle United",["Miguel Almiron", "Jamaal Lascelles", "Allan Saint-Maxamin"], "Steve Bruce")
  end

  def test_get_team_name
    assert_equal("Newcastle United", @team01.team_name)
  end

  def test_get_players
    assert_equal(["Miguel Almiron", "Jamaal Lascelles", "Allan Saint-Maxamin"], @team01.players)
  end

  def test_get_coach
    assert_equal("Steve Bruce", @team01.coach)
  end

  def test_set_coach
    @team01.coach = "Rafa Benitez"
    assert_equal("Rafa Benitez", @team01.coach)
  end

  def test_add_player
    # @team01.push("Martin Dubravka")
    assert_equal("Martin Dubravka", @team01.add_player("Martin Dubravka").last)
    # assert_equal("Martin Dubravka", @team01.push("Martin Dubravka").last)
  end

  def test_find_player_true
    assert_equal(true, @team01.find_player("Miguel Almiron"))
  end

  def test_find_player_false
    assert_equal(false, @team01.find_player("Billy Sharp"))
  end

  def test_add_points_true
    assert_equal(3, @team01.points("win"))
  end

  def test_add_points_false
    assert_equal(3, @team01.points("loss"))

end
