# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and
# backward. For this exercise, case matters as does punctuation and spaces.

# Examples:

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

def palindrome?(input)
  # input = input.gsub(/ /, '')
  input == input.reverse
end

puts palindrome?('a man a plan a canal panama')
puts palindrome?("madam i'm adam")

