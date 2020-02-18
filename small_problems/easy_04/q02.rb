# Write a method that takes a year as input and returns the century. The return
# value should be a string that begins with the century number, and ends with
# st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

# Examples:

# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

def century(year)
  ordinals = %w(st nd rd th)
  year = year.fdiv(100).ceil.to_s

  if year.include?('11') || year.include?('12') || year.include?('13')
    return "#{year}#{ordinals[3]}"
  end

  case year.chars[-1]
  when '1' then "#{year}#{ordinals[0]}"
  when '2' then "#{year}#{ordinals[1]}"
  when '3' then "#{year}#{ordinals[2]}"
  else "#{year}#{ordinals[3]}"
  end
end

puts century(2_000)
puts century(2_001)
puts century(1_965)
puts century(256)
puts century(5)
puts century(10_103)
puts century(1_052)
puts century(1_127)
puts century(11_201)

# not the most elegant solution, but it's functional.
