require('rspec')
require('word')
require('pry')

describe ('Word') do
  before() do
    Word.clear
  end

  describe ('#name') do
    it("create a new word") do
      new_word = Word.new({:name => "car"})
      expect(new_word.name).to(eq("car"))
    end
  end

  describe ("#initialize") do
    it("give new word an id of '1'") do
      new_word = Word.new({:name => "dog"})
      expect(new_word.id).to(eq(1))
    end
  end

  describe (".all") do
    it("save new word to array") do
      new_word1 = Word.new({:name => "dog"})
      new_word1.save
      new_word2 = Word.new({:name => "car"})
      new_word2.save
      expect(Word.all).to(eq([new_word1, new_word2]))
    end
  end

  describe (".clear") do
    it("clear all entries from list") do
      new_word = Word.new({:name => "cat"})
      new_word.save
      Word.clear
      expect(Word.all).to(eq([]))
    end
  end


end
