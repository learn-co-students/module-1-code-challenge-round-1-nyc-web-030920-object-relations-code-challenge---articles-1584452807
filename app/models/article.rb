class Article
    attr_reader :author, :magazine, :title 
    @@all = []

    def initialize(author, magazine, title)
        @magazine = magazine
        @title = title
        @author = author
        author.add_article(magazine, title)
        @@all << self 
    end

    def title
        @title
    end

    def self.all
        @@all 
    end

    def author #returns the author for that give article
        @author  
    end

    def magazine 
        @magazine 
    end

end
