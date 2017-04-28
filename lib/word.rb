class Word
  attr_accessor(:name)
  def initialize(attributes)
    @name = attributes.fetch(:name)
  end
end
