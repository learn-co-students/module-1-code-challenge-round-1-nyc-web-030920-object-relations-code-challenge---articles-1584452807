require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
author1 = Author.new("name1")
author2 = Author.new("name2")
author3 = Author.new("name3")

mag1 = Magazine.new("magname1", "cat1")
mag2 = Magazine.new("magname2", "cat2")
mag3 = Magazine.new("magname3", "cat3")

article1 = Article.new(author1, mag1, "title1")
article2 = Article.new(author2, mag1, "title2")
article3 = Article.new(author3, mag1, "title3")
article4 = Article.new(author1, mag1, "title4")
article5 = Article.new(author1, mag1, "title5")
article6 = Article.new(author2, mag1, "title6")
article7 = Article.new(author2, mag1, "title7")




### DO NOT REMOVE THIS
binding.pry

0
