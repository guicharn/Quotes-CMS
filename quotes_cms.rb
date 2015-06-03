# Conf
store_filename = "data/directory.bin"

# Requires
require "cli"
require "directory_loader"
require "directory_persister"
require "random_directory"

# Main
directory = DirectoryLoader.load(store_filename)
random_directory = RandomDirectory.new(directory)

cli = Cli.new
cli.display_choice

while cli.response != "x"

  case cli.response
  when "r"
    entry = random_directory.entry
    if entry
      cli.display(entry)
    else
      cli.display_no_entries
    end
  when "q"
    sentence = cli.ask_quote
    author = cli.ask_author
    quote = Quote.new(sentence, author)
    directory.add_entry(quote)
    DirectoryPersister.save(directory.entries, store_filename)
    cli.quote_saved
  when "p"
    sentence = cli.ask_proverb
    proverb = Proverb.new(sentence)
    directory.add_entry(proverb)
    DirectoryPersister.save(directory.entries, store_filename)
    cli.proverb_saved
  end

  cli.display_choice
end

cli.exit
