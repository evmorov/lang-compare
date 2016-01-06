hsh = {
  true_var: true
  false_var: false
  null_var: null
  zero_var: 0
  empty_var: ''
  undefined_var: undefined
}
for key, value of hsh
  console.log "#{key}:"
  console.log 'True' if value
  console.log 'False' unless value
  console.log 'Null' unless value? # (? == not_null?)
  console.log 'Empty' if value is ''
  console.log ''

# true_var:
# True
#
# false_var:
# False
#
# null_var:
# False
# Null
#
# zero_var:
# False
#
# empty_var:
# False
# Empty
#
# undefined_var:
# False
# Null
