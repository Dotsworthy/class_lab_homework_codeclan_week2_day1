require('minitest/autorun')
require('minitest/reporters')
require_relative('../single_class_lab')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
  def setup
    @student0 = Student.new("Andrew", "e37", "Ruby")
  end

  def test_student_name()
    assert_equal("Andrew", @student0.get_name())
  end

  def test_student_cohort()
    assert_equal("e37", @student0.get_cohort())
  end

  def test_change_student_name()
    @student0.change_name("George")
    assert_equal("George", @student0.get_name)
  end

  def test_change_cohort()
    @student0.change_cohort("e38")
    assert_equal("e38", @student0.get_cohort)
  end

  # changed the above change tests from one line to two. Is there a reason for this? assume it is because we need to return name/cohort in case it doesn't check and just passes it anyway?

  def test_student_talk()
    assert_equal("I can talk!", @student0.talk)
  end

  def test_talk_programming_language
    assert_equal("My favourite language is Ruby!", @student0.fav_language)
  end

end
