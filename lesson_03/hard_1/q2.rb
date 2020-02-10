# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# The output of greetings will reflect the change made to informal_greeting.
# the greetings object remains unchanged, but greetings[:a] is just a reference
# to another object, and we assigned that reference to another variable,
# informal_greeting. So, when we mutate the object referenced by
# informal_greeting, we are also changing the object referenced by
# greetings[:a] as they are one and the same.
