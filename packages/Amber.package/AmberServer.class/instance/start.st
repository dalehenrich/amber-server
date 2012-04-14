start / stop
start
	self ifRunning: [self stop].
	
	ZnServer startDefaultOn: self defaultPort.
	ZnServer default delegate: ((ZnAmberFileServerDelegate new) 
										prefixFromString: '/'; 
										directory: (FileDirectory on: self amberPath); 
									yourself).