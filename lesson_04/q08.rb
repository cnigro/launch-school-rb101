# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# The best way to learn how a method works is by reading the documentation.
# If it is unclear, irb makes it easy to test a small script to see what
# happens. If we test this in irb, we'll see that take(2) will return the
# first two elements of the collection that called it. It is non-destructive
# and the original collection remains intact.
