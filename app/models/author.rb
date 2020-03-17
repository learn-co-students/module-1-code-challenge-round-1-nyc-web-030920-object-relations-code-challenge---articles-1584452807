class Author
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    Author.all << self
  end

  def name
    @name
  end










end
