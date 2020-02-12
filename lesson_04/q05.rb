# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# The documentation tells use that Hash#shift removes a key-value pair from
# the hash and returns it as a two-item array of the form [key, value]. So,
# in this instance, we expect [a:, 'ant'] to be returned. The hash now contains
# { b: 'bear' }
