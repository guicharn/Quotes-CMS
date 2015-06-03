module Sentence
  attr_accessor :sentence

  def to_s
    '"' + @sentence.to_s + '"'
  end
end
