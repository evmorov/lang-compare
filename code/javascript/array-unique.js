const arr = ['a', 'b', 'a'];
const unique = arr.filter((value, index, self) => self.indexOf(value) === index);
console.log(unique);
