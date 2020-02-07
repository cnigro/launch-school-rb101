# Let's call a method, and pass both a string and an array as parameters and
# see how even though they are treated in the same way by Ruby, the results
# can be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# The value of my_string upon return from the method will be "pumpkins",
# but the value of my_array will be ["pumpkins", "rutabaga"]. Initially,
# my_string and a_string_param reference the same object, but when we perform
# the assignment, we create a new object and store the reference in the
# variable. 
#
# Array#<< mutates the caller, so the value "rutabaga" is appended to the
# original array object referenced by both an_array_param and my_array.
