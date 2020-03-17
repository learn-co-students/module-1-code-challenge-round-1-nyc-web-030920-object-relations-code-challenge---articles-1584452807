class Author
  attr_reader :name


  def initialize(name)
    @name = name
  end

  def articles #Returns an array of Article instances the author has written
    Article.all.select {|a| a.author == self}
  end

  def magazines #Returns a unique array of Magazine instances for which the author has contributed to
    articles.map {|a| a.magazine}
  end

end
