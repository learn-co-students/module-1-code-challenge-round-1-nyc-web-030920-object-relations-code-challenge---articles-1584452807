require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

m1 = Magazine.new("Forbees", "financial")
m2 = Magazine.new("Hive Worker's Quarterly", "political")
m3 = Magazine.new("Popular Honey Science", "science")
m4 = Magazine.new("Beezburg", "financial")

a1 = Author.new("W.E.Bee Du Bois")
a2 = Author.new("Michael Beezburg")
a3 = Author.new("Beelon Musk")
a4 = Author.new("Queen Bee Latifah")
a5 = Author.new("Malcolm B")

r1 = Article.new(a1, m1, "TBH, I have limited knowledge on Du Boi's writings")
r2 = Article.new(a2, m4, "Make me president")
r3 = a2.add_article(m1, "Make me president but in another magazine")
r4 = a5.add_article(m2, "Perhaps making bee puns about civil rights leaders was not prudent. But dang was that WEB Du Bois pun just staring me in the face.")
r5 = a4.add_article(m4, "Maybe if I knew my flowers better, I would have more pun sources to draw from")
r6 = a3.add_article(m3, "We spend too much time looking to the ground for pollen, when we should be looking to the stars... also for pollen")
r7 = a5.add_article(m4, "The beehive or the begonia")
r8 = a2.add_article(m4, "Not great puns, okay, but I don't have a lot of time to workshop these")
r9 = a1.add_article(m2, "I couldn't think of anybody who had a name similar to 'honey' or 'pollen.' Missed opportunity.")



### DO NOT REMOVE THIS
binding.pry

0


# Some of the things I tried:
# Article.all.count
# Magazine.all.count
# m4.contributors (should have 3)
# m4.contributing_authors (["Michael Beezburg"])
# Magazine.find_by_name("Beezburg")
# a2.topic_areas