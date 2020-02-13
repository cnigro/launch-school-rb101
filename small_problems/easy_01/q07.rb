# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

# Examples:

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# The tests above should print true.

def stringy(length, start = 1)
  string = ''
  length.times { |n| string.concat("#{(n+start) % 2}") }
  string
end

puts stringy(10, 0)
puts stringy(10)
