# A collection of spelling blocks has two letters per block,
# as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those
# words that do not use both letters from any given block. Each block
# can only be used once.

# Write a method that returns true if the word passed in as an argument
# can be spelled from this set of blocks, false otherwise.

BLOCKS = {B:1, O:1, X:2, K:2, D:3, Q:3, C:4, P:4, N:5, 
          A:5, G:6, T:6, R:7, E:7, F:8, S:8, J:9, W:9, 
          H:10, U:10, V:11, I:11, L:12, Y:12, Z:13, M:13}

def block_word?(word)
  hits = word.split.each { |letter| BLOCKS[letter.upcase.to_sym] }
  hits == hits.uniq
end

# Examples:
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
