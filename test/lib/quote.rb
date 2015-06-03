require 'minitest/autorun'
require 'quote'

class TestQuote < MiniTest::Unit::TestCase
  def setup
    @quote = Quote.new("Vivere est cogitare", "Ciceron")
  end
  
  def test_string_representation
    assert_equal '"Vivere est cogitare" (Ciceron)', @quote.to_s
  end
end
