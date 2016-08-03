const exec = require('child_process').exec;
exec('node -v', (error, stdout, stderr) => console.log(stdout));
