window management
enableFullScreenWindows
	self disableFullScreenWindows.
	World announcer 
		on: WindowOpened 
		do: [:ann| ann window fullScreen].