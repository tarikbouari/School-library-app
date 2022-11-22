require 'json'

module ReadData 
    def access_data(path)
        file_data = File.read(path)
        puts file_data
        JSON.parse(file_data) 
    end
    def list_books_data
        books_arr = []
        access_book = access_data("books.json")
        access_book.each {|book| books_arr << Book.new(book[1], book[2])} 
        books_arr   
    end
    def list_rentals_data(books, people)
        rental_arr = []
        access_rental = access_data("rentals.json")
        access_rental.each { |rental| rental_arr << Rental.new(rental[0], people[rental[1]] books[rental[2]])}
        rental_arr
    end
end