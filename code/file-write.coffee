fs = require 'fs'
filename = 'output.txt'
fs.writeFile "#{__dirname}/#{filename}", 'Some glorious content'
