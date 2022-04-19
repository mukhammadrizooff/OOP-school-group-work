require_relative 'Person.rb'

include Person

class Student < Person
    attr_accessor :classroom
    def initialize(classroom)
        super(name = 'unknown', age, parent_permission = true)
        @classroom = classroom
    end

    def play_hooky
        return "¯\(ツ)/¯"
    end
end