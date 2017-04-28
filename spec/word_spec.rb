require 'rspec'
require 'word'

describe 'Word' do
  describe '#name' do
    it 'returns the name of the word' do
      test_word = Word.new({:name => 'serendipity'})
    expect(test_word.name).to(eq'serendipity')
    end
  end

  describe '#save' do
    it 'saves a word to the array of words' do
      test_word = Word.new({:name => 'serendipity'})
      test_word.save
      expect(Word.all).to(eq([test_word]))
    end
  end

  # describe '.all' do
  #   it 'initially returns an empty array of words' do
  #     Word.new({:name => 'serendipity'})
  #   expect(Word.all).to(eq([]))
  #   end
  # end

end
