accessing events
debug: aBlockOrString 
	self isEnabled ifFalse: [ ^ self ].
	DebugEvent new 
		message: aBlockOrString value;
		emit
	