require "directory"

class RandomDirectory

  def initialize(directory)
    @directory = directory
    @read_entries = []
    @entries_to_read = []
  end

  def entry
    update_entries
    
    if @entries_to_read.length == 0
      return false
    end
    
    pos = rand(@entries_to_read.length)
    real_pos = @entries_to_read[pos]
    @entries_to_read.delete_at(pos)
    @read_entries.push(real_pos)
    @directory.get_entry_at(real_pos)
  end

  private
  def update_entries
    num_entries = @read_entries.length + @entries_to_read.length
    (num_entries ... (@directory.length)).each { |num| @entries_to_read.push(num) }
  end
  
end
