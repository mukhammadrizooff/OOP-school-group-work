require_relative 'person_file'

class Student < Person
  attr_accessor :classroom

  def initialize(age, name, specialization)
    super(age, name: name)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
