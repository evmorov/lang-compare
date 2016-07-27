try {
  throw new Error('divided by 0');
} catch (error) {
  console.log(error.message);
}
