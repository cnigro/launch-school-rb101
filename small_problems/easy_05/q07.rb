# Modify the word_sizes method from the previous exercise to exclude non-
# letters when determining word size. For instance, the length of "it's"
# is 3, not 4.

# Examples

# word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
# word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
# word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
# word_sizes('') == {}

def word_sizes(text)
  word_map = Hash.new(0)
  text.split(' ').each { |word| word_map[word.gsub(/[^a-zA-Z]/,'').size] += 1 }
  word_map
end

p word_sizes("In a hole in the ground there lived a hobbit")
p word_sizes("What's up doc?") # { 5 => 1, 2 => 1, 3 => 1 }