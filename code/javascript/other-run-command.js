import { exec } from 'child_process';
exec('coffee -v', (error, stdout, stderr) => console.log(stdout));
