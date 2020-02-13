# Write a method that counts the number of occurrences of each element in a
# given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted,
# print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurrences(things)
  count = {}
  things.each do |thing|
    count[thing].nil? ? count[thing] = 1 : count[thing] += 1
  end
  count.each { |item, total| puts "#{item} => #{total}" }
end

count_occurrences(vehicles)

# We iterate over the collection, and at each iteration, check whether
# an key in the hash exists. If not, we add it to the hash and initialize
# the value to 1. If the key already exists, we increment the value by 1.
