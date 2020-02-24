# Write a method that combines two Arrays passed in as arguments, and returns a
# new Array that contains all elements from both Array arguments, with the
# elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the
# same number of elements.

def interleave(ary1, ary2)
  interleaved = []
  ary1.each_with_index do |value, idx|
    interleaved << value << ary2[idx]
  end
  interleaved
end

def interzip(ary1, ary2)
  ary1.zip(ary2).flatten
end

# Example:
p interleave([1, 2, 3], ['a', 'b', 'c']) # == [1, 'a', 2, 'b', 3, 'c']
p interzip([1, 2, 3], ['a', 'b', 'c'])
