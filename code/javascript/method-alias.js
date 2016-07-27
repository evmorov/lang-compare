class Greetings {
  hey() {
    return console.log('How are you?');
  }
  hi = this.prototype.hey;
}

(new Greetings()).hi();
