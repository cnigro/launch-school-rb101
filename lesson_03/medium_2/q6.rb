# How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_also_valid(color)
  color == "blue" || color == "green"
end

# The second method has the same functionality as the first method because
# Ruby will automatically evaluate the expression, and the value of thelast
# expression evaluated is the method's return value.
