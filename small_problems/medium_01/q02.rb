# Write a method that can rotate the last n digits of a number. 

def rotate_array(rotate_me)
  rotate_me[1..-1] | [rotate_me[0]]
end

def rotate_rightmost_digits(num, n)
  nums = num.digits.reverse
  result = nums[0..-n - 1] | rotate_array(nums[-n..-1])
  result.join.to_i
end

# For example:
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917