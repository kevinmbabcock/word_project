class Word
  @@list = []
  attr_accessor(:definition, :name)
  attr_reader(:id)

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @definition = []
    @id = @@list.length + 1
  end

  def save
    @@list.push(self)
  end

  def self.all
    @@list
  end

end
