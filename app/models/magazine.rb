class Magazine
  attr_accessor :name, :category, :author, :article 
  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    @author = author
    @article = article
    Magazine.all = << self 
  end

  def self.all #Returns an array of all Magazine instances
    @@all
  end 

  def contributors 
    Magazine.all.map do |magazine|
      magazine.author 
    end 
  end 

end


#### Magazine

- `Magazine#contributors`
  - Returns an array of Author instances who have written for this magazine

  #### Magazine

- `Magazine.find_by_name(name)`
- Given a string of magazine's name, this method returns the first magazine object that matches
- `Magazine#article_titles`
- Returns an array strings of the titles of all articles written for that magazine
- `Magazine#contributing_authors`
- Returns an array of authors who have written more than 2 articles for the magazine