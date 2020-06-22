require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class ListIncludes < Minitest::Test
  def test_list_includes
    list = ['asdf', 'xyz']
    assert_includes(list, 'xyz')
  end
end