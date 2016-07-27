let check = function(label, fn, values) {
  console.log(label);
  for (let i = 0; i < values.length; i++) {
    let value = values[i];
    try {
      var result = fn(value) ? 'true' : 'false';
    } catch (e) {
      if (e instanceof TypeError) {
        var result = `error: ${e}`;
      } else {
        throw e;
      }
    }
    if (__guard__(value, x => x.constructor.name) === 'Array') { value = `[${value}]`; }
    if (value === '') { value = "''"; }
    console.log(`  ${value} - ${result}`);
  }
  return console.log('');
};

let values = ['string', '', [1, 2, 3], [], 5, 0, true, false, null, undefined];

check('if value:', (v => v), values);
check('if value?:', (v => v != null), values);
check('if value.length:', (v => v.length), values);

function __guard__(value, transform) {
  return (typeof value !== 'undefined' && value !== null) ? transform(value) : undefined;
}