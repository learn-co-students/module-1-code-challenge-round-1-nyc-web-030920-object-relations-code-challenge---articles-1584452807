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

  #helper method: return all the articles of this magazine
  def articles 
    Article.all.select do |article_instance|
      article_instance.magazine == self 
    end
  end
  

  #Returns an array of Author instances who have written for this magazine
  def contributors
  end



end
