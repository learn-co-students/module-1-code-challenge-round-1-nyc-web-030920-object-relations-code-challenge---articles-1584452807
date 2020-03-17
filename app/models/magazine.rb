class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name,category)
    @name = name
    @category = category
    Magazine.all << self 
  end

  def self.all #Returns an array of all Magazine instances
    @@all
  end 


  def authors 
    Article.all.select do |article|
      article.magazine == self 
    end 
  end 

  def contributors #Returns an array of Author instances who have written for this magazine
    authors.map do |article|
      article.author
    end 
  end 

  def self.find_by_name(name) # find
    authors.find do |author|
      author.name == name 
    end 
  end 


  def article_titles #[]
    Article.all.map do |artcles|
      artcles.title 
    end 
  end 

  def author_articles # helper 
    authors.map do |author|
      author.artcles
    end 
  end 

  def contributing_authors #[] >2 
    author_articles.find_all {|i| i>2}
  end 

end


