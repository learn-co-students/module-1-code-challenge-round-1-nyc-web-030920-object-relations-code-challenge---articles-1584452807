class Article
    attr_reader :name, :category 
    attr_accessor :author, :magazine 
    @@all = []

    # Method to initialize the Article class. 
    def initialize(name, category, author, magazine)
        @name = name 
        @category = category 
        @author = author 
        @magazine = magazine 
        Article.all << self 
    end 

    # Method to return an array of all Article instances. 
    def self.all 
        @@all 
    end  
    
end
