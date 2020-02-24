# Write a method named include? that takes an Array and a search value as
# arguments. This method should return true if the search value is in the
# array, false if it is not. You may not use the Array#include? method in
# your solution.

# I don't like overloading core methods
def included?(input, search)
  input.each { |elem| return true if elem == search }
  false
end

p included?([1,2,3,4,5], 3) # == true
p included?([1,2,3,4,5], 6) # == false
p included?([], 3) # == false
p included?([nil], nil) # == true
p included?([], nil) # == false
