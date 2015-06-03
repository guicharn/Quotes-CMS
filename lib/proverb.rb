require "sentence"

class Proverb

  include Sentence

  def initialize(sentence)
    @sentence = sentence.to_s
  end

end
