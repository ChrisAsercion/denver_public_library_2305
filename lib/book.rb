class Book
  attr_reader :author, :publication_year, :title

  def initialize(book) 
    @author = book[:author_first_name] + " " + book[:author_last_name] || self 
    @publication_year = book[:publication_date][-4..-1]
    @title = book[:title]
  end
  #I didn't know how to interpret the author's name in the author.write method
  
end 