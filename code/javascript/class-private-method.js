class Animal {
  eat(food) {
    if (isMeat(food)) { return console.log('Om nom nom'); }
  }

  isMeat(food) {
    return food === 'meat';
  }
}

new Animal().eat('meat');
