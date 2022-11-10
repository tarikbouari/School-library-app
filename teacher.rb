require'./person'

class Teacher < Person
    def initialize(specialazation, age, name = 'uknown')
        @specialazation = specialazation
        super(age,name)
    end

    def can_use_services?
        true
    end
end

