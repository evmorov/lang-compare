foo = 'Hello!'
case foo
when 1..5
  p "It's between 1 and 5"
when 10, 20
  p '10 or 20'
when 'And' then p 'case in one line'
when String
  p "You passed a string '#{foo}'"
else
  p "You gave me '#{foo}'"
end
# "You passed a string 'Hello!'"
