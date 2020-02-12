# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Enumberable#select returns an array containing all elements for which the 
# given block returns a true value. Since the last evaluated expression in
# the block is 'hi', and anything that isn't false or nil returns a truthy
# value, the block evaluates to true for every element in the array. So,
# we expect that the return value should be an array containing all of the
# original values in the original colleciton.
