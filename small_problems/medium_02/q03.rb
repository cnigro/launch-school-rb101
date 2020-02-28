# In the easy exercises, we worked on a problem where we had to count
# the number of uppercase and lowercase characters, as well as characters
# that were neither of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the percentage of characters in the string that
# are lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

def letter_percentages(input)
  percentages = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }
  size = input.size
  percentages[:lowercase] = 100.0 * input.count('a-z').fdiv(size)
  percentages[:uppercase] = 100.0 * input.count('A-Z').fdiv(size)
  percentages[:neither] = 100.0 - (percentages[:uppercase] + percentages[:lowercase])
  percentages
end

# Examples
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
