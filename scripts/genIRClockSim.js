const fs = require('fs');
const path = require('path');
const filepath = path.join(__dirname, 'output.txt');

let writestream = fs.createWriteStream(filepath);

for(let i = 0; i < 700; i++){
	writestream.write(`force Clock 1 ${i*150}\n\n`);
	writestream.write(`force Clock 0 ${i*150+75}\n\n`);
}
