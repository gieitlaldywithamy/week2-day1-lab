# Part A
#
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a Class called Student that takes in a name (String) and a cohort (integer) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

require('minitest/autorun')
require('minitest/rg')
require_relative('../lab.rb')

class TestStudent < MiniTest::Test

  def setup
    @codeclan_student = Student.new("John", 18)

  end

  def test_get_name
    assert_equal("John", @codeclan_student.name)
  end

  def test_get_cohort
    assert_equal(18, @codeclan_student.cohort)
  end

  def test_set_name
    @codeclan_student.set_name("Vishal")
    assert_equal("Vishal", @codeclan_student.name)
  end

  def test_set_cohort
    @codeclan_student.set_cohort(19)
    assert_equal(19, @codeclan_student.cohort)
  end

  def test_student_to_talk
    assert_equal("I can talk!", @codeclan_student.student_to_talk)
  end

  def test_favourite_language
    assert_equal("I love Ruby", @codeclan_student.favourite_language("Ruby"))
  end



  # Add a points property into your class that starts at 0.
  # Create a method that takes in whether the team has won or lost and updates the points property for a win.

end


class TestSportsTeam < MiniTest::Test

  def setup
    @sports_team = SportsTeam.new("Arsenal", ["Mark Zuckerberg", "Bill Gates", "Jeff Bezush"], "Elon Musk")
  end

  def test_get_properties
    assert_equal("Arsenal", @sports_team.team_name)
    assert_equal(["Mark Zuckerberg", "Bill Gates", "Jeff Bezush"], @sports_team.players)
    assert_equal("Elon Musk", @sports_team.coach)
  end

  def test_add_player
    assert_equal(["Mark Zuckerberg", "Bill Gates", "Jeff Bezush", "Jon Ronson"], @sports_team.add_player_team("Jon Ronson"))
  end

  def test_are_they_in_team
    assert_equal(false, @sports_team.are_they_in_team("Mark Zuckerbersdsadg"))
    assert_equal(true, @sports_team.are_they_in_team("Mark Zuckerberg"))
  end

  def test_points
    assert_equal(0, @sports_team.points)
  end

  def test_update_points
    assert_equal(3, @sports_team.update_points('won'))
  end
end
