let foo = 'Hello!';
switch (foo) {
  case 10: case 20:
    console.log('10 or 20');
    break;
  case 'And': console.log('case in one line'); break;
  default:
    console.log(`You gave me '${foo}'`);
}
