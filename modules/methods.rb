require_relative '../classes/book'
require_relative '../classes/person'
require_relative '../classes/rental'
require_relative '../classes/student'
require_relative '../classes/teacher'

module NewFunctions
  def list_books(books)
    puts "------------------- \n List of all book \n -----------------------------------"
    puts " No books is added \n ----------------------------------" if books.length.zero?
    books.each_with_index do |book, index|
      puts "#{index}-- Book Tittle: #{book.title}  Author: #{book.author}"
    end
  end

  def list_people(people)
    puts "--------------------------------- \n List of all people \n ------------------------------------"
    puts " No people is added \n --------------------------------------" if people.length.zero?
    # people.each do |person|
    #   puts "Id: #{person.id} name: #{person.name} Age: #{person.age}"
    # end
    people.each_with_index do |person, index|
      puts "#{index}-- name: #{person.name} age: #{person.age}"
    end
  end

  def create_person(people)
    puts "---------------------------- \n Do you want to create a \n1. Student or \n2. Teacher"
    option = gets.chomp.to_i

    case option
    when 1
      create_student(people)
    when 2
      create_teacher(people)
    else
      puts 'Invalid choice'
    end
  end

  def create_student(people)
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
    people << student
    puts "Student created successfully\n-------------------------------------"
  end

  def create_book(books)
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    books << book
    puts "Book created successfully\n -------------------------------------------------"
  end

  def create_teacher(people)
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(specialization, age, name: name)
    people << teacher
    puts "Teacher created successfully\n ------------------------------------------------------"
  end
end
