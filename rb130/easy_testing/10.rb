require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NotInLest < Minitest::Test
  def test_not_included
    list = ['xyz', 1, 2]
    list.delete_at(rand(3))
    refute_includes(list, 'xyz')
  end
end