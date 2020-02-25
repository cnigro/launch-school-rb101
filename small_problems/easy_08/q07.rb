# Write a method that takes a string, and returns a new string in which every
# character is doubled.

def repeater(text)
  text.chars.zip(text.chars).flatten.join('')
end

# Examples:
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
