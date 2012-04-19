start / stop
start
	self stop.
	
	self server 
		port: (port ifNil: [self defaultPort]);
		delegate: ((self class serverDelegate new) 
										prefixFromString: '/'; 
										directory: (FileDirectory default directoryNamed: self amberPath); 
									yourself);
		start