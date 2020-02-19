# Given the following data structure and without modifying the original array,
# use the map method to return a new array identical in structure to the
# original but where the value of each integer is incremented by 1.

my_array = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

my_array.map! do |hsh|
  hsh.transform_values { |v| v += 1 }
end

p my_array

# This could be done using Hash#each as long as we create a new hash outselves
# and store the modified values in the new hash and return it at the end of
# the block.
