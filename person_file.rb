class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: 'unknown', parent_permission: true)
    @id = rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
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
