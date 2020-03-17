class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles 
    Article.all.select do |articles| 
      articles.author == self 
    end
  end

  def magazines 
    articles.magazine.uniq
  end

  def add_article(magazine, title) 
    new_article = (self, magazine, title)
  end

  def topic_areas
    magazines.each do |magazine|
      # |magazine| = each magazine element in the array 
    #an array of unique magazine instances I've contributed to 
    category_contribution = Magazine.all.select do |each_magazine|
      # an array of categories I've contributed to 
      each_magazine == magazine 
      each_magazine.categories
    end 
    category_contribution.uniq
    # a unique array of categories I've contributed to 
  end

end

#### Author

# - `Author#articles`
#   - Returns an array of Article instances the author has written --done-- articles line 10 
# - `Author#magazines`
#   - Returns a **unique** array of Magazine instances for which the author has contributed to --done-- magazines line 16


# - `Author#add_article(magazine, title)`
#   - Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine. --done-- add_article
# - `Author#topic_areas`
#   - Returns a **unique** array of strings with the categories of the magazines the author has contributed to --done-- line 24 