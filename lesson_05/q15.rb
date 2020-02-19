# Given this data structure write some code to return an array which contains
# only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

a = arr.select do |item|
  item.all? do |_, v|
    v.all? { |num| num.even? }
  end
end

# We choose select because we want to return only a subset of the original
# collection, not the entire thing or a new collection of the same size
# as the original. 