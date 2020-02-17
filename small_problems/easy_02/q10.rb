# What will the following code print, and why? Don't run the code until you
# have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# array1 and array2 hold references to the same objects after the assignment in
# line 3. So, whether we modify these object by calling a method on array1 or
# on array2 makes no difference. When we print the contents of array2, we
# will see that CURLY, SHEMP, and CHICO have been uppercased. 
