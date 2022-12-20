require_relative "employee"

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss = nil)
        super
        @employees = []
    end

    def add_employee(employee)
        employee.boss = self
        # employee.employees.each do |emp|
        #     @employees << emp
        # end
    end
    
    def bonus(multiplier)
        sum = 0
        employees.each {|employee| sum += employee.salary if employee.is_a?(Manager)}
        sum += sub_employee_bonus_sum(self)
        return sum * multiplier
    end

    def sub_employee_bonus_sum(manager)
        sum = 0
        manager.employees.each do |employee|
            if employee.is_a?(Manager)
            sum += sub_employee_bonus_sum(employee)
            else
                sum += employee.salary 
            end
        end
        sum
    end

    
end

ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")
david = Employee.new("David", "TA", 10000, "Darren")

david.boss=(darren)
shawna.boss=(darren)
darren.boss=(ned)
p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)

ned.employees.each do |employee|
    p employee.name
end
# p "----------"
# p darren.boss.name
# p "----------"
# p shawna.boss.name
# p "----------"
# p david.boss.name
# p "----------"
