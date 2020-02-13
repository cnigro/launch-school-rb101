# What happens when we modify an array while we are iterating over it?
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# As we iterate over the numbers array, we first output the number at the
# current index, then we shift by one, removing the number at the upcoming
# index, so on the second iteration, numbers[1] is now 3 instead of 2. Each
# iteration continues in this fashion, so in this case we're effectively
# iterating over every other element in the array.  
# => [1, 3]

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# In this example, we will not "skip" any elements in the array, but we will
# still only visit half of the original indices, because on each iteration,
# we remove an element from the end of the array (instead of the beginning as
# with shift), so each iteration shortens the array by 1. We will print the
# first half of the array using this block.
# => [1, 2]
