saving
saveContent: aString toFileNamed: aFilename onError: errorBlock
	|filepath|	
	filepath := self directory fullPathFor: aFilename.
	self directory deleteFileNamed: filepath.
	[FileStream concreteStream forceNewFileNamed: filepath do: [:file|  
		file nextPutAll: aString.
		self notifyAmberCommitIn: filepath]] 
				on: FileDoesNotExistException
				do: [:ex | 
					self notifyAmberFailedCommitIn: filepath message: ex messageText.
					errorBlock value: ex messageText ].