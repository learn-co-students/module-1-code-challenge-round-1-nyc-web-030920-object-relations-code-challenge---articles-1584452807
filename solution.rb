class Author
    attr_reader :name
  
  
    def initialize(name)
      @name = name
    
    end
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
    end
  
    def articles
      Article.all.select{|article| article.author ==self}
    end
  
    def magazines
      articles.map{|article| article.magazine}.uniq
    end
  
    def topic_areas
      articles.map{|article| article.magazine.category}.uniq
    end
  end
  class Article
    attr_reader :author, :magazine, :title
        @@all=[]
    def initialize(author, magazine, title)
        @author= author
        @magazine= magazine
        @title=title
        Article.all << self
    end
        def self.all
            @@all
        end
        
    end

    class Magazine
        attr_accessor :name, :category
      
          @@all=[]
        def initialize(name, category)
          @name = name
          @category = category
          Magazine.all << self
        end
        def self.all 
          @@all
        end
      
        def article_titles
            mag_articles.map{|article| article.title}
        end
        def mag_articles
          Article.all.select{|article| article.magazine ==self}
        end
        def contributors
          mag_articles.map{|article| article.author}
        end
      
        def self.find_by_name(name)
          Magazine.all.find{|mag| mag.name == name}
        end
      
      
        def author_count
          author_hash= Hash.new(0)
          mag_articles.each do |article|
            author_hash[article.author.name] += 1      
          end
          author_hash
        end
        def contributing_authors
          return_arr =[]
           author_count.each do |author, value|
              if value > 2
                return_arr << author
              end
           end
           return_arr
        end
      end
            