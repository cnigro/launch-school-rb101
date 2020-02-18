# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.

# Examples:

# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

def time_of_day(minutes)
  hr, min = minutes.divmod(60)
  hr = hr%24
  # min = min.to_s
  # hr.prepend('0') if hr.to_i < 10
  # min.prepend('0') if min.to_i < 10
  # "#{hr}:#{min}"
  format('%02d:%02d', hr, min)
end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(800)
puts time_of_day(3000)
puts time_of_day(-4231)
