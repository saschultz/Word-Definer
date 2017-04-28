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

  def Definition.find(id)
    found_definition = nil
    @@definitions.each() do |definition|
      if definition.id().eql?(id.to_i)
        found_definition = definition
      end
    end
    found_definition
  end
end
