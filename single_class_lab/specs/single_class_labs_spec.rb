require('minitest/autorun')
require('minitest/reporters')
require_relative('../single_class_lab')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
  def setup
    @student0 = Student.new("Andrew", "e37", "Ruby")
  end

  def test_student_name()
    assert_equal("Andrew", @student0.find_name())
  end

  def test_student_cohort()
    assert_equal("e37", @student0.find_cohort())
  end

  def test_change_student_name()
    assert_equal("George", @student0.change_name("George"))
  end

  def test_change_cohort()
    assert_equal("e38", @student0.change_cohort("e38"))
  end

  def test_student_talk()
    assert_equal("I can talk!", @student0.talk)
  end

  def test_talk_programming_language
    assert_equal("My favourite language is Ruby!", @student0.fav_language)
  end
end
