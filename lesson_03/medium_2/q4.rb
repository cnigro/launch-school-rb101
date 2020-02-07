# To drive that last one home...let's turn the tables and have the string show
# a modified output, while the array thwarts the method's efforts to modify the
# caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# This is the same as q3, except we've swapped the string and array.
# the assignment creates a new object, so the array remains unmodified
# outside of the method call this time, and the string is mutated
# because the local variable a_string_param holds a reference to 
# the same object as my_string.