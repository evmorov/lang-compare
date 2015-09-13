try
  throw new Error('divided by 0')
catch
  console.log "Can't divide"
finally
  console.log "But that's ok"
# Can't divide
# But that's ok

try
  throw new Error('divided by 0')
catch error
  console.log error.message
# divided by 0
