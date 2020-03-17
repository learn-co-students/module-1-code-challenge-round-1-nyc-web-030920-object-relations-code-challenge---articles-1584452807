# Please copy/paste all three classes into this file to submit your solution!
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
  
    def all_articles
      Article.all.select {|articles| articles.magazine == self}
    end
  
    def contributors
      all_articles.map {|articles| articles.author}
    end
  
   #def contibuting_authors
    #  author_list = []
    #  contributors.select {|authors| authors.name author_list << authors} 
    #  author_list.uniq
   #end
    
  
    def self.find_by_name(name)
      Magazine.all.find {|magazine| magazine.name == name}
    end
  
    def article_titles
      all_articles.map {|articles| articles.title}
    end
  
  
  end

  
  class Author
    attr_reader :name
  
  
    def initialize(name)
      @name = name
    
    end
  
    def articles
      Article.all.select {|articles| articles.author == self}
    end
  
    def magazines
      mag_array = []
      mag_array << articles.map {|articles| articles.magazine}.uniq
    end
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def topic_areas
      unique_array = []
      unique_array << articles.map {|articles| articles.magazine.category}.uniq
    end
  
  
  end
  

  class Article
    @@all = []
    attr_reader :author, :magazine, :title
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
    