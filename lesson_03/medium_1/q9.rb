# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
# What would be the return value of the following method invocation?

bar(foo)

# The parameter passed to foo is never used, so the return value will always
# be "yes". So, when we call bar(foo), we're calling bar("yes"), and inside
# the bar method, "yes" evaluates to "no", so our return value is "no"