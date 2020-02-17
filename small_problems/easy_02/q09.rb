# Take a look at the following code:

# name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name
# What does this code print out? Think about it for a moment before continuing.

# If you said that code printed

# Alice
# Bob

# you are 100% correct, and the answer should come as no surprise. Now, let's
# look at something a bit different:

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name

# What does this print out? Can you explain these results?

# This will print
# BOB
# BOB
# The reason for this is because when we assign the value of name to save_name
# we are giving save_name the reference to the object that name is pointing to,
# so both variables are pointing to the same object. We then proceed to modify
# the object in-place, so they now both point to the modified obect. In the
# first example, the values are different because assigning a new value
# to name creates a new object in memory with a new reference.
