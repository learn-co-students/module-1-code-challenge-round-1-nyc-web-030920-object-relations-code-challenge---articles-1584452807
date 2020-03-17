
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

tolkien = Author.new("J.R.R Tolkien")

fantasy = Magazine.new("Fantasy Fans Weekly", "Fantasy")

# tolkien.add_article(fantasy, "My Homely Hobbit")







### DO NOT REMOVE THIS
binding.pry

0
