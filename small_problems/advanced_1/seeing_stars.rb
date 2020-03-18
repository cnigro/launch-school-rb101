# Write a method that displays an 8-pointed star in an nxn grid, where n is an
# odd integer that is supplied as an argument to the method. The smallest such
# star you need to handle is a 7x7 grid.

=begin
  input: odd-valued integer describing the height and width of the star
  output: ASCII art printed to the console

  clarifying questions
    Is it safe to assume the input will always be an integer?
      Could it be a string representation of an integer?

    How do we  handle even numbers?
    How do we handle zeros?

    Should the function have a return value?

  Since there is no one to answer these questions, we're going to assume the
  input is always an odd integer and there is no return value expected.

  analysis
    - each row and column has 3 * characters, except for the middle which has n
    - the number of spaces between * characters for any row is equal to the 
      distance from the nearest row without spaces, which is middle - 1 for
      the top and middle + 1 for the bottom.
    
  data structure
    This could be done entirely with strings and arithmetic in a loop. If we
    wanted a return value, a 2-dimensional array could store the data, or even
    a one-dimensional array from which we read characters to print, inserting
    a newline after every nth character. We'll begin with the naive solution
    using only strings.

    String has a useful #center method that makes padding the beginning/end of
    our rows easier, so we only need to be concerned with the "inner" spacing

  algorithm:
    - Take the ceiling of n/2 to find the "middle"
      middle = 9.fdiv(2).ceil
    - loop over range 1 to k
      - if we're drawing the middle row, draw n stars
        - puts "*" * n if k == middle
      - else
        - create a spaces variable to hold the number of inner space characters
        - calculate number of inner spaces
          - spaces = (k % -(middle - 1)).abs if above middle
          - spaces = ((k % (middle + 1)).abs)
        - print our string using string interpolation and the #center method
          - puts "*#{spaces}*{spaces}*".center(n)

=end

def star(n)
  middle = n.fdiv(2).ceil

  1.upto(n) do |k|
    if k == middle
      puts '*' * n
    else
      spaces = if k < middle
                 ' ' * (k % -(middle - 1)).abs
               else
                 ' ' * (k % (middle + 1)).abs
               end
      puts "*#{spaces}*#{spaces}*".center(n)
    end
  end
end

star(7)
star(9)
star(17)