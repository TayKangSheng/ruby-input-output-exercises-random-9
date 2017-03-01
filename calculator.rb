class Calculator
  def calculation
    p "What calculation would you like to do? (add, sub, mult, div)"
    operation = gets.chomp
    p "What is number 1?"
    num1 = gets.chomp.to_i
    p "What is number 2?"
    num2 = gets.chomp.to_i
    p "#{num1 + num2}" if operation == "add"
    p "#{num1 - num2}" if operation == "sub"
    p "#{num1 * num2}" if operation == "mult"
    p "#{num1 / num2}" if operation == "div"
  end
end

calculate = Calculator.new
calculate.calculation
