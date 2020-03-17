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

  def article_list
    Article.all.select {|a| a.magazine == self}
  end

  def contributors
    article_list.map {|a| a.author}
  end

end
