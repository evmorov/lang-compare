import functools, operator

print(functools.reduce(operator.add, [1, 2, 3]))
print(sum([1, 2, 3]))  # a more Pythonic example
