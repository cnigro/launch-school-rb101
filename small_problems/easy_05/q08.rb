# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Examples:

# alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

NUMBER_DICTIONARY = { 
0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three',
4 => 'four', 5 => 'five', 6 => 'six', 7 => 'seven',
8 => 'eight', 9 => 'nine', 10 => 'ten', 11 => 'eleven',
12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen',
18 => 'eighteen', 19 => 'nineteen'}

def alphabetic_number_sort(numbers)
  numbers.sort_by { |n| NUMBER_DICTIONARY[n] }
end

def alphabetic_number_sort_alt(numbers)
  numbers.sort { |a, b| NUMBER_DICTIONARY[a] <=> NUMBER_DICTIONARY[b]}
end

p alphabetic_number_sort((0..19).to_a)
p alphabetic_number_sort_alt((0..19).to_a)
