require 'rspec'
require 'word'

describe 'Word' do
  describe '#name' do
    it 'returns the name of the word' do
      test_word = Word.new({:name => 'serendipity'})
    expect(test_word.name).to(eq'serendipity')
    end
  end

  describe '#words' do
    it 'initially returns an empty array of words' do
      test_word = Word.new({:name => 'serendipity'})
    expect(test_word.words).to(eq([]))
    end
  end
end
