require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NilTest < Minitest::Test
  def test_nil
    value = [nil, 'not nil!'].sample
    assert_nil(value)
  end
end