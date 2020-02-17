# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

# Examples:

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

print "=> Please enter an integer greater than 0: "
num = gets.to_i
print "=> Enter 's' to computer the sum, 'p' to compute the product: "
operation = gets.chomp

case operation
when 's'
  sum = 0 
  num.times { |n| sum += (n+1) }
  puts "The sum of the integers between 1 and #{num} is #{sum}"
when 'p'
  product = 1
  num.times { |n| product *= (n+1) }
  puts "The product of the integers between 1 and #{num} is #{product}"
end
