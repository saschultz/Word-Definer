class Definition
  attr_accessor(:content)

  def initialize(attributes)
    @content = attributes.fetch(:content)
  end  
end
