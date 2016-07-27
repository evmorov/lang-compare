let iterable;
for (let key in (iterable = { font_size: 10, font_family: 'Arial' })) {
  let value = iterable[key];
  console.log(key, value);
}
