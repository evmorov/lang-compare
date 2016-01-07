if_value = (values) ->
  console.log '"if value":'
  for k, v of values
    console.log "#{k} - #{if v then 'true' else 'false'}"
  console.log ''

question_value = (values) ->
  console.log '"if value?":'
  for k, v of values
    console.log "#{k} - #{if v? then 'true' else 'false'}"
  console.log ''

empty_value = (values) ->
  console.log '"if value is \'\'":'
  for k, v of values
    console.log "#{k} - #{if v is '' then 'true' else 'false'}"
  console.log ''

length_value = (values) ->
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

if_value(values)
question_value(values)
empty_value(values)
length_value(values)

# "if value":
# 0 - false
# 5 - true
# 'string' - true
# '' - false
# [1, 2, 3] - true
# [] - true
# true - true
# false - false
# null - false
# undefined - false
#
# "if value?":
# 0 - true
# 5 - true
# 'string' - true
# '' - true
# [1, 2, 3] - true
# [] - true
# true - true
# false - true
# null - false
# undefined - false
#
# "if value is ''":
# 0 - false
# 5 - false
# 'string' - false
# '' - true
# [1, 2, 3] - false
# [] - false
# true - false
# false - false
# null - false
# undefined - false
#
# "if value.length":
# 0 - false
# 5 - false
# 'string' - true
# '' - false
# [1, 2, 3] - true
# [] - false
# true - false
# false - false
