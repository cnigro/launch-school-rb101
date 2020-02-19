# Given this code, what would be the final values of a and b? Try to work this
# out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# The final value of arr should be [4, [3, 8]]. The reason for this is because
# when we execute arr[0] += 2, we're not modifying a. While it's true that a
# and arr[0] both point to the same object in memory, after we execure this
# line that ceases to be true. This is because arr[0] += 2 is the same as
# arr[0] = arr[0] + 2, and we know that assignment creates a new object.
