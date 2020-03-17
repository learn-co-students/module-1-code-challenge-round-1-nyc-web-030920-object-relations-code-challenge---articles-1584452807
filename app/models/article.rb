class Article

    attr_reader :author, :magazine, :title

    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        Article.all << self
    end

    def self.all #returns an array of all Article instances
        @@all
    end

end
