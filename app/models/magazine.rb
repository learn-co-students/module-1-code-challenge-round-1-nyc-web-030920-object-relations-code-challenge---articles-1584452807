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

end
