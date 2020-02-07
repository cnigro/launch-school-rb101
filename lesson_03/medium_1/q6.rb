#What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# The output is 34, because assignment does not mutate the caller. A new
# object is created in memory and some_number gets a pointer to the new
# object, leaving answer intact.
