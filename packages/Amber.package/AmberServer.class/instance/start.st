start / stop
start
	self stop.
	
	self server 
		port: (port ifNil: [self defaultPort]);
		delegate: ((ZnAmberFileServerDelegate new) 
										prefixFromString: '/'; 
										directory: (FileDirectory on: self amberPath); 
									yourself);
		start