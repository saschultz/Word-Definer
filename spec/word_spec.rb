require 'rspec'
require 'word'

describe 'Word' do
  describe '#word' do
    it 'returns the name of the word' do
      test_word = Word.new({:name => 'serendipity'})
    expect(test_word.name).to(eq'serendipity')
    end
  end
end
