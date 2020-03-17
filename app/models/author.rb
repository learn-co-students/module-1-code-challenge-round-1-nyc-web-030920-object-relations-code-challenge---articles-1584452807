class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end

  def articles
    Articles.all.select do |article_objs|
      article_objs.author == self
    end
  end

  def magazines
    articles do |article_obj|
      article_obj.magazine
    end.uniq
  end

  def add_article(magazine, title)
    article.author = self
  end

  def topic_areas
    articles do |topic|
      topic.magazine.category
    end.uniq
  end


end
