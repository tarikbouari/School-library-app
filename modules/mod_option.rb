module EntryOption
  def option # rubocop:disable Metrics/CyclomaticComplexity
    puts 'Enter your choice: '
    choice = gets.chomp.to_i

    case choice
    when 1
      list_books(@books)
    when 2
      list_people(@people)
    when 3
      create_person(@people)
    when 4
      create_book(@books)
    when 5
      create_rental(@rentals, @people, @books)
    when 6
      list_rental(@rentals, @people)
    when 7
      store_data(@books)
    else
      puts 'Invalid choice'
    end
  end
end
