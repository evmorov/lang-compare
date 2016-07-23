send = (abroad = false) ->
  console.log if abroad then 'Send abroad' else 'Send locally'
send()
send true
