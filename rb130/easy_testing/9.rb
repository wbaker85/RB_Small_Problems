require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class ListThing
  attr_reader :vals

  def initialize
    @vals = []
  end

  def process
    @vals
  end
end

class TestList < Minitest::Test
  def setup
    @list = ListThing.new
  end

  def test_list_process
    assert_same(@list.vals, @list.process)
  end
end