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

  def article_list #list of articles with this magazine
    Article.all.select {|a| a.magazine == self}
  end

  def contributors #list of authors with this magazine
    article_list.map {|a| a.author}
  end

  def article_titles
    article_list.map {|a| a.titles}
  end

  def find_by_name(name)
    Magazine.all.find {|a| a.name == name}
  end

  def contributing_authors
    
  end
end
