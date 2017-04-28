require 'rspec'
require 'word'
require 'definition'

describe 'Word' do
  before() do
    Word.clear
  end

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

  describe '.all' do
    it 'initially returns an empty array of words' do
      Word.new({:name => 'serendipity'})
    expect(Word.all).to(eq([]))
    end
  end

  describe '.clear' do
    it 'empties out all the saved words' do
      Word.new({:name => 'serendipity'})
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end

  describe '#id' do
    it 'returns the id of the word' do
      test_word = Word.new({:name => 'serendipity'})
    expect(test_word.id).to(eq(1))
    end
  end

  describe '.find' do
    it 'returns a word by its id number' do
      test_word_1 = Word.new({:name => 'serendipity'})
      test_word_1.save
      test_word_2 = Word.new({:name => 'zemblanity'})
      test_word_2.save
    expect(Word.find(test_word_2.id)).to(eq(test_word_2))
    end
  end
end
