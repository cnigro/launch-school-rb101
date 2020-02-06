# Describe the difference between ! and ? in Ruby. 
# And explain what would happen in the following scenarios:

# 1. what is != and where should you use it?
# 2. put ! before something, like !user_name
# 3. put ! after something, like words.uniq!
# 4. put ? before something
# 5. put ? after something
# 6. put !! before something, like !!user_name

# ! at the end of a method typically implies that the method
# has side effects. When used before something, it is the logical
# negation operator.
# ? at the end of a method implies that the method returns a boolean 
# value. ? is also part of the ternary operator

# 1. is "is not equal to". You would use this when you want to do
#    a conditional check, such as if thing != nil then do something

# 2. putting ! before something negates the value of it. So, an expression
#    that would evaluate to true would evaluate to false and vice versa.

# 3. putting ! after something, such as words.uniq! will mutate the caller.
#    where words.uniq would return an array of unique words, words.uniq! will
#    modify the words array in place, modifying the original contents.

# 4. putting ? before a letter will return the ascii character, but otherwise is
#    not a valid use.

# 5. putting ? after something, such as a method, implies that the method returns
#    a boolean value

# 6. putting !! before something is a double negation, and should return the original
#    boolean value.