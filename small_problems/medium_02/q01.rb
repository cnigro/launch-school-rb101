# Write a program that reads the content of a text file and then prints the
# longest sentence in the file based on number of words. Sentences may end with
# periods (.), exclamation points (!), or question marks (?). Any sequence of
# characters that are not spaces or sentence-ending characters should be
# treated as a word. You should also print the number of words in the longest
# sentence.

text = File.read("frank.txt")
sentences = text.split(/[.?!]/)

longest = sentences.max_by { |sentence| sentence.split.size }
word_count = longest.split.size

puts "#{longest}\n#{word_count} words"
