# The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# We produce an error here because we're attempting to
# concatenate a string and an integer. To avoid this
# we can rewrite this line as
puts "the value of 40 + 2 is " + (40 + 2).to_s
# to convert the result of the addition to a string.

# We could also do the calculation inside of the string
# using string interpolation, like so
puts "the value of 40 + 2 is #{40 + 2}"