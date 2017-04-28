require 'rspec'
require 'definition'

describe '#content' do
  it 'returns the content of the definition' do
    test_definition = Definition.new({:content => 'the occurrence and development of events by chance in a happy or beneficial way.'})
  expect(test_definition.content).to(eq'the occurrence and development of events by chance in a happy or beneficial way.')  
  end
end
