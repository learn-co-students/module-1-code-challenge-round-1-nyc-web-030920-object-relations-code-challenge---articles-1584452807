require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
duncan = Author.new("Duncan")
stephanie = Author.new("Stephanie")
steven = Author.new("Steven")
alba = Author.new("Alba")
peter = Author.new("Peter")

mad = Magazine.new("Mad Magazine", "Comedy")
cracked = Magazine.new("Cracked Magazine", "Comedy")
new_yorker = Magazine.new("The New Yorker", "Satire")
nat_geo = Magazine.new("National Geographic", "Nature")
gq = Magazine.new("GQ", "Men's Interest")

duncan.add_article(mad, "How to laugh")
duncan.add_article(mad, "This is funny")
duncan.add_article(mad, "filler")
duncan.add_article(cracked, "how did I get this job?")
alba.add_article(nat_geo, "Save the honey bees!")
stephanie.add_article(gq, "How to improve your fashion")







### DO NOT REMOVE THIS
binding.pry

0
