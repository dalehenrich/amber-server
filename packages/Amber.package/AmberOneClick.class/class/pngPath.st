accessing
pngPath

	pngPath ifNil: [ pngPath := 'amber/images/amber.png' ].
	^pngPath