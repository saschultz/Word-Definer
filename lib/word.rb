class Word
  @@words = []
  attr_accessor(:name)

  def initialize(attributes)
    @name = attributes.fetch(:name)
  end

  def save
    @@words.push(self)
  end

  def Word.all
    @@words
  end

end
