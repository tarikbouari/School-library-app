require_relative './student'
require_relative '../modules/hooky'

class Classroom
  include Play_hookey

  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student)
  end
end
