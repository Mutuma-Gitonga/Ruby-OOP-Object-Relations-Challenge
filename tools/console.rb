require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mag1 = Magazine.new("nation", "political")
mag2 = Magazine.new("star", "business")
mag3 = Magazine.new("standard", "editorial")

mag4 = Magazine.new("people", "sports")

# mag5 = Magazine.new("nation", "sports")


author1 = Author.new("John")
author2 = Author.new("Peter")
author3 = Author.new("Kevin")

author4 = Author.new("James")

art1 = Article.new(author1, mag1, "Elections 2022")
art2 = Article.new(author2, mag2, "Mombase Port")
art3 = Article.new(author1, mag1, "DJ Trump")
art4 = Article.new(author1, mag3, "Ukraine War Crisis")
art5 = Article.new(author3, mag3, "Standard's 2nd author")

art6 = author4.add_article(mag4, "Christiano Ronaldo")

art7 = Article.new(author2, mag1, "Nation sports")
art8 = Article.new(author1, mag1, "China Taiwan tensions")
art9 = Article.new(author2, mag1, "Indian Ocean")
art10 = Article.new(author2, mag1, "Kenya's Economy Recovery")
art11 = Article.new(author3, mag1, "Elon Musk")


###  WRITE YOUR TEST CODE HERE ###









### DO NOT REMOVE THIS
binding.pry

0
