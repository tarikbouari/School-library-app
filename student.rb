require_relative './person'
require_relative './classroom'

class Student < Person
  attr_reader :classroom
  def initialize(classroom, age, name = 'unknow', parent_pemission: true)
    @classroom = classroom
    super(age, name, parent_pemission)
  end

  def play_hookey
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
