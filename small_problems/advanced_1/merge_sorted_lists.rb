# Merge Sorted Lists

# Write a method that takes two sorted Arrays as arguments, and returns a new
# Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result
# array. You must build the result array one element at a time in the proper
# order.

# Your solution should not mutate the input arrays.

=begin
  input: two arrays sorted in ascending order
  output: one sorted array comprising all elements from both input arrays
          including duplicate values

  clarifying questions:
    1) Can we assume the input arrays will always contain Integer values?
        a) can we assume positive values?
        a) Can we assume all elements of the input arrays are of the
           same type? (ie not strings representing integer values)
    2) Can we assume the input arrays are one-dimensional?
        a) If multi-dimensional arrays are allowed, what is the sorting
           scheme?
    
    Based on the provided examples, I will be assuming the inputs will always
    be 1-D arrays containing Integer values only, sorted in ascending order

  At a high level, the problem states that we want to compare all elements
  x1...xi and y1...yj of two sorted sets of numbers X and Y, and for each
  comparison, append the lesser value to a set Z, repeating until each element
  of X and Y is contained in Z, and all elements z1...zk (k = i + j) are in
  ascending order.

  The data structure has been chosen for us, given the problem description.
  We will be returning a one-dimensional array of integers.

  An algorithm to solve this problem might look something like this:

  - If both inputs are empty, return the first empty array
  - If one input is empty, return the non-empty array
  - Create the following:
    - copy of array1
    - copy of array2
    - new empty array called 'merged' that will be used to store the
      combined elements from the inputs
  - Loop until copy1 or copy2 is empty
      - If copy1[0] < copy2[0]
        - append copy1[0] to merged
        - remove copy1[0]
      - If copy1[0] > copy2[0]
        - append copy2[0] to merged
        - remove copy2[0]
      - if copy1[0] == copy2[0]
        - append copy1[0], copy2[0] to merged
        - remove copy1[0], copy2[0]
  - Append remaining elements of non-empty array to merged
  - Remove leading -1 values from merged
  - Return merged  

=end

def merge(left, right)
  return left if (right.empty? && left.empty?) || right.empty?
  return right if left.empty?

  l_copy = left.dup
  r_copy = right.dup

  merged = []

  until l_copy.empty? || r_copy.empty? do
    if l_copy.first < r_copy.first
      merged << l_copy.shift
    elsif l_copy.first > r_copy.first
      merged << r_copy.shift
    else
      merged << l_copy.shift << r_copy.shift
    end
  end

  merged += l_copy += r_copy
  merged
end

# Examples:
p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
