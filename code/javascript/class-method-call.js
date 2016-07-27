class Animal {
  walk() {
    this.bark();
    guard();
    return console.log("I'm walking");
  }

  bark() {
    return console.log('Wuf!');
  }

  guard() {
    return console.log('WUUUF!');
  }
}

new Animal().walk();
