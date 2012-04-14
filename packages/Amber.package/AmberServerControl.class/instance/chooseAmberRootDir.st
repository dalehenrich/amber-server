callbacks
chooseAmberRootDir
	|rootDir|
	rootDir := UITheme builder chooseDirectory: 'Amber root dir.' path: self amberRootDir.
	rootDir ifNotNil: [self amberRootDir: rootDir pathName].