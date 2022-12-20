
class Employee

    attr_reader :salary, :boss, :name

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def boss=(manager_instance)
        @boss = manager_instance
        manager_instance.employees << self
        if self.is_a?(Manager)
            self.employees.each do |employee|
            manager_instance.employees << employee
            end
        end
    end

    def bonus(multiplier)
        salary * multiplier
    end


    
end