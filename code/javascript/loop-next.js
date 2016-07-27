let iterable = [0, 1, 2];
for (let i = 0; i < iterable.length; i++) {
  let time = iterable[i];
  if (time === 1) { continue; }
  console.log(`${time + 1}. Hi`);
}
