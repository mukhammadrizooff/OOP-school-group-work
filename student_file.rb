require_relative 'person_file'

class Student < Person
  attr_accessor :classroom

  def initialize(classroom)
    super(age, name: 'unknown', parent_permission: true)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
