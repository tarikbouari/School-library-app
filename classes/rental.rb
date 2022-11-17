require_relative './book'
require_relative './person'

class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @book = book
    book.rentals << self
    person.rentals << self
    @person = person
  end
end
