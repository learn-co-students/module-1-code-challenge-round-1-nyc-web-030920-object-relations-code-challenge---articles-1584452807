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

  def all_articles
    Article.all.select {|articles| articles.magazine == self}
  end

  def contributors
    all_articles.map {|articles| articles.author}
  end

  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
  end


end
