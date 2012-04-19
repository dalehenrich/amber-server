image
prepareImage
	"self prepareImage"
	
	World submorphs do: [:aMorph| aMorph delete].
	PolymorphSystemSettings desktopColor: Color white.
	World backgroundImage: (ImageReadWriter formFromFileNamed: self pngPath) layout:  #topCenter.
	TaskbarMorph showTaskbar: false.
	
	self unregisterAllZnServer.
	
	Smalltalk garbageCollectMost.
	AmberServerControl openNoWindow.
	
	self enableFullScreenWindows.