system startup
startUp: resuming
	resuming ifTrue: [ self allInstances do: [:anInstance|  anInstance updateUI ]]