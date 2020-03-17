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


class Author
    attr_reader :name
  
    def initialize(name)
      @name = name
    end
  
    def articles
      Article.all.select {|article| article.author == self}
    end
    def magazines
      self.articles.map {|article| article.magazine}.uniq
    end
    def topic_areas
      self.magazines.map {|magazine| magazine.category}.uniq
    end
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
end
  
class Magazine

    @@all = []
    attr_accessor :name, :category
  
    def initialize(name, category)
      @name = name
      @category = category
      Magazine.all << self
    end
  
    def articles
      Article.all.select {|article| article.magazine == self}
    end
    def article_titles
      self.articles.map {|article| article.title}
    end
    def contributors
        # NOTE: presumably, this should be unique (not mentioned in README)
      self.articles.map {|article| article.author}.uniq
    end
    def contributing_authors
      # authors who have contributed 2+ articles
      count = {}
      self.articles.each do |article|
        name = article.author.name
        if count[name]
          count[name] += 1
        else
          count[name] = 1
        end
      end
      count.filter {|author, articles| articles > 1}.keys
    end
  
    def self.all
      return @@all 
    end
    def self.find_by_name(name)
      self.all.find {|magazine| magazine.name == name}
    end
  
end
  