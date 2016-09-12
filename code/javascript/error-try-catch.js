try {
  age++;
} catch (error) {
  console.log("Can't change undefined variable");
} finally {
  console.log("But that's ok");
}
