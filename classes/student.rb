require_relative './person'
require_relative './classroom'

class Student < Person
  attr_accessor :classroom
  attr_reader :parent_permission

  def initialize(age, name: 'Unknow', parent_permission: true)
    @classroom = nil
    super(age, name: name, parent_permission: parent_permission)
  end
end
