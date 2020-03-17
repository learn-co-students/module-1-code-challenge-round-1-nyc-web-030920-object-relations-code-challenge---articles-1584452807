class Article
    attr_reader :author, :magazine, :title

    @@articles = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine 
        @title = title 
        Article.all << self 
    end

    def self.all #Returns an array of all Article instances
        @@articles 
    end

    

end
