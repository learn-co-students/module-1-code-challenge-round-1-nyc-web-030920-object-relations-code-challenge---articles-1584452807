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

    def author
        Article.all.select do |article|
            article.author == self  
        end 
    end 


    def magazine
        Article.all.select do |article|
            article.magazine == self  
        end 
    end 

    def article_titles

    end
end 



