require_relative "employee"

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss=nil)
        super
        @employees = []
        if self.name == employee.boss
            @employees << employee.name
        end
        
    end

    def bonus(multiplier)
        sum = 0
        employees.each {|employee| sum += employee.salary}
        sum * multiplier
    end
    
end

d = Manager.new("Daniel", "CEO", 200000000)
k = Manager.new("Kristin", "custodian", 10, "Daniel")
p d