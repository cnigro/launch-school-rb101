#Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half of
# the original Array, respectively. If the original array contains an odd
# number of elements, the middle element should be placed in the first half
# Array.

def halvsies(input)
  if input.length.even?
    halves = [input[0...input.length/2], input[input.length/2..-1]]
  else
    halves = [input[0..input.length/2], input[(input.length/2 + 1)..-1]]
  end
end

# probably smarter way 
def halvsies_also(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end

# Examples:

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3])# == [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]
