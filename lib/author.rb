require './lib/book'

class Author

  attr_reader :name, :books, :class, :title

  def initialize(author)
    @name = author[:first_name]+ " " + author[:last_name]
    @books = []
  end

  def write(name, date)
    @books << Book.new({ 
    title: name, 
    publication_date: date})
    @class = Book
    @title = name
    @date = date
  end
end