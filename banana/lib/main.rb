# These three functions suffer from the "Data Clump" smell.
# Cure the smell, and keep the test green and unchanged.
# Hint: Let the existing functions use the new code that you
#       write.

class Story
  def initialize(beginning ="Fee fi fo", middle = "fum", conclusion = "This is the house that jack")
    @beginning = beginning
    @middle = middle
    @conclusion = conclusion
  end
end

def word_count(beginning, middle, conclusion)
  beginning.split.size +
  middle.split.size +
  conclusion.split.size
end

def letter_count(beginning, middle, conclusion)
  beginning.size + middle.size + conclusion.size
end

def period_count(beginning, middle, conclusion)
  beginning.scan(/\./).size +
  middle.scan(/\./).size +
  conclusion.scan(/\./).size
end
