class Author
  attr_reader :name


  def initialize(name)
    @name = name
    @articles = []
    @magazines = []
  end

  def name 
    @name
  end 

  def articles #  - Returns an array of Article instances the author has written
    @articles 
  end

  def magazines 
    @magazines.uniq {|magazine| magazine.name }
  end

  def add_article(magazine, title)
    article = Article.new(self, magazine, title)
    @magazines << magazine
    @articles << article 
  end

  def topic_areas #  - Returns a **unique** array of strings with the categories of the magazines the author has contributed to #go through each mag and collect the categories
    magazines.uniq { |magazine| magazine.category }
  end
  

end
