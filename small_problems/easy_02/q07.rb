# Print the even numbers from 1 to 99, inclusive. All numbers should be printed
# on separate lines.

99.times do |num|
  num += 1
  puts num if num.even?
end
