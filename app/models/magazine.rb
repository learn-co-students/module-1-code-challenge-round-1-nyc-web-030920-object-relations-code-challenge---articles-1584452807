class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self 
  end

  def self.all #Returns an array of all Magazine instances
    @@all
  end 


  def authors #all the authors this m
    Article.all.select do |article|
      article.magazine == self 
    end 
  end 

  def contributors #Returns an array of Author instances who have written for this magazine
    authors.map do |article|
      article.author
    end 
  end 


end


