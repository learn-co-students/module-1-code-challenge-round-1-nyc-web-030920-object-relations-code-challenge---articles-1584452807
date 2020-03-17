class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
    Article.all.select {|articles| articles.author == self}
  end

  def magazines
    mag_array = []
    mag_array << articles.map {|articles| articles.magazine}.uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    unique_array = []
    unique_array << articles.map {|articles| articles.magazine.category}.uniq
  end


end
