class Nameable
  def correct_name
    raise NotImplementedError, 'Not Implmented'
  end
end



class CapitalizeDecoration < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.slice(0, 9)
  end
end
