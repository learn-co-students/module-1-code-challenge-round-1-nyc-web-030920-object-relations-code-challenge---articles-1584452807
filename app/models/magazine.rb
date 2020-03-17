class Magazine
  attr_accessor :name, :category
  @@all = []

  # Method to initialize the class Magazine. 
  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self 
  end
  # Method to return an array of all Magazine instances. 
  def self.all 
    @@all 
  end 

end
