class Animal {
  take(toy) {
    this.toy = toy;
  }

  play() {
    console.log(`I'm playing with ${this.toy}`);
  }
}

const animal = new Animal();
animal.take('a ball');
animal.play();
