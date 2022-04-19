require_relative 'person_file'

class Student < Person
  attr_accessor :classroom

  def initialize(specialization)
    super(age, name: 'unknown', parent_permission: true)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
