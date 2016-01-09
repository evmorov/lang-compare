fs = require 'fs'
path = require 'path'
file_path = path.join(__dirname, 'output.txt')
fs.writeFile file_path, 'Some glorious content'
