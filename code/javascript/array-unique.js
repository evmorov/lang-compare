let arr = ['a', 'b', 'a'];
let unique = arr.filter((value, index, self) => self.indexOf(value) === index);
console.log(unique);
