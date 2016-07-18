my_select = (arr, filter) ->
  selected = []
  for a in arr
    selected.push a if filter(a)
  selected
console.log my_select [1, 5, 10], (x) -> x < 6
