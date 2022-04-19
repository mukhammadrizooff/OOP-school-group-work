class Person
    attr_accessor :id, :name, :age, :parent_permission
    def initialize(name = 'unknown', age, parent_permission = true)
        @id = id
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    # getters
    def getId
        @id
    end
    
    def getName
        @name
    end

    def getAge
        @age
    end

    # setters
    def setName=(name)
        @name = name
    end

    def setAge=(age)
        @age = age
    end

    # private methods
    def is_of_age
        if @age >= 18
            return true
        else
            return false
        end
    end
    private :is_of_age

    def can_use_services
        if is_of_age
            return true
        else
            return false
        end
    end
end