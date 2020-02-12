# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# Map will return an array containing the result of executing the given block
# once for each element of the calling collection. In this case, the first
# iteration evaluates to false, so we return the value 1. In the next two
# iterations, the conditional evaluates to true, and we call puts. As we know
# puts returns nil, so the next two return values will be nil.

# => [1, nil nil] is the expected output
