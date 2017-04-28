class Definition
  @@definitions = []
  
  attr_accessor(:content)

  def initialize(attributes)
    @content = attributes.fetch(:content)
  end

  def Definition.all
    @@definitions
  end
end
