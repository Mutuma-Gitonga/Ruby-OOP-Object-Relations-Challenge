
class Magazine
  attr_accessor :name, :category
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def contributors
    author_instances = Article.all.filter_map do |article| 
      if(article.magazine.name == self.name)
          article.author.name
          Author.all.find { |author_instance|  author_instance.name == article.author.name }
      end
    end
    author_instances.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find {|magazine| magazine.name == name}
  end

  def article_titles
    Article.all.filter.filter_map {|article| article.title if article.magazine.name == self.name}
  end

  def contributing_authors
    all_magazine_authors = Article.all.filter.filter_map { |article| article.author if article.magazine.name == self.name }
    
    authors_more_than_two_articles = all_magazine_authors.filter { |author| all_magazine_authors.count(author) > 2 }

    authors_more_than_two_articles.uniq
  end


end
