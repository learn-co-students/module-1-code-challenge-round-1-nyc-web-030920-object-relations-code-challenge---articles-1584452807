class Magazine 
  attr_accessor :name, :category

  @@magazines = []

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self 
  end

  def self.all #Returns an array of all Magazine instances
    @@magazines
  end

  def contributors #Returns an array of Author instances who have written for this magazine
    Article.all.select{|article| article.magazine == self}
  end

  def self.find_by_name(name) #given a string of magazine's name, this method returns the first magazine object that matches
    Magazine.all.find{|magazine|magazine.name == name}
  end

  def article_titles #Returns an array strings of the titles of all articles written for that magazine
    contributors.map{|article| article.title}
  end

  #need helper to get authors article count here
  def article_count
    
  end

  def contributing_authors #Returns an array of authors who have written more than 2 articles for the magazine

    contributors.select{|contributor| contributor.article_count >= 2}
  end

end
