require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample_text.txt')
    @sample = @file.read
    @text = Text.new(@sample)
  end

  def test_swap
    assert_equal(@sample.gsub('o', 'z'), @text.swap('o', 'z'))
  end

  def test_word_count
    assert_equal(@sample.split.count, @text.word_count)
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end