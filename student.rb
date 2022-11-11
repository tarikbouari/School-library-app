require_relative './person'

class Student < Person
  def initialize(classroom, age, name = 'unknow', parent_pemission: true)
    @classroom = classroom
    super(age, name, parent_pemission)
  end

  def play_hookey
    '¯(ツ)/¯'
  end
end
