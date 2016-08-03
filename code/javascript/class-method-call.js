class Animal {
  walk() {
    this.bark();
    console.log("I'm walking");
  }

  bark() {
    console.log('Wuf!');
  }
}

new Animal().walk();
