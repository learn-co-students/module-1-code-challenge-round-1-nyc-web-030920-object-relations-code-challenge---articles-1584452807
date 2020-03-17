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
  
  # Method to return an array of Article instances the author has written. 
  def articles 
    Article.all.select do |author| 
      author.author == self 
    end 
  end 

  # Method to return a unique array of Magazine instances for which the author has contributed to. 
  def magazines 
    Article.all.map do |author| 
      author.magazine 
    end 
  end 

  # Method to create a new Article instance and associates it with that author and that magazine. 
  def add_article(magazine, title) 
    Article.new(self, magazine, title) 
  end 

  # Method to return a unique array of strings with the categories of the magazines the author has contributed to. 
  def topic_areas 
    Article.all.map do |author| 
      author.category 
    end 
  end 
end
