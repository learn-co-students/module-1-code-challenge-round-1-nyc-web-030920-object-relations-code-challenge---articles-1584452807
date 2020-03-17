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

  def contributors #returns unique array of Author instances who have written for this magazine
    authors.uniq
  end

  def self.find_by_name(name) #finds a magazine object that matches the (name)
    self.all.find do |magazine|
      magazine.name == name
    end
  end

  def article_titles #returns an array of article titles
    articles.map do |article|
      article.title
    end
  end

  
  def authors #(helper method) returns an array of all authors who have written for this magazine DUPLICATES included
    self.articles.map do |article|
      article.author
    end
  end


  def contributing_authors #returns an array of authors that have written more than 2 articles for the magazine
    authors.find_all do |e|
      authors.count(e) > 1
    end.uniq
  end

end
