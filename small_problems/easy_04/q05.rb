# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be 98
# (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Examples

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

def multisum(num)
  factors = []
  1.upto(num) do |n|
    factors << n if (n % 3).zero? || (n % 5).zero?
  end
  factors.inject(0, &:+)
end

puts multisum(3)
puts multisum(5)
puts multisum(10)
puts multisum(1000)
