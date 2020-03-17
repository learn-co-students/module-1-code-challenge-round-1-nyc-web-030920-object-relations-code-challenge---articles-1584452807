class Magazine
  attr_accessor :name, :category

  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def self.all
    @@all
  end

  def articles #returns all articles for this Magazine (helper method)
    Article.all.select do |article|
      article.magazine == self
    end
  end

  def contributors #returns an array of Author instances who have written for this magazine
    self.articles.map do |article|
      article.author
    end.uniq
  end

  def self.find_by_name(name) #finds a magazine object that matches the (name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles
    articles.map do |article|
      article.title
    end
  end

  def contributing_authors #returns an array of authors that have written more than 2 articles for the magazine
    self.articles
  end

end
