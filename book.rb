require_relative'./rental'

class Book
    attr_accessor :title, :author, :rentals
    attr_reader: id

    def initialize(title, author)
        @id = rand(1..1000)
        @title = title
        @author = author
        @rentals = []
    end

    def add_rental(rental)
        rentals << rental
    end

end
