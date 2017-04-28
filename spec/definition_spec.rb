require 'rspec'
require 'definition'

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
