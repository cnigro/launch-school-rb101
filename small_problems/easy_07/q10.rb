# Write a method that returns the next to last word in the String passed to it
# as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(text)
  text.split(' ')[-2]
end

def middle_word(text)
  words = text.split(' ')
  if words.empty? || words.size == 1
    text
  elsif words.size == 2
    penultimate(text)
  else
    words[words.size/2]
  end
end

# Examples:
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'

p middle_word('')
p middle_word('one')
p middle_word('two words')
p middle_word('here\'s three words')
p middle_word('even number of words')
