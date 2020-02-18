# Write a method that will take a short line of text, and print it within a box

# Example:

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.

def print_in_box(text)
  width = text.size + 2
  top_bottom = "+#{'-' * width}+"
  padding = "|#{' ' * width}|"
  
  puts top_bottom
  puts padding
  puts "| #{text} |"
  puts padding
  puts top_bottom
end

print_in_box('')
print_in_box('In a hole in the ground there lived a hobbit')
