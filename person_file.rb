require_relative 'decorator_file'
require_relative 'rental_file'

class Person < Nameable
  # setter
  attr_accessor :name, :age, :rentals, :parent_permission
  # # getter
  attr_reader :id

  def initialize(age, name: 'unknown', parent_permission: true, id:nil)
    super()
    @id = id || Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def of_age?
    @age >= 18
  end
  private :of_age?

  def can_use_services?
    is_of_age? || @parent_permission
  end
  public :can_use_services?

  def add_rental(date, book)
    Rental.new(date, book, self)
  end
end
