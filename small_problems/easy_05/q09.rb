# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use String#squeeze
# or String#squeeze!.

# Examples:

# crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# crunch('4444abcabccba') == '4abcabcba'
# crunch('ggggggggggggggg') == 'g'
# crunch('a') == 'a'
# crunch('') == ''

def crunch(text)
  text.gsub(/(.)\1+/, '\1')
end

# The problem with this is that it has no way of knowing when a letter is
# intended to be doubled, so it has limited use. Still, a neat regex trick
# to have in your pocket.

puts crunch("wwoorrddsss")
puts crunch('ddaaiillyy ddoouubbllee') # == 'daily double'
puts crunch('4444abcabccba') # == '4abcabcba'
puts crunch('ggggggggggggggg') # == 'g'
puts crunch('a') # == 'a'
puts crunch('') # == ''
