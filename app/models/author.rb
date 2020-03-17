class Author
  attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
    Author.all << self
  end

  def self.all 
    @@all
  end 

  def articles #Returns an array of Article instances the author has written
      Article.all.select do |articles|
      articles.author == self 
    end 
  end 

  def magazines
    articles.map do |articles|
      articles.magazine
    end.uniq 
  end 


  def add_article(magazine, title)
    Author.new(self, magazine, title)
  end 

  
  def topic_areas

  end 


end



