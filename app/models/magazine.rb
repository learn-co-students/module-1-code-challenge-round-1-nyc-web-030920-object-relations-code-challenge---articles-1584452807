class Magazine 
  attr_reader :name, :category

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

  #need helpers to get authors article count here

  def article_authors #return an array of strings with author names for magazine
    contributors.map{|article| article.author.name}
  end

  def article_count #return hash of author key with count value
    article_authors.group_by(&:itself).transform_values(&:count) #found on stack overflow (.tally didnt work)
  end

  def contributing_authors #Returns an array (returning hash currently) of authors who have written more than 2 articles for the magazine
    article_count.select{|k, v| k if v > 2 }
  end

end
