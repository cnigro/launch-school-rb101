# In other practice problems, we have looked at how the scope of variables
# affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification of
# one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# A)

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# There is no modification happening to the variables in this code.
# We store a different reference in each variable, but assignment is 
# non-mutating, and once we return from the method call, the context
# is lost and the variables reference the original values.

# B)

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

# As with A) we are not mutating anything. When we assign a new string value
# to the variables inside the method call, we're creating new strings in 
# memory, but when we return from the method call, the objects in memory
# are marked for garbage collection.

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# C)

def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"

# In this example, the output will reflect that changes made inside the method
# call because String#gsub! mutates the caller. one will point to "two", two 
# will point to "three", and three will point to "one." The variables one, two,
# and three mutate the objects they're referencing before returning from the 
# method's scope, so the changes persist. 
