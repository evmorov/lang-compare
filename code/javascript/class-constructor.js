class Animal {
  constructor(name) {
    this.name = name;
  }

  walk() {
    return console.log(`My name is ${this.name} and I'm walking`);
  }
}

new Animal('Kelya').walk();
