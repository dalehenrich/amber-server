building
buildControls
	| builder content |
	builder := UITheme builder.
	content := (builder newColumn: {
		builder newLabelFor: self getLabel: #getServerStatus getEnabled: nil.
		builder newLabelGroup: {
			'Port'->(builder newTextEntryFor: self getText: #port setText: #port: help: '').
			'Amber root dir' -> (
				builder newRow: {
					(builder newTextEntryFor: self getText: #amberRootDir setText: #amberRootDir: help: '') 
							autoAccept: true.
					builder newButtonFor: self action: #chooseAmberRootDir label: 'Browse' help: ''}
			)}.
		(builder newRow: {
			builder newButtonFor: self action: #startServer label: 'Start server' help: ''.
			builder newButtonFor: self action: #stopServer label: 'Stop server' help: ''.
		})
		vResizing: #spaceFill.
	}).
	^ content 
			width: 750;
			height: 120