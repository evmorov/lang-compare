let my_select = function(arr, filter) {
  let selected = [];
  for (let i = 0; i < arr.length; i++) {
    let a = arr[i];
    if (filter(a)) { selected.push(a); }
  }
  return selected;
};
console.log(my_select([1, 5, 10], x => x < 6));
