
class Person
  def initialize(_name, age, _parent_pemission)
    @id = Random.rand(1..1000)
    @name = 'unknown'
    @parent_pemission = true
    @age = age
  end
  # add getters method
  attr_reader :id, :name, :age
  # add setters method
  attr_writer :name, :age

  def of_age?
    if @age >= 18
    end
  end

  private :of_age?

  def can_use_services?
    of_age?
  end
end
