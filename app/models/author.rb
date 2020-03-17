class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def articles
    Article.all.select{|article| article.author ==self}
  end

  def magazines
    articles.map{|article| article.magazine}.uniq
  end

  def topic_areas
    articles.map{|article| article.title}.uniq
  end
end
