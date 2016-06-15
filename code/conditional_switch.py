foo = 'Hello!'
if foo in range(1, 6):
  print("It's between 1 and 5")
elif foo in (10, 20):
  print('10 or 20')
elif isinstance(foo, str):
  print("You passed a string %r" % foo)
else:
  print("You gave me %r" % foo)
