class Animal {
  take(toy) {
    this.toy = toy;
  }

  play() {
    return console.log(`I'm playing with ${this.toy}`);
  }
}

let animal = new Animal();
animal.take('a ball');
animal.play();
