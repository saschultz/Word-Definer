class Word
  @@words = []

  attr_accessor(:name, :id)

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @id = @@words.length.+(1)
  end

  def save
    @@words.push(self)
  end

  def Word.all
    @@words
  end

  def Word.clear
    @@words = []
  end

  def Word.find(id)
    found_word = nil
    @@words.each() do |word|
      if word.id().eql?(id.to_i)
        found_word = word
      end
    end
    found_word
  end
end
