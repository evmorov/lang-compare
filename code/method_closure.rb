square = -> (x) { x * x }
puts [2, 3].map(&square)

greeting = -> { puts 'Hello World!' }
greeting.call
