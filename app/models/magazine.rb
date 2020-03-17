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

  # Method to return an array of Author instances who have written for this magazine. 
  def contributors 
    Article.all.select do |magazine| 
      magazine.author == self 
    end 
  end 

  # Given a string of magazine's name, this method returns the first magazine object that matches. 
  def find_by_name(name)
    Article.all.find do |magazine| 
      magazine.name == name 
    end 
  end 
  
  # Method to return an array strings of the titles of all articles written for that magazine. 
  def article_titles 
    Article.all.each do |magazine| 
      magazine.title 
    end 
  end 

  
end
