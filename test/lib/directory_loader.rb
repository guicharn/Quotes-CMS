require 'minitest/autorun'
require 'tempfile'
require 'directory_persister'
require 'directory_loader'

class TestDirectoryLoader < MiniTest::Unit::TestCase
  def setup
    @directory = Directory.new
    @proverb = Proverb.new("Lorem ipsum")
    @directory.add_entry(@proverb)
    @tmpFile = Tempfile.new('TestDirectoryPersister')
  end
  
  def test_that_directory_is_loaded
    DirectoryPersister.save(@directory.entries, @tmpFile.path)
    directory_loaded = DirectoryLoader.load(@tmpFile.path)
    assert_equal @directory.length, directory_loaded.length
    assert_equal directory_loaded.get_entry_at(0).to_s, @proverb.to_s
  end
end
