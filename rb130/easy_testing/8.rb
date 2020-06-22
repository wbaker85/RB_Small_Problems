require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NotNumeric < Minitest::Test
  def test_not_numeric
    value = [1, 123.123, 'a']
    assert_kind_of(Numeric, value.sample)
  end
end