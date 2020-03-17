class Author
  attr_accessor :article_count
  attr_reader :name

  @@authors = []

  def initialize(name)
    @name = name
    Author.all << self 
  end

  def self.all #Returns an array of all Author instances
    @@authors 
  end

  def articles #Returns an array of Article instances the author has written
    Article.all.select {|article| article.author == self}
  end

  def magazines #Returns a unique array of Magazine instances for which the author has contributed to
    articles.map{|article| article.magazine}.uniq
  end

  def add_article(magazine, title) #creates a new Article instance and associates it with that author and that magazine
    Article.new(self, magazine, title)
  end

  def topic_areas #Returns a unique array of strings with the categories of the magazines the author has contributed to
    magazines.map{|magazine| magazine.category}.uniq
  end

  # def article_count #helper to get contributors article count
  #   @article_count = articles.count
  # end


end
