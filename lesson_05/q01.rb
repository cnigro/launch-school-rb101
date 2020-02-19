# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

p arr.sort! { |a, b| b.to_i <=> a.to_i }

# The ascii values are different from the numerical values, so we first need
# to convert the strings to integers with #to_i, then we want to sort them
# in descending order, so we reverse b and a in our comparison. This gives us
# the result we want.
