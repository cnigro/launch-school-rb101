# What do you expect to happen when the greeting variable is referenced in the
# last line of the code below?

if false
  greeting = “hello world”
end

greeting

# This is unintuitive. The expected behavior would be to raise an exception
# because the block never executes. However, the actual behavior is that the
# the greeting variable is initialized to nil, so no exception is raised and
# the program executes without issue. 