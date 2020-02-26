# Write a method that displays a 4-pointed diamond in an n x n grid, where n is
# an odd integer that is supplied as an argument to the method. You may assume
# that the argument will always be an odd integer.

def diamond(size)
  middle = size.fdiv(2).ceil
  1.upto(size) do |n|
    if n.odd?
      print ' ' * (middle - (n/2))
      puts '*' * n
    end
  end
  (size - 1).downto(1) do |n|
    if n.odd?
      print ' ' * (middle - (n/2))
      puts '*' * n
    end
  end
end

# Examples
diamond(1)
diamond(3)
diamond(9)
