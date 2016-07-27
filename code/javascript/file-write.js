import fs from 'fs';
import path from 'path';
let file_path = path.join(__dirname, 'output.txt');
fs.writeFile(file_path, 'Some glorious content');
