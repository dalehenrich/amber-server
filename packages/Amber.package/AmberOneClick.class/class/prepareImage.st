image
prepareImage
	World submorphs do: [:aMorph| aMorph delete].
	PolymorphSystemSettings desktopColor: Color white.
	World backgroundImage: (ImageReadWriter formFromFileNamed: 'amber/images/amber.png') layout:  #topCenter.
	TaskbarMorph showTaskbar: false.
	
	self unregisterAllZnServer.
	
	Smalltalk garbageCollectMost.
	AmberServerControl openNoWindow.
	
	self enableFullScreenWindows.