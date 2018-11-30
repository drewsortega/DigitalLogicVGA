const fs = require('fs');
const path = require('path');
const filepath = path.join(__dirname, 'output.txt');
const bc = require('baseconvert');

let writestream = fs.createWriteStream(filepath);

for(let i = 0; i < 20; i++){
	let Choice = 0;
	let PU = 0;
	let PD = 0;
	let PL = 0;
	let PR = 0;
	let PReadable = 0;
	let IU = 0;
	let ID = 0;
	let IR = 0;
	let IL = 0;
	let IReadable = 0;
	let NU = 0;
	let ND = 0;
	let NR = 0;
	let NL = 0;
	let NReadable = 0;

	if(i >= 0 && i < 4){
		Choice = 0;
		if(i == 0) {
			PReadable = 0;
			PU = 1;
			PD = 0;
			PL = 0;
			PR = 0;
		}else if(i == 1) {
			PReadable = 0;
			PD = 1;
			PL = 0;
			PR = 0;
			PU = 0;
		}
		else if(i == 2) {
			PReadable = 1;
			PD = 1;
			PL = 0;
			PR = 0;
			PU = 0;
		}
		else if(i == 3){
			PReadable = 1;
			PU = 1;
			PD = 0;
			PL = 0;
			PR = 0;
		}
	}if(i >= 4 && i < 8){
		Choice = 1;
		if(i == 4) {
			IReadable = 0;
			IU = 1;
			ID = 0;
			IL = 0;
			IR = 0;
		}else if(i == 5) {
			IReadable = 0;
			ID = 1;
			IL = 0;
			IR = 0;
			IU = 0;
		}
		else if(i == 6) {
			IReadable = 1;
			ID = 1;
			IL = 0;
			IR = 0;
			IU = 0;
		}
		else if(i == 7){
			IReadable = 1;
			IU = 1;
			ID = 0;
			IL = 0;
			IR = 0;
		}
	}if(i >= 8 && i < 12){
		Choice = 2;
		if(i == 8) {
			NReadable = 0;
			NU = 1;
			ND = 0;
			NL = 0;
			NR = 0;
		}else if(i == 9) {
			NReadable = 0;
			ND = 1;
			NL = 0;
			NR = 0;
			NU = 0;
		}
		else if(i == 10) {
			NReadable = 1;
			ND = 1;
			NL = 0;
			NR = 0;
			NU = 0;
		}
		else if(i == 11){
			NReadable = 1;
			NU = 1;
			ND = 0;
			NL = 0;
			NR = 0;
		}
	}if(i >= 12 && i < 16){
		Choice = 3;
		if(i == 12) {
			NReadable = 0;
			NU = 1;
			ND = 0;
			NL = 0;
			NR = 0;
		}else if(i == 13) {
			NReadable = 0;
			ND = 1;
			NL = 0;
			NR = 0;
			NU = 0;
		}
		else if(i == 14) {
			NReadable = 1;
			ND = 1;
			NL = 0;
			NR = 0;
			NU = 0;
		}
		else if(i == 15){
			NReadable = 1;
			NU = 1;
			ND = 0;
			NL = 0;
			NR = 0;
		}
	}
	writestream.write(`#Clock ${i+1}\n`)
	writestream.write(`force Clock 1 ${i*100}\n`);
	//do stuff
	writestream.write(`force Choice ${bc.dec2bin(Choice)} ${i*100}\n`)

	writestream.write(`force PU ${PU} ${i*100}\n`)
	writestream.write(`force PD ${PD} ${i*100}\n`)
	writestream.write(`force PL ${PL} ${i*100}\n`)
	writestream.write(`force PR ${PR} ${i*100}\n`)
	writestream.write(`force PReadable ${PReadable} ${i*100}\n`)

	
	writestream.write(`force IU ${IU} ${i*100}\n`)
	writestream.write(`force ID ${ID} ${i*100}\n`)
	writestream.write(`force IR ${IR} ${i*100}\n`)
	writestream.write(`force IL ${IL} ${i*100}\n`)
	writestream.write(`force IReadable ${IReadable} ${i*100}\n`)

	writestream.write(`force NU ${NU} ${i*100}\n`)
	writestream.write(`force ND ${ND} ${i*100}\n`)
	writestream.write(`force NR ${NR} ${i*100}\n`)
	writestream.write(`force NL ${NL} ${i*100}\n`)
	writestream.write(`force NReadable ${NReadable} ${i*100}\n`)
	writestream.write(`\nforce Clock 0 ${i*100 + 50}\n\n`);
}
