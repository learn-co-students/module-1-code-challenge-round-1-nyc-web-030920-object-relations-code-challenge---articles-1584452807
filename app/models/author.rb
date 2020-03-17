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

  def articles
    Article.all.select do |article|
      article.author == self
    end
  end

  def magazines
    articles.map do |article|
      article.magazine
    end.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map do |magazine|
      magazine.category
    end.uniq
  end


end
