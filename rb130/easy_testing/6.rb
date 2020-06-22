require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NoExperienceError < StandardError; end

class Employee
  def hire(exp = nil)
    raise NoExperienceError unless exp
  end
end

class EmployeeTest < MiniTest::Test
  def test_experience_error
    assert_raises(NoExperienceError) { Employee.new.hire }
  end
end