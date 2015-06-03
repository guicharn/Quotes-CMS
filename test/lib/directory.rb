require 'minitest/autorun'
require 'directory'

class TestDirectory < MiniTest::Unit::TestCase
  def setup
    @directory = Directory.new
    @quote = Quote.new("Vivere est cogitare", "Ciceron")
  end
  
  def test_that_new_directory_is_empty
    assert_equal 0, @directory.length
  end
  
  def test_that_entry_can_be_added
    @directory.add_entry(@quote)
    assert_equal 1, @directory.length
  end
  
  def test_that_entry_is_readable
    @directory.add_entry(@quote)
    assert_same(@quote, @directory.get_entry_at(0))
  end
end
