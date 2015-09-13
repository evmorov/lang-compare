fs = require 'fs'
file_path = "#{__dirname}/file.txt"
console.log fs.readFileSync file_path, 'utf8'
# Hello!
#
