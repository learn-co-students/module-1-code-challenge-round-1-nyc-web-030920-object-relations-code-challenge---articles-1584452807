# Please copy/paste all three classes into this file to submit your solution!

class Author

    attr_reader :name
    @@all = []
  
    def initialize(name)
      @name = name
      Author.all << self 
    end
  
    def self.all 
      @@all 
    end
  
    #Returns an array of Article instances the author has written
    def articles
      Article.all.select do |article_instance|
      
        article_instance.author == self 
      end
    end 
  
    #Returns a unique array of Magazine instances for which the author has contributed to
    def magazines
      self.articles.map do |article_instance|
        article_instance.magazine 
      end.uniq
    end
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    #Returns a unique array of strings 
    #with the categories of the magazines the author has contributed to
    def topic_areas
      self.magazines.map do |magazine_instance|
        magazine_instance.category
      end.uniq 
    end
  
end


class Article

    attr_reader :author, :magazine, :title 
    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        Article.all << self 
    end

    def self.all 
        @@all 
    end
    
end

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
      self.articles.map do |article_instance|
        article_instance.author 
      end.uniq
    end
  
    def self.find_by_name(name)
      Magazine.all.each do |magazine_instance|
        if magazine_instance.name == name 
          return magazine_instance
        end
      end
    end
  
    #Returns an array strings of the titles of all articles written for that magazine
    def article_titles
      self.articles.map do |article_instance|
        article_instance.title 
      end
    end
  
    #Returns an array of authors who have written more than 2 articles for the magazine
    def contributing_authors
      self.contributors.select do |author_instance|
        
        author_instance.articles.count > 2 
      end
    end
  
end
  