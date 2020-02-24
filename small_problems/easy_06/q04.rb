# Write a method that takes an Array as an argument, and reverses its elements
# in place; that is, mutate the Array passed into this method. The return value
# should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Examples:

# list = [1,2,3,4]
# result = reverse!(list)
# result == [4, 3, 2, 1]
# list == [4, 3, 2, 1]
# list.object_id == result.object_id

# list = %w(a b e d c)
# reverse!(list) == ["c", "d", "e", "b", "a"]
# list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse!(list) == ["abc"]
# list == ["abc"]

# list = []
# reverse!(list) == []
# list == []

def reverse_array(ary)
  return ary if ary.size <= 1
  ary.map.with_index do |_, idx|
    if idx < ary.size/2
      ary[idx], ary[-idx - 1] = ary[-idx - 1], ary[idx]
    end
    ary[idx]
  end
end

p reverse_array(['abc'])
p reverse_array(['a', 'b', 'c', 'd'])
p reverse_array([])
