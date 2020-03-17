class Author
  attr_reader :name, :article
  @@all = []

  def initialize(name)
    @name = name
    Author.all << self
  end

  def name
    @name
  end

  def articles
  #Returns an array of Article instances the author has written
  Author.all.map do |author|
    author == self
  end
  end

  def magazines
    my_arts = Article.all.select do |article|
    article.author == self
    end
    my_arts.magazine.uniq!
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
  categories = my_arts.map do |articles|
    articles.category
  end
  categories.uniq!
  end





end
