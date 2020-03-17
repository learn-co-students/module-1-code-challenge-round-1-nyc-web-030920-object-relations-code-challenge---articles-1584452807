# Please copy/paste all three classes into this file to submit your solution!
class Article
    #An article **cannot** change its author, magazine, or title after it is has been initialized.
    #Returns the title for that given article
    #Returns the author for that given article
    #Returns the magazine for that given article
    attr_reader :author, :magazine, :title
    #An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
    @@all = []
    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        Article.all << self
    end
    #Returns an array of all Article instances
    def self.all
        @@all
    end
end

class Author
        #A name **cannot** be changed after it is initialized.
        #Returns the name of the author
        attr_reader :name
      
      #An author is initialized with a name, as a string.
        def initialize(name)
          @name = name
        
        end
      #Returns an array of Article instances the author has written
      def articles
        Article.all.select{|article| article.author == self}
      end
      #Returns a **unique** array of Magazine instances for which the author has contributed to
      def magazines
        self.articles.map{|article| article.magazine}.uniq
      end
      #Given a magazine (as Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.
      def add_article(magazine, title)
        Article.new(self, magazine, title)
      end
      #Returns a **unique** array of strings with the categories of the magazines the author has contributed to
      def topic_areas
        self.magazines.map{|magazine| magazine.category}.uniq
      end
end

class Magazine
        #The name and category of the magazine **can be** changed after being initialized.
        #Returns the name of this magazine
        #Returns the category of this magazine
        attr_accessor :name, :category
      
        @@all = []
      
        #A magazine is initialized with a name as a string and a category as a string
        def initialize(name, category)
          @name = name
          @category = category
          Magazine.all << self
        end
      #Returns an array of all Magazine instances
      def self.all
        @@all
      end
      #Returns an array of Author instances who have written for this magazine
      def contributors
        Article.all.select{|article| article.magazine == self}.map{|article| article.author}
      end
      #Given a string of magazine's name, this method returns the first magazine object that matches
      def self.find_by_name(name)
        self.all.find{|magazine| magazine.name == name}
      end
      #helper method to collect articles written for one magazine
      def articles
        Article.all.select{|article| article.magazine == self}
      end
      #Returns an array strings of the titles of all articles written for that magazine
      def article_titles
        self.articles.map{|article| article.title}
      end
      #Returns an array of authors who have written more than 2 articles for the magazine
      def contributing_authors
        author_array = self.articles.map{|article| article.author}
        author_array.select{|author| author_array.count(author) > 2}.uniq
      end
end
      