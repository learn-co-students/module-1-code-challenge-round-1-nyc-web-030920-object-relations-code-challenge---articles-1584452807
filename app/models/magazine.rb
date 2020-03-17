class Magazine
  attr_accessor :name, :category
  @@all = []


  def initialize(name, category)
    @name = name
    @category = category
    Magazine.all << self

  end

  def self.all
    @all
  end

  def contributors
    Article.all.select do |contributor|
      contributor.magazine == self
    end
  end

  def find_by_name(magazine)
    Magazine.all.find(magazine)
  end

  def article_titles
    Article.all.select do |articles_obj|
      articles_obj.magazine == self 
    end
  end
  
  def contributing_authors
    Article.all.select do |cont_authors|
      if cont_authors.magazine == self && cont_authors.author.count > 1
      end
    end
  end


end