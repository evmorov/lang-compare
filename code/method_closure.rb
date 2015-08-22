square = -> (x) { x * x }
p [2, 3].map(&square)
# [4, 9]

greeting = -> { p 'Hello World!' }
greeting.call
# "Hello World!"
