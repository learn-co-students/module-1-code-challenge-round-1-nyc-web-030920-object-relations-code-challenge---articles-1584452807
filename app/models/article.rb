class Article
attr_reader :author, :magazine, :title
@@all = []

def initialize(author, magazine, title)
@author = author
@magazine = magazine
@title = title
Article.all << self
end

def title
self.title #will revisit, feels wrong
end

def self.all
    @@all
end

def my_articles#helper
Article.all.select do |article|
    article == self
end
end

def author
#Returns the author for that given article
my_articles.author #seems wrong, will revisit
end

def magazines
#returns the magazine for this given article
my_articles.magazine
end






end
