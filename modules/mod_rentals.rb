require_relative '../classes/book'
require_relative '../classes/person'
require_relative '../classes/student'
require_relative '../classes/teacher'
require_relative '../classes/rental'

module FunctionRental
  def create_rental(rentals, people, books)
    if books.size.zero?
      puts 'there is no book to list. Please add a book'
    elsif people.size.zero?
      puts 'there is no person to list. Please add a person'
    else
      # List book and insert Index
      puts 'List of books with their index'
      books.each_with_index do |book, index|
        puts "#{index}-- Book Tittle: #{book.title}  Author: #{book.author}"
      end
      puts 'Enter a book index Not ID '
      book_index = gets.chomp.to_i

      # List poeple and insert Index
      people.each_with_index { |person, index| puts "#{index}-- name: #{person.name} age: #{person.age}" }
      puts 'Enter a person index Not ID '
      person_index = gets.chomp.to_i

      # insert date
      puts 'Enter a date of rental'
      date = gets.chomp.to_s
      # create rental object
      new_rental = Rental.new(date, people[person_index], books[book_index])
      rentals << new_rental
      puts "Rental created successfully\n---------------------------------------------------------------"
    end
  end
      # list rentals 
  def list_rental(rentals, people)
    puts 'There no items to list. please add rental' if rentals.length.zero?
    puts 'List of people'
    people.each do |person|
      puts "id: #{person.id} name: #{person.name}"
    end
    puts 'Enter a person ID'
    person_id = gets.chomp.to_i

    rentals.each do |rental|
      if rental.person.id.to_i == person_id
        puts "On #{rental.date} the book #{rental.book.title} was rent by #{rental.person.name}"
        puts '------------------------------------------------------------'
      else
        puts "No books was rent by person #{person_id}"
        puts '-------------------------------------------------------------------------'
      end
    end
  end
end
