class Article

    @@all = []
    attr_reader :title, :author, :magazine

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title

        Article.all << self
    end

    def self.all
        return @@all 
    end
end
