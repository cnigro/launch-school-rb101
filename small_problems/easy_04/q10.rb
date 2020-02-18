# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.

# Examples

# signed_integer_to_string(4321) == '+4321'
# signed_integer_to_string(-123) == '-123'
# signed_integer_to_string(0) == '0'

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  num_string = ''
  loop do
    number, remainder = number.divmod(10)
    num_string.prepend(DIGITS[remainder])
    break if number == 0
  end
  num_string
end

def signed_integer_to_string(number)
  sign = ''
  case number <=> 0
  when -1 then sign = '-'
  when +1 then sign = '+'
  else         sign = ''
  end
  "#{sign}#{integer_to_string(number.abs)}"
end

puts signed_integer_to_string(+4321)
puts signed_integer_to_string(-123)
puts signed_integer_to_string(0)
