# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Count returns the number of items in the collection. in a block is given,
# then the number of elements yielding a truthy value are counted. So, we
# would expect that the method would return a value of 2, because both 'and'
# and 'bat' have length < 4.
