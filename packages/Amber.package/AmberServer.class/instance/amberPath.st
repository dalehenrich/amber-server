accessing
amberPath
	 ^ amberPath ifNil: [FileDirectory default fullPathFor: 'amber']