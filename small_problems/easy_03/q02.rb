# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not worry
# about validating the input.

# Example

# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103

puts '==> Enter the left operand:'
left = gets.to_i
puts '==> Enter the right operand:'
right = gets.to_i

operators = ['+', '-', '*', '/', '%', '**']
results = operators.map { |op| left.public_send op, right }

operators.size.times do |n|
  puts "==> #{left} #{operators[n]} #{right} = #{results[n]}"
end
