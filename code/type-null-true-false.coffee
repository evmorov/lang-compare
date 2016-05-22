ifValue = (values) ->
  console.log '"if value":'
  for k, v of values
    console.log "#{k} - #{if v then 'true' else 'false'}"
  console.log ''

questionValue = (values) ->
  console.log '"if value?":'
  for k, v of values
    console.log "#{k} - #{if v? then 'true' else 'false'}"
  console.log ''

emptyValue = (values) ->
  console.log '"if value is \'\'":'
  for k, v of values
    console.log "#{k} - #{if v is '' then 'true' else 'false'}"
  console.log ''

lengthValue = (values) ->
  console.log '"if value.length":'
  for k, v of values
    try console.log "#{k} - #{if v.length then 'true' else 'false'}"
  console.log ''

values = {
  "'string'": 'string'
  "''": ''
  '[1, 2, 3]': [1, 2, 3]
  '[]': []
  '5': 5
  '0': 0
  true: true
  false: false
  null: null
  undefined: undefined
}

ifValue(values)
questionValue(values)
emptyValue(values)
lengthValue(values)
