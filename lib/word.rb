class Word
  @@list = []
  attr_accessor(:definition, :name)
  attr_reader(:id)

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @definition = []
    @id = @@list.length + 1
  end

  def save()
    @@list.push(self.name)
  end

  def self.all()
    @@list
  end

  def self.find(id)
    word_id = id
    @@list.each do |word|
      if word.id = word_id
        return word
      end
    end
  end

  def self.clear()
    @@list = []
  end


end
