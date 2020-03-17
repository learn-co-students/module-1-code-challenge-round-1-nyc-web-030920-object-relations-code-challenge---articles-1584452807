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

 def contributors
  #Returns an array of Author instances who have written for 
  #this magazine
  Magazine.all.select do |magazine|
  magazine == self
  magazine.author
  end
end

def find_by_name(name)
Magazine.all.find |magazine|
magazine.name = name
end
end

def article_titles
newvar = Article.all.map do |article|
  article.magazine == self
  newvar.title
end
end

def contributing_authors
newvar.map do |articles| #trying to iterate through this 
  #specific magazine's articles to find authors who have met condition
  
end

