# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers.

# Examples:

# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# The tests above should print true.

def average(numbers)
  numbers.sum / numbers.size
end

# This solution may defeat the purpose of the exercise

puts average([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
puts average([1, 5, 87, 45, 8, 8])