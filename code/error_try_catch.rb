begin
  1 / 0
rescue
  puts "Can't divide"
ensure
  puts "But that's ok"
end

1 / 0 rescue puts "Can't divide"
