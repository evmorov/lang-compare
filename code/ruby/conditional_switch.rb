foo = 'Hello!'
case foo
when 1..5
  puts "It's between 1 and 5"
when 10, 20
  puts '10 or 20'
when 'And' then puts 'case in one line'
when String
  puts "You passed a string '#{foo}'"
else
  puts "You gave me '#{foo}'"
end
