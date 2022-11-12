require_relative './book'
require_relative './person'
require_relative './rental'
require_relative './student'
require_relative './teacher'

def list_books
  puts "******* \n List of all book \n ****************"
  puts " No books addded \n ************" if @books.length.zero?
  @books.each do |book|
    puts "id: #{book.id} Title: #{book.title} Author: #{book.author}"
  end
  puts '****************'
end

def list_poeple
  puts "******* \n List of all poeple \n ****************"
  puts " No poeple is added \n ************" if @poeple.length.zero?
  @poeple.each do |person|
    puts "id: #{person.id} Title: #{person.name} Author: #{person.age}"
  end
  puts '****************'
end

def list_rental
  puts "******* \n List of all rental of a person \n ****************"
  puts " Noone rent a book \n ************" if @rentals.length.zero?
  puts 'Enter id of a person'
  person_id = gets.chomp.to_id

  @rentals.each do |rental|
    if rental.person.id == person_id
      puts "On #{reantal.date} the book:  #{rental.book.title} is rented by #{person.age}"
      puts '****************'
    end
  end
end

def create_person
  puts "---------------------------- \n Do you want to create a \n1. Student or \n2. Teacher"
  option = gets.chomp.to_i

  case option
  when 1
    create_student
  when 2
    create_teacher
  else
    puts 'Invalid choice'
  end
end

def create_student
  print 'Age: '
  age = gets.chomp
  print 'Name: '
  name = gets.chomp
  print 'Has parent permission? [Y/N]: '
  parent_permission = gets.chomp
  parent_permission.upcase!

  case parent_permission
  when 'Y'
    parent_permission = true
  when 'N'
    parent_permission = false
  else
    print 'Enter either Y or N only'
  end

  student = Student.new(age, name: name, parent_permission: parent_permission)
  @people << student
  puts "Student created successfully\n-------------------------------------"
end

def create_book
  print 'Title: '
  title = gets.chomp
  print 'Author: '
  author = gets.chomp

  book = Book.new(title, author)
  @books << book
  puts "Book created successfully\n-------------------------------------"
end

def create_rental
  list_books
  print 'Book Id: '
  book_id = gets.chomp.to_i

  list_people
  print 'Person Id: '
  person_id = gets.chomp.to_i

  print 'Date: '
  date = gets.chomp

  @b = Object.new
  @books.each do |book|
    @b = book if book.id == book_id
  end

  @p = Object.new
  @people.each do |person|
    @p = person if person.id == person_id
  end

  rental = Rental.new(date, @b, @p)
  @rentals << rental

  puts "Rental created successfully\n-------------------------------------"
end

class App
  @books = []
  @people = []
  @rentals = []

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

    puts 'Enter your choice: '
    choice = gets.chomp.to_i

    case choice
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rental
    when 7
      exit
    else
      puts 'Invalid choice'
    end
  end
end
