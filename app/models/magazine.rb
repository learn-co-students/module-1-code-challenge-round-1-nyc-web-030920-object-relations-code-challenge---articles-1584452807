class Magazine

  @@all = []
  attr_accessor :name, :category

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end

  def articles
    Article.all.select {|article| article.magazine == self}
  end
  def article_titles
    self.articles.map {|article| article.title}
  end
  def contributors
    # presumably, this should be unique
    self.articles.map {|article| article.author}.uniq
  end
  def contributing_authors
    # authors who have contributed 2+ articles
    # TODO: testme
    count = {}
    self.articles.each do |article|
      name = article.author.name
      if count[name]
        count[name] += 1
      else
        count[name] = 1
      end
    end
    count.filter {|author, articles| articles > 1}.keys
  end

  def self.all
    return @@all 
  end
  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name}
  end

end
