require './lib/library'
require './lib/author'
require './lib/book'

RSpec.describe 'Libary' do
  it 'exist' do
    dpl = Library.new(
    "Denver Public Library")
    expect(dpl).to be_a(Library)
  end

  it 'can adds authors and their books' do
    dpl = Library.new("Denver Public Library")
    expect(dpl.books).to eq([])
    expect(dpl.authors).to eq([])
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)
    expect(dpl.authors.length).to eq(2)
  end

  it 'can look check an authors publication_time_frame' do
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    dpl.add_author(charlotte_bronte)
    expect(dpl.publication_time_frame(charlotte_bronte)).to eq({:start => "1847", :end => "1857"})
  end

  it 'can check if the book is exists in the library or is checked out' do
    dpl = Library.new("Denver Public Library")
    book1 = Book.new({author_first_name:
    "Harper", author_last_name: "Lee", 
    title: "To Kill a Mockingbird", 
    publication_date: "July 11, 1960"})
    book2 = Book.new({author_first_name:
    "Oda", author_last_name: "Eichiro", 
    title: "One Piece", 
    publication_date: "July 08, 1997"})
    dpl.add_book(book1)
    dpl.checkout(book1)
    #expect(dpl.checkout(book2)).to eq([false])
    expect(dpl.checked_out_books.length).to eq(1)
  end

  it 'can return a list of checked out books' do
    dpl = Library.new("Denver Public Library")
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

  end

end