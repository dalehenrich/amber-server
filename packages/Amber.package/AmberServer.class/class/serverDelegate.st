accessing
serverDelegate

	ServerDelegate ifNil: [ ServerDelegate := ZnAmberFileServerDelegate ].
	^ServerDelegate