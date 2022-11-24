<<<<<<< HEAD
require_relative './nameable'
require_relative './rental'

class Person < Nameable
  # Getters and Setters combined
  attr_accessor :age, :name, :rentals
  # Getters
  attr_reader :id, :parent_permission

  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..9999)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    rentals << rental
  end
end
=======
require_relative './nameable'
require_relative './rental'

class Person < Nameable
  # Getters and Setters combined
  attr_accessor :age, :name, :rentals
  # Getters
  attr_reader :id, :parent_permission

  def initialize(age, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..9999)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    rentals << rental
  end
end
>>>>>>> de9ecae5573ae3b03466690e29558e79ad8f7246
