class Author
  attr_accessor :name
  @@all = []

  # Method to initialize the Author class. 
  def initialize(name)
    @name = name
    Author.all << self 
  end

  # Method to return an array of all authors. 
  def self.all 
    @@all 
  end 
end
