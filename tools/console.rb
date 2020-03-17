require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
a1 = Author.new('wyy')
a2 = Author.new('dyl')
a3 = Author.new('hy')

m1 = Magazine.new('bunny', 'pet')
m2 = Magazine.new('dog', 'pet')
m3 = Magazine.new('python', 'code')

art1 = Article.new(a1, m1, 'i have a cute bunny')
art2 = Article.new(a1, m1, 'her name is hzy')
art3 = Article.new(a1, m1, 'she loves to eat')
art4 = Article.new(a2, m2, 'i have a corgi')
art5 = Article.new(a2, m2, 'his name is lucky')
art6 = Article.new(a2, m2, 'he loves beef')
art7 = Article.new(a3, m3, 'i am a python master')
art8 = Article.new(a3, m3, 'python is easy')



### DO NOT REMOVE THIS
binding.pry

0
