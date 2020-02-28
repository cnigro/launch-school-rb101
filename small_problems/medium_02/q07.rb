# Write a method that returns the number of Friday the 13ths in the year
# given by an argument. You may assume that the year is greater than 1752
# (when the United Kingdom adopted the modern Gregorian Calendar) and that
# it will remain in use for the foreseeable future.

require 'date'

def friday_13th(year)
  date = Date.new(year)
  count = 0
  12.times do |n|
    count += 1 if date.next_month(n).next_day(12).friday?
  end
  count
end

# Examples:
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
