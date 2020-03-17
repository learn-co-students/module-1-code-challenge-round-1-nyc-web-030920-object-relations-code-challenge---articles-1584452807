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
