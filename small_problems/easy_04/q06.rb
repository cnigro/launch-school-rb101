# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

# Examples:

# running_total([2, 5, 13]) == [2, 7, 20]
# running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# running_total([3]) == [3]
# running_total([]) == []

def running_total(nums)
  total = []
  total[0] = nums[0]
  1.upto(nums.size - 1) do |i|
    total[i] = nums[i] + total[i - 1]
  end
  total
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3])
p running_total([])

# this solution actually fails because it returns nil instead of empty array
# when the input is empty


# more elegant solution

def also_running_total(nums)
  sum = 0
  nums.map { |value| sum += value }
end

p also_running_total([2, 5, 13])
p also_running_total([14, 11, 7, 15, 20])
p also_running_total([3])
p also_running_total([])