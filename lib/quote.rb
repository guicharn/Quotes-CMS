require "sentence"
require "author"

class Quote

  include Sentence
  include Author

  def initialize(sentence, author)
    @sentence = sentence.to_s
    @author = author.to_s
  end

  def to_s
    sprintf('"%s" (%s)', @sentence, @author)
  end

end
