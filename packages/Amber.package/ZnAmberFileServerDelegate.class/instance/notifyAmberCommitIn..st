saving
notifyAmberCommitIn: filepath
	Transcript 
		show: (Time now asString padded: #right to: 12 with: Character space);
		show: 'Amber commit: ';
		show: filepath;
		cr.