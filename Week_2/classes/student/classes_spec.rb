require('minitest/autorun')
require_relative('./classes')

class TestStudent < Minitest::Test #class name has to be a bit different than the one in classes.rb

  def test_name
    pupil = Student.new("Jay", 10)
    assert_equal("Jay", pupil.name)
  end

  def test_cohort
    pupil =  Student.new("Roman", 9)
    assert_equal(9, pupil.cohort)
  end

  def test_set_name
    pupil = Student.new("Mearding", 8)
    pupil.name = "M"
    assert_equal("M", pupil.name)
  end

  def test_set_cohort
    pupil = Student.new("Roman", 7)
    pupil.cohort = 9
    assert_equal(9, pupil.cohort)
  end 

  def test_talking_student
    pupil = Student.new("John", 6)
    talk = pupil.talking_student("talks!")
    assert_equal("John talks!", talk)
  end

  def test_favourite_language__student1
    pupil = Student.new("May", 10)
    result = pupil.student_favourite_language
    assert_equal("I love Ruby", result)
  end

  def test_favourite_language_student2
    pupil = Student.new("Sarah", 7)
    result = pupil.student_favourite_language
    assert_equal("I love Java", result)
  end

end