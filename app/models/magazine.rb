require "pry"
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

  def mag_articles
    Article.all.select(|article| article.magazine ==self)
  end
  def contributors
    mag_articles.map{|article| article.author}
  end

  def self.find_by_name(name)
    Magazine.all.find{|mag| mag.name == name}
  end

  def article_titles
   mag_articles.map{|article| article.article_titles}
  end

  def author_count
    author_hash= Hash.new(0)
    mag_articles.each do |article|
      author_hash[article.author.name] += 1

      
    end
    author_hash
  end
  def contributing_authors
     author_count.map do |author|
        binding.pry
     end
  end
end
