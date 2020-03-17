require 'pry' 
class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def articles #Returns an array of Article instances the author has written
    Article.all.select {|a| a.author == self}
  end

  def magazines #Returns a unique array of Magazine instances for which the author has contributed to
    Magazine.all.select {|a| a.name == articles.magazine}
  end

  def add_article(magazine, title)
    article.new(self, magazine, title)
  end

  def topic_areas #Returns a unique array of strings with the categories of the magazines the author has contributed to
    magazines.map {|a| a.category}
  end

end
