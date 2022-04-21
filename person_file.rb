# require_relative 'decorator_file'

class Person < Nameable
  # getter & setter
  attr_accessor :name, :age
  # # getter
  attr_reader :id

  def initialize(age, name: 'unknown', parent_permission: true)
    super()
    @id = rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def correct_name
    @name
  end

  # private methods
  def of_age
    @age >= 18
  end
  private :of_age

  def can_use_services
    is_of_age? || @parent_permission
  end
  public :can_use_services?
end

class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class BaseDecorator < Nameable
  attr_accessor :name

  def initialize(name)
    super()
    @name = name
  end

  def correct_name
    @name.correct_name
  end
end

class CapitalizeDecorator < BaseDecorator
  def correct_name
    @name.correct_name.capitalize
  end
end

class TrimmerDecorator < BaseDecorator
  def correct_name
    return @name.correct_name[0..9] if @name.correct_name.length > 10

    @name.correct_name
  end
end
