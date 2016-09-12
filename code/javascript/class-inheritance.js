class Animal {
  walk() {
    console.log("I'm walking");
  }
}

class Dog extends Animal {
  sing() {
    console.log('Bark!');
  }
}

new Dog().walk();
