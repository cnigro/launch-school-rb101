# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version, and
# every lowercase letter by its uppercase version. All other characters should
# be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swap_case(text)
  swapped = ""
  text.each_char do |c|
    if ('A'.ord..'Z'.ord).include?(c.ord)
      swapped << (c.ord + 32).chr
    elsif ('a'.ord..'z'.ord).include?(c.ord)
      swapped << (c.ord - 32).chr
    else
      swapped << c
    end
  end
  swapped
end

# Example:
p swap_case('CamelCase') == 'cAMELcASE'
p swap_case('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
