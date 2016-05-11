fs = require 'fs'
path = require 'path'
file_path = path.join(__dirname, 'file.txt')
console.log fs.readFileSync file_path, 'utf8'
# Hello
# World
#
