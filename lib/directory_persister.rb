require "pstore"

class DirectoryPersister
  def self.save(datas, filename)
    store = PStore.new(filename)
    store.transaction do
      store["root"] = datas
    end
  end
end
