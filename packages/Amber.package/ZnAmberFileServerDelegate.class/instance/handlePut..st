public
handlePut: request
	| filename contents |
	filename := request uri path.
	^ filename notNil 
		ifTrue: [ 	self saveContent: request entity string toFileNamed: filename.		
					ZnResponse created: request uri ]
				
		ifFalse: [ ZnResponse badRequest: request ]