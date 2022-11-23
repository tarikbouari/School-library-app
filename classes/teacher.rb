require_relative './person'

class Teacher < Person
  attr_reader :specialization

  def initialize(specialization, age, name: 'Unknown', parent_permission: true)
    @specialization = specialization
    super(age, name: name, parent_permission: parent_permission)
  end

  def can_use_services?
    true
  end
end
