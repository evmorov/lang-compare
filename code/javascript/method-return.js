let multiple = (a, b) => a * b;
console.log(multiple(2, 3));

let divide = function(a, b) {
  if (a === 0) { return 0; }
  return a / b;
};
console.log(divide(0, 10));

let defaultValue = function() {};
console.log(defaultValue());
