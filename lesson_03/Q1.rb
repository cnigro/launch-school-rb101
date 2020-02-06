# What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# numbers.uniq returns an array of the unique values in the numbers array
# when we call puts numbers, puts calls Array#to_s, which returns a string
#   representation of the calling object