require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


author1 = Author.new("Brett")
author2 = Author.new("Tashawn")
author3 = Author.new("Ethan")
author4 = Author.new("Alex")

magazine1 = Magazine.new("Vibe", "music")
magazine2 = Magazine.new("ESPN", "sports")
magazine3 = Magazine.new("Spin", "music")
magazine4 = Magazine.new("People", "lifestyle")

article1 = Article.new(author1, magazine1, "Love & HipHop")
article2 = Article.new(author1, magazine2, "Yea Jeets")
article3 = Article.new(author1, magazine3, "The rise of Wayne")
article4 = Article.new(author2, magazine3, "Return of Dipset")
article5 = Article.new(author3, magazine3, "RIP DJ AM")
article6 = Article.new(author3, magazine3, "Blink-182 tour review")
article7 = Article.new(author4, magazine2, "Lets go Jets")
article8 = Article.new(author3, magazine2, "Nobody likes the Mets")
article9 = Article.new(author3, magazine3, "Lets go giants")





### DO NOT REMOVE THIS
binding.pry

0
