# Please copy/paste all three classes into this file to submit your solution!
class Author
    attr_accessor :name
    @@all = []
  
    # Method to initialize the Author class. 
    def initialize(name)
      @name = name
      Author.all << self 
    end
  
    # Method to return an array of all authors. 
    def self.all 
      @@all 
    end 
    
    # Method to return an array of Article instances the author has written. 
    def articles 
      Article.all.select do |author| 
        author.author == self 
      end 
    end 
  
    # Method to return a unique array of Magazine instances for which the author has contributed to. 
    def magazines 
      Article.all.map do |author| 
        author.magazine 
      end 
    end 
  
    # Method to create a new Article instance and associates it with that author and that magazine. 
    def add_article(magazine, name) 
      Article.new(self, magazine, name) 
    end 
  
    # Method to return a unique array of strings with the categories of the magazines the author has contributed to. 
    def topic_areas 
      Article.all.map do |author| 
        author.category 
      end 
    end 
  end

  
class Magazine
    attr_accessor :name, :category
    @@all = []
  
    # Method to initialize the class Magazine. 
    def initialize(name, category)
      @name = name
      @category = category
      Magazine.all << self 
    end
    # Method to return an array of all Magazine instances. 
    def self.all 
      @@all 
    end 
  
    # Method to return an array of Author instances who have written for this magazine. 
    def contributors 
      Article.all.select do |magazine| 
        magazine.author == self 
      end 
    end 
  
    # Given a string of magazine's name, this method returns the first magazine object that matches. 
    def find_by_name(name)
      Article.all.find do |magazine| 
        magazine.name == name 
      end 
    end 
    
    # Method to return an array strings of the titles of all articles written for that magazine. 
    def article_titles 
      Article.all.each do |magazine| 
        magazine.name # I forgot that I named title as name in article. Same can be confirmed in tests.   
      end 
    end 
  
    # Method to return an array of authors who have written more than 2 articles for the magazine. 
    def contributing_authors 
      if magazine.contributors.length > 2 
        Article.all.each do |magazine| 
          magazine.author 
        end 
      end 
    end  
end

class Article
    attr_reader :name, :category 
    attr_accessor :author, :magazine 
    @@all = []

    # Method to initialize the Article class. 
    def initialize(name, category, author, magazine)
        @name = name 
        @category = category 
        @author = author 
        @magazine = magazine 
        Article.all << self 
    end 

    # Method to return an array of all Article instances. 
    def self.all 
        @@all 
    end  
end

