hsh = {
  stringVar: 'str'
  arrVar: [1, 2, 3]
  numVar: 5
  trueVar: true
  falseVar: false
  nullVar: null
  zeroVar: 0
  emptyVar: ''
  emptyArr: []
  undefinedVar: undefined
}
for key, value of hsh
  console.log "#{key}:"
  console.log 'if value' if value
  console.log 'if value?' if value?
  console.log "if value is ''" if value is ''
  try console.log 'if value.length' if value.length
  console.log ''

# stringVar:
# if value
# if value?
# if value.length
#
# arrVar:
# if value
# if value?
# if value.length
#
# numVar:
# if value
# if value?
#
# trueVar:
# if value
# if value?
#
# falseVar:
# if value?
#
# nullVar:
#
# zeroVar:
# if value?
#
# emptyVar:
# if value?
# if value is ''
#
# emptyArr:
# if value
# if value?
#
# undefinedVar:
