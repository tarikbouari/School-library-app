require 'json'

module StoreData
  def create_file(file_name)
    File.new(file_name, 'w+') unless File.exist?(file_name)
  end

  def convert_book_list(book_list)
    books = []
    book_list.each { |book| books << [book.title, book.author] }
    JSON.generate(books)
  end

  def convert_rental_list(rental_list, books, people)
    rentals = []
    rental_list.each do |rental|
      book_index = books.find_index(rental.book)
      person_index = people.find_index(rental.person)
      rentals << [rental.date, person_index, book_index]
    end
    JSON.generate(rentals)
  end

  def convert_people_list(person_list)
    people = []
    person_list.each do |person|
      people << if person.instance_of?(::Student)
                  [person.class.name, person.age, person.name, person.parent_permission]
                else
                  [person.class.name, person.specialization, person.age, person.name]
                end
    end
    JSON.generate(people)
  end

  def write_data(file_name, list)
    File.write(file_name, list)
  end

  def store_data(books, rentals, people)
    file_name = 'books.json'
    create_file(file_name)

    booklist = convert_book_list(books)
    write_data(file_name, booklist)

    create_file('person.json')
    write_data('person.json', convert_people_list(people))

    create_file('rentals.json')
    write_data('rentals.json', convert_rental_list(rentals, books, people))

    exit
  end
end
