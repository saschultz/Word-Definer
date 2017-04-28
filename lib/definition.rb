class Definition
  @@definitions = []

  attr_accessor(:content, :id)

  def initialize(attributes)
    @content = attributes.fetch(:content)
    @id = @@definitions.length.+(1)
  end

  def Definition.all
    @@definitions
  end

  def save
    @@definitions.push(self)
  end

  def Definition.clear
    @@definitions = []
  end

end
