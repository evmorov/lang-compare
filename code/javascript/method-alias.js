class Greetings {
  constructor() {
    this.hi = this.hey.bind(this, true);
  }

  hey() {
    console.log('How are you?');
  }
}

new Greetings().hi();
