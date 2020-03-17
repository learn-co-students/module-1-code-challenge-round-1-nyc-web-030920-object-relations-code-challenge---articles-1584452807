class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def name
    @name
  end

  def category
    self.category #will revisit and test, unsure if this works
  end

  def self.all
    @@all
  end


end
