import fs from 'fs';
import path from 'path';
let file_path = path.join(process.cwd(), 'code', 'file.txt');
console.log(fs.readFileSync(file_path, 'utf8'));
