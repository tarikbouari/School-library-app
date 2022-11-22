require 'json'

module BookData
  def create_fil(file_name)
    File.new(file_name, 'w+') if !File.exists?(file_name)
  end

  def convert_list(list)
    store = []
    list.each |book| { store << {book.id, book.title, book.author} }
    JSON.generate(store)
  end

  def write_books(file_name, list)
    File.write(file_name, convert_list(list))
  end
end