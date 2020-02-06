# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1)
numbers.delete(1)

# The delete_at() method accepts an index as its argument, thus removing
# the element at numbers[1]. The delete() method accepts an value as its 
# argument, thus searching for an removing the value 1 from the array.

# These methods mutate the caller rather than returning a new array.