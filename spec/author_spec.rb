require 'rspec'
require './lib/book'
require './lib/author'

RSpec.describe 'Author' do
  it 'exists' do
    charlotte_bronte = Author.new(
      {first_name: "Charlotte", last_name: "Bronte"})
      expect(charlotte_bronte).to be_a(Author)
  end
  it 'can write a book' do
    charlotte_bronte = Author.new(
      {first_name: "Charlotte", last_name: "Bronte"})
    expect(charlotte_bronte.books).to eq([])
    jane_eyre = charlotte_bronte.write(
      "Jane Eyre", "October 16, 1847")
    villette = charlotte_bronte.write(
        "Villette", "1853")
      require 'pry'; binding.pry
    #expect(jane_eyre).to be_a(Book)
    #expect(villette).to be_a(Book)
    #expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    #expect(jane_eyre.title).to eq( "Jane Eyre")
    expect(charlotte_bronte.books.length).to eq(2)
  end
end