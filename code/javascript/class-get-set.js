class Animal {
  setName(name) {
    this.name = name;
  }

  getName() {
    return this.name;
  }
}

const animal = new Animal();
animal.name = 'Kelya';
console.log(animal.name);
