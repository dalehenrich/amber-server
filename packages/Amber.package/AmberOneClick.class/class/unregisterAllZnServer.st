image
unregisterAllZnServer.
	ZnServer allSubInstances  do: [:aServer|
										aServer stop.
								 		ZnServer unregister: aServer].	
	Smalltalk garbageCollectMost.