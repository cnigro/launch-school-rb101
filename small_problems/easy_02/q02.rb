# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Example Run

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

puts "Welcome to dimension converter!"
puts "What are the dimensions of the room in meters?"
print "Length: "
length = gets.to_f
print "Width: "
width = gets.to_f
area = length * width
puts "The area of the room is #{area.round(2)} square meters
      (#{(area * 10.7639).round(2)} square feet)."
