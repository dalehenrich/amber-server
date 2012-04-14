accessing
server
	^ server ifNil: [server := (ZnMultiThreadedServer on: self defaultPort) stop]