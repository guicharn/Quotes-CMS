class Cli

  @input

  def display_choice
    print "Do you want to [r]ead something, create a [q]uote, create a [p]roveb, or e[x]it?"
    @input = gets.strip
  end

  def response
    if self.response_valid?
      if @input == ""
        "r"
      else
        @input
      end
    end
  end

  def display(string)
    puts string
  end

  def display_no_entries
    puts "No entries to read!"
  end

  def ask_proverb
    puts "Please enter the proverb:"
    gets.strip
  end

  def ask_quote
    puts "Please enter the quote:"
    gets.strip
  end

  def ask_author
    puts "Please enter the quote's author:"
    gets.strip
  end

  def proverb_saved
    puts "Proverb added!"
  end

  def quote_saved
    puts "Quote added!"
  end

  def response_valid?
    ["r", "q", "p", "x", ""].include?(@input)
  end

  def exit
    puts "Good bye !"
  end

end
