require('rspec')
require('word')
require('pry')

describe ('Word') do

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


end
