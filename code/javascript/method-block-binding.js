class Action {
  static say(sentence) {
    return console.log(sentence());
  }
}

class Person {
  constructor(name) {
    this.name = name;
  }

  greet() {
    Action.say(function() { return `My name is ${this.name}!`; });
    
    return Action.say(() => `My name is ${this.name}!`);
  }
}
    

new Person('Alex').greet();
