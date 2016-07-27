class Animal {
  walk() {
    return console.log("I'm walking");
  }
}

class Dog extends Animal {
  sing() {
    return console.log('Bark!');
  }
}

new Dog().walk();
