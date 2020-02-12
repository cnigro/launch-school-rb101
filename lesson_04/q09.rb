# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# Map returns an array containing the results of executing a block once for
# each element of the calling collection. In this case. we check whether each
# value in the hash has size > 3, and if so, return the value. Map will return
# some value for each iteration. If none of the conditions of an if statement
# evaluate to true, it returns nil. We expect this method to return the array
# [nil, 'bear']
