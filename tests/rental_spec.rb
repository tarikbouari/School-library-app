require '../classes/rental'
require '../classes/student'
require '../classes/book'

describe 'Test the Rental class:' do
  person = Student.new(21, name: 'Sandy')
  book = Book.new('Harry Potter', 'J.K. Rowling')
  rental = Rental.new('22/02/2022', person, book)

  it 'Chkec if the date is correct' do
    expect(rental.date).to eql '22/02/2022'
  end

  it 'Chkec if the date is correct' do
    expect(rental.person.name).to eql 'Sandy'
  end

  it 'Chkec if the date is correct' do
    expect(rental.book.title).to eql 'Harry Potter'
  end
end
