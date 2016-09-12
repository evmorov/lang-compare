class Action {
  static say(sentence) {
    console.log(sentence());
  }
}

class Person {
  constructor(name) {
    this.name = name;
  }

  greet() {
    try {
      Action.say(function() { `My name is ${this.name}!`; });
    } catch (err) {
      console.log(err.message);
    }
    Action.say(() => `My name is ${this.name}!`);
  }
}

new Person('Alex').greet();
