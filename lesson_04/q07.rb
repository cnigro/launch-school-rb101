# What is the block's return value in the following code? How is it determined?
# Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# Enumerable#any? returns a boolean value if the block ever returns a truthy
# value. So, since there are two odd numbers in the collection, num.odd?
# evaluates to true twice, which will cause any? to return true.

# Just as the || operator short circuits Upon encountering a truthy value
# (because logical true || false equates to true), so does any? end evaluation
# after the first truthy value is returned.