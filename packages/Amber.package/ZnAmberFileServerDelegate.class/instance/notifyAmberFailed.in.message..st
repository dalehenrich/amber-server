saving
notifyAmberFailed: operation in: filepath message: message
	Transcript 
		cr;
		show: (Time now asString padded: #right to: 12 with: Character space);
		show: 'Amber failed ', operation, ': ';
		show: filepath;
		show: ' error: ', message