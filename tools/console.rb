
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

tolkien = Author.new("J.R.R Tolkien")

fantasy = Magazine.new("Fantasy Fans Weekly", "Fantasy")
sports = Magazine.new("Runners World", "Sports")
parenthood = Magazine.new("NYC Parenting", "Parenthood")

tolkien.add_article(fantasy, "My Hobbit")
tolkien.add_article(sports, "Running in Middle Earth")
tolkien.add_article(parenthood, "Bringing up Bulrog")



# tolkien.add_article(fantasy, "My Homely Hobbit")







### DO NOT REMOVE THIS
binding.pry

0
