require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class ArrayEmpty < Minitest::Test
  def test_list_empty
    assert_empty(['a'])
  end
end