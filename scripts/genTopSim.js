const fs = require('fs');
const path = require('path');
const filepath = path.join(__dirname, 'output.txt');
const bc = require('baseconvert');

let writestream = fs.createWriteStream(filepath);
let Choice_Player1 = 2;
let IRData1 = 0;
let PS2Data1 = 0;
let SNESData1 = 0;
let Choice_Player2 = 0;
let IRData2 = 0;
let PS2Data2 = 0;
let SNESData2 = 0;

for(let i = 0; i < 20; i++){
	//N Data
	switch(i){
		case 0: 
			SNESData1 = 0;
			PS2Data2 = 0;
			break;
		case 1:
			SNESData1 = 1;
			PS2Data2 = 1;
			break;
		case 2:
			PS2Data2 = 0;
		case 5:
			PS2Data2 = 1;
		case 6:
			PS2Data2 = 0;
		case 9:
			SNESData1 = 0;
			PS2Data2 = 1;
			break;
		case 11:
			SNESData1 = 1;
			PS2Data = 0;
			break;
		case 13:
			SNESData1 = 0;
			break;
		case 14:
			PS2Data = 1;
		case 15:
			SNESData1 = 1;
			break;
		case 17:
			PS2Data = 0;
			break;
		case 20:
			PS2Data = 1;
	}
	writestream.write(`#Clock ${i+1}\n`)
	writestream.write(`force Clock 1 ${i*100}\n`);
	//do stuff
	writestream.write(`force Choice_Player1 ${bc.dec2bin(Choice_Player1)} ${i*100}\n`)
	writestream.write(`force IRData1 ${IRData1} ${i*100}\n`)
	writestream.write(`force PS2Data1 ${PS2Data1} ${i*100}\n`)
	writestream.write(`force SNESData1 ${SNESData1} ${i*100}\n`)

	writestream.write(`force Choice_Player2 ${bc.dec2bin(Choice_Player2)} ${i*100}\n`)
	writestream.write(`force IRData2 ${IRData2} ${i*100}\n`)
	writestream.write(`force PS2Data2 ${PS2Data2} ${i*100}\n`)
	writestream.write(`force SNESData2 ${SNESData2} ${i*100}\n`)

	writestream.write(`\nforce Clock 0 ${i*100 + 50}\n\n`);
}
