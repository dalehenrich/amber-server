accessing
amberServer
	^ amberServer ifNil: [amberServer := AmberServer new]