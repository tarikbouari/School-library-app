
class Person
    def initialize(name,age,parent_pemission)
        @id = Random.rand(1..1000)
        @name = "unknown"
        @parent_pemission = true
        @age = age
    end
    # add getters method
    attr_reader :id, :name, :age 
    # add setters method
    attr_writer :name, :age

    def is_of_age?
        if @age > 18
        end
    end

    private :is_of_age?

    def can_use_services?
        is_of_age?
    end
end

