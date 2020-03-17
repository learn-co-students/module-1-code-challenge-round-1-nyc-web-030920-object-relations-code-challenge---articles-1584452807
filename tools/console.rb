require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
magazine1 = Magazine.new("The Economist", "Business") 
magazine2 = Magazine.new("Cricket Illustrated", "Sports")
magazine3 = Magazine.new("Entertainment Weekly", "Entertainment") 

author1 = Author.new("Warren Buffet")
author2 = Author.new("Harsha Bhogle")
author3 = Author.new("Ellen DeGeneris") 

article1 = Article.new("Impact of Corona Virus on the Financial Markets", "Business", author1, magazine1) 
article2 = Article.new("Impact of Corona Virus on International Cricket and IPL", "Sports", author2, magazine2) 
article3 = Article.new("Impact of Corona Virus on Movies and TV shows", "Entertainment", author3, magazine3) 
article4 = Article.new("Why IPL should be cancelled this year?", "Sports", author2, magazine2) 




### DO NOT REMOVE THIS
binding.pry

0
