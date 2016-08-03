function mySelect(arr, filter) {
  const selected = [];
  arr.forEach(e => {
    if (filter(e)) selected.push(e);
  });
  return selected;
}
console.log(mySelect([1, 5, 10], x => x < 6));
