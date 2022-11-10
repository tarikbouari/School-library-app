require './person'
class Student < person
    def initialize(classroom, age='unkwown', name, parent_pemission: true)
        @classroom = classroom
        super(age,name,parent_pemission)
    end

    def play_hookey
        '¯(ツ)/¯'
    end
end