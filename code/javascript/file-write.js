const fs = require('fs');
const path = require('path');
const file_path = path.join(__dirname, 'output.txt');
fs.writeFile(file_path, 'Some glorious content');
