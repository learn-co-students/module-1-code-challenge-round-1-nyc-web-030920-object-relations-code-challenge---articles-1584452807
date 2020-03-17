class Magazine
  #The name and category of the magazine **can be** changed after being initialized.
  #Returns the name of this magazine
  #Returns the category of this magazine
  attr_accessor :name, :category

  @@all = []

  #A magazine is initialized with a name as a string and a category as a string
  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self
  end
#Returns an array of all Magazine instances
def self.all
  @@all
end
#Returns an array of Author instances who have written for this magazine
def contributors
  Article.all.select{|article| article.magazine == self}.map{|article| article.author}
end
#Given a string of magazine's name, this method returns the first magazine object that matches
def self.find_by_name(name)
  self.all.find{|magazine| magazine.name == name}
end
#helper method to collect articles written for one magazine
def articles
  Article.all.select{|article| article.magazine == self}
end
#Returns an array strings of the titles of all articles written for that magazine
def article_titles
  self.articles.map{|article| article.title}
end
#Returns an array of authors who have written more than 2 articles for the magazine
def contributing_authors
  author_array = self.articles.map{|article| article.author}
  author_array.select{|author| author_array.count(author) > 2}.uniq
end
end
