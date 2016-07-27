try {
  throw new Error('divided by 0');
} catch (error) {
  console.log("Can't divide");
}
finally {
  console.log("But that's ok");
}
