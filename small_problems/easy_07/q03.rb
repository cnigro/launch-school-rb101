# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

def word_cap(text)
  text.split.map(&:capitalize).join(' ')
end

# This doesn't get JavaScript right, although the capitalization is
# technically correct
def word_cap_alt(text)
  text.split.map do |word|
    word[0] = (word[0].ord - 32).chr if (97..122).include?(word[0].ord)
    word
  end.join(' ')
end

# Examples
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

p word_cap_alt('four score and seven') == 'Four Score And Seven'
p word_cap_alt('the javaScript language') == 'The Javascript Language'
p word_cap_alt('this is a "quoted" word') == 'This Is A "quoted" Word'
