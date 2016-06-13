exec = require('child_process').exec
exec 'coffee -v', (error, stdout, stderr) -> console.log stdout
