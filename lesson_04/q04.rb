# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# The argument passed to the method provides the collection for the second
# block argument. That is, hash refers to the argument passed into the 
# each_with_object method, in this case an empty hash. We then iterate
# over the collection that called the method, and assign its value to the
# first position of the hash. 
