try {
  throw new Error('An error!');
} catch (e) {
  console.log(e.message);
}
