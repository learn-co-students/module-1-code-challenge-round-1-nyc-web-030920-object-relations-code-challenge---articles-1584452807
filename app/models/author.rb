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

  #Returns an array of Article instances the author has written
  def articles
    Article.all.select do |article_instance|
      article_instance.author == self 
    end
  end 

  #Returns a unique array of Magazine instances for which the author has contributed to
  def magazines
    self.articles.map do |article_instance|
      article_instance.magazine 
    end.uniq
  end


end
