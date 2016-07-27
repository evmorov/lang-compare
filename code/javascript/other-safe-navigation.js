class Winner {
  constructor() {}
}
    // @address = new Address

class Address {
  zipcode = 192187;
}

let zip = __guard__((new Winner()).address, x => x.zipcode);
console.log(zip ? `Zipcode is ${zip}` : "No prize without zipcode");

function __guard__(value, transform) {
  return (typeof value !== 'undefined' && value !== null) ? transform(value) : undefined;
}