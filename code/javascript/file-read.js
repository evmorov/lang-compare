const fs = require('fs');
const path = require('path');
const file_path = path.join(process.cwd(), 'code', 'file.txt');
console.log(fs.readFileSync(file_path, 'utf8'));
