# Write a method that returns a list of all substrings of a string. The
# returned list should be ordered by where in the string the substring
# begins. This means that all substrings that start at position 0 should
# come first, then all substrings that start at position 1, and so on. Since
# multiple substrings will occur at each position, the substrings at a given
# position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise:

def substrings_at_start(str)
  str.chars.map.with_index { |_,i| str[0..i] }
end

def substrings(text)
  strings = []
  
  text.size.times do |n|
    strings << substrings_at_start(text[n..text.size-1])
  end
  strings.flatten
end

# Examples:
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
