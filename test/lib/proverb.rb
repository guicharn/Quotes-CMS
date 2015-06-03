require 'minitest/autorun'
require 'proverb'

class TestProverb < MiniTest::Unit::TestCase
  def setup
    @proverb = Proverb.new("Lorem ipsum")
  end
  
  def test_string_representation
    assert_equal '"Lorem ipsum"', @proverb.to_s
  end
end
