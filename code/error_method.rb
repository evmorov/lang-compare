def divide(num1, num2)
  num1 / num2
rescue => e
  p e.message
end
divide(1, 0)
# "divided by 0"
