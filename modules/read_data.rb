require 'json'

module ReadData
  def access_data(path)
    file_data = File.read(path)
    JSON.parse(file_data)
  end

  def list_books_data
    books_arr = []
    access_book = access_data('books.json')
    access_book.each { |book| books_arr << Book.new(book[0], book[1]) }
    books_arr
  end

  def list_people_data
    people_arr = []
    access_people = access_data('person.json')
    access_people.each do |person|
      people_arr << if person[0] == 'Student'
                      Student.new(person[1].to_i, name: person[2], parent_permission: person[3])
                    else
                      Teacher.new(person[1], person[2].to_i, name: person[3])
                    end
    end
    people_arr
  end

  def list_rentals_data(books, people)
    rental_arr = []
    access_rental = access_data('rentals.json')
    access_rental.each { |rental| rental_arr << Rental.new(rental[0], people[rental[1]], books[rental[2]]) }
    rental_arr
  end
end
