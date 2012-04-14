public
handleRequest: request
	^ request method = #PUT
		ifTrue: [ self handlePut: request ]
	      ifFalse: [ super handleRequest: request]