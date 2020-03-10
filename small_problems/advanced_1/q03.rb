# A 3 x 3 matrix can be represented by an Array of Arrays in which the main
# Array and all of the sub-Arrays has 3 elements. For example:

# 1  5  8
# 4  7  2
# 3  9  6

# can be described by the Array of Arrays:

# matrix = [
  # [1, 5, 8],
  # [4, 7, 2],
  # [3, 9, 6]
# ]

# An Array of Arrays is sometimes called nested arrays because each of the
# inner Arrays is nested inside an outer Array.

# To access an element in matrix, you use Array#[] with both the row index
# and column index. So, in this case, matrix[0][2] is 8, and matrix[2][1] is
# 9. An entire row in the matrix can be referenced by just using one index:
# matrix[1] is the row (an Array) [4, 7, 2]. Unfortunately, there's no
# convenient notation for accessing an entire column.

# The transpose of a 3 x 3 matrix is the matrix that results from exchanging
# the columns and rows of the original matrix. For example, the transposition
# of the array shown above is:

# 1  4  3
# 5  7  9
# 8  2  6

# Write a method that takes a 3 x 3 matrix in Array of Arrays format and
# returns the transpose of the original matrix. Note that there is a 
# Array#transpose method that does this -- you may not use it for this
# exercise. You also are not allowed to use the Matrix class from the standard
# library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new matrix
# and leave the original matrix unchanged.

=begin
  input: NxN nested array
  output: transposed NxN array
  side effects: none

  a transposed array is one that has been rotated around the diagonal

=end

def transpose(matrix)
  # stolen from ThoughtCo
  t = Marshal.load(Marshal.dump(matrix))
  t.size.times do |row|
    row.times do |col|
      delta = t.size - size
      t[row][col], t[col][row] = t[col][row], t[row][col]
    end
  end
end

# Examples
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
