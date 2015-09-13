multiple = (a, b) ->
  a * b
console.log multiple(2, 3)
# 6

divide = (a, b) ->
  return 0 if a == 0
  a / b
console.log divide 0, 10
# 0
