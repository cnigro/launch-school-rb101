# Alan wrote the following method, which was intended to show all of the
# factors of the input number:

def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

# Alyssa noticed that this will fail if the input is 0, or a negative number,
# and asked Alan to change the loop. How can you make this work without
# using begin/end/until? Note that we're not looking to find the factors for
# 0 or negative numbers, but we just want to handle it gracefully instead of
# raising an exception or going into an infinite loop.

def factors(number)
  divisor = number
  factors = []
  number.times do |_|
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end 
  factors
end

# Bonus 1
# What is the purpose of the number % divisor == 0 ?

# number % divisor checks to see whether the divisor evenly divides the number
# which will tell is whether the number is indeed a factor

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method
# (the factors before the method's end)?

# the return value of a method is either whatever is explicitly returned by the
# return keywork, or it is the last statement evaluated. We evaluate factors
# to make sure that this is the return value and not whatever the loop returns.
