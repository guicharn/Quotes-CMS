require "proverb"
require "quote"

class Directory

  attr_reader :entries
  
  def initialize
    @entries = []
  end

  def add_entry(entry)
    @entries.push(entry)
  end

  def get_entry_at(index)
    @entries[index]
  end
  
  def length
    @entries.length
  end

  def to_s
    @entries.join("\n")
  end

end
