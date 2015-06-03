require 'minitest/autorun'
require 'random_directory'

class TestRandomDirectory < MiniTest::Unit::TestCase
  def setup
    @directory = Directory.new
    @random_directory = RandomDirectory.new(@directory)
    @quote = Quote.new("Vivere est cogitare", "Ciceron")
    @proverb = Proverb.new("Unitas virtute")
  end
  
  def test_it_returns_false_with_empty_directory
    refute @random_directory.entry
  end
  
  def test_that_random_directory_returns_entry
    @directory.add_entry(@quote)
    assert @random_directory.entry
  end
  
  def test_that_random_directory_returns_differents_entries
    @directory.add_entry(@quote)
    @directory.add_entry(@proverb)
    
    one = @random_directory.entry
    another = @random_directory.entry
    
    refute_same one, another
  end
end
