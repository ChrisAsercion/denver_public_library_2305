require './lib/author'
require './lib/book'

class Library

attr_reader :name, :books, :authors, :checked_out_books

  def initialize(name)
    @name = name
    @books =[]  
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
  end

  def add_book(book)
    @books << book
  end

  def publication_time_frame(author)
    to_numbers = author.books.map do |book|
      book.date.to_i
    end
    {:start => to_numbers.min.to_s,
    :end => to_numbers.max.to_s}
  end

  def checkout(book)
    @checked_out_books = []
    library_check = @books.map do |book|
      if book_name = book.title
        @checked_out_books << book
      else
        return false
      end
    end
  end

  def checked_out_books
    @checked_out_books
  end

  def return(book)
    @checked_out_books.delete(book)
  end
end