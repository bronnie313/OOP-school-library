class Person 
    attr_reader :id, :name, :age, :parent_permission

    def initialize (age, name = "unknown" parent_permission = true)
      @id = Random.rand(100) + 1
      @name = name
      @age = age
      @parent_permission = parent_permission
    end

    def name = (value)
        @name = value
    end

    def age = (value)
        @age = value
    end

    def can_use_services?
        of_age? || @parent_permission
    end

    private

    def of_age?
        @age >= 18
    end


end