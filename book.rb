
class Book 
    attr_accessor :title, :author
    def initialize(title, author)
        @id = rand(1..1000)
        @title = title
        @author = author
    end
end
