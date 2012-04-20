public
handlePut: request
	| filename contents |
	filename := request uri path.
	^ filename notNil 
		ifTrue: [ 	
			self saveContent: request entity string toFileNamed: filename onError: [:errorMessage | ^ZnResponse serverError: errorMessage ].
			ZnResponse created: request uri ]	
		ifFalse: [ ZnResponse badRequest: request ]