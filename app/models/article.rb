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
