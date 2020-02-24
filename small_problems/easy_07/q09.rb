# Write a method that takes two Array arguments in which each Array contains a
# list of numbers, and returns a new Array that contains the product of every
# pair of numbers that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(list1, list2)
  list1.map do |val1|
    list2.map do |val2|
      val1 * val2
    end
  end.flatten.sort
end

# more compact solution

def multiply_all_compact(list1, list2)
  list1.product(list2).map { |pair| pair.reduce(:*) }.sort
end

# Examples:
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_compact([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
