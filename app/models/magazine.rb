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

  #helper method: return all the articles of this magazine
  def articles 
    Article.all.select do |article_instance|
      article_instance.magazine == self 
    end
  end


  #Returns an array of Author instances who have written for this magazine
  def contributors
    self.articles.map do |article_instance|
      article_instance.author 
    end.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find do |magazine_instance|
      magazine_instance.name == name 
    end
  end

  #Returns an array strings of the titles of all articles written for that magazine
  def article_titles
    self.articles.map do |article_instance|
      article_instance.title 
    end
  end

  #Returns an array of authors who have written more than 2 articles for the magazine
  def contributing_authors
    self.contributors.select do |author_instance|
      #might return articles for aother magazine?
      author_instance.articles > 2 
    end
  end

end
