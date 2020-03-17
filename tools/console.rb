require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

#Author test cases
author1 = Author.new("Robert")
author2 = Author.new("Wayne")
author3 = Author.new("Mary")

#Magazine test cases
magazine1 = Magazine.new("Fine Woodworking", "Hobby")
magazine2 = Magazine.new("Car & Driver", "Automotive")
magazine3 = Magazine.new("GQ", "Fashion")

#Article test cases
article1 = Article.new(author1, magazine1, "Dovetails")
article2 = Article.new(author1, magazine1, "Building Cabinets")
article3 = Article.new(author2, magazine1, "Sawing")
article4 = Article.new(author3, magazine3, "Suits")
article5 = Article.new(author3, magazine3, "Pants")
article6 = Article.new(author3, magazine3, "Shirts")
article6 = Article.new(author2, magazine2, "How to Drive")





### DO NOT REMOVE THIS
binding.pry

0
