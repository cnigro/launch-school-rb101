# How would you order this array of hashes based on the year of publication of
# each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

p books.sort { |a, b| a[:published].to_i <=> b[:published].to_i }

# We need to query the hash for the publication date, then convert the strings
# to integers so that we can compare them in a meaningful way. The result of
# the comparison gets passed back to sort, and we get our desired array. 

# It turns out there's an easier way
p books.sort_by { |book| book[:published] }

# We can compare them this way because all of the strings are numeric and have
# same number of characters, so the ascii comparison still makes sense.
