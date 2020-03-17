# Sort an array of passed in values using merge sort. You can assume that this
# array may contain only one type of data. And that data may be either all
# numbers or all strings.

# Merge sort is a recursive sorting algorithm that works by breaking down the
# array elements into nested sub-arrays, then recombining those nested sub
#-arrays in sorted order. It is best shown by example. For instance, let's
# merge sort the array [9,5,7,1]. Breaking this down into nested sub-arrays,
# we get:

# [9, 5, 7, 1] ->
# [[9, 5], [7, 1]] ->
# [[[9], [5]], [[7], [1]]]

# We then work our way back to a flat array by merging each pair of nested
# sub-arrays:

# [[[9], [5]], [[7], [1]]] ->
# [[5, 9], [1, 7]] ->
# [1, 5, 7, 9]

=begin
  input: uniform array of integers or strings
  output: sorted uniform array of integers or strings

  The choice of data structure has been dictated by the problem definition,
  and will be an array of size equal to the input array.

  In order to divide an array into sub-arrays, the first step is to find
  the middle and divide into nearly equal parts. For an array of size n > 1,
  we will divide into two arrays of size ceiling(n/2) and floor(n/2),

  Assuming the trivial case of n = 2, we divide into two sub-arrays containing
  one element each, compare the values of the contents of each, and return the 
  concatenation of the two arrays in the sorted order. Calling this method
  recursivly, having established the correct base case, will yield a merged
  and sorted array.

  We'll attempt a pseudocode solution:
  
  Base case 
    if array.size < 2 return array
  Divide the array
    left = array[0...array.length/2] # floor (excludes midpoint)
    right = array[array.length/2..-1] # ceiling (includes midpoint)
  Recursive call (can combine with division step)
    left = merge_sort(left)
    right = merge_sort(right)
  Comparison
     reuse the merge method from the prior exercise
  Return
    return merged
=end

def merge(left, right)
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
end

def merge_sort(arr)
  return arr if arr.size < 2

  middle = arr.size/2
  left = merge_sort(arr[0...middle])
  right = merge_sort(arr[middle..-1])
  
  merge(left, right)
end

# Examples:
p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
