foo = 'Hello!'
switch foo
  when 10, 20
    console.log '10 or 20'
  when 'And' then console.log 'case in one line'
  else
    console.log "You gave me '#{foo}'"
# You gave me 'Hello!'
