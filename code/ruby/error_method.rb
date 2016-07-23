def divide(num1, num2)
  num1 / num2
rescue => e
  puts e.message
end
divide(1, 0)
