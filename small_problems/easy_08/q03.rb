# Write a method that returns a list of all substrings of a string that start
# at the beginning of the original string. The return value should be arranged
# in order from shortest to longest substring.

def substrings_at_start(text)
  strings = []

  text.size.times do |n|
    strings << text[0..n]
  end
  strings
end

# more compact alternative
def substrings_at_start_alt(str)
  str.chars.map.with_index { |_,i| str[0..i] }
end

# Examples:
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
