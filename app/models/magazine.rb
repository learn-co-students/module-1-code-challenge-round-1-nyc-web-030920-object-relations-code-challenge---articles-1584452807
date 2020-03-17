class Magazine
  attr_accessor :name, :category

  @@all=[] 

  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self 
  end

  def self.all 
    @@all
  end

  def self.find_by_name(name)
    Magazine.all.find do |magazine|
      # find first magazine instance object 
      magazine.name == name
      #that the name matches with 
    end
  end

  def article_titles
    articles_from_this_magazine = Article.all.select do |article|
      # select from array of all the articles each  article array and save it in a variable called articles from this magazine
      article.magazine == self
      # if and only if the magazine string within this article matches with self.
    end
    articles_from_this_magazine.title 
    # find the title of that magazine instance
  end

  def contributing_authors
    articles_from_this_magazine = Article.all.select do |article|
      article.magazine == self 
    end
    authors_of_this_magazine = articles_from_this_magazine.author
      index = 0 
      unique_occurance = 1
      authors_2x
      while index < authors_of_this_magazine.count do 
        if authors_of_this_magazine[index] == authors_of_this_magazine[index - 1]
          unique_occurance += 1 
        if unique_occurance > 1 
          authors_2x << authors_of_this_magazine[index]
        end
      index += 1
      end 
    end
      authors_2x.uniq
  end


end

#### Magazine

# - `Magazine#contributors`
#   - Returns an array of Author instances who have written for this magazine


# - `Magazine.find_by_name(name)`
#   - Given a string of magazine's name, this method returns the first magazine object that matches
# - `Magazine#article_titles`
#   - Returns an array strings of the titles of all articles written for that magazine
# - `Magazine#contributing_authors`
#   - Returns an array of authors who have written more than 2 articles for the magazine