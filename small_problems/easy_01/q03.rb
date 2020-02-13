# Write a method that takes one argument, a positive integer, and returns a
# list of the digits in the number.

# Examples:

# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

def digit_list(number)
  digits = []
  until number.zero?
    digits.unshift(number % 10)
    number /= 10
  end
  digits
end

puts digit_list(1024) == [1, 0, 2, 4]

# We could easily call Integer#digits, but that defeats this exercise