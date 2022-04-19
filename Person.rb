class Person
  attr_accessor :id, :name, :age

  def initialize(age, name: 'unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def getid
    @id
  end

  def getname
    @name
  end

  def getage
    @age
  end

  # private methods
  def of_age
    @age >= 18
  end
  private :is_of_age

  def can_use_services
    if of_age
      true
    else
      false
    end
  end
end
