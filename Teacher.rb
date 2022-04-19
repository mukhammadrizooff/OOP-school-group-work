require_relative 'Person.rb'

include Person

class Student < Person
    attr_accessor :classroom
    def initialize(specialization)
        super(name = 'unknown', age, parent_permission = true)
        @specialization = specialization
    end

    def can_use_services
        return true
    end
end