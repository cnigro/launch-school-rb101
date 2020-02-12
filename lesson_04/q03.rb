# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# The docs tell us that reject is effectively the opposite of count in that it
# returns an array of all elements for which the given block evaluates to a
# falsey value. The puts method returns false on each iteration, so the method
# will return an array containing all elements from the original collection.
