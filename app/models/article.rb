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

    #Returns the author for that given article
    def author
        self.author 
    end

    #Returns the magazine for that given article
    def magazine 
        self.magazine
    end

end
