callbacks
getServerStatus
	^ self amberServer isRunning
			ifTrue: ['Running on port: ', self amberServer port asString]
			ifFalse: ['Stopped']