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
        Magazine.all.select do |magazine|
            magazine.article == self
        end 
    end 



end


