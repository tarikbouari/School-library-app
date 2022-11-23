require_relative '../modules/methods'
require_relative '../modules/mod_rentals'
require_relative '../modules/mod_option'
require_relative '../modules/store_data'
require_relative '../modules/read_data'
require 'json'
class App
  include NewFunctions
  include FunctionRental
  include EntryOption
  include StoreData
  include ReadData
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def run
    @books = list_books_data if File.exists?("books.json")
    @people = list_people_data if File.exists?("person.json")
    @rentals = list_rentals_data(@books, @people) if File.exists?("rentals.json")
    
    puts "Welcome to OOP School Library App!\n"
    loop do
      puts 'Please choose an option by entering a number:'
      puts '1. List all books'
      puts '2. List all people'
      puts '3. Create a person'
      puts '4. Create a book'
      puts '5. Create a rental'
      puts '6. List all rentals for a given person id'
      puts '7. Exit'
      option
    end
  end
end
