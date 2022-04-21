require_relative 'decorator_file'

class Person < Nameable
  # setter
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
