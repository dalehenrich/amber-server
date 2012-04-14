public
handlePut: request
	| filename contents |
	filename := request uri path.
	^ filename notNil 
		ifTrue: [			
			self directory forceNewFileNamed: filename do: [:file|  
				file nextPutAll: request entity string].
			ZnResponse created: request uri ]
		ifFalse: [ ZnResponse badRequest: request ]