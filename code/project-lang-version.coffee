exec = require('child_process').exec
exec 'coffee -v', (error, stdout, stderr) -> console.log stdout
# CoffeeScript version 1.10.0
