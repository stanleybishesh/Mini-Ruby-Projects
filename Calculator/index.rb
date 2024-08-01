require './classes/Calculator.rb'

puts "\nOperations:\n\n"
puts "1. Add"
puts "2. Subtract"
puts "3. Multiply"
puts "4. Divide"
puts "5. Modulo Divide\n\n"
print "Choose operation: "
operation = gets.chomp.to_i
print "Enter two numbers: "
num1 = gets.chomp.to_f
num2 = gets.chomp.to_f
case operation
    when 1
        result = Calculator.addNumbers(num1, num2)
    when 2
        result = Calculator.subtractNumbers(num1, num2)
    when 3
        result = Calculator.multiplyNumbers(num1, num2)
    when 4
        result = Calculator.divideNumbers(num1, num2)
    when 5
        result = Calculator.moduloDivideNumbers(num1, num2)
    when 6
        exit
    else
        puts "Invalid Choice !!"
end
puts "\nResult: #{result}"