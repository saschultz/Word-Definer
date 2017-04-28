require 'rspec'
require 'definition'

describe 'Definition' do
  before() do
    Definition.clear
  end

  describe '#content' do
    it 'returns the content of the definition' do
      test_definition = Definition.new({:content => 'the occurrence and development of events by chance in a happy or beneficial way.'})
    expect(test_definition.content).to(eq'the occurrence and development of events by chance in a happy or beneficial way.')
    end
  end

  describe '.all' do
    it 'initially returns an empty array of all definitions' do
      Definition.new({:content => 'the occurrence and development of events by chance in a happy or beneficial way.'})
    expect(Definition.all).to(eq([]))
    end
  end

  describe '#save' do
    it 'saves a definition to the array of definitions' do
      test_definition = Definition.new({:content => 'the occurrence and development of events by chance in a happy or beneficial way.'})
      test_definition.save
    expect(Definition.all).to(eq([test_definition]))
    end
  end

  describe '.clear' do
    it 'empties out all the saved definitions' do
      Definition.new({:content => 'the occurrence and development of events by chance in a happy or beneficial way.'})
      Definition.clear
    expect(Definition.all).to(eq([]))
    end
  end

  describe '#id' do
    it 'returns the id of the definition' do
      test_definition = Definition.new({:content => 'the occurrence and development of events by chance in a happy or beneficial way.'})
    expect(test_definition.id).to(eq(1))
    end
  end

  describe '.find' do
    it 'returns a definition by its id number' do
      test_definition_1 = Definition.new({:content => 'the occurrence and development of events by chance in a happy or beneficial way.'})
      test_definition_1.save
      test_definition_2 = Definition.new({:content => 'making unhappy, unlucky and unexpected discoveries occurring by design'})
      test_definition_2.save
    expect(Definition.find(test_definition_2.id)).to(eq(test_definition_2))  
    end
  end
end
