require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestNumeric < Minitest::Test
  def test_is_numeric
    obj = Numeric.new
    assert_instance_of(Numeric, obj)
  end
end