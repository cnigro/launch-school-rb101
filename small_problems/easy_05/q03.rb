# As seen in the previous exercise, the time of day can be represented as the
# number of minutes before or after midnight. If the number of minutes is
# positive, the time is after midnight. If the number of minutes is negative,
# the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, and return
# the number of minutes before and after midnight, respectively. Both methods
# should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# Examples:

# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754
# before_midnight('12:34') == 686
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

def after_midnight(time)
  hours, minutes = time.split(':').map(&:to_i)
  (hours * 60 + minutes) % 1440
end

# before_midnight is the opposite of after midnight, so if after_midnight = n,
# before_midnight = 1 - n. In this case, 1 is 1440, the number of minutes in a
# day. 

def before_midnight(time)
  difference = 1440 - after_midnight(time)
  difference == 1440 ? 0 : difference
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')
