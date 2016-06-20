check = (label, fn, values) ->
  console.log label
  for value in values
    try
      result = if fn(value) then 'true' else 'false'
    catch e
      if e instanceof TypeError
        result = "error: #{e}"
      else
        throw e
    value = '[]' if value?.constructor.name is 'Array' and value.length is 0
    value = "''" if value is ''
    console.log "  #{value} - #{result}"
  console.log ''

values = ['string', '', [1, 2, 3], [], 5, 0, true, false, null, undefined]

check('if value:', ((v) -> v), values)
check('if value?:', ((v) -> v?), values)
check('if value.length:', ((v) -> v.length), values)
