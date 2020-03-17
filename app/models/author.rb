
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
      bin
      article_instance.author == self 
    end
  end 

  #Returns a unique array of Magazine instances for which the author has contributed to
  def magazines
    self.articles.map do |article_instance|
      article_instance.magazine 
    end.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  #Returns a unique array of strings 
  #with the categories of the magazines the author has contributed to
  def topic_areas
    self.magazines.map do |magazine_instance|
      magazine_instance.category
    end.uniq 
  end

end
