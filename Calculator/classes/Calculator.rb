require './modules/Calculation.rb'

class Calculator extend Calculation
    def initialize

    end
    def self.addNumbers(num1, num2)
        add(num1, num2)
    end
    def self.subtractNumbers(num1, num2)
        subtract(num1, num2)
    end
    def self.multiplyNumbers(num1, num2)
        multiply(num1, num2)
    end
    def self.divideNumbers(num1, num2)
        divide(num1, num2)
    end
    def self.moduloDivideNumbers(num1, num2)
        moduloDivide(num1, num2)
    end
end