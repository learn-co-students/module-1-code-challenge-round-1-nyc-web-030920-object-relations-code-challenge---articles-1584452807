
require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

tolkien = Author.new("J.R.R Tolkien")
myers = Author.new("Michael Myers")

fantasy = Magazine.new("Fantasy Fans Weekly", "Fantasy")
sports = Magazine.new("Runners World", "Sports")
parenthood = Magazine.new("NYC Parenting", "Parenthood")

tolkien.add_article(fantasy, "My Hobbit")
tolkien.add_article(sports, "Running in Middle Earth")
tolkien.add_article(parenthood, "Bringing up Bulrog")
tolkien.add_article(fantasy, "Manic Mordor")
tolkien.add_article(sports, "Running for Rohan")
tolkien.add_article(sports, "The Smeagle Diet")
tolkien.add_article(fantasy, "Who is Galadriel?")

myers.add_article(fantasy, "Being Shrek")
myers.add_article(fantasy, "My Best Donkey")
myers.add_article(fantasy, "Building Better Gingerbread Houses")




# tolkien.add_article(fantasy, "My Homely Hobbit")







### DO NOT REMOVE THIS
binding.pry

0
