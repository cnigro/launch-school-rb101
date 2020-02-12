# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# Pop returns the last element of the collection and returns it. Chaining
# the method calls means we will call #size on the returned value 'caterpillar'
# which has a size of 11.
