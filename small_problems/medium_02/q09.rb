# Bubble Sort is one of the simplest sorting algorithms available. It isn't
# an efficient algorithm, but it's a great exercise for student developers.
# In this exercise, you will write a method that does a bubble sort of an
# Array.

# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared. If the first of
# the two elements is greater than the second, then the two elements are
# swapped. This process is repeated until a complete pass is made without
# performing any swaps; at that point, the Array is completely sorted.

# We can stop iterating the first time we make a pass through the array without
# making any swaps; at that point, the entire Array is sorted.

# Write a method that takes an Array as an argument, and sorts that Array using
# the bubble sort algorithm as just described. Note that your sort will be
# "in-place"; that is, you will mutate the Array passed as an argument. You may
# assume that the Array contains at least 2 elements.

def bubble_sort!(array)
  (array.size - 1).times do
    (array.size - 1).times do |k|
      array[k], array[k+1] = array[k+1], array[k] if array[k] > array[k+1]
    end
  end
end

# Examples
p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
