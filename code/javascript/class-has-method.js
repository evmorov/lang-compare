class Animal {
  walk() {
    return console.log("I'm walking");
  }
}

let animal = new Animal();
console.log('walk' in animal);
