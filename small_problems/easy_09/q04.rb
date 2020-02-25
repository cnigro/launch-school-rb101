# Write a method that takes an integer argument, and returns an Array of all
# integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that is
# greater than 0.

def sequence(num)
  steps = []
  1.upto(num) { |n| steps << n }
  steps
end

# better solution
def sequence_alt(num)
  [*1..num]
end

# further exploration
def also_sequence(num)
  num > 0 ? [*1..num] : [*num..1]
end

# Examples:
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence_alt(1) == [1]
p also_sequence(-3) == [-3, -2, -1, 0, 1]