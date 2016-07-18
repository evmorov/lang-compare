fs = require 'fs'
path = require 'path'
file_path = path.join(process.cwd(), 'code', 'file.txt')
console.log fs.readFileSync file_path, 'utf8'
