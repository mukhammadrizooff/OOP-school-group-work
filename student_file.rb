require_relative 'person_file'

class Student < Person
  attr_reader :classroom

  def initialize(age, name: 'Unknown', parent_permission: true, id: nil)
    super(age, name: name, parent_permission: parent_permission, id: id)
    @id = id || Random.rand(1..1000)
    @classroom = nil
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students << self unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
