class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles #returns an array of Articles the author has written
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines #returns a uniq array of Magazines the author has contributes to
    articles.map do |article|
      article.magazine
    end.uniq
  end

  def add_article(magazine, title) #creates a new Article instance and associates it with this author
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map do |magazine|
      magazine.category
    end.uniq
  end

end
