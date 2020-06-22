require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class SampleTest < Minitest::Test
  def test_odd
    value = rand(10)
    assert_equal(true, value.odd?, "value #{value} is not odd")
  end
end