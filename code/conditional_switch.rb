foo = 'Hello!'
case foo
when 1..5
  p "It's between 1 and 5"
when String
  p "You passed a string '#{foo}'"
else
  p "You gave me '#{foo}' -- I have no idea what to do with that."
end
# "You passed a string 'Hello!'"
