class Nameable
  def correct_name
    raise NotImplementedError, 'Not Implmented'
  end
end

class Decorator < Nameable
  attr_accessor :name

  def initialize(nameable)
    @nameable = nameable
    super()
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecoration < Decorator
  def correct_name
    @nameable.correct_name
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.slice(0, 9)
  end
end
