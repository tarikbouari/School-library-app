require 'json'

module StoreData
  def create_file(file_name)
    File.new(file_name, 'w+') if !File.exists?(file_name)
  end

  def convert_book_list(book_list)
    books = []
    book_list.each { |book|  books << [book.id, book.title, book.author] }
    JSON.generate(books)
  end

  def write_data(file_name, list)
    File.write(file_name, list)
  end

  def store_data(books)
    file_name = 'books.json'
    create_file(file_name)

    booklist = convert_book_list(books)

    write_data(file_name, booklist)

    exit
  end
end