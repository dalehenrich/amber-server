saving
saveContent: aString toFileNamed: aFilename
	|filepath|	
	filepath := self directory fullPathFor: aFilename.
	self directory deleteFileNamed: filepath.
	FileStream concreteStream forceNewFileNamed: filepath do: [:file|  
		file nextPutAll: aString.
		self notifyAmberCommitIn: filepath].