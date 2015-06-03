require "pstore"
require "directory"

class DirectoryLoader
  
  def self.load(filename)
    directory = Directory.new
    store = PStore.new(filename)
    store.transaction do
      if store.root?("root")
        store["root"].each { |entry|
          directory.add_entry(entry)
        }
      end
    end
    directory
  end
  
end
