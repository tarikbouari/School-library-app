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
end