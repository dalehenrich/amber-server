building
buildControls
	| builder content |
	builder := UITheme builder.
	content := (builder newColumn: {
		builder newLabelFor: self getLabel: #getServerStatus getEnabled: nil.
		(builder newRow: {
			builder newButtonFor: self action: #startServer label: 'Start server' help: ''.
			builder newButtonFor: self action: #stopServer label: 'Stop server' help: ''.
		})
		vResizing: #spaceFill.
	}).
	^ content