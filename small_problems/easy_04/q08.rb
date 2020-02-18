# In the previous exercise, you developed a method that converts simple numeric
# strings to Integers. In this exercise, you're going to extend that method to
# work with signed numbers.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. The String may have a leading + or - sign; if the
# first character is a +, your method should return a positive number; if it
# is a -, your method should return a negative number. If no sign is given,
# you should return a positive number.

# You may assume the string will always contain a valid number.

# You may not use any of the standard conversion methods available in Ruby,
# such as String#to_i, Integer(), etc. You may, however, use the
# string_to_integer method from the previous lesson.

def string_to_signed_integer(string)
  number = 0
  sign = 1
  string.length.downto(1) do |n|
    ascii = string[-n].ord
    if ascii == 45
      sign = -1
      next
    elsif ascii == 43
      next
    end
    number += (ascii - 48) * (10**(n - 1)) 
  end
  number * sign
end

puts string_to_signed_integer('4321')
puts string_to_signed_integer('-570')
puts string_to_signed_integer('+1024')

