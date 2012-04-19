accessing
amberServer
	^ amberServer ifNil: [amberServer := AmberServer singleton]