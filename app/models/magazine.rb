class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self 
  end

  def name 
    @name
  end

  def category
    @category
  end


  def self.all
    @@all 
  end

  def contributors #  - Returns an array of Author instances who have written for this magazine. Go through all the authors for each article. check the matching magazine names for all the authors
    contributors = [] 
    Article.all.each do |article| 
      if article.magazine.name == self.name 
        contributors << article.author 
      end
    end
    contributors  
  end

  def self.find_by_name(name)
    self.all.find {|magazine| magazine.name == name }
  end

  def article_titles
    titles = [] 
    Article.all.each do |article| 
      if article.magazine.name == self.name 
        titles << article.title 
      end
    end
    titles  
  end

  def contributing_authors
    contributors.filter {|author| author.articles.length > 2 }
  end

end


# a1 = Author.new("a1")
# a2 = Author.new("a2")
# a3 = Author.new("a3")

# m1 = Magazine.new("m1", "c1")
# m2 = Magazine.new("m2", "c2")
# m3 = Magazine.new("m3", "c3")

# aa1 = Article.new(a1, m1, "title1")
# aa2= Article.new(a1, m2, "title2")
# aa3 = Article.new(a1, m3, "title3")
# aa4 = Article.new(a2, m1, "title4")
# aa5= Article.new(a3, m2, "title5")
# aa6 = Article.new(a2, m3, "title6")