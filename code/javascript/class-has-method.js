class Animal {
  walk() {
    console.log("I'm walking");
  }
}

const animal = new Animal();
console.log('walk' in animal);
